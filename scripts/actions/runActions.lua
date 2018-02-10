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

ACTIONLOOKUPLIST = ACTIONLOOKUPLIST or {}
function runSingleAction(object, color)
    ACTIONLOOKUPLIST[object[color]](object)
end

-- Run actions for certain color.
return function(color)
    core.run(color, runSingleAction, color)
end

