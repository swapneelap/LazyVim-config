local on_attach = function(client, bufnr)
  client.server_capabilities.hoverProvider = false
end

return {
  "neovim/nvim-lspconfig",
  opts = {
    -- LSP Server Settings
    ---@type lspconfig.options
    servers = {
      pylsp = {
        settings = {
          pylsp = {
            plugins = {
              pycodestyle = {
                maxLineLength = 88,
              },
            },
          },
        },
      },
      texlab = {
        keys = {
          { "<Leader>K", "<plug>(vimtex-doc-package)", desc = "Vimtex Docs", silent = true },
        },
      },
    },
  },
  setup = {
    -- Specify * to use this function as a fallback for any server
    -- ["*"] = function(server, opts) end,

    ruff = function(_, opts)
      -- Configure `ruff-lsp`.
      -- See: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#ruff_lsp
      -- For the default config, along with instructions on how to customize the settings
      require("lspconfig").ruff.setup({
        on_attach = on_attach,
        init_options = {
          settings = {
            -- Any extra CLI arguments for `ruff` go here.
            args = {},
          },
        },
      })
      return true
    end,
  },
}
