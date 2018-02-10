--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 10/02/2018
-- Time: 09:03
-- To change this template use File | Settings | File Templates.
--

return function(entity, args)
    love.graphics.setColor(255,255,255)
    love.graphics.rectangle("fill", entity.position.x * SQUARESIZE, entity.position.y * SQUARESIZE, SQUARESIZE, SQUARESIZE)
    love.graphics.setColor(255, 255, 255)
end