--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 10/02/2018
-- Time: 14:17
-- To change this template use File | Settings | File Templates.
--

return function(entity, args)
    -- args: 1 for right, -1 for left.
    entity.orientation = entity.orientation + args
end
