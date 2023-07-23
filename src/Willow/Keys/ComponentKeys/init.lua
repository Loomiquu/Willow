
local ComponentKeys = {}
ComponentKeys.__index = ComponentKeys
ComponentKeys.__tostring = function()
	return "ComponentKeys"
end

ComponentKeys.Script = require(script.Script)

return setmetatable({}, ComponentKeys)