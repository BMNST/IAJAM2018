--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 09/02/2018
-- Time: 21:25
-- To change this template use File | Settings | File Templates.
--

return function()
    LOADBYMAPFILE("assets/maps/nanders playground/test2.lua")
    scripts.objects.door(6,8,"ember")
    scripts.objects.movingBlock(14,14,"ember", "cyan", "green", "purple")

end