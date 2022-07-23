term.setBackgroundColor(colors.white)
term.setTextColor(colors.black)
term.clear()
term.setCursorPos(1,1)
os.pullEvent = os.pullEventRaw
print("Welcome to aOS")
textutils.slowPrint("--------------")
shell.run(".UI.lua")
