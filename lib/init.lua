local tasksDirectory = script:WaitForChild("Tasks")
local debugDirectory = script:WaitForChild("Debug")

local exportedTypes = require(script.Types)

type willow = exportedTypes.willow

local function init(): table
    local meta = {}
    meta.__index = {}

    print(tasksDirectory)
    local willow: willow = {}
    willow.ScheduleConstruct = require(tasksDirectory.ScheduleConstruct)

    return setmetatable(willow, meta)
end

return init() :: willow