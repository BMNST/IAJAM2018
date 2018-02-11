--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 09/02/2018
-- Time: 22:26
-- To change this template use File | Settings | File Templates.
--

--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 09/02/2018
-- Time: 21:55
-- To change this template use File | Settings | File Templates.
--

return function(x, y, open, rotated, ember, purple, cyan, green, yellow)
    local ts = "closedDoor"
    local unwalkable
    if open then
        ts = "openDoor"
    else
        unwalkable = true
    end
    if rotated then
        ts = ts .. "Rotated"
    end
    core.entity.add({ position = { x = x, y = y }, color = { R = 0, G = 0, B = 128 }, open = open, unwalkable = unwalkable, rotated = rotated, ember = ember, purple = purple, cyan = cyan, green = green, yellow = yellow, tileSpriteName = ts })
end



