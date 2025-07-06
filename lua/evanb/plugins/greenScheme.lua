return {
  "sainnhe/everforest",
  enabled = false,
  priority = 1000, -- Load Everforest first
  config = function()
    -- Set background preference: 'hard', 'medium', or 'soft'
    vim.g.everforest_background = "soft"
    vim.g.everforest_enable_italic = 1
    vim.g.everforest_transparent_background = 2  -- Set transparency level

    -- Apply colorscheme
    vim.cmd("colorscheme everforest")

    -- Additional custom highlights (optional)
    local function set_hl(group, opts)
      vim.api.nvim_set_hl(0, group, opts)
    end

    -- Define custom colors
    local colors = {
      bg = "#2E3B2F",
      fg = "#F5C2E7",
      comment = "#A0AFA0",
      string = "#C2D1A2",
      keyword = "#D8A0C2",
      function_name = "#E3B2D7",
    }

    -- Set highlights
    set_hl("Normal", { fg = colors.fg, bg = colors.bg })
    set_hl("Comment", { fg = colors.comment, italic = true })
    set_hl("String", { fg = colors.string })
    set_hl("Keyword", { fg = colors.keyword, bold = true })
    set_hl("Function", { fg = colors.function_name, bold = true })
    set_hl("Type", { fg = colors.keyword, bold = true })
    set_hl("Constant", { fg = colors.string })

    -- UI elements
    set_hl("CursorLine", { bg = "#394B3A" })
    set_hl("StatusLine", { fg = colors.fg, bg = "#3F4D3B", bold = true })
    set_hl("Visual", { bg = "#4A5A44" })
    set_hl("LineNr", { fg = "#6D7E6A" })
    set_hl("VertSplit", { fg = "#6D7E6A", bg = "#2E3B2F" })

    -- Syntax
    set_hl("Statement", { fg = colors.keyword, bold = true })
    set_hl("PreProc", { fg = colors.keyword })
    set_hl("Identifier", { fg = colors.function_name })
  end,
}
