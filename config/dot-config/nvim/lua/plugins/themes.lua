return {
  -- Install your fork from Gitea
  {
    "https://git.internal.howetotech.dev/lukeh/tokyonight.nvim.git",
    name = "tokyonight-github", -- local plugin name
    lazy = false,
    priority = 1000,
  },

  -- Tell LazyVim which colorscheme to use
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-github", -- must match colors/<name>.lua
    },
  },
}
