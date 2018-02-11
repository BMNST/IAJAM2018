local ctx = GS.new()

local e = 0

function ctx:enter(from, startIndex, endIndex)
    print("Entered " .. self.name)
    ctx.from = from
    scripts.levels.loadLevel("testCutscene")
    scripts.systems.dialogbox.set(startIndex)
    e = endIndex
end

function ctx:update(dt)
    require("lib.lovebird").update()
end

function ctx:draw()
    MAP:draw(16, 16, 3, 3)
    love.graphics.setColor(255, 255, 255)
    --    love.graphics.print("Cutscene!", 200, 200, 0, 3, 3)
    scripts.systems.dialogbox.draw()

    --scripts.systems.collision.debug_draw()
    love.graphics.print(love.timer.getFPS(), 10, 10)
    love.graphics.print(collectgarbage('count'), 50, 10)
end

function ctx:keypressed(key, scancode, isrepeat)
    if not isrepeat then
        if love.keyboard.isDown("escape") then
            GS.pop()
        else
            if scripts.systems.dialogbox.get() >= e then
                GS.pop()
            else
                scripts.systems.dialogbox.next()
            end
        end
    end
end

function ctx:leave()
    print('Leaving ' .. self.name)
end

ctx.name = "Cutscene"

return ctx