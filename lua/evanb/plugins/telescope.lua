return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8", -- Use the latest stable version
  dependencies = { "nvim-lua/plenary.nvim" }, -- Required dependency

  config = function()
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")

    telescope.setup({
      defaults = {
        mappings = {
          i = { -- Insert mode mappings
            ["<C-u>"] = false, -- Clear prompt
            ["<C-d>"] = false, -- Scroll down
          },
          n = { -- Normal mode mappings
            ["q"] = require("telescope.actions").close,
          },
        },
      },
    })

    -- Define keymaps inside the config function
    local map = vim.keymap.set
    local opts = { noremap = true, silent = true }

    map("n", "<leader>ff", builtin.find_files, opts)    -- Find files
    map("n", "<leader>fg", builtin.live_grep, opts)     -- Live grep
    map("n", "<leader>fb", builtin.buffers, opts)       -- Open buffers
    map("n", "<leader>fh", builtin.help_tags, opts)     -- Help tags
  end,
}
