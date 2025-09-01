-- Change this to your raw GitHub or file host base URL
local BASE_URL = "https://raw.githubusercontent.com/gitb0i/LuauX/refs/heads/main/modulesplit/"

local function loadBigModule(parts)
    -- Fetch manifest
   -- local manifestJson = game:HttpGet(BASE_URL .. "manifest.json")
    --local manifest = HttpService:JSONDecode(manifestJson)
    local manifestparts = parts or 9
    local source = ""
    local filename = "module_part_"
    --for _, filename in ipairs(manifestparts) do
    for i = 1,manifestparts do 
        local chunk = game:HttpGet(BASE_URL .. filename .. i.. ".lua")
        task.wait(2)
        source ..= chunk
    end

    --local fn = loadstring(source)
    --if fn then
        --return fn()
    --else
        --error("Failed to load big module")
    --end
    return source
end

local source = loadBigModule(9)

local counter = 1
source = source:gsub("module%s*%[%s*%d+%s*%]%s*=",
    function(match)
        local replacement = ("module[%d] ="):format(counter)
        counter += 1
        return replacement
    end
)
return source
--local fn = loadstring(source)
--local module = fn()
--return(module)
