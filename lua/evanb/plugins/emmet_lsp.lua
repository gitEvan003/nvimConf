return {
  "aca/emmet-ls",
  ft = {
    "css", "eruby", "html",
    "javascript", "javascriptreact",
    "less", "sass", "scss",
    "svelte", "pug",
    "typescriptreact", "vue",
    "ejs",
  },

  opts = {
    capabilities = vim.lsp.protocol.make_client_capabilities(),

    filetypes = {
      "css", "eruby", "html",
      "javascript", "javascriptreact",
      "less", "sass", "scss",
      "svelte", "pug",
      "typescriptreact", "vue",
      "ejs",
    },

    init_options = {
      html = {
        options = {
          ["bem.enabled"] = true,
          ["output.indent"] = "    ",
        },
      },
    },
  },
}
