--
-- Created by IntelliJ IDEA.
-- User: Inf1n1te
-- Date: 10/02/2018
-- Time: 20:16
-- To change this template use File | Settings | File Templates.
--

-- ember, purple, cyan, green, yellow

return function()
    LOADBYMAPFILE("assets/maps/tims playground/test.lua")
    scripts.objects.door(20, 10, true, true, "toggleDoor", nil, nil, nil, nil)
    scripts.objects.door(24, 10, false, true, nil, "toggleDoor", nil, nil, nil)
    scripts.objects.door(28, 17, false, true, nil, nil, nil, nil, "toggleDoor")
    scripts.objects.turret(22, 15, 0, false, nil, nil, nil, "rotateLeft", "toggleLaser")
    scripts.objects.turret(26, 16, -1, true, "toggleLaser", nil, nil, nil, "toggleLaser")
    scripts.objects.turret(26, 18, -1, true, "toggleLaser", "toggleLaser", "toggleLaser", "toggleLaser", "toggleLaser")
end