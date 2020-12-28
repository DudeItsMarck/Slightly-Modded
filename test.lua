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

function TurnTurtle()
    if right then
        turtle.turnRight()
        if turtle.detect() then
            turtle.dig()
        end
        turtle.forward()
        turtle.turnRight()
        right = false
    else
        turtle.turnLeft()
        if turtle.detect() then
            turtle.dig()
        end
        turtle.forward()
        turtle.turnLeft()
        right = true
    end
    right = not right

end

if (X ~= nil) and (Y ~= nil) and (Z ~= nil) then
    turtle.digDown()
    turtle.down()
    
    for i=1, Y do
        for j=1, Z do
            DigForward(X)
            TurnTurtle()
            DigForwards(X)
        end
        if turtle.detectDown() then
            turtle.digDown()
        end
        turtle.down()
    end
else
    print("Please fill out the arguments.")
end
