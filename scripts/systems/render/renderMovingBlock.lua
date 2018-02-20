--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 09/02/2018
-- Time: 19:34
-- To change this template use File | Settings | File Templates.
--
local quads = {}
quads.cyanTile = { 4, 5 }
quads.greenTile = { 4, 8 }
quads.emberTile = { 4, 11 }
quads.purpleTile = { 4, 14 }
quads.openDoor = { 1, 20 }

quads.openDoorRotated = { 4, 20 }
quads.closedDoor = { 0, 20 }
quads.closedDoorRotated = { 3, 20 }
quads.movingBlock = { 2, 20 }
--Unsure about trapdoors //Tim
quads.trapopenDoor = { 8, 19 }
quads.trapopenDoorRotated = { 8, 20 }
quads.trapclosedDoor = { 9, 19 }
quads.trapclosedDoorRotated = { 9, 20 }

return function(entity, args)
    if entity.behavior and entity.behavior.actions.move then
        local t = 1 - TIMER/MAXTIMER
        love.graphics.draw(MAPTEXTUREATLAS, scripts.systems.render.getQuad(unpack(quads[entity.tileSpriteName] or { 5, 0 })), (entity.position.x + entity.behavior.actions.move.x * t) * SQUARESIZE + 16, (entity.position.y + t * entity.behavior.actions.move.y) * SQUARESIZE + 16, 0, 2, 2, 8, 8)
    else
        love.graphics.draw(MAPTEXTUREATLAS, scripts.systems.render.getQuad(unpack(quads[entity.tileSpriteName] or { 5, 0 })), entity.position.x * SQUARESIZE + 16, entity.position.y * SQUARESIZE + 16, 0, 2, 2, 8, 8)
    end
end