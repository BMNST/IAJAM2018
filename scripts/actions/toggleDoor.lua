--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 09/02/2018
-- Time: 22:27
-- To change this template use File | Settings | File Templates.
--

ACTIONLOOKUPLIST = ACTIONLOOKUPLIST or {}
local a = function(str, func) ACTIONLOOKUPLIST[str] = func end
a("toggleDoor",
    function(a)
        scripts.actions.startActions.toggleDoor(a)
    end)
a("openDoor",
    function(a)
        scripts.actions.startActions.openCloseDoor(a, true)
    end)
a("closeDoor",
    function(a)
        scripts.actions.startActions.openCloseDoor(a, false)
    end)