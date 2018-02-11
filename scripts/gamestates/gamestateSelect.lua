local ctx = GS.new()

local toLevel = true

local order = {
    { cutscene = { s = 1, e = 3 } },
    { wait = true },
    { cutscene = { s = 5, e = 16 } },
    { level = "credits" },
    { cutscene = { s = 18, e = 21 } },
    { level = "painkillers" },
    { cutscene = { s = 23, e = 29 } },
    { level = "trapDoors" },
    { cutscene = { s = 31, e = 37 } },
    { level = "cubeTransporter" },
    { cutscene = { s = 39, e = 102 } },
    { level = "turretLevel" },
    { cutscene = { s = 104, e = 175 } },
    { level = "rainbowCookie" },
    { cutscene = { s = 177, e = 247 } },
    { level = "credits" },
}

local orderIndex = 0

function ctx:enter()
    print("Entered " .. self.name)
    scripts.levels.loadLevel("testCutscene")
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
        if order[orderIndex].wait then
            toLevel = false
            scripts.levels.loadLevel("painkillers")
        end
    end
end

function ctx:draw()
    MAP:draw(16, 16, 3, 3)
    love.graphics.setColor(255, 255, 255)
    --When the Unsinkable Happens
    --    scripts.systems.render.renderText.renderText("1 : #255/255/000/255#Level 1##\n2 : Cutscene\n3 : NULL\n4 : Tims Test", { x = 200, y = 200 }, 35)
    scripts.systems.render.renderText.renderText("  #255/000/000/255#  When###000/255/000/255# the###000/000/255/255# Unsinkable###255/255/000/255# Happens##", { x = 170, y = 200 }, 50)
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