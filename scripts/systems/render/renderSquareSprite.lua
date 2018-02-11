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
quads.yellowTile = { 4, 17 }

quads.cyanTileFLASH = { 1, 5 }
quads.greenTileFLASH = { 1, 8 }
quads.emberTileFLASH = { 1, 11 }
quads.purpleTileFLASH = { 1, 14 }
quads.yellowTileFLASH = { 1, 17 }

quads.openDoor = { 1, 20 }
quads.openDoorRotated = { 4, 20 }
quads.closedDoor = { 0, 20 }
quads.closedDoorRotated = { 3, 20 }
quads.movingBlock = { 2, 20 }

quads.trapopenDoor = { 8, 19 }
quads.trapopenDoorRotated = { 8, 20 }
quads.trapclosedDoor = { 9, 19 }
quads.trapclosedDoorRotated = { 9, 20 }

return function(entity, args)
    local Q = quads[entity.tileSpriteName] or { 5, 0 }
    local n = entity.tileSpriteName
    for k, v in ipairs({ "cyan", "green", "ember", "purple", "yellow" }) do
        if n == v .. "Tile" then
            if _G["FLASH" .. v] and _G["FLASH" .. v] > 0 then
                Q = quads[v .. "TileFLASH"] or { 5, 0 }
            end
        end
    end

    if entity.behavior and entity.behavior.actions.move then
        local t = 1 - entity.behavior.time / entity.behavior.startTime
        love.graphics.draw(MAPTEXTUREATLAS, scripts.systems.render.getQuad(unpack(Q)), (entity.position.x + entity.behavior.actions.move.x * t) * SQUARESIZE + 16, (entity.position.y + t * entity.behavior.actions.move.y) * SQUARESIZE + 16, 0, 2, 2, 8, 8)
    else
        love.graphics.draw(MAPTEXTUREATLAS, scripts.systems.render.getQuad(unpack(Q)), entity.position.x * SQUARESIZE + 16, entity.position.y * SQUARESIZE + 16, 0, 2, 2, 8, 8)
    end
end