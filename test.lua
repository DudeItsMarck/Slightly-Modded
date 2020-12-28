local args = {...}
local X = args[1]
local Y = args[2]
local Z = args[3]
local right = true

function DigForward(idx)
    for k=1, idx do
        if turtle.getFuelLevel() < 15 then
            turtle.refuel()
        end
        if turtle.detect() then
            turtle.dig()
        end
        turtle.forward()
    end
    return
end

function TurnTurtle(idx)
    if idx % 2 == 0 then
        turtle.turnRight()
        if turtle.detect() then
            turtle.dig()
        end
        turtle.forward()
        turtle.turnRight()
    else
        turtle.turnLeft()
        if turtle.detect() then
            turtle.dig()
        end
        turtle.forward()
        turtle.turnLeft()
    end
end

if (X ~= nil) and (Y ~= nil) and (Z ~= nil) then
    turtle.digDown()
    turtle.down()
    
    for i=1, Y do
        for j=1, Z do
            DigForward(X)
            TurnTurtle(j)
            DigForward(X)
        end
        right = not right
        if turtle.detectDown() then
            turtle.digDown()
        end
        turtle.down()
    end
else
    print("Please fill out the arguments.")
end
