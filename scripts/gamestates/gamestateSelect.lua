local ctx = GS.new()

local toLevel = true

local order = {
--    { cutscene = true },
--    { wait = true },
--    { cutscene = true },
--    { level = "hungover" },
--    { cutscene = true },
--    { level = "painkillers" },
--    { cutscene = true },
--    { level = "trapDoors" },
--    { level = "cubeTransporter" },
--    { cutscene = true },
--    { level = "stoppingLasers" },
--    { cutscene = true },
--    { level = "rainbowCookie" },
--    { cutscene = true },
    { level = "disco" },
    { cutscene = true },
    { level = "turretLevel" },
    { cutscene = true },
    { level = "credits" },
}

local orderIndex = 0

function ctx:enter()
    print("Entered " .. self.name)
    scripts.levels.loadLevel("testCutscene")
    ctx.from = from
end

function ctx:update(dt)
    if DEBUG then
        require("lib.lovebird").update()
    end
    if toLevel then
        orderIndex = orderIndex + 1

        if order[orderIndex].cutscene then
            GS.push(scripts.gamestates.cutscene)
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
    scripts.systems.render.renderText.renderText("Press any key to start the game", { x = 400, y = 650 }, 30)
end

function ctx:keypressed(key, scancode, isrepeat)
    if not isrepeat then
        if love.keyboard.isDown("escape") then
            love.event.quit()
        else
            toLevel = true
        end
    end
end

function ctx:leave()
    print('Leaving ' .. self.name)
end

ctx.name = "Level selector"

return ctx