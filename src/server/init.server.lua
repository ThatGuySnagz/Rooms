local room = require(script.room)

local prevRoom = workspace.StartRoom
room.Generate(prevRoom)

for i=1, 10 do
    prevRoom = room.Generate(prevRoom)
end