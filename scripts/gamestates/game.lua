local ctx = GS.new()
function table.empty(self)
    for _, _ in pairs(self) do
        return false
    end
    return true
end

function ctx:enter(from, level)
    print("Entered " .. self.name)
    ctx.from = from
    LEVEL = level
    scripts.levels.loadLevel(level)
end


function ctx:update(dt)
    if DEBUG then
        require("lib.lovebird").update()
    end
    MAP:update(dt)
    if not table.empty(INTENTIONS) then
        TIMER = TIMER - dt
        if TIMER < 0 then
            INTENTIONS = handleIntentions(INTENTIONS)
            if TIMER < 0 then
                TIMER = MAXTIMER
            end


            if not (GETPLAYER().behavior and GETPLAYER().behavior.actions.death) then
                scripts.actions.playerDeathCheck(INTENTIONS)
            end
        end
    else
        -- handleInput
    end

    for k, v in ipairs({ "cyan", "green", "ember", "purple", "yellow" }) do
        if _G["FLASH" .. v] then
            _G["FLASH" .. v] = _G["FLASH" .. v] - dt
            if _G["FLASH" .. v] < 0 then
                _G["FLASH" .. v] = nil
            end
        end
    end
end

function ctx:draw()
    MAP:draw(16, 16, 2, 2)
    --core.run("square", scripts.systems.render.squareRenderer, {})
    core.run("tileToImage", scripts.systems.render.renderSquareSprite, {})

    core.run("turret", scripts.systems.render.renderLaser, {})

    --scripts.systems.collision.debug_draw()

    scripts.systems.render.renderPlayer(GETPLAYER())
    --scripts.systems.collision.debug_draw()


    core.run("movingBlock", scripts.systems.render.renderMovingBlock, {})


    scripts.systems.render.renderText.renderText("Controls: [MOVEMENT: WASD], [RESET: r]", { x = 80, y = 46.5 * 16 }, 16)
    scripts.systems.render.renderVignet()

    if (GETPLAYER().behavior and GETPLAYER().behavior.actions.death) then
        local a = 255 - 255 * TIMER / 2
        love.graphics.setColor(0, 0, 0, a)
        love.graphics.rectangle("fill", 0, 0, 84 * 16, 48 * 16)
        love.graphics.setColor(255, 255, 255, 255)
        scripts.systems.render.renderText.renderText("  #255/255/255/255#  You###255/255/255/255# have###255/000/000/255# DIED", { x = 320, y = 200 }, 50)
    end
end

function ctx:keypressed(key, scancode, isrepeat)

    if not isrepeat then
        if love.keyboard.isDown("r") then
            scripts.levels.loadLevel(LEVEL)
        end

        --        if love.keyboard.isDown("escape") then
        --            GS.pop()
        --        end
        if not table.empty(INTENTIONS) then
            return
        end

        if not (GETPLAYER().behavior and GETPLAYER().behavior.actions.death) then
            if love.keyboard.isDown("w") then
                scripts.actions.startActions.move(GETPLAYER(), { x = 0, y = -1, orientation = 1 }, INTENTIONS)
                TIMER = MAXTIMER
            elseif love.keyboard.isDown("a") then
                scripts.actions.startActions.move(GETPLAYER(), { x = -1, y = 0, orientation = 4 }, INTENTIONS)
                TIMER = MAXTIMER
            elseif love.keyboard.isDown("s") then
                scripts.actions.startActions.move(GETPLAYER(), { x = 0, y = 1, orientation = 3 }, INTENTIONS)
                TIMER = MAXTIMER
            elseif love.keyboard.isDown("d") then
                scripts.actions.startActions.move(GETPLAYER(), { x = 1, y = 0, orientation = 2 }, INTENTIONS)
                TIMER = MAXTIMER
            end
        end
    end
end

function ctx:leave()
    print('Leaving ' .. self.name)
end

ctx.name = "Level 1"

return ctx