--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 10/02/2018
-- Time: 14:54
-- To change this template use File | Settings | File Templates.
--

local turretFunc = function(entity)
    local player = GETPLAYER()

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
        if player.position.x == loc.x and player.position.y == loc.y then
            print("YOU HAVE DIED")
            scripts.actions.startActions.death(player)

        end
    end
end

local checkTrapDoors = function(entity)
    local p = GETPLAYER()
    if  entity.position.x ==p.position.x and entity.position.y == p.position.y and not entity.open then

        scripts.actions.startActions.death(p)
    end
end
return function()
    core.run("turret", turretFunc, {})
    core.run("trapdoor", checkTrapDoors, {})

end

