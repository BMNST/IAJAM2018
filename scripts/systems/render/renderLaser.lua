--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 10/02/2018
-- Time: 14:18
-- To change this template use File | Settings | File Templates.
--

return function(entity, args)

    if entity.behavior and entity.behavior.actions.rotate then
        local t = 1 - entity.behavior.time / entity.behavior.startTime
        love.graphics.draw(MAPTEXTUREATLAS, scripts.systems.render.getQuad(1, 19), entity.position.x * SQUARESIZE + 16, entity.position.y * SQUARESIZE + 16, math.pi / 2 * (entity.orientation + t * entity.behavior.actions.rotate), 2, 2, 8, 8)
    else
        love.graphics.draw(MAPTEXTUREATLAS, scripts.systems.render.getQuad(1, 19), entity.position.x * SQUARESIZE + 16, entity.position.y * SQUARESIZE + 16, math.pi / 2 * (entity.orientation), 2, 2, 8, 8)
    end
    local o = (entity.orientation - 1) % 4 + 1
    local orr = { x = 0, y = 0 }
    if o == 1 then
        orr.x = 1
    elseif o == 2 then
        orr.y = 1
    elseif o == 3 then
        orr.x = -1
    elseif o == 4 then
        orr.y = -1
    end

    if not entity.laserOn then
        return
    end
    for i = 1, 10 do
        local loc = { x = entity.position.x + orr.x * i, y = entity.position.y + orr.y * i }
        if not scripts.systems.collision.mapCollision(loc) then
            return
        end
        love.graphics.draw(MAPTEXTUREATLAS, scripts.systems.render.getQuad(2, 19), loc.x * SQUARESIZE+ 16, loc.y * SQUARESIZE + 16, math.pi / 2 * (entity.orientation), 2, 2, 8, 8)
    end
end