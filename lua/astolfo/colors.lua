local colors = {
    none = "NONE",

    white = "#F6DDF0",      -- Pale Purple Pantome
    grey = "#9A7E85",
    dark_grey = "#4a3434",  -- floating
    -- black = "#302020",      -- Black Coffee
    black = "#221226",      -- Black Coffee

    red = "#AB4156",        -- English Red
    light_red = "#FA9DB0",  -- Mauvelous
    dark_red = "#6e313B",   -- Catawba

    light_pink = "#f8bdd0", -- Orchid Pink 
    pink = "#FA69AA",       -- Hot Pink
    dark_pink = "#972357",   -- Jazzberry Jam

    purple = "#b66cb4",     -- Pearly Purple
    dark_purple = "#501855",-- Palatina Purple
    light_purple = "#daaed9", -- Pink Lavender

    light_blue = "#d4d3f5", -- Lavender Blue
    blue = "#a196ff",       -- Maximum Blue Purple
    dark_blue = "#423168",  -- Cyber Grape

    light_yellow = "#e8d8aa",-- Duch White
    yellow = "#787148",     -- Gold Fusion

}

colors.fg = colors.light_pink
colors.light_fg = colors.white
colors.bg = colors.black
colors.float = colors.dark_grey

colors.diff_add = colors.yellow
colors.diff_changes = colors.purple
colors.diff_remove = colors.red

colors.error = colors.red
colors.warn = colors.yellow
colors.info = colors.blue
colors.hint = colors.purple
return colors
