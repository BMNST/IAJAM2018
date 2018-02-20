--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 17-2-18
-- Time: 12:09
-- To change this template use File | Settings | File Templates.
--

--  closeDoor = <function 1>,
local aOrder = {}
aOrder.move = 1
aOrder.move = 2
aOrder.move = 3
aOrder.move = 4
aOrder.openDoor = 5
aOrder.print = 6
aOrder.resetRotation1 = 7
aOrder.resetRotation2 = 8
aOrder.resetRotation3 = 9
aOrder.resetRotation4 = 10
aOrder.rotate = 11

aOrder.toggleDoor = 13
aOrder.toggleLaser = 14
aOrder.turnOffLaser = 15
aOrder.turnOnLaser = 16
-- Intent: {entity = entity, action = #name}
local function sorter(a, b)
    print(a.action, b.action)
    if a.action ~= b.action then
        return aOrder[a.action] < aOrder[b.action]
    end
    if aOrder[a.action] == 2 or aOrder[a.action] == 4 then
        if a.entity.position.x ~= b.entity.position.x then
            return b.entity.position.x < a.entity.position.x
        end
        return b.entity.position.y < a.entity.position.y
    end
    if a.entity.position.x ~= b.entity.position.x then
        return a.entity.position.x < b.entity.position.x
    end

    return a.entity.position.y < b.entity.position.y
end

function sortIntentions(intentions)
    table.sort(intentions, sorter)

end

function addIntentions(intention, intentions)
    intentions[#intentions+1] = intention
end

function handleIntentions(intentions)
    local newIntentions = {}

    local sortedIntentions = sortIntentions(intentions)

    for k,v in ipairs(intentions) do
        scripts.actions.doActions.execute(v.entity, v.action, newIntentions)
    end

    return newIntentions
end