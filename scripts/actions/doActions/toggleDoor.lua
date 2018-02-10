--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 10/02/2018
-- Time: 15:13
-- To change this template use File | Settings | File Templates.
--

return function(a, args)
    a.open = not a.open
    print(a.open, a.color.B)
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