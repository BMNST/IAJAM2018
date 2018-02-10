--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 09/02/2018
-- Time: 19:34
-- To change this template use File | Settings | File Templates.
--
local quads = {}
quads.emberTile = {1,7}
return function(entity, args)

    love.graphics.draw(MAPTEXTUREATLAS, scripts.systems.render.getQuad(unpack(quads[entity.tileSpriteName] or {1,1})), entity.position.x * SQUARESIZE, entity.position.y * SQUARESIZE)
end