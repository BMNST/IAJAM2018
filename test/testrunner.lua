local function RUNTEST(filename, str)
    TESTSTATE = {}
    INTENTIONS = {}

    scripts.levels.loadLevel(filename)
    local i = 0
    local cycles = 10000
    while i <= #str do
        if TESTSTATE.death or TESTSTATE.finished then
            return
        end
        if not table.empty(INTENTIONS) then
            INTENTIONS = handleIntentions(INTENTIONS)
            cycles = cycles - 1
            if cycles < 0 then
                return
            end
            if not (GETPLAYER().behavior and GETPLAYER().behavior.actions.death) then
                scripts.actions.playerDeathCheck(INTENTIONS)
            end

        else
            -- handleInput
            i = i + 1

            local char = string.sub(str, i, i)
            if char == ("w") then
                local a = scripts.actions.startActions.move(GETPLAYER(), { x = 0, y = -1, orientation = 1 }, INTENTIONS)
                if a then TIMER = MAXTIMER end
            elseif char == ("a") then
                local a = scripts.actions.startActions.move(GETPLAYER(), { x = -1, y = 0, orientation = 4 }, INTENTIONS)
                if a then TIMER = MAXTIMER end
            elseif char == ("s") then
                local a = scripts.actions.startActions.move(GETPLAYER(), { x = 0, y = 1, orientation = 3 }, INTENTIONS)
                if a then TIMER = MAXTIMER end
            elseif char == ("d") then
                local a = scripts.actions.startActions.move(GETPLAYER(), { x = 1, y = 0, orientation = 2 }, INTENTIONS)
                if a then TIMER = MAXTIMER end
            end
            --print(GETPLAYER().position.x, GETPLAYER().position.y)
        end
    end
end

GS = {
    pop = function()
        TESTSTATE.finished = true
    end
}

scripts.actions.doActions.death = function()
    TESTSTATE.death = true
end
return RUNTEST