return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "hrsh7th/nvim-cmp",         -- Completion plugin
      "hrsh7th/cmp-nvim-lsp",     -- LSP source for nvim-cmp
      "hrsh7th/cmp-buffer",       -- Buffer completions
      "hrsh7th/cmp-path",         -- Path completions
      "L3MON4D3/LuaSnip",         -- Snippet engine
      "saadparwaiz1/cmp_luasnip", -- Snippet completions
    },

    lazy = false,

    config = function()
      local lspconfig = require("lspconfig")
      local cmp = require("cmp")

      -- Setup nvim-cmp
      cmp.setup({
        mapping = {
          ["<C-Space>"] = cmp.mapping.complete(),  -- Trigger completion
          ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Confirm completion
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        },
        sources = {
          { name = "nvim_lsp" },
          { name = "buffer" },
          { name = "path" },
          { name = "luasnip" },
        },
      })

      -- Define capabilities for better completion
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Enable LSP servers
      local servers = { "ruby_lsp", "lua_ls", "gopls", "cssls", "ts_ls" }
      for _, lsp in ipairs(servers) do
        local opts = {
	capabilities = capabilities,
	}

	if lsp == "ts_ls" then
	opts.init_options = {
	  hostInfo = "neovim",
	}
	opts.filetypes = {
	  "javascript", "javascriptreact", "typescript", "typescriptreact"
	}
        end

  lspconfig[lsp].setup(opts)
      end
    end,
  }
}
