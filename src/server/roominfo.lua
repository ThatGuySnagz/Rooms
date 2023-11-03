local roomInfo = {
    ["StartRoom"] = {
        ["Weight"] = 0,
    },

    ["Upstairs"] = {
        ["Stairs"] = true,
        ["Weight"] = 1,
    },
    ["LeftTurn"] = {
        ["Direction"] = "Left",
        ["Weight"] = 5
    },
    ["RightTurn"] = {
        ["Direction"] = "Right",
        ["Weight"] = 5
    },
    ["SmallRoom"] = {
        ["Weight"] = 6,
    },
    ["LongRoom"] = {
        ["Weight"] = 3,
    },
    ["LeftSnake"] = {
        ["Weight"] = 4,
    },
    ["RightSnake"] = {
        ["Weight"] = 4,
    },
    ["ArtGallery"] = {
        ["Weight"] = 0.1,
    }
}

return roomInfo