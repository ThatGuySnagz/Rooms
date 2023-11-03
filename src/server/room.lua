local room = {}
room.info = require(script.roomInfo)
room.lastTurnDirection = nil
room.random = Random.new()

function room.GetRandom(prevRoom)
    local possibleRooms = workspace.Rooms:GetChildren()
    local randomRoom = possibleRooms[room.random:NextInteger(1, #possibleRooms)]

    -- [Rules]
    -- [1] next room must be different from previous
    -- [2] if there's a corner then the next turn must turn otherway
    -- [3] If previous room had stairs, then next room cannot

local direction = room.info[randomRoom.Name]["Direction"]
local hasStairs = room.info[randomRoom.Name]["Stairs"]
local prevHadStairs = room.info[prevRoom.Name]["Stairs"]

    if (prevRoom.Name == randomRoom.Name)
    or (direction and direction == room.lastTurnDirection)
    or (hasStairs and prevHadStairs)
    then
        return room.GetRandom(prevRoom)
    else
        if direction then
        room.lastTurnDirection = direction
            
        end
        return randomRoom
    end



end


function room.Generate(prevRoom)
   local randomRoom = room.GetRandom(prevRoom)
    local newRoom = randomRoom:Clone()

    newRoom.PrimaryPart = newRoom.Entrance
    newRoom:PivotTo(prevRoom.Exit.CFrame)
    newRoom.Entrance.Transparency = 1
    newRoom.Exit.Transparency = 1

    newRoom.Parent = workspace.GeneratedRooms

    return newRoom
end


return room