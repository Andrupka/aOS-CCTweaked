-- Draw the UI

term.setBackgroundColor(colors.white)
term.setTextColor(colors.black)
term.clear()
term.setCursorPos(1,1)
term.write("Installer Media Creation Utility")
term.setCursorPos(1,19)
term.setCursorPos(51,1)
term.setBackgroundColor(colors.red)
term.write("x")
term.setBackgroundColor(colors.gray)
term.setTextColor(colors.white)
term.setCursorPos(2,3)
term.write(" Create a bootable floppy ")
term.setCursorPos(2,5)
term.write("          Reboot          ")

-- Main loop

while true do
    local event, button, cx, cy = os.pullEvent("mouse_click")
    if cx > 2 and cx < 28 and cy == 3 then
        shell.run("copy *.nfp /disk/*")
        shell.run("copy *.lua /disk/*")
        shell.run("rename /disk/startup.lua /disk/startup2.lua")
        shell.run("copy /setup/setup.lua /disk/setup.lua")
        shell.run("copy /setup/startup.lua /disk/startup.lua")
    elseif cx > 2 and cx < 28 and cy == 5 then
        os.reboot()
    elseif cx == 51 and cy == 1 then
        shell.execute(".UI")
    end
end
