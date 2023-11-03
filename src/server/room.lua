local room = {}
room.random = Random.new()

function room.Generate(prevRoom)
    local possibleRooms = workspace.Rooms:GetChildren()
    local randomRoom = possibleRooms[room.random:NextInteger(1, #possibleRooms)]
    local newRoom = randomRoom:Clone()

    newRoom.PrimaryPart = newRoom.Entrance
    newRoom:PivotTo(prevRoom.Exit.CFrame)
    newRoom.Entrance.Transparency = 1
    newRoom.Exit.Transparency = 1

    newRoom.Parent = workspace.GeneratedRooms

    return newRoom
end


return room