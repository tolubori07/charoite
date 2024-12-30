local M = {}

function M.load(colors)
    local highlights = {
        -- Editor highlights
        Normal = { fg = colors.fg, bg = colors.bg },
        LineNr = { fg = colors.gray },
        CursorLine = { bg = colors.black },
        CursorLineNr = { fg = colors.purple, bold = true },
        SignColumn = { bg = colors.bg },
        ColorColumn = { bg = colors.black },
        
        -- Syntax highlighting
        Comment = { fg = colors.gray, italic = true },
        Constant = { fg = colors.yellow },
        String = { fg = colors.green },
        Character = { fg = colors.green },
        Number = { fg = colors.yellow },
        Boolean = { fg = colors.yellow },
        Float = { fg = colors.yellow },
        
        -- Keywords and Identifiers
        Identifier = { fg = colors.fg },
        Function = { fg = colors.light_purple },
        Statement = { fg = colors.dark_purple, bold = true },
        Conditional = { fg = colors.light_purple, bold = true },
        Repeat = { fg = colors.light_purple, bold = true },
        Label = { fg = colors.purple },
        Operator = { fg = colors.fg },
        Keyword = { fg = colors.purple, bold = true },
        Exception = { fg = colors.red },
        
        -- PreProc
        PreProc = { fg = colors.gray },
        Include = { fg = colors.gray },
        Define = { fg = colors.gray },
        Macro = { fg = colors.gray },
        PreCondit = { fg = colors.gray },
        
        -- Types
        Type = { fg = colors.dark_purple },
        StorageClass = { fg = colors.dark_purple, bold = true },
        Structure = { fg = colors.purple, bold = true },
        Typedef = { fg = colors.dark_purple, bold = true },
        
        -- Special
        Special = { fg = colors.yellow },
        SpecialChar = { fg = colors.yellow },
        Tag = { fg = colors.purple },
        Delimiter = { fg = colors.fg },
        SpecialComment = { fg = colors.gray, italic = true },
        Debug = { fg = colors.yellow },
        
        -- UI Elements
        StatusLine = { fg = colors.purple, bg = colors.black },
        StatusLineNC = { fg = colors.gray, bg = colors.black },
        VertSplit = { fg = colors.gray },
        Title = { fg = colors.purple, bold = true },
        Visual = { bg = colors.dark_purple, fg = colors.fg },
        VisualNOS = { bg = colors.dark_purple },
        Search = { bg = colors.dark_purple, fg = colors.fg },
        IncSearch = { bg = colors.purple, fg = colors.black },
        
        -- Completion Menu
        Pmenu = { fg = colors.fg, bg = colors.black },
        PmenuSel = { fg = colors.black, bg = colors.purple },
        PmenuSbar = { bg = colors.black },
        PmenuThumb = { bg = colors.purple },
        
        -- Messages
        Error = { fg = colors.red },
        ErrorMsg = { fg = colors.red },
        WarningMsg = { fg = colors.yellow },
        MoreMsg = { fg = colors.green },
        Question = { fg = colors.purple },
        
        -- Text Attributes
        Underlined = { underline = true },
        Bold = { bold = true },
        Italic = { italic = true }
    }

    -- Apply highlights
    for group, settings in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, settings)
    end
end

return M
