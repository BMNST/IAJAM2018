--
-- Created by IntelliJ IDEA.
-- User: Inf1n1te
-- Date: 10/02/2018
-- Time: 20:16
-- To change this template use File | Settings | File Templates.
--

-- ember, purple, cyan, green, yellow
-- shortest path (so far): p, e, e, e, g, y, g, p, p, e, e, e

return function()
    LOADBYMAPFILE("assets/maps/tims playground/test.lua")
    scripts.objects.door(17, 10, true, true, nil, nil, nil, "toggleDoor", "closeDoor")
    scripts.objects.door(21, 10, false, true, nil, "toggleDoor", nil, "toggleDoor", "closeDoor")
    scripts.objects.door(25, 17, false, true, nil, nil, nil, nil, "toggleDoor")
    scripts.objects.turret(18, 13, 2, true, "rotateLeft", "resetRotation2", nil, nil, nil)
    scripts.objects.turret(20, 13, 2, true, "rotateRight", "resetRotation2", nil, nil, nil)
    scripts.objects.turret(19, 15, 0, false, nil, nil, nil, {"turnOffLaser", "rotateLeft"}, "toggleLaser")
    scripts.objects.turret(23, 16, -1, true, "toggleLaser", nil, nil, nil, { "resetRotation2", "turnOnLaser" })
    scripts.objects.turret(23, 18, -1, true, "toggleLaser", "toggleLaser", "toggleLaser", "toggleLaser", { "resetRotation2", "turnOnLaser" })
end