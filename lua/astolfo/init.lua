-- Colorscheme name:        astolfo
-- Description:             An amazing theme for little boys.
-- Author:                  Mag
-- Website:                 -

local util = require("astolfo.util")
local config = require("astolfo.config")


local astolfo = {}

function astolfo.setup(options)
    astolfo.load(true)
end

function astolfo.load(exec_autocmd)
    local colors = require("astolfo.colors")

    util.load(colors, exec_autocmd)
end

return astolfo
