local mainDirectory = script.Parent.Parent

local function init()
    local self = {}
    self.__index = self

    local willow = {
        TestArray = {1,2,3,4},
        foo = "bar"
    }

    return setmetatable(willow, self)
end

return init()