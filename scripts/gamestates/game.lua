local ctx = GS.new()

function ctx:enter(from, level)
    print("Entered " .. self.name)
    core.entity.push()
    ctx.from = from
    require 'scripts'

    -- load level
    core.entity.add({ position = { x = 2, y = 1 }, color = { R = 128, G = 128, B = 0 }, player = true })
    core.entity.add({ position = { x = 5, y = 1 }, color = { R = 0, G = 128, B = 128 }, unwalkable = true })
    core.entity.add({ position = { x = 6, y = 6 }, color = { R = 128, G = 0, B = 0 }, ember = "print" })
    core.entity.add({ position = { x = 3, y = 1 }, color = { R = 64, G = 0, B = 0 }, tileColor = "ember" })
end


function ctx:update(dt)
    require("lib.lovebird").update()
end

function ctx:draw()
    core.run("square", scripts.systems.render.squareRenderer, {})

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