--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 10/02/2018
-- Time: 10:46
-- To change this template use File | Settings | File Templates.
--

local ACTS = {}
ACTS.move = "move"
ACTS.rotate = "rotate"
ACTS.toggleDoor = "toggleDoor"
ACTS.death = "death"
ACTS.rotateTo = "rotateTo"
ACTS.toggleLaser = "toggleLaser"
ACTS.openCloseDoor = "openCloseDoor"
ACTS.turnOnOffLaser = "turnOnOffLaser"

return function(object, action, intentions)

    local behave = object.behavior.actions[action]
    object.behavior.actions[action] = nil
    if table.empty(object.behavior.actions) then
        object.behavior = nil
    end
    core.filter.update(object)

    if behave ~= nil then
        scripts.actions.doActions[ACTS[action]](object, behave, intentions)
    end

end

