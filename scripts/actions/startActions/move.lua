--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 10/02/2018
-- Time: 10:41
-- To change this template use File | Settings | File Templates.
--

return function(entity, args, intentions)
    local newPosition = { x = entity.position.x + args.x, y = entity.position.y + args.y }
    entity.orientation = args.orientation
    if not scripts.systems.collision.mapCollision(newPosition, true) then
        print("UNWALKABLE")
        return
    end
    local c = (entity.behavior and entity.behavior.actions) or {}
    c.move = args
    entity.behavior = { actions = c, startTime = 0.05, time = 0.05 }
    addIntentions({entity = entity, action = "move"}, intentions)
    core.filter.update(entity)
    return true
end