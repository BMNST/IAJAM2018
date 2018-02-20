--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 10/02/2018
-- Time: 14:23
-- To change this template use File | Settings | File Templates.
--

ACTIONLOOKUPLIST = ACTIONLOOKUPLIST or {}



local a = function(str, func) ACTIONLOOKUPLIST[str] = func end
a("rotateLeft", function(a, intentions)
    scripts.actions.startActions.startRotate(a, -1, intentions)
end)

a("rotateRight", function(a, intentions)
    scripts.actions.startActions.startRotate(a, 1, intentions)
end)