local ctx = GS.new()

function ctx:enter(from, level)
    print("Entered " .. self.name)
    core.entity.push()
    ctx.from = from
    require 'scripts'

    scripts.levels.loadLevel(levelString)
end


function ctx:update(dt)
    require("lib.lovebird").update()
    MAP:update(dt)
end

function ctx:draw()
    MAP:draw(16,16,2,2)

    --scripts.systems.collision.debug_draw()
    love.graphics.print(love.timer.getFPS(), 10, 10)
    love.graphics.print(collectgarbage('count'), 50, 10)
end

function ctx:keypressed(key, scancode, isrepeat)
    if not isrepeat then
        if love.keyboard.isDown("w") then
            scripts.systems.update.updatePlayer(GETPLAYER(), { x = 0, y = -1 })
        elseif love.keyboard.isDown("a") then
            scripts.systems.update.updatePlayer(GETPLAYER(), { x = -1, y = 0 })
        elseif love.keyboard.isDown("s") then
            scripts.systems.update.updatePlayer(GETPLAYER(), { x = 0, y = 1 })
        elseif love.keyboard.isDown("d") then
            scripts.systems.update.updatePlayer(GETPLAYER(), { x = 1, y = 0 })
        elseif love.keyboard.isDown("escape") then
            GS.pop()
        end
    end
end

function ctx:leave()
    core.entity.pop()
    print('Leaving ' .. self.name)
end

ctx.name = "Level 1"

return ctx