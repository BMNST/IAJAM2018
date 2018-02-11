--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 09/02/2018
-- Time: 22:27
-- To change this template use File | Settings | File Templates.
--

ACTIONLOOKUPLIST = ACTIONLOOKUPLIST or {}
local a = function(str, func) ACTIONLOOKUPLIST[str] = func end
a("toggleLaser",
    function(a)
        scripts.actions.startActions.toggleLaser(a)

    end)
a("turnOnLaser",
    function(a)
        scripts.actions.startActions.turnOnOffLaser(a,true)

    end)
a("turnOffLaser",
    function(a)
        scripts.actions.startActions.turnOnOffLaser(a, false)
    end)