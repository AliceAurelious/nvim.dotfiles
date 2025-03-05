return{
	"neovim/nvim-lspconfig",
	config = function()
		require("lspconfig")["gdscript"].setup({
			name = "godot",
			cmd = vim.lsp.rpc.connect("127.0.0.1", "6005"),
		})
		require("lspconfig")["lua_ls"].setup({})
	end
}
