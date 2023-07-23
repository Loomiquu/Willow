local Types = script.Parent.Types

local Throwables = require(script.Parent.Utils.Throwables)
local PublicTypes = require(Types.PublicTypes)

type Willow = PublicTypes.Willow

return function(Table: Willow)
	local Metatable = {}
	Metatable.__index = Metatable

	Metatable.__tostring = function() return "Willow" end
	Metatable.__newindex = function(_, Key)
		local ErrorMessage = Throwables.Errors.ReadOnly:format(Key)
		error(ErrorMessage)
	end

	return setmetatable(Table, Metatable)
end