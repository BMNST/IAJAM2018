--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 09/02/2018
-- Time: 19:54
-- To change this template use File | Settings | File Templates.
--

return function (position)
    for k, v in pairs(F.unwalkable) do
        if v.position.x == position.x and v.position.y == position.y then
            return false
        end
    end
    return true
end