--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 09/02/2018
-- Time: 21:25
-- To change this template use File | Settings | File Templates.
--
local sti = require "lib.sti"
--green
--pink
--ember
--purple
LOADBYMAPFILE = function(mapmane)
    MAP = sti("assets/maps/nanders playground/test2.lua")
    local mainLayer = MAP.layers.main
    for i = 0, #mainLayer.data do
        if mainLayer.data[i] then
            for j = 0, #mainLayer.data[i] do

                if mainLayer.data[i][j] then
                    local id = mainLayer.data[i][j].id
                    -- cyan purple green red

                    if id == 0 then
                        scripts.objects.pressureplate(j,i,"cyan")
                    end
                    if id == 1 then
                        scripts.objects.pressureplate(j,i,"purple")
                    end
                    if id == 2 then
                        scripts.objects.pressureplate(j,i,"green")
                    end
                    if id == 3 then
                        scripts.objects.pressureplate(j,i,"ember")
                    end
                end
            end
        end
    end
end
return function(levelString)
    LOADBYMAPFILE("assets/maps/nanders playground/test2.lua")
end