love.conf = function(t)
    t.title = "When the Unsinkable Happens"
    t.version = "0.10.2"
    if os.getenv("TEST") ~= nil then
        t.window = false
    else
        t.window.width = 84 * 16
        t.window.height = 48 * 16
        t.window.resizable = false
        t.window.vsync = false

    end
    --t.console = true
end