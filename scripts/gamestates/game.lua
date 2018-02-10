local ctx = GS.new()

function ctx:enter(from, level)
    print("Entered " .. self.name)
    ctx.from = from
    LEVEL = level
    scripts.levels.loadLevel(level)
end


function ctx:update(dt)
    require("lib.lovebird").update()
    MAP:update(dt)

    for k, v in pairs(F.behaves) do
        v.behavior.time = v.behavior.time - dt
        if v.behavior.time < 0 then
            scripts.actions.doActions.execute(v)
        end
    end

    if not (GETPLAYER().behavior and GETPLAYER().behavior.actions.death) then
        scripts.actions.playerDeathCheck()
    end
    for k, v in ipairs({ "cyan", "green", "ember", "purple", "red" }) do
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
    love.graphics.print(love.timer.getFPS(), 10, 10)
    love.graphics.print(collectgarbage('count'), 50, 10)
    scripts.systems.render.renderPlayer(GETPLAYER())
    --scripts.systems.collision.debug_draw()
    love.graphics.print(love.timer.getFPS(), 10, 10)
    love.graphics.print(collectgarbage('count'), 50, 10)
    if (GETPLAYER().behavior and GETPLAYER().behavior.actions.death) then
        love.graphics.print("YOU HAVE DIED", 200, 200)
    end
    core.run("movingBlock", scripts.systems.render.renderMovingBlock, {})
end

function ctx:keypressed(key, scancode, isrepeat)

    if not isrepeat then
        if love.keyboard.isDown("r") then
            scripts.levels.loadLevel(LEVEL)
        end
        for k, v in pairs(F.behaves) do
            return
        end
        if not (GETPLAYER().behavior and GETPLAYER().behavior.actions.death) then
            if love.keyboard.isDown("w") then
                scripts.actions.startActions.move(GETPLAYER(), { x = 0, y = -1 })
            elseif love.keyboard.isDown("a") then
                scripts.actions.startActions.move(GETPLAYER(), { x = -1, y = 0 })
            elseif love.keyboard.isDown("s") then
                scripts.actions.startActions.move(GETPLAYER(), { x = 0, y = 1 })
            elseif love.keyboard.isDown("d") then
                scripts.actions.startActions.move(GETPLAYER(), { x = 1, y = 0 })
            elseif love.keyboard.isDown("escape") then
                GS.pop()
            end
        end
    end
end

function ctx:leave()
    print('Leaving ' .. self.name)
end

ctx.name = "Level 1"

return ctx