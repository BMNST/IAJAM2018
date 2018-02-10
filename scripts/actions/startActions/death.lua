--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 10/02/2018
-- Time: 14:59
-- To change this template use File | Settings | File Templates.
--

return function(entity)
    entity.behavior = { actions={death = true}, startTime = 2, time = 2 }
    core.filter.update(entity)
end