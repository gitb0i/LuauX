local source = table.concat(all_chunks) -- however you concatenated them

local counter = 1
source = source:gsub("module%s*%[%s*%d+%s*%]%s*=",
    function(match)
        local replacement = ("module[%d] ="):format(counter)
        counter += 1
        return replacement
    end
)

local fn = loadstring(source)
local module = fn()
