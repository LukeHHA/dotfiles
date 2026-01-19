return {
	'folke/snacks.nvim',
	keys = {
		{
			"<leader>t",
			function()
				Snacks.terminal()
			end,
			desc = "Open new [T]erminal"
		}
	},
	opts = {
		picker = {
			sources = {
				explorer = {
					layout = {
						layout = {
							position = "right"
						}
					}
				}
			}
		}
	}
}
