--
-- Created by IntelliJ IDEA.
-- User: Inf1n1te
-- Date: 10/02/2018
-- Time: 20:16
-- To change this template use File | Settings | File Templates.
--

return function()
    LOADBYMAPFILE("assets/maps/tims playground/test.lua")
    scripts.objects.door(20, 20, )
    scripts.objects.door(6, 8, true, "toggleDoor")
    --scripts.objects.movingBlock(14, 14, "moveLeft", "moveRight", "moveUp", "moveDown")
    scripts.objects.turret(6, 10, 2, "rotateLeft", { "toggleLaser", "resetRotation1" })
    scripts.objects.trapDoor(6, 9, false, "toggleDoor", "toggleDoor")
    scripts.objects.trapDoor(13, 14, false, "toggleDoor", "toggleDoor")
    scripts.objects.trapDoor(14, 13, false, "toggleDoor", "toggleDoor")
    scripts.objects.trapDoor(15, 14, false, "toggleDoor", "toggleDoor")
    scripts.objects.trapDoor(14, 15, false, "toggleDoor", "toggleDoor")

end