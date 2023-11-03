local room = {}
room.random = Random.new()


function room.Generate(prevRoom)
    local possibleRooms = workspace.Rooms:GetChildren()
    local randomRoom = possibleRooms[room.Random:NextInteger(1, #possibleRooms)]
    local newRoom = randomRoom:Clone()
    
    newRoom.PrimaryPart = newRoom.Entrance
    newRoom:PivotTo(prevRoom.Exit.CFrame)

    newRoom.Parent = workspace.GeneratedRooms

    return newRoom
end
return room