--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 10/02/2018
-- Time: 14:59
-- To change this template use File | Settings | File Templates.
--

return function(entity, args, intentions)
    local c = (entity.behavior and entity.behavior.actions) or {}
    c.death = true
    entity.behavior = { actions = c, startTime = 2, time = 2 }
    core.filter.update(entity)
    addIntentions({ entity = entity, action = "death" }, intentions)
    TIMER = 2
    MAXTIMER = 2
    INTENTIONS = { { entity = GETPLAYER {}, action = "death" } }
end