--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 09/02/2018
-- Time: 20:20
-- To change this template use File | Settings | File Templates.
--
require "scripts.actions.printAction"
ACTIONLOOKUPLIST = ACTIONLOOKUPLIST or {}
function runSingleAction(object, color)
    ACTIONLOOKUPLIST[object[color]](object)
end

-- Run actions for certain color.
return function(color)
    print(color)
    core.run(color, runSingleAction, color)
end

