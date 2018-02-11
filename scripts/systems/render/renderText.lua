local a = {}


local fonts = {}

local function color(text, i)
    return { tonumber(text:sub(i + 1, i + 3)), tonumber(text:sub(i + 5, i + 7)), tonumber(text:sub(i + 9, i + 11)), tonumber(text:sub(i + 13, i + 15)) }
end

a.parse = function(text, length)
    if length == nil then
        length = #text
    end
    local colortext = {}
    local buffer = ""

    if text:sub(1,1) ~= '#' then
        colortext[#colortext + 1] = { 255, 255, 255, 255 }
    end

    local i, c = 0, 0
    while c <= length do
        if text:sub(i, i) == '#' then
            if buffer ~= "" then
                colortext[#colortext + 1] = buffer
                buffer = ""
            end
            if text:sub(i + 1, i + 1) == '#' then
                colortext[#colortext + 1] = { 255, 255, 255, 255 }
                i = i + 2
            else
                colortext[#colortext + 1] = color(text, i)
                i = i + 17
            end
        else
            buffer = buffer .. text:sub(i, i)
            c = c + 1
            i = i + 1
        end
    end

    colortext[#colortext + 1] = buffer
    return colortext
end


a.renderText = function(text, position, size, length)
    if length == nil then
        length = #text
    end

    local oldFont = love.graphics.getFont()
    if fonts[tostring(size)] == nil then
        fonts[tostring(size)] = love.graphics.newFont("assets/fonts/DroidSansMonoDotted.ttf", size)
    end

    local sx, sy = 1,1
    local angle, ox, oy, kx, ky = 0, 0, 0, 0, 0

    love.graphics.setFont(fonts[tostring(size)])
    love.graphics.print(a.parse(text, length), position.x, position.y, angle, sx, sy, ox, oy, kx, ky)
    love.graphics.setFont(oldFont)
end

a.test = function()
    local text = "#111,222,333,444#"
    pprint(color(text, 1))
end

return a