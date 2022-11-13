-- Initialize the peripherals before booting
function initPeripherals()
    deviceAmount = 0
    if peripheral.isPresent("top") == true then
        topdeviceType = peripheral.getType("top")
        print("Found device:", topdeviceType, "on top")
        deviceAmount = deviceAmount + 1
    end
    if peripheral.isPresent("left") == true then
        leftdeviceType = peripheral.getType("left")
        print("Found device:", leftdeviceType, "on the left side")
        deviceAmount = deviceAmount + 1
    end
    if peripheral.isPresent("right") == true then
        rightdeviceType = peripheral.getType("right")
        print("Found device:", rightdeviceType, "on the right side")
        deviceAmount = deviceAmount + 1
    end
    if peripheral.isPresent("bottom") == true then
        bottomdeviceType = peripheral.getType("bottom")
        print("Found device:", bottomdeviceType, "on the bottom")
        deviceAmount = deviceAmount + 1
    end
    print("Device discovery finished. Found", deviceAmount , "device(s)")
end
initPeripherals()
print("Checking init files...")

-- Read and launch init files.

function readInit()
    if fs.exists("/init/init.cfg") == true then
        print("Init file found. Proceeding.")
    else print("Init file not found. Halting.")
    end
end
readInit()
