--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 09/02/2018
-- Time: 19:34
-- To change this template use File | Settings | File Templates.
--
local quads = {}

quads.cyanTile = {1,5 }
quads.greenTile = {1,8 }
quads.emberTile = {1,11 }
quads.purpleTile = {1,14}
return function(entity, args)
    love.graphics.draw(MAPTEXTUREATLAS, scripts.systems.render.getQuad(unpack(quads[entity.tileSpriteName] or {5,0})), entity.position.x * SQUARESIZE, entity.position.y * SQUARESIZE, 0,2,2)
end