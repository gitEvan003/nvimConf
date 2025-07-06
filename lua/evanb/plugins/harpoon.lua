-- ~/.config/nvim/lua/plugins/harpoon.lua

return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")

    harpoon:setup()

    -- Keybindings
    local map = vim.keymap.set
    local list = harpoon:list()

    -- Add current file to Harpoon
    map("n", "<leader>a", function() list:add() end, { desc = "Harpoon: Add file" })

    -- Delete current file from list
    map("n", "<leader>da", function() list:remove() end, {desc = "Harpoon: Delete file" })

    -- Toggle Harpoon quick menu
    map("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(list) end, { desc = "Harpoon: Toggle quick menu" })

    -- Navigate to files
    map("n", "<C-h>", function() list:select(1) end, { desc = "Harpoon: Go to file 1" })
    map("n", "<C-i>", function() list:select(2) end, { desc = "Harpoon: Go to file 2" })
    map("n", "<C-n>", function() list:select(3) end, { desc = "Harpoon: Go to file 3" })
    map("n", "<C-s>", function() list:select(4) end, { desc = "Harpoon: Go to file 4" })
  end,
}
