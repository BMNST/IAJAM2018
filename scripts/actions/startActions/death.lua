--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 10/02/2018
-- Time: 14:59
-- To change this template use File | Settings | File Templates.
--

return function(entity)
    local c = (entity.behavior and entity.behavior.actions) or {}
    c.death = true
    entity.behavior = { actions = c, startTime = 2, time = 2 }
    core.filter.update(entity)
end