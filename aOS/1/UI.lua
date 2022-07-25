os.pullEvent = os.pullEventRaw

-- Loading the background

local x = 1
local y = 1
local function drawWallpaper()
    local wallpaper = paintutils.loadImage("wallpaper.nfp")
    paintutils.drawImage(wallpaper,1,1)
end

-- Drawing the items

local function drawMenu()
    term.setBackgroundColor(colors.gray)
    term.setCursorPos(1,1)
    term.write("[ Menu ]")
end

-- Calling functions

drawWallpaper()
drawMenu()

-- The main loop

while true do
    term.setTextColor(colors.white)
    drawWallpaper()
    drawMenu()
    local event, button, cx, cy = os.pullEvent("mouse_click")
    if button == 1 and cx <= 8 and cy == y then
        term.setCursorPos(1,2)
        term.setBackgroundColor(colors.white)
        term.setTextColor(colors.black)
        term.write(">Terminal")
        term.setCursorPos(1,3)
        term.write(">Shutdown")
        term.setCursorPos(1,4)
        term.write(">Reboot  ")
        term.setCursorPos(1,5)
        term.write(">IMC Util")
        term.setCursorPos(1,6)
        term.write(">About   ")
        menuOpen = true
        local event, button, cx, cy = os.pullEvent("mouse_click")
        if button == 1 and menuOpen == true and cx <= 8 and cy == 2 then
            term.setBackgroundColor(colors.black)
            term.setCursorPos(1,1)
            term.clear()
            shell.run("shell")
        elseif button == 1 and menuOpen == true and cx <= 8 and cy == 3 then
            term.setCursorPos(1,3)
            term.write("Goodbye  ")
            sleep(1)
            os.shutdown()
        elseif button == 1 and menuOpen == true and cx <= 8 and cy == 4 then
            term.setCursorPos(1,4)
            term.write("Rebooting")
            sleep(1)
            os.reboot()
        elseif button == 1 and menuOpen == true and cx <= 8 and cy == 5 then
            shell.run("CreateMedia")
        elseif button == 1 and menuOpen == true and cx <= 8 and cy == 6 then
            shell.run("about")
        end
    else drawWallpaper()
        drawMenu()
    end
end
