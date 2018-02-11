--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 10/02/2018
-- Time: 09:03
-- To change this template use File | Settings | File Templates.
--

return function(entity, args)
    love.graphics.setColor(255, 255, 255)
    local r = 0
    if entity.orientation then
        r = math.pi / 2 * (entity.orientation - 1)
    end
    local Q = { 0, 19 }

    if entity.behavior and entity.behavior.actions.move then
        local t = 1 - entity.behavior.time / entity.behavior.startTime
        love.graphics.draw(MAPTEXTUREATLAS, scripts.systems.render.getQuad(unpack(Q)), (entity.position.x + entity.behavior.actions.move.x * t) * SQUARESIZE + 16, (entity.position.y + t * entity.behavior.actions.move.y) * SQUARESIZE + 16, r, 2, 2, 8, 8)
    else
        love.graphics.draw(MAPTEXTUREATLAS, scripts.systems.render.getQuad(unpack(Q)), entity.position.x * SQUARESIZE + 16, entity.position.y * SQUARESIZE + 16, r, 2, 2, 8, 8)
    end

    love.graphics.setColor(255, 255, 255)
end