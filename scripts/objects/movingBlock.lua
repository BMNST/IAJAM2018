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

return function(x, y, ember, purple, cyan, green, yellow)
    local b = { position = { x = x, y = y }, color = { R = 0, G = 0, B = 128 }, ember = ember, purple = purple, cyan = cyan, green = green, yellow = yellow, tileSpriteName = "movingBlock", movingBlock = true, unwalkable = true }
    core.entity.add(b)
    return b
end



