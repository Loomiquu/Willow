local Types = script.Parent

local PublicTypes = require(Types.PublicTypes)
local PrivateTypes =  require(Types.PrivateTypes)

type Component = PublicTypes.Component
type _InternalComponent = PrivateTypes._InternalComponent

export type AbstractKey = {
	Parent: _InternalComponent,
	OnAttachment: (...any?) -> nil,
	OnReattachment: (...any?) -> nil,
	OnDispose: (...any?) -> nil
}

return {}