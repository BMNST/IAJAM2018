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
    MAP = sti(mapmane)
    local mainLayer = MAP.layers.main
    for i in pairs(mainLayer.data) do
        if mainLayer.data[i] then

            for j in pairs (mainLayer.data[i]) do

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
                    if id == 4 then
                        scripts.objects.player(j,i)
                    end
                    if id == 5 then
                        scripts.objects.endNode(j,i)
                    end
                    if id == 6 then
                        scripts.objects.wall(j,i)
                    end
                    if id == 7 then
                        scripts.objects.wall(j, i, "yellow")
                    end
                end
            end
        end
    end
end
RESETLEVEL = function(object)
    core.entity.remove(object)
end
return function(levelString)
    core.run("nonPersistent", RESETLEVEL, {})

    scripts.levels.scripts[levelString]()
end