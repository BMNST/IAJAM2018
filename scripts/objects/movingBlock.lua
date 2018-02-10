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

return function(x,y,color1, color2, color3, color4)
    core.entity.add({ position = { x = x, y = y }, color = { R = 0, G = 0, B = 128 }, [color1] = "moveLeft", [color2] = "moveRight", [color3] = "moveUp", [color4] = "moveDown", open= false })
end



