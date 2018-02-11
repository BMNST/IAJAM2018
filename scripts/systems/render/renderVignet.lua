--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 11/02/2018
-- Time: 11:44
-- To change this template use File | Settings | File Templates.
--

return function()
    local id = GETLEVELID()
    if id > 3 then
        return
    end
    local p = GETPLAYER()
    local x, y = -83 * 16 + p.position.x * 32, -47 * 16 + p.position.y * 32
    if p.behavior and p.behavior.actions.move then
        local t = 1 - p.behavior.time / p.behavior.startTime
        x = x + p.behavior.actions.move.x * t * SQUARESIZE
        y = y + p.behavior.actions.move.y * t * SQUARESIZE
    end
    if id == 1 then
        love.graphics.draw(LIGHTVIGNETTE, x, y)
    else
        love.graphics.draw(DARKVIGNETTE, x, y)
    end
    print("A")
end