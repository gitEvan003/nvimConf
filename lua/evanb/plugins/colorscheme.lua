return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    enabled = true,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "macchiato", -- Options: latte, frappe, macchiato, mocha
        integrations = {
          treesitter = true,
          telescope = true,
          nvimtree = true,
          cmp = true,
          gitsigns = true,
          mason = true,
        },
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
