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
    function(a, intentions)
        scripts.actions.startActions.toggleLaser(a, nil, intentions)
    end)
a("turnOnLaser",
    function(a, intentions)
        scripts.actions.startActions.turnOnOffLaser(a, true, intentions)
    end)
a("turnOffLaser",
    function(a, intentions)
        scripts.actions.startActions.turnOnOffLaser(a, false, intentions)
    end)