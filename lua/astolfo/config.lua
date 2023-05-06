local config = {}

local defaults = {
    theme = nil,
    borders = true,
    fade_nc = false,

    styles = {},
    disable = {},
    inverse = {},
    custom_highlights = {},
    custom_colors = {},
}

config.options = {}

function config.set_options(opts)
    config.options = vim.tbl_deep_extend("force", config.options, opts or {})
end

config.set_options(defaults)

return config
