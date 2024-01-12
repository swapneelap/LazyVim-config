return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "stylua",
      "shellcheck",
      "shfmt",
      "flake8",
      "python-lsp-server",
      "texlab",
      "rust-analyzer",
    },
  },
}
