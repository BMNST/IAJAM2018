--
-- Created by IntelliJ IDEA.
-- User: Inf1n1te
-- Date: 11/02/2018
-- Time: 11:35
-- To change this template use File | Settings | File Templates.
--

-- ember, purple, cyan, green, yellow

return function()
    LOADBYMAPFILE("assets/maps/final/trapDoors.lua")
    scripts.objects.door(24, 16, false, false, "openDoor", nil, nil, nil, nil)
    scripts.objects.door(24, 19, false, false, nil, nil, nil, "openDoor", nil)
    scripts.objects.trapDoor(22, 13, false, true, nil, "toggleDoor", nil, nil, nil)
    scripts.objects.trapDoor(26, 13, true, true, nil, "toggleDoor", nil, nil, nil)

end

