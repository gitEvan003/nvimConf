return {
	"m4xshen/autoclose.nvim",

	config = function()
    require("autoclose").setup({
      -- optional overrides, e.g.:
      -- keys = { ["'"] = { escape = true, close = true, pair = "''", disabled_filetypes = { "tex", "text" } } },
      -- options = { pair_spaces = true, auto_indent = false },
    })
  end,
}
