--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 09/02/2018
-- Time: 21:25
-- To change this template use File | Settings | File Templates.
--

return function()
    LOADBYMAPFILE("assets/maps/final/credits.lua")

    local b = scripts.objects.movingBlock(2, 2, "moveLeft", "moveDown", "moveUp", "moveRight")
    scripts.actions.startActions.move(b, { x = 1, y = 0 })


end