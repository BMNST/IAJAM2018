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
quads.closedDoor = { 0, 20 }

return function(entity, args)
    love.graphics.draw(MAPTEXTUREATLAS, scripts.systems.render.getQuad(unpack(quads[entity.tileSpriteName] or { 5, 0 })), entity.position.x * SQUARESIZE, entity.position.y * SQUARESIZE, 0, 2, 2)
end