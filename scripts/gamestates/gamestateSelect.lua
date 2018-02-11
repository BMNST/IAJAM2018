local ctx = GS.new()

local toLevel = false

local order = {
    {},
    { cutscene = { s = 1, e = 3 } },
    { level = LEVELS[1] },
    { cutscene = { s = 1, e = 10 } },
    { level = LEVELS[2] },
    { cutscene = { s = 1, e = 10 } },
    { level = LEVELS[3] },
    { cutscene = { s = 1, e = 10 } },
    { cutscene = { s = 1, e = 10 } },
    { level = "credits" },

}

local orderIndex = 0

function ctx:enter()
    print("Entered " .. self.name)
    ctx.from = from
end

function ctx:update(dt)
    require("lib.lovebird").update()
    if toLevel then
        orderIndex = orderIndex + 1

        if order[orderIndex].cutscene then
            GS.push(scripts.gamestates.cutscene, order[orderIndex].cutscene.s, order[orderIndex].cutscene.e)
        end
        if order[orderIndex].level then
            GS.push(scripts.gamestates.game, order[orderIndex].level)
        end
    end
end

function ctx:draw()
    love.graphics.setColor(255, 255, 255)
    --    scripts.systems.render.renderText.renderText("1 : #255/255/000/255#Level 1##\n2 : Cutscene\n3 : NULL\n4 : Tims Test", { x = 200, y = 200 }, 35)
    scripts.systems.render.renderText.renderText("  #255/000/000/255#Welcome##\n    #000/255/000/255#to##\n#000/000/255/255#    the##\n#255/255/000/255#Monkeyhouse##", { x = 500, y = 200 }, 50)
    scripts.systems.render.renderText.renderText("Press space to start the game", { x = 400, y = 650 }, 30)

    --scripts.systems.collision.debug_draw()
    love.graphics.print(love.timer.getFPS(), 10, 10)
    love.graphics.print(collectgarbage('count'), 50, 10)
end

function ctx:keypressed(key, scancode, isrepeat)
    if not isrepeat then
        if love.keyboard.isDown("space") then
            toLevel = true
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