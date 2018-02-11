--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 09/02/2018
-- Time: 21:25
-- To change this template use File | Settings | File Templates.
--

-- ember, purple, cyan, green, yellow

return function()
    LOADBYMAPFILE("assets/maps/final/credits.lua")

    scripts.objects.turret(16, 15, 0, true, "turnOnLaser", nil, nil, "turnOffLaser", nil)
    scripts.objects.turret(17, 5, 2, true, "turnOnLaser", nil, nil, "turnOffLaser", nil)
    scripts.objects.turret(18, 15, 0, true, "turnOnLaser", nil, nil, "turnOffLaser", nil)
    scripts.objects.turret(19, 5, 2, false, nil, nil, "turnOffLaser", "turnOnLaser", nil)
    scripts.objects.turret(20, 15, 0, false, nil, nil, "turnOffLaser", "turnOnLaser", nil)
    scripts.objects.turret(21, 5, 2, false, nil, nil, "turnOffLaser", "turnOnLaser", nil)
    scripts.objects.turret(22, 15, 0, false, nil, "turnOffLaser", "turnOnLaser", nil, nil)
    scripts.objects.turret(23, 5, 2, false, nil, "turnOffLaser", "turnOnLaser", nil, nil)
    scripts.objects.turret(24, 15, 0, false, nil, "turnOffLaser", "turnOnLaser", nil, nil)
    scripts.objects.turret(25, 5, 2, false, "turnOffLaser", "turnOnLaser", nil, nil, nil)
    scripts.objects.turret(26, 15, 0, false, "turnOffLaser", "turnOnLaser", nil, nil, nil)
    scripts.objects.turret(27, 5, 2, false, "turnOffLaser", "turnOnLaser", nil, nil, nil)

    local b = scripts.objects.movingBlock(43, 23, "moveRight", "moveUp", "moveLeft", "moveDown")
    scripts.actions.startActions.move(b, { x = 1, y = 0 })


end