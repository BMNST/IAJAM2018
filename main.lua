GS = require "lib.gamestate"
pprint = require 'lib.pprint'
require 'lib.helpers.core_funcs'
require 'lib.ECFS'
LEVELS = { "testLevel", "testTim", "testLevel" }
function NEXTLEVEL()
    for i = 1, #LEVELS - 1 do
        if LEVELS[i] == LEVEL then
            LEVEL = LEVELS[i + 1]
            return LEVEL
        end
    end
end

function GETPLAYER()
    for k, v in pairs(F.player) do
        return v
    end
end

require 'lib.load_all_scripts'
SQUARESIZE = 32
MAPTEXTUREATLAS = love.graphics.newImage("assets/tileset/tileset.png")

function love.load()
    love.graphics.setDefaultFilter("nearest")
    GS.registerEvents()
    GS.push(scripts.gamestates.gamestateSelect)
end
