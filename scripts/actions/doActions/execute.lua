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

return function(object)
    local behave = object.behavior
    object.behavior = nil
    core.filter.update(object)
    for k,v in pairs(behave.actions) do

        scripts.actions.doActions[ACTS[k]](object, v)
    end
end

