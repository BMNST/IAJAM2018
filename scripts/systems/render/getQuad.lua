--
-- Created by IntelliJ IDEA.
-- User: nander
-- Date: 10/02/2018
-- Time: 09:56
-- To change this template use File | Settings | File Templates.
--
local quads = {}

return function(x, y)
    if quads[x .. ":" .. y] then
        return quads[x .. ":" .. y]
    end
    local q = love.graphics.newQuad(x * SQUARESIZE / 2, y * SQUARESIZE / 2, SQUARESIZE / 2, SQUARESIZE / 2, MAPTEXTUREATLAS:getDimensions())
    quads[x .. ":" .. y] = q
    return q
end