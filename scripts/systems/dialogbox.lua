local a = {}

lines = {}
local i = 1

a.draw = function()
    scripts.systems.render.renderText.renderText(lines[i], { x = 200, y = 200 }, 25)
end

a.next = function()
    i = i + 1
    if lines[i] == "LEVEL HERE" then
        i = i + 1
        GS.pop()
    end
end

-- Read story from text file
local k = 1
local story = love.filesystem.newFile("assets/story.txt")

for line in story:lines() do
    if line == "-----" then
        k = k + 1
    elseif lines[k] then
        lines[k] = lines[k] .. "\n" .. line
    else
        lines[k] = line
    end
end


return a