--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 09/02/2018
-- Time: 19:54
-- To change this template use File | Settings | File Templates.
--

local function checkDir(obj, z, dir)
    if dir and obj.movingBlock then
        local o = obj.behavior
        if not o then
            return true
        end
        o = o.actions
        if not o then
            return true
        end
        o = o.move
        if not o then
            return true
        end
        return not (o.x == dir.x and o.y == dir.y)
    end
    if not z then
        --error("HERE")
        return true
    end
    if obj.movingBlock then

        return false
    end
    return true
end

return function(position, z, dir)

    for k, v in pairs(F.unwalkable) do
        if v.position.x == position.x and v.position.y == position.y and checkDir(v, z, dir) then
            return false
        end
    end
    return true
end