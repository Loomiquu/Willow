local Types = script.Parent

local PublicTypes = require(Types.PublicTypes)

type Component = PublicTypes.Component

export type _InternalComponent = {
	State: {[string]: any?},
	Component: Component
}

return {}