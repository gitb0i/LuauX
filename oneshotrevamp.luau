-- Change this to your raw GitHub or file host base URL
local BASE_URL = "https://raw.githubusercontent.com/gitb0i/LuauX/refs/heads/main/"
local http = game:GetService("HttpService")

local function loadBigModule(parts)
	-- Fetch manifest
	-- local manifestJson = game:HttpGet(BASE_URL .. "manifest.json")
	--local manifest = HttpService:JSONDecode(manifestJson)
	local manifestparts = parts or 7
	local source = ""
	local filename = "module_part_"
	--for _, filename in ipairs(manifestparts) do
	for i = 1,manifestparts do 
		task.wait(.5)
		local chunk = game:HttpGet(BASE_URL .. filename .. i.. ".lua")
		source ..= chunk
		print(#chunk.. "+bytes")
	end

	--local fn = loadstring(source)
	--if fn then
	--return fn()
	--else
	--error("Failed to load big module")
	--end
	return source
end

local source = loadBigModule(7)

local counter = 1
source = source:gsub("module%s*%[%s*%d+%s*%]%s*=",
	function(match)
		local replacement = ("module[%d] ="):format(counter)
		counter += 1
		return replacement
	end
)


-- Repair chunks (reverse-merge bad/missing matches) and produce unique map
local function repair_and_index(chunks)
	-- simple trim helper for keys
	local function trim(s)
		return (s:gsub("^%s+", ""):gsub("%s+$", ""))
	end

	-- Reverse pass: merge bad entries into previous chunk
	for i = #chunks, 1, -1 do
		local v = chunks[i]
		if type(v) ~= "table" or type(v.code) ~= "string" then
			warn(("chunks[%d] is not a table with .code string; skipping"):format(i))
		else
			local match = v.code:match("{(.-),")
			if (not match) or #match > 30 then
				if i == 1 then
					-- nothing to append to; keep but warn
					warn(("chunk[1] has invalid match (nil or too long). Keeping as-is."))
				else
					-- append current code to previous chunk and remove current
					chunks[i-1].code = chunks[i-1].code .. v.code
					table.remove(chunks, i)
					-- no need to adjust i because we're iterating in reverse
				end
			end
		end
	end

	-- Build unique map from remaining chunks
	local unique = {}
	for i, v in ipairs(chunks) do
		local ok_match = nil
		if type(v) == "table" and type(v.code) == "string" then
			ok_match = v.code:match("{(.-),")
		end

		if ok_match and #ok_match <= 30 then
			ok_match = trim(ok_match)
			unique[ok_match] = unique[ok_match] or {}
			table.insert(unique[ok_match], v.code)
		else
			-- still no valid match: stash under a safe _nil_i key
			local nilkey = ("_nil_%d"):format(i)
			unique[nilkey] = unique[nilkey] or {}
			table.insert(unique[nilkey], v.code)
			warn(("Chunk %d still has no valid match; stored under %s"):format(i, nilkey))
		end
	end

	return unique, chunks
end

-- Example usage:
-- local unique_map, fixed_chunks = repair_and_index(chunks)
-- for k, list in pairs(unique_map) do
--     print("Key:", k, "Entries:", #list)
-- end
local function capture_inside_function(src)
	local start_pos = src:find("function%s*%(%s*%)")
	local end_pos = src:match(".*()end")
	if not start_pos or not end_pos then
		return nil
	end
	-- skip past "function()"
	local after_func = src:find("%)", start_pos) 
	if not after_func then
		return nil
	end
	return src:sub(after_func + 1, end_pos - 1)
end


local function capture_between_first_function_and_last_end(src)
	local s, e = src:find("function%s*%(%s*%)")
	if not s then return nil end

	local len = #src
	local i = e + 1
	local depth = 1

	local function is_ident(ch)
		return ch and ch:match("[%w_]")
	end

	while i <= len do
		local c1 = src:sub(i,i)
		local c2 = src:sub(i,i+1)

		-- single-line or long comment
		if c2 == "--" then
			local eq = src:match("^%-%-%[(=*)%[", i)
			if eq then
				local close = "]" .. string.rep("=", #eq) .. "]"
				local close_pos = src:find(close, i, true)
				if close_pos then
					i = close_pos + #close
				else
					return src:sub(e+1) -- unterminated long comment; return rest
				end
			else
				local nl = src:find("\n", i)
				if nl then i = nl + 1 else return src:sub(e+1) end
			end

			-- quoted string
		elseif c1 == "'" or c1 == '"' then
			local quote = c1
			local j = i + 1
			while j <= len do
				local ch = src:sub(j,j)
				if ch == "\\" then
					j = j + 2
				elseif ch == quote then
					j = j + 1
					break
				else
					j = j + 1
				end
			end
			i = j

			-- long bracket string
		elseif src:match("^%[(=*)%[", i) then
			local eq = src:match("^%[(=*)%[", i)
			local close = "]" .. string.rep("=", #eq) .. "]"
			local close_pos = src:find(close, i, true)
			if close_pos then
				i = close_pos + #close
			else
				return src:sub(e+1) -- unterminated long string; return rest
			end

		else
			local advanced = false
			if c1:match("[%a_]") then
				-- check for "function" keyword
				if src:sub(i,i+7) == "function" then
					local prev = src:sub(i-1,i-1)
					if (i == 1 or not is_ident(prev)) then
						local after = src:sub(i+8,i+8)
						if not is_ident(after) then
							depth = depth + 1
							i = i + 8
							advanced = true
						end
					end
				end

				-- check for "end" keyword
				if not advanced and src:sub(i,i+2) == "end" then
					local prev = src:sub(i-1,i-1)
					if (i == 1 or not is_ident(prev)) then
						local after = src:sub(i+3,i+3)
						if not is_ident(after) then
							depth = depth - 1
							if depth == 0 then
								return src:sub(e+1, i-1)
							end
							i = i + 3
							advanced = true
						end
					end
				end
			end

			if not advanced then
				i = i + 1
			end
		end
	end

	return nil
end


local function splitByB(source)
	local chunks = {}
	local lastEnd = 1
	local lastIndex = nil

	for startPos, number, endPos in source:gmatch("()b%[(%d+)%]()") do
		-- Capture everything from lastEnd up to startPos - 1
		if lastIndex then
			local chunk = source:sub(lastEnd, startPos - 1)
			table.insert(chunks, {index = lastIndex, code = chunk})
		end

		lastIndex = tonumber(number)
		lastEnd = startPos
	end

	-- Handle the trailing section after the final b[n]
	if lastIndex then
		local chunk = source:sub(lastEnd)
		table.insert(chunks, {index = lastIndex, code = chunk})
	end
	--[[local unique = {}
	for i,v in pairs(chunks) do 
		local match = v.code:match("{(.-),")
		
		if match == nil then
			print(i)
		else 
			unique[match] = {v.code}
		end
	end]]
	local unique, chunks = repair_and_index(chunks)
	for i,v in pairs(unique) do 
		v[1] = capture_inside_function(v[1])
	end
	return unique
end

-- Example

return splitByB(source)

--local fn = loadstring(source)
--local module = fn()
--return(module)
