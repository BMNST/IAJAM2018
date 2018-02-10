--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 09/02/2018
-- Time: 19:47
-- To change this template use File | Settings | File Templates.
--

local executeColor = scripts.actions.runActions

core.getTile = function(position, list)
    for k, v in pairs(list) do
        if v.position.x == position.x and v.position.y == position.y then
            return v
        end
    end
    return nil
end

return function(entity, args)
    -- args: {x = plusX, y = plusY}
    local newPosition = { x = entity.position.x + args.x, y = entity.position.y + args.y }
    if not scripts.systems.collision.mapCollision(newPosition) then
        print("UNWALKABLE")
        return
    end

    entity.position = newPosition
    local tile = core.getTile(entity.position, F.tiles)
    if tile then
        executeColor(tile.tileColor)
    end
    local tile = core.getTile(entity.position, F.endNode)
    if tile  then
        print("HERE")
        scripts.levels.loadLevel("testLevel")
    end
end