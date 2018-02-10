--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 10/02/2018
-- Time: 09:03
-- To change this template use File | Settings | File Templates.
--

return function(entity, args)
    love.graphics.setColor(255,255,255)

    if entity.behavior and entity.behavior.actions.move then
        local t =  1 - entity.behavior.time / entity.behavior.startTime
        love.graphics.rectangle("fill", (entity.position.x + entity.behavior.actions.move.x * t) * SQUARESIZE, (entity.position.y   + entity.behavior.actions.move.y * t) * SQUARESIZE , SQUARESIZE, SQUARESIZE)

    else
        love.graphics.rectangle("fill", entity.position.x * SQUARESIZE, entity.position.y * SQUARESIZE, SQUARESIZE, SQUARESIZE)
    end

    love.graphics.setColor(255, 255, 255)
end