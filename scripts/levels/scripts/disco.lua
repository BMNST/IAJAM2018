--
-- Created by IntelliJ IDEA.
-- User: Inf1n1te
-- Date: 11/02/2018
-- Time: 13:40
-- To change this template use File | Settings | File Templates.
--

-- ember, purple, cyan, green, yellow

return function()
    LOADBYMAPFILE("assets/maps/final/disco.lua")

    scripts.objects.turret(16, 3, 0, false, nil, nil, "rotateRight", "rotateLeft", "toggleLaser")
    scripts.objects.turret(18, 3, 2, false, "rotateRight", "rotateLeft", nil, nil, "toggleLaser")
    scripts.objects.turret(23, 3, 1, true, "rotateLeft", nil, nil, "rotateRight", nil)
    scripts.objects.turret(14, 5, 3, false, nil, nil, "rotateLeft", "rotateRight", "toggleLaser")
    scripts.objects.turret(14, 7, 1, false, "rotateLeft", "rotateRight", nil, nil, "toggleLaser")

    scripts.objects.door(20, 6, false, true, nil, nil, nil, nil, "toggleDoor")
    scripts.objects.door(24, 10, false, false, nil, nil, nil, nil, "toggleDoor")
    scripts.objects.door(24, 12, false, false, nil, nil, nil, nil, "toggleDoor")

    scripts.objects.trapDoor(26, 6, true, true, nil, nil, nil, nil, "toggleDoor")
    scripts.objects.trapDoor(18, 14, false, false, nil, nil, nil, nil, nil)
    scripts.objects.trapDoor(19, 15, false, true, nil, nil, nil, nil, nil)

    scripts.objects.movingBlock(24, 11, "moveUp", "moveLeft", "moveDown", "moveRight", nil)
    scripts.objects.movingBlock(10, 22, "moveUp", "moveLeft", "moveDown", "moveRight", nil)
end