type Component = {}

export type Willow = {
	derive: (DerivedInstance: Instance) -> (Props: { [any]: any }) -> Component,

	mount: () -> nil,
}

local function strict(table: { [any]: any })
	local metatable = {}
	setmetatable(table, metatable)

	function metatable:__index(key)
		error(`{key} is not a valid member of the Willow class`)
	end

	function metatable:__newindex(key)
		error(`{key} cannot be assigned to a const class`)
	end

	return table
end

return strict({
	ClassName = "Willow",

	Logic = require(script.Logic),
})
