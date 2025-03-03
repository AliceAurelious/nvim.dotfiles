return{
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"3rd/image.nvim", opts = {}
	}, -- Optional image support in preview window: See `# Preview Mode` for more information
	config = function()
		require("neo-tree").setup({
			window = {
				mappings = {
					["P"] = {
						"toggle_preview",
						config = {
							use_float = true,
							use_image_nvim = true,
							-- title = 'Neo-tree Preview',
							},
						},
					}
				}
			})
			source_selector = {
				winbar = false,
				statusline = false
			}
			vim.api.nvim_create_autocmd("VimEnter", {
				command = "set nornu nonu | Neotree toggle",
			})
			vim.api.nvim_create_autocmd("BufEnter", {
				command = "set rnu nu",
			})
	end
 }
