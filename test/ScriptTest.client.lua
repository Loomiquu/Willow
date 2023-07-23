local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Willow = require(ReplicatedStorage:WaitForChild("Willow"))

local Tree = {
	[Willow.ComponentKeys.Script] = function(State)
		State._RuntimeState = "Evil Changes"
	end,
}

Willow.Attach(Tree)