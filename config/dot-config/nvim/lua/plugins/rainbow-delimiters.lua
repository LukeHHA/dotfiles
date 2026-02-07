return {
  "HiPhish/rainbow-delimiters.nvim",
  config = function()
    require("rainbow-delimiters.setup").setup({
      priority = {},
      highlight = {
        "RainbowDelimiterBlue",
        "RainbowDelimiterYellow",
        "RainbowDelimiterYellow",
        "RainbowDelimiterViolet",
      },
    })
    local function set_rainbow_colors()
      vim.api.nvim_set_hl(0, "RainbowDelimiterYellow", { fg = "#b392f0" })
      vim.api.nvim_set_hl(0, "RainbowDelimiterBlue", { fg = "#79c0ff" })
      vim.api.nvim_set_hl(0, "RainbowDelimiterOrange", { fg = "#79c0ff" })
      vim.api.nvim_set_hl(0, "RainbowDelimiterGreen", { fg = "#ffab70" })
      vim.api.nvim_set_hl(0, "RainbowDelimiterViolet", { fg = "#ffab70" })
      vim.api.nvim_set_hl(0, "RainbowDelimiterCyan", { fg = "#79c0ff" })
      vim.api.nvim_set_hl(0, "RainbowDelimiterRed", { fg = "#ffAb70" })
    end

    set_rainbow_colors()

    vim.api.nvim_create_autocmd("ColorScheme", {
      callback = set_rainbow_colors,
    })
  end,
}
