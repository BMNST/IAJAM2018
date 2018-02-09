--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 09/02/2018
-- Time: 21:55
-- To change this template use File | Settings | File Templates.
--

return function(x,y,color)
    print(x,y,color)
    core.entity.add({ position = { x = x, y = y }, color = { R = 64, G = 0, B = 0 }, tileColor = color })
end

