--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 10/02/2018
-- Time: 15:25
-- To change this template use File | Settings | File Templates.
--

ACTIONLOOKUPLIST = ACTIONLOOKUPLIST or {}
local a = function(str, func) ACTIONLOOKUPLIST[str] = func end
a("resetRotation1",
    function(a, intentions)
        scripts.actions.startActions.rotateTo(a, 1, intentions)
    end)
a("resetRotation2",
    function(a, intentions)
        scripts.actions.startActions.rotateTo(a, 2, intentions)
    end)
a("resetRotation3",
    function(a, intentions)
        scripts.actions.startActions.rotateTo(a, 3, intentions)
    end)
a("resetRotation4",
    function(a, intentions)
        scripts.actions.startActions.rotateTo(a, 4, intentions)
    end)
