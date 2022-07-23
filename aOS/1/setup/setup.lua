term.setBackgroundColor(colors.cyan)
term.setTextColor(colors.white)
term.clear()
term.setCursorPos(1,1)
term.write("[ aOS Installer Program ]")
term.setCursorPos(1,9)
term.write("To install aOS press Y")
term.setCursorPos(1,10)
term.write("To shut down your computer press N")
while true do
    local event, key, isHeld = os.pullEvent("key")
    keyName = keys.getName(key)
    if keyName == "y" then
        shell.run("copy /disk/*.lua /*")
        shell.run("copy /disk/*.nfp /*")
        shell.run("rm /startup.lua")
        shell.run("rename /startup2.lua /startup.lua")
        term.clear()
        term.setCursorPos(1,1)
        term.write("aOS Setup has finished. Rebooting.")
        term.setCursorPos(1,2)
        term.write("Please remove the setup disk")
        sleep(5)
        os.reboot()
    elseif keyName == "n" then
        os.shutdown()
    end
end
