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
    MAPTEXTUREATLAS= love.graphics.newImage("assets/tileset/tileset.png")
    require 'scripts'


    scripts.levels.loadLevel("testLevel")
end

function love.update(dt)
    require("lib.lovebird").update()
    scripts.main.mainloop(dt)
    MAP:update(dt)
end

function love.draw()
    MAP:draw(16,16,2,2)

    scripts.main.maindraw()
end

function love.mousepressed(x, y, button)
    core.runEvent({ x = x, y = y, button = button, type = "mouseclick" })
end

function love.keypressed(key, scancode, isrepeat)
--    core.runEvent({ key = key, scancode = scancode, isrepeat = isrepeat, type = "key" })
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