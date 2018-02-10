--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 09/02/2018
-- Time: 21:25
-- To change this template use File | Settings | File Templates.
--

return function()
    LOADBYMAPFILE("assets/maps/nanders playground/test2.lua")
    scripts.objects.door(6, 8, true, "toggleDoor")
    scripts.objects.movingBlock(14, 14, "moveLeft", "moveRight", "moveUp", "moveDown")
    scripts.objects.turret(6, 10, 2, "rotateLeft", { "toggleLaser", "resetRotation1" })
end