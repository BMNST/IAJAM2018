--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 10/02/2018
-- Time: 15:56
-- To change this template use File | Settings | File Templates.
--
return function(entity, args)
    local c = (entity.behavior and entity.behavior.actions) or {}
    c.turnOnOffLaser = args
    entity.behavior = { actions = c, startTime = 0.05, time = 0.05 }
    core.filter.update(entity)
end

