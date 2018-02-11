local ctx = GS.new()

function ctx:enter()
    MAPTEXTUREATLAS= love.graphics.newImage("assets/tileset/tileset.png")
    print("Entered " .. self.name)
    ctx.from = from
end

function ctx:update(dt)
    require("lib.lovebird").update()
end

function ctx:draw()
    love.graphics.setColor(255, 255, 255)
    love.graphics.print("1 : Level 1\n2 : NULL\n3 : NULL\n4 : NULL", 200, 200, 0, 3, 3)

    --scripts.systems.collision.debug_draw()
    love.graphics.print(love.timer.getFPS(), 10, 10)
    love.graphics.print(collectgarbage('count'), 50, 10)
end

function ctx:keypressed(key, scancode, isrepeat)
    if not isrepeat then
        if love.keyboard.isDown("1") then
            GS.push(scripts.gamestates.game, "testLevel")
        elseif love.keyboard.isDown("2") then
            GS.push(scripts.gamestates.game, level2)
        elseif love.keyboard.isDown("3") then
            GS.push(scripts.gamestates.game, level3)
        elseif love.keyboard.isDown("4") then
            GS.push(scripts.gamestates.game, "testTim")
        elseif love.keyboard.isDown("escape") then
            love.event.quit()
        end
    end
end

function ctx:leave()
    print('Leaving ' .. self.name)
end

ctx.name = "Level selector"

return ctx