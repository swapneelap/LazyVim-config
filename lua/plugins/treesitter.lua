return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = { "bibtex", "latex" },
    highlight = {
      enable = true,
      disable = { "latex" },
    },
  },
}
