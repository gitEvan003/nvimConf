return {
	"hrsh7th/cmp-nvim-lsp",
	event = { "BufReadPre", "BufNewFile"},
	config = function()
		-- import cmp lsp to plugin
		local cmp_nvim_lsp = require("cmp_nvim_lsp")

		-- used to enable auto-completion 
		local capabilities = cmp_nvim_lsp.default_capabilities()

		vim.lsp.config("*", {
			capabilities = capabilities,
		})
	end,
}
