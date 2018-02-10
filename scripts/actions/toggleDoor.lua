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
        a.open = not a.open
        print(a.open, a.color.B)
        if a.open then
            a.color.B = 128
            a.unwalkable = nil
            core.filter.update(a)
        end
        if not a.open then
            a.color.B = 255
            a.unwalkable = true
            core.filter.update(a)
        end
    end)