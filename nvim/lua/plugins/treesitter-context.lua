return {
	{
		"nvim-treesitter/nvim-treesitter-context",
		opts = function(_, opts)
			-- `opts` here is the merged options coming from LazyVim + extras
			-- Modify only what you want:
			opts.max_lines = 2
			-- return opts is optional; mutating is enough, but returning is fine too
		end,
	},
}
