--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 10/02/2018
-- Time: 10:42
-- To change this template use File | Settings | File Templates.
--

core.getTile = function(position, list)
    for k, v in pairs(list) do
        if v.position.x == position.x and v.position.y == position.y then
            return v
        end
    end
    return nil
end

return function(entity, args, intentions)
    local executeColor = scripts.actions.runActions

    local newPosition = { x = entity.position.x + args.x, y = entity.position.y + args.y }
    if not scripts.systems.collision.mapCollision(newPosition) then
        print("UNWALKABLE")
        return
    end

    entity.position = newPosition

    local tile = core.getTile(entity.position, F.tiles)
    if tile then
        print(intentions)
        executeColor(tile.tileColor, intentions)
    end

    local tile = core.getTile(entity.position, F.endNode)
    if entity == GETPLAYER() then
        if tile then
            GS.pop()
        end
    end

    local tile = core.getTile(entity.position, F.trapdoor)
    if tile then
        if entity == GETPLAYER() then
            -- death code
        else
            print("DESTROY")
            core.entity.remove(entity)
        end
    end
end