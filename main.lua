GS = require "lib.gamestate"
pprint = require 'lib.pprint'
require 'lib.helpers.core_funcs'
require 'lib.ECFS'

function GETPLAYER()
    for k, v in pairs(F.player) do
        return v
    end
end

require 'lib.load_all_scripts'
SQUARESIZE = 32

function love.load()
    love.graphics.setDefaultFilter("nearest")
    GS.registerEvents()
    GS.push(scripts.gamestates.gamestateSelect)
end
