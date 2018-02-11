local ctx = GS.new()


function ctx:enter(from, startIndex)
    print("Entered " .. self.name)
    ctx.from = from
    scripts.levels.loadLevel("testCutscene")
end

function ctx:update(dt)
    if DEBUG then
        require("lib.lovebird").update()
    end
end

function ctx:draw()
    MAP:draw(16, 16, 3, 3)
    love.graphics.setColor(255, 255, 255)
    --    love.graphics.print("Cutscene!", 200, 200, 0, 3, 3)
    scripts.systems.dialogbox.draw()

    --scripts.systems.collision.debug_draw()

end

function ctx:keypressed(key, scancode, isrepeat)
    if not isrepeat then
        if love.keyboard.isDown("escape") then
            GS.pop()
        else
            scripts.systems.dialogbox.next()
        end
    end
end

function ctx:leave()
    print('Leaving ' .. self.name)
end

ctx.name = "Cutscene"

return ctx