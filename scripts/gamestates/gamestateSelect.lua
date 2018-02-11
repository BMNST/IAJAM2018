local ctx = GS.new()

local toLevel = true

local order = {
    { cutscene = { s = 1 } },
    { wait = true },
    { cutscene = { s = 5 } },
    { level = "hungover" },
    { cutscene = { s = 11 } },
    { level = "painkillers" },
    { cutscene = { s = 14 } },
    { level = "trapDoors" },
    { level = "cubeTransporter" },
    { cutscene = { s = 22 } },
    { level = "stoppingLasers" },
    { cutscene = { s = 30 } },
    { level = "turretLevel" },
    { cutscene = { s = 61 } },
    { level = "rainbowCookie" },
    { cutscene = { s = 97 } },
    { level = "disco" },
    { cutscene = { s = 129 } },
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
            GS.push(scripts.gamestates.cutscene, order[orderIndex].cutscene.s)
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