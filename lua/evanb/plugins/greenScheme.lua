return {
	 {
      'sainnhe/everforest',
      lazy = false,
	  enabled = false,
      priority = 1000,
      config = function()
        vim.g.everforest_enable_italic = true
		vim.g.everforest_transparent_background = 0
		vim.g.everforest_background = 'hard'
        vim.cmd.colorscheme('everforest')
      end
    }
}
