--
-- Created by IntelliJ IDEA.
-- User: Inf1n1te
-- Date: 11/02/2018
-- Time: 10:39
-- To change this template use File | Settings | File Templates.
--

-- ember, purple, cyan, green, yellow

return function()
    LOADBYMAPFILE("assets/maps/final/rainbowCookie.lua")
    scripts.objects.door(16, 9, false, false, "toggleDoor", nil, nil, nil, nil)
    scripts.objects.door(22, 10, true, true, nil, nil, nil, "toggleDoor", nil)
    scripts.objects.door(24, 12, false, false, nil, nil, "toggleDoor", nil, nil)
    scripts.objects.door(24, 16, true, false, nil, "toggleDoor", nil, nil, nil)
    scripts.objects.door(19, 17, false, true, nil, nil, nil, "toggleDoor", nil)
    scripts.objects.turret(21, 8, 0, true, nil, "rotateLeft", "rotateRight", nil, nil)
    scripts.objects.turret(22, 13, 2, true, nil, nil, "rotateLeft", "rotateRight", nil)
    scripts.objects.turret(26, 15, 2, true, "rotateLeft", "rotateRight", nil, nil, nil)
    scripts.objects.turret(16, 17, 3, true, "rotateRight", nil, nil, "rotateLeft", nil)
end