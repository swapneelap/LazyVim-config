return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    if type(opts.ensure_installed) == "table" then
      vim.list_extend(opts.ensure_installed, { "bibtex", "latex", "org" })
    end
    opts.highlight = {
      enable = true,
      additional_vim_regex_highlighting = { "org" },
      disable = { "latex" },
    }
  end,
}
