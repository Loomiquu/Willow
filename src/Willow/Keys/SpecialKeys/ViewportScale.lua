local Keys = script.Parent.Parent
local Willow = Keys.Parent

local ViewportScale = {}
ViewportScale.__index = ViewportScale
ViewportScale.__tostring = function()
	return "SpecialKey[ViewportScale]"
end

function ViewportScale:OnAttachment(Component, Callback)

end

function ViewportScale:OnReattachment()
	
end

function ViewportScale:OnDispose()
	
end

return setmetatable({}, ViewportScale)