local Types = script.Types
local Keys = script.Keys
local Component = script.Component

local Register = require(script.Register)
local PublicTypes = require(Types.PublicTypes)


export type Willow = PublicTypes.Willow

return Register({
	Attach = require(Component.Attach),
	ComponentKeys = require(Keys.ComponentKeys),
	-- SpecialKeys = require(Keys.SpecialKeys)
}) :: Willow