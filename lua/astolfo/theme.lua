local theme = {}

function theme.highlights(colors, config)
    local function remove_background(group)
        group["bg"] = colors.none
    end

    local function load_syntax()
        local syntax = {
            Type = { fg = colors.pink, style = "italic"},
            StructureClass = { fg = colors.purple },
            Structure = { fg = colors.purple },
            Constant = { fg = colors.purple },
            Character = { fg = colors.purple },
            String = { fg = colors.light_yellow},
            Boolean = { fg = colors.blue },
            Number = { fg = colors.blue },
            Float = { fg = colors.blue },

            Statement = { fg = colors.purple },
            Label = { fg = colors.purple },
            Operator = { fg = colors.red },
            Exception = { fg = colors.purple },
            PreProc = { fg = colors.purple },
            Include = { fg = colors.pink },
            Define = { fg = colors.red },
            Macro = { fg = colors.red },
            Typedef = { fg = colors.purple },
            PreCondit = { fg = colors.purple },
            Special = { fg = colors.light_red },
            SpecialChar = { fg = colors.light_red },
            Tag = { fg = colors.blue},
            Delimiter = { fg = colors.blue},

            -- Comment stuff
            Comment = { fg = colors.grey },
            SpecialComment = { fg = colors.red},
            Debug = { fg = colors.light_yellow},
            Underline = { fg = colors.light_blue, style = "underline" },
            Ignore = { fg = colors.light_yellow},
            Error = { fg = colors.red, style = "reverse" },
            Todo = { fg = colors.red, style = "reverse" },

            Conditional = { fg = colors.light_blue, style = "bold"},
            Keyword = { fg = colors.light_purple, style = "bold" },
            Repeat = { fg = colors.light_blue, style = "bold" },
            Function = { fg = colors.purple},
            Identifier = { fg = colors.fg},
        }
        return syntax
    end

    local function load_editor()
        local editor = {
            NormalFloat = { fg = colors.fg },
            FloatBorder = { fg = colors.fg },
            Cursor = { fg = colors.fg, bg = colors.none, style = "NONE" },
            CursorIM = { fg = colors.fg, bg = colors.none, style = "NONE" },
            LineNr = { fg = colors.light_red, bg = colors.none },
            CursorLineNr = { fg = colors.white, bg = colors.red, style = "bold"},
            CursorLine = { fg = colors.none, bg = colors.none },

            Pmenu = { fg = colors.fg, bg = colors.float },
            PmenuSel = { bg = colors.dark_red },
            PmenuSbar = { bg = colors.dark_red },
            PmenuThumb = { bg = colors.light_red },

            StatusLine = {fg = colors.fg, bg = colors.bg },
            StatusLineNC = { fg = colors.grey, bg = colors.red },

            TabLineFill = { fg = colors.fg, bg = colors.bg },
            TablineSel = { fg = colors.white, bg = colors.red },
            Tabline = { fg = colors.fg, bg = colors.bg },

            WildMenu = {fg = colors.fg, bg = colors.none, style = "bold"},
            -- Modes
            NormalMode = { fg = colors.blue, bg = colors.none },
            InsertMode = { fg = colors.blue, bg = colors.none },
            ReplaceMode = { fg = colors.blue, bg = colors.none },
            VisualMode = { fg = colors.blue, bg = colors.none },
            CommandMode = {fg = colors.purple, bg = colors.none, style = "reverse" },
            Warnings = { fg = colors.warn },

            -- Normal text and background
            Normal = {fg = colors.fg, bg = colors.bg },
            NormalNC = {fg = colors.fg, bg = colors.bg },
            SignColumn = { fg = colors.fg, bg = colors.bg},

            -- the column separating  vertically split windows
            VertSplit = { fg = colors.fg, bg = colors.none },

            EndOfBuffer = { fg = colors.dark_red }

        }
        return editor
    end

    local function load_lsp()
        local lsp = {
            LspDiagnosticsDefaultError = { fg = colors.error },
            LspDiagnosticsSignError = { fg = colors.error },

            LspDiagnosticsDefaultWarning = { fg = colors.warn },
            LspDiagnosticsSignWarning = { fg = colors.hint },

            LspDiagnosticsDefaultInfo = { fg = colors.info },
            LspDiagnosticsSignInfo = { fg = colors.info },

            LspDiagnosticsDefaultHint = { fg = colors.hint },
            LspDiagnosticsSignHint = { fg = colors.hint },

            DiagnosticError = { link = "LspDiagnosticsDefaultError" },
            DiagnosticWarn = { link = "LspDiagnosticsDefaultWarning" },
            DiagnosticInfo = { link = "LspDiagnosticsDefaultInfo" },
            DiagnosticHint = { link = "LspDiagnosticsDefaultHint" },
        }
        return lsp
    end
    
    local function load_plugins()
        local plugins = {
            CmpItemMenu = { fg = colors.grey },
            
            -- BufferLine
            -- BufferLineIndicatorSelected =  { fg = colors.light_red, bg = colors.red },
            -- BufferLineBufferSelected = { fg = colors.white, bg = colors.red},
            -- BufferLineCloseButtonSelected = { fg = colors.white, bg = colors.red },
            -- BufferLineModifiedSelected = { fg = colors.white, bg = colors.red },
            -- BufferLineFill = { fg = colors.bg },
            BufferLineIndicatorSelected =  { fg = colors.light_red},

            -- Git Signs
            GitSignsAdd = { fg = colors.diff_add},
            GitSignsAddNr = { fg = colors.diff_add},
            GitSignsAddLn = { fg = colors.diff_add},
            GitSignsChange = { fg = colors.diff_changes },
            GitSignsChangeNr = { fg = colors.diff_changes },
            GitSignsChangeLn = { fg = colors.diff_changes },
            GitSignsDelete = { fg = colors.diff_remove },
            GitSignsDeleteNr = { fg = colors.diff_remove },
            GitSignsDeleteLn = { fg = colors.diff_remove },

            IndentBlanklineChar = {fg = colors.float}

        }
        return plugins
    end
    return vim.tbl_deep_extend("error", load_syntax(), load_editor(), load_lsp(), load_plugins())
end

return theme
