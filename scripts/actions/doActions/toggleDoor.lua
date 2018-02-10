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
        a.unwalkable = nil
        a.tileSpriteName = "openDoor"
        core.filter.update(a)

    end
    if not a.open then
        a.color.B = 255
        a.unwalkable = true
        a.tileSpriteName = "closedDoor"
        core.filter.update(a)
    end
end