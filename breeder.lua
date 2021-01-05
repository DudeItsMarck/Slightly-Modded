local breeder = peripheral.wrap("left")

local firstItem = breeder.getItem(1).getMetadata()
local secondItem = breeder.getItem(2).getMetadata()

print("First slot strength: " .. tostring(firstItem.roost.strength))
print("Second slot strength: " .. tostring(secondItem.roost.strength))