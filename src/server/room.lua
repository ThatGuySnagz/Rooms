local room = {}
room.random = Random.new()

function room.Generate(prevRoom)
    local possibleRooms = workspace.Rooms:GetChildren()
    local randomRoom = possibleRooms[room.random:NextINteger(1, #possibleRooms)]
    local newRoom = randomRoom:Clone()

    newroom.PrimaryPart = newRoom.Entrance
    newRoom:PivotTo(prevRoom.Exit.CFrame)
    newroom.Entrance.Transparency = 1
    newroom.Exit.Transparency = 1

    newRoom.Parent = workspace.GeneratedRooms


return room