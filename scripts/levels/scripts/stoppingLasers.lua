--
-- Created by IntelliJ IDEA.
-- User: Inf1n1te
-- Date: 11/02/2018
-- Time: 11:53
-- To change this template use File | Settings | File Templates.
--

-- ember, purple, cyan, green, yellow

return function()
    LOADBYMAPFILE("assets/maps/final/stoppingLasers.lua")
    scripts.objects.door(21, 12, false, false, "toggleDoor", nil, nil, nil, nil)
    scripts.objects.turret(20, 13, 3, true, nil, "rotateLeft", "rotateRight", nil, nil)
    scripts.objects.turret(21, 14, 2, true, nil, "rotateLeft", "rotateRight", nil, nil)
    scripts.objects.turret(26, 13, 3, true, nil, "rotateLeft", "rotateRight", nil, nil)
end

