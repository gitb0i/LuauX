local HttpService = game:GetService("HttpService")

-- Change this to your raw GitHub or file host base URL
local BASE_URL = "https://raw.githubusercontent.com/gitb0i/LuauX/refs/heads/main/modulesplit/"

local function loadBigModule(parts)
    -- Fetch manifest
   -- local manifestJson = game:HttpGet(BASE_URL .. "manifest.json")
    --local manifest = HttpService:JSONDecode(manifestJson)
    local manifestparts = parts or 9
    local source = ""
    --for _, filename in ipairs(manifestparts) do
    for i = 1,parts do 
        local chunk = game:HttpGet(BASE_URL .. filename)
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

return loadBigModule()
