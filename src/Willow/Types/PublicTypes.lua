
export type Component = {
	Script: (State: {[string]: any}) -> nil,
	Children: { [any]: Component },
	Style: { [SpecialKeys | any]: any }
}

export type SpecialKeys = {
	ViewportScale: (Style: { [any]: any}) -> nil
}

export type Willow = {
	Attach: (Component: Component) -> Instance,

	ComponentKeys: Component,
	SpecialKeys: SpecialKeys
}

return {}