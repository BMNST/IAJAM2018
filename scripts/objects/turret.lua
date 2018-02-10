--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 10/02/2018
-- Time: 13:48
-- To change this template use File | Settings | File Templates.
--

return function(x,y,orientation, ember, purple, cyan, green, yellow)
    core.entity.add({ position = { x = x, y = y }, orientation = orientation, isTurret=true, unwalkable = true, cyan = {"resetRotation1", "toggleLaser"}, ember =  ember, purple = purple, cyan = cyan, green = green, yellow = yellow})
end

