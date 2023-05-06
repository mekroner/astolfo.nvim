local colors = require("astolfo.colors").load()

local astolfo = {}

astolfo.normal = {
    a = { fg = colors.bg, bg = colors.red, gui = "bold"},
    b = { fg = colors.red, bg = colors.bg, },
    c = { fg = colors.grey, bg = colors.bg },
}

astolfo.insert = {
    a = { fg = colors.bg, bg = colors.red, gui = "bold"}
}

astolfo.command = {
    a = { fg = colors.bg, bg = colors.red, gui = "bold"}
}

astolfo.visual = {
    a = { fg = colors.bg, bg = colors.red, gui = "bold"}
}

return astolfo
