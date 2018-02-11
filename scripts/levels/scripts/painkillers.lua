--
-- Created by IntelliJ IDEA.
-- User: Inf1n1te
-- Date: 11/02/2018
-- Time: 11:41
-- To change this template use File | Settings | File Templates.
--

-- ember, purple, cyan, green, yellow

return function()
    LOADBYMAPFILE("assets/maps/final/painkillers.lua")
    scripts.objects.door(20, 11, false, false, "openDoor", nil, nil, nil, nil)
    scripts.objects.door(21, 14, false, true, "openDoor", nil, nil, nil, nil)
    scripts.objects.door(22, 14, false, true, nil, nil, nil, "openDoor", nil)
end

