return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
    },
    config = function()
      local cmp = require("cmp")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- =============================
      -- Setup nvim-cmp (autocomplete)
      -- =============================
      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        mapping = {
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        },
        sources = {
          { name = "nvim_lsp" },
          { name = "buffer" },
          { name = "path" },
          { name = "luasnip" },
        },
		completion = {
			autocomplete = { require("cmp.types").cmp.TriggerEvent.TextChanged },
		},
      })

      -- =============================
      -- LSP server definitions
      -- =============================
	  vim.filetype.add({
		  extension = {
			js = "javascript",
			jsx = "javascriptreact",
			ts = "typescript",
			tsx = "typescriptreact",
		  }
		})
      local servers = {
		jdtls = {
			cmd = { "jdtls"},
		},
        lua_ls = {
          cmd = { "lua_ls" },
		  filetypes = { 'lua' },
        },
        gopls = {
          cmd = { 'gopls' },
		  filetypes = { 'go'},
        },
        cssls = {
          cmd = { "vscode-css-language-server", "--stdio" },
		  filetypes = { 'css' },
        },
        ts_ls = {
          cmd = { "typescript-language-server", "--stdio" },
          filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
          init_options = { hostInfo = "neovim" },
        },
      }
    end
  }
}


