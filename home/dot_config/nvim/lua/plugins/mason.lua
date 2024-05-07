return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "lua-language-server",
        "shellcheck",
        "shfmt",
        "json-lsp",
        "typescript-language-server",
        "eslint-lsp",
        "eslint-d",
        "ast-grep",
        "harper-ls",
      },
    },
  },
}
