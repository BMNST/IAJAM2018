return function()

    core.run("square", scripts.systems.render.squareRenderer, {})
    core.run("tileToImage", scripts.systems.render.renderSquareSprite, {})

    --scripts.systems.collision.debug_draw()
    love.graphics.print(love.timer.getFPS(), 10, 10)
    love.graphics.print(collectgarbage('count'), 50, 10)
    scripts.systems.render.renderPlayer(GETPLAYER())
end