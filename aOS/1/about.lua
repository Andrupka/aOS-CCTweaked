-- Draw the UI
term.setBackgroundColor(colors.white)
term.setTextColor(colors.black)
term.clear()
term.setCursorPos(1,1)
term.write("About this computer")
term.setBackgroundColor(colors.red)
term.setCursorPos(51,1)
term.write("X")
icon = paintutils.loadImage("pcicon.nfp")
paintutils.drawImage(icon,2,3)

-- Write the info

term.setBackgroundColor(colors.white)
term.setTextColor(colors.black)
term.setCursorPos(2,12)
local label= os.getComputerLabel()
term.write(label)
term.setCursorPos(2,14)
term.write("aOS 1.0")
term.setCursorPos(15,3)
term.write("Made by Andrupka in summer 2022")
term.setCursorPos(15,4)
term.write("aOS is completely open source")
term.setCursorPos(15,5)
term.write("If you plan on editing it, credit me")

-- Main loop

while true do
    local event, button, cx, cy = os.pullEvent("mouse_click")
    if cx == 51 and cy == 1 and button == 1 then
        shell.execute(".UI")
    end
end
