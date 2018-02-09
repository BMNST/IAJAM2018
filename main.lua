pprint = require 'lib.pprint'
require 'lib.helpers.core_funcs'
require 'lib.ECFS'
require 'lib.load_all_scripts'

SQUARESIZE = 32

function GETPLAYER()
    for k, v in pairs(F.player) do
        return v
    end
end

function love.load()
    require 'scripts'

    core.entity.add({ position = { x = 2, y = 1 }, color = { R = 128, G = 128, B = 0 }, player = true })
    core.entity.add({ position = { x = 5, y = 1 }, color = { R = 0, G = 128, B = 128 }, unwalkable = true })
    core.entity.add({ position = { x = 6, y = 6 }, color = { R = 128, G = 0, B = 0 }, ember = "print" })
    core.entity.add({ position = { x = 3, y = 1 }, color = { R = 64, G = 0, B = 0 }, tileColor = "ember" })

end

function love.update(dt)
    scripts.main.mainloop(dt)
end

function love.draw()
    core.run("square", scripts.systems.render.squareRenderer, {})

    --scripts.systems.collision.debug_draw(dt)
    love.graphics.print(love.timer.getFPS(), 10, 10)
    love.graphics.print(collectgarbage('count'), 50, 10)
end

function love.mousepressed(x, y, button)
    core.runEvent({ x = x, y = y, button = button, type = "mouseclick" })
end

function love.keypressed(key, scancode, isrepeat)
    core.runEvent({ key = key, scancode = scancode, isrepeat = isrepeat, type = "key" })
    if not isrepeat then
        if love.keyboard.isDown("w") then
            scripts.systems.update.updatePlayer(GETPLAYER(), { x = 0, y = -1 })
        elseif love.keyboard.isDown("a") then
            scripts.systems.update.updatePlayer(GETPLAYER(), { x = -1, y = 0 })
        elseif love.keyboard.isDown("s") then
            scripts.systems.update.updatePlayer(GETPLAYER(), { x = 0, y = 1 })
        elseif love.keyboard.isDown("d") then
            scripts.systems.update.updatePlayer(GETPLAYER(), { x = 1, y = 0 })
        end
    end
end