return{
	"hrsh7th/vim-vsnip",
	"hrsh7th/cmp-vsnip",
	config = function()
		require'cmp'.setup {
			sources = {
				{ name = 'vsnip' }
			}
		}
	end
}
