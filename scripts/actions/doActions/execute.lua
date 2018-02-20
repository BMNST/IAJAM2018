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

    local behave = object.behavior
    if behave == nil then
        pprint(object)
    end
    object.behavior = nil
    core.filter.update(object)
    if (behave.actions[action]) then
        scripts.actions.doActions[ACTS[action]](object, (behave.actions[action]), intentions)
    end
end

