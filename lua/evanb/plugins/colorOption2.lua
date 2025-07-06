-- Using lazy.nvim
return {
    {
  'ribru17/bamboo.nvim',
  lazy = false,
  enabled = true,
  priority = 1000,
  config = function()
    require('bamboo').setup {
      -- optional configuration here
-- Choose between 'vulgaris' (regular), 'multiplex' (greener), and 'light'
	style = 'multiplex',
-- Keybind to toggle theme style. Leave it nil to disable it, or set it to a string, e.g. "<leader>ts"
	toggle_style_key = '<leader>ts',
	toggle_style_list = { 'vulgaris', 'multiplex', 'light' },
    }
    require('bamboo').load()
  end,
    },
}
