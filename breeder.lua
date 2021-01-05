local breeder = peripheral.wrap("left")
local monitor = peripheral.find("monitor")

local firstItem = breeder.getItem(1).getMetadata()
local secondItem = breeder.getItem(2).getMetadata()

monitor.setBackgroundColour(colors.white)
-- monitor.write("First slot strength: " .. tostring(firstItem.roost.strength))
-- monitor.write("Second slot strength: " .. tostring(secondItem.roost.strength))