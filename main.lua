pprint = require 'lib.pprint'
require 'lib.helpers.core_funcs'
require 'lib.ECFS'
require 'lib.load_all_scripts'

SQUARESIZE = 32

function love.load()
    require 'scripts'

    core.entity.add({ position = { x = 2, y = 1 } })
    print("HOI")
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
end