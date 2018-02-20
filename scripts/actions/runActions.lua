--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 09/02/2018
-- Time: 20:20
-- To change this template use File | Settings | File Templates.
--
require "scripts.actions.printAction"
require "scripts.actions.toggleDoor"
require "scripts.actions.moveAction"
require "scripts.actions.rotateAction"
require "scripts.actions.toggleLaser"

ACTIONLOOKUPLIST = ACTIONLOOKUPLIST or {}
function runSingleAction(object, args)
    local color, intentions = unpack(args)
    if type(object[color]) == "string" then
        ACTIONLOOKUPLIST[object[color]](object, intentions)
    else
        for k, v in ipairs(object[color]) do
            ACTIONLOOKUPLIST[v](object, intentions)
        end
    end
end

-- Run actions for certain color.
return function(color, intentions)
    _G["FLASH" .. color] = 0.1
    core.run(color, runSingleAction, {color, intentions})
end

