--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 09/02/2018
-- Time: 21:25
-- To change this template use File | Settings | File Templates.
--

return function()
    LOADBYMAPFILE("assets/maps/final/cubetransporter.lua")
    --ember, purple, cyan, green, yellow

    scripts.objects.door(24, 12, true, false, nil, "closeDoor")
    scripts.objects.door(24, 17, false, false, nil, "openDoor")
    scripts.objects.movingBlock(17, 8, "moveDown", nil, nil, "moveUp")
end