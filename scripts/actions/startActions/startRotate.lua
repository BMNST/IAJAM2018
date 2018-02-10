--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 10/02/2018
-- Time: 13:51
-- To change this template use File | Settings | File Templates.
--

return function(entity, args)
    -- args: 1 for right, -1 for left.
    entity.behavior = { actions={rotate = args}, startTime = 0.05, time = 0.05 }
    core.filter.update(entity)
end
