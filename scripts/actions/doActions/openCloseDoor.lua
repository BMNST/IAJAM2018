--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 11/02/2018
-- Time: 08:33
-- To change this template use File | Settings | File Templates.
--

return function(a, args)
    if a.open and not a.trapdoor then
        -- check if it can close
        for _, v in pairs(F.movingBlock) do
            if v.position.x == a.position.x and v.position.y == a.position.y then
                return
            end
        end
    end
    a.open = args
    if a.open then
        a.color.B = 128
        a.tileSpriteName = "openDoor"
    end
    if not a.open then
        a.color.B = 255

        a.tileSpriteName = "closedDoor"
    end
    if a.trapdoor then
        a.tileSpriteName = "trap" .. a.tileSpriteName
    else
        if a.open then
            a.unwalkable = nil
        else
            a.unwalkable = true
        end
        core.filter.update(a)
    end
    if a.rotated then
        a.tileSpriteName = a.tileSpriteName .. "Rotated"
    end
end