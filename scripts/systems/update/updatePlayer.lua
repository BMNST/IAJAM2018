--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 09/02/2018
-- Time: 19:47
-- To change this template use File | Settings | File Templates.
--

local executeColor = function(color)
    -- Removes color from color pallete for every gamejam team
    -- No, it executes all logic belonging to this color.


end


return function(entity, args)
    -- args: {x = plusX, y = plusY}
    pprint(F)
    local newPosition = {x = entity.position.x + args.x, y= entity.position.y + args.y}
    if not scripts.systems.collision.mapCollision(newPosition) then
        print("UNWALKABLE")
        return
    end
    entity.position = newPosition
end