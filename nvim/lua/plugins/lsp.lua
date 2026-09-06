return {
  {
    "mason-org/mason.nvim",
    opts = {
      registries = {
        "github:mason-org/mason-registry",
        "github:Crashdummyy/mason-registry",
      },
      ensure_installed = { "vtsls" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.enable("vtsls")
    end,
  },
  {
    "seblyng/roslyn.nvim",
    ft = "cs",
    opts = {},
  },
}
