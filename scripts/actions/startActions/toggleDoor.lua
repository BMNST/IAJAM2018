--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 10/02/2018
-- Time: 15:14
-- To change this template use File | Settings | File Templates.
--

return function(entity, args)
    -- args: 1 for right, -1 for left.
    local c = (entity.behavior and entity.behavior.actions) or {}
    c.toggleDoor = true
    entity.behavior = { actions = c, startTime = 0.03, time = 0.03 }
    core.filter.update(entity)
end
