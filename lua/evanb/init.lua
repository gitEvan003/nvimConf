print("Evan's NVIM")

require("evanb.remap")
require("evanb.config.lazy")

vim.lsp.enable('lua_ls', 'gopls', 'ts_ls')
