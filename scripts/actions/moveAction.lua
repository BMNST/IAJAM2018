--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 09/02/2018
-- Time: 20:22
-- To change this template use File | Settings | File Templates.
--
ACTIONLOOKUPLIST = ACTIONLOOKUPLIST or {}



local a = function(str, func) ACTIONLOOKUPLIST[str] = func end
a("moveLeft", function(a)
    local pos = { x = a.position.x - 1, y = a.position.y }
    if not scripts.systems.collision.mapCollision(pos) then
        return
    end
    scripts.actions.startActions.move(a, { x = -1, y = 0 })
end)
a("moveRight", function(a)
    local pos = { x = a.position.x + 1, y = a.position.y }
    if not scripts.systems.collision.mapCollision(pos) then
        return
    end
    scripts.actions.startActions.move(a, { x = 1, y = 0 })
end)
a("moveUp", function(a)
    local pos = { x = a.position.x, y = a.position.y - 1 }
    if not scripts.systems.collision.mapCollision(pos) then
        return
    end
    scripts.actions.startActions.move(a, { x = 0, y = -1 })
end)
a("moveDown", function(a)
    local pos = { x = a.position.x, y = a.position.y + 1 }
    if not scripts.systems.collision.mapCollision(pos) then
        return
    end
    scripts.actions.startActions.move(a, { x = 0, y = 1 })
end)
