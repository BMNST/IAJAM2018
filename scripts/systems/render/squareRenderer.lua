--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 09/02/2018
-- Time: 19:34
-- To change this template use File | Settings | File Templates.
--

return function(entity, args)
    love.graphics.setColor(entity.color.R, entity.color.G, entity.color.B)
    love.graphics.rectangle("fill", entity.position.x * SQUARESIZE, entity.position.y * SQUARESIZE, SQUARESIZE, SQUARESIZE)
    love.graphics.setColor(255, 255, 255)
end