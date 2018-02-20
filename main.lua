GS = require "lib.gamestate"
pprint = require 'lib.pprint'
require 'lib.helpers.core_funcs'
require 'lib.ECFS'
LEVELS = { "hungover", "painkillers", "trapDoors", "cubeTransporter", "turretLevel", "rainbowCookie", "credits" }

DEBUG = true
INTENTIONS = {}
TIMER = -0.01
MAXTIMER = 0.05
CMAX = 0.05
function NEXTLEVEL()
    for i = 1, #LEVELS - 1 do
        if LEVELS[i] == LEVEL then
            LEVEL = LEVELS[i + 1]
            return LEVEL
        end
    end
    return LEVEL
end
function GETLEVELID()
    for i = 1, #LEVELS do
        if LEVELS[i] == LEVEL then
            return i
        end
    end
    return 44
end

function GETPLAYER()
    for k, v in pairs(F.player) do
        return v
    end
end

require 'lib.load_all_scripts'
SQUARESIZE = 32
MAPTEXTUREATLAS = love.graphics.newImage("assets/tileset/tileset.png")

function love.load(arg)
    if    os.getenv("TEST") ~= nil or arg[2] == "TEST" then
        local lovetest = require "lib/test/lovetest"
        local tc_outputter = require "lib/test/outputters/teamcity"
        lovetest.run(tc_outputter)

        love.event.quit( )
        return
    end
    local ass = love.audio.newSource("assets/music/spaceisdark.ogg")
    ass:setLooping(true)
    ass:play()
    DARKVIGNETTE = love.graphics.newImage("assets/tileset/black vignette.png")
    LIGHTVIGNETTE = love.graphics.newImage("assets/tileset/white vignette.png")
    love.graphics.setDefaultFilter("nearest")
    GS.registerEvents()
    GS.push(scripts.gamestates.gamestateSelect)
end
