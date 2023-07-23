
local Willow = script.Parent.Parent
local Utils = Willow.Utils
local Keys = Willow.Keys
local Types = Willow.Types

local PublicTypes = require(Types.PublicTypes)
local PrivateTypes = require(Types.PrivateTypes)
local Abstracts = require(Types.Abstracts)
local Throwables = require(Utils.Throwables)

type AbstractKey = Abstracts.AbstractKey
type Component = PublicTypes.Component

local function InstantiateState()

	local State = {}
	State.__newindex = function(_, Key)
		local ErrorMessage = Throwables.Errors.RequiredProp:format(Key)
		if Key == "_RuntimeState" then error(ErrorMessage) end
	end

	return setmetatable({}, State)
end

local function AttachmentRequest(Component: Component)
	local _InternalComponent = {}
	_InternalComponent.Component = Component
	_InternalComponent.State = InstantiateState()

	for key: AbstractKey, value in Component do
		key.Parent = _InternalComponent
		key:OnAttachment(value)
	end
end

return AttachmentRequest