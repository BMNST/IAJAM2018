--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 11/02/2018
-- Time: 11:44
-- To change this template use File | Settings | File Templates.
--

return function()
    local id = GETLEVELID()

    local p = GETPLAYER()
    local x, y = -83 * 16 + p.position.x * 32, -47 * 16 + p.position.y * 32
    if p.behavior and p.behavior.actions.move then
        local t = 1 - TIMER / MAXTIMER
        x = x + p.behavior.actions.move.x * t * SQUARESIZE
        y = y + p.behavior.actions.move.y * t * SQUARESIZE
    end
    if id > 3 then
        love.graphics.setColor(255, 255, 255,64)
        love.graphics.draw(DARKVIGNETTE, x, y)
        love.graphics.setColor(255, 255, 255,255)
        return
    end
    if id == 1 then
        love.graphics.draw(LIGHTVIGNETTE, x, y)
        love.graphics.setColor(0, 0, 0)
        scripts.systems.render.renderText.renderText("Controls: [MOVEMENT: WASD], [RESET: r]", { x = 80, y = 46.5 * 16 }, 16)
        love.graphics.setColor(255, 255, 255)
    else
        love.graphics.draw(DARKVIGNETTE, x, y)
        scripts.systems.render.renderText.renderText("Controls: [MOVEMENT: WASD], [RESET: r]", { x = 80, y = 46.5 * 16 }, 16)

    end
end