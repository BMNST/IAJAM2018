--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 17-2-18
-- Time: 12:09
-- To change this template use File | Settings | File Templates.
--

--  closeDoor = <function 1>,
local aOrder = {}
aOrder.death = 0
aOrder.move = 1

aOrder.openCloseDoor = 5
aOrder.print = 6

aOrder.rotate = 11
aOrder.rotateTo = 11
aOrder.toggleDoor = 12
aOrder.toggleLaser = 13
aOrder.turnOnOffLaser = 15
-- Intent: {entity = entity, action = #name}
local function sorter(a, b)
    print(a.action, b.action)
    if a.action ~= b.action then
        return aOrder[a.action] < aOrder[b.action]
    end
    if a.action == "move" then
        local ax = a.entity.behavior.actions.move.x
        local ay = a.entity.behavior.actions.move.y
        local bx = b.entity.behavior.actions.move.x
        local by = b.entity.behavior.actions.move.y

        local az = ax * 2 + ay
        local bz = bx * 2 + by
        if az ~= bz then
            return az > bz
        end
        if ax == 1 then
            return a.entity.position.x > b.entity.position.x
        end
        if ax == -1 then
            return a.entity.position.x < b.entity.position.x
        end
        if ay == 1 then
            return a.entity.position.y > b.entity.position.y
        end
        if ay == -1 then
            return a.entity.position.y < b.entity.position.y
        end
    end

    if a.entity.position.x ~= b.entity.position.x then
        return a.entity.position.x > b.entity.position.x
    end

    return a.entity.position.y > b.entity.position.y
end

function sortIntentions(intentions)
    table.sort(intentions, sorter)
end

function addIntentions(intention, intentions)
    intentions[#intentions + 1] = intention
end

function handleIntentions(intentions)
    local executeColor = scripts.actions.runActions

    local newIntentions = {}
    COLORSINUSE = {}
    sortIntentions(intentions)

    for k, v in ipairs(intentions) do
        scripts.actions.doActions.execute(v.entity, v.action, newIntentions)
    end

    for k, v in pairs(COLORSINUSE) do
        executeColor(k, newIntentions)
    end

    return newIntentions
end