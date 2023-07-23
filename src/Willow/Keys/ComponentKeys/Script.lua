local Keys = script.Parent.Parent
local Willow = Keys.Parent
local Types = Willow.Types
local Utils = Willow.Utils

local Abstracts = require(Types.Abstracts)
local Throwables = require(Utils.Throwables)

type AbstractKey = Abstracts.AbstractKey

local Script: AbstractKey = {}
Script.__index = Script
Script.__tostring = function()
	return "ComponentKey[Script]"
end
Script.Parent = nil

function Script:OnAttachment(Callback)
	local InternalComponent = self.Parent

	local Ok, Exception = pcall(function() Callback(InternalComponent.State) end)
	local ErrorMessage = Throwables.Errors.ThreadError:format(Exception or "")
	if not Ok then error(ErrorMessage) end

end

return setmetatable({}, Script)