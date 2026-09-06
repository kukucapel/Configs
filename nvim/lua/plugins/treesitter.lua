return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    lazy = false,
    config = function()
      require("nvim-treesitter").install({
        "c_sharp",
        "lua",
        "typescript",
        "tsx",
        "javascript",
        "sql",
      })
      vim.api.nvim_create_autocmd("FileType", {
        pattern = {
          "cs",
          "lua",
          "typescript",
          "typescriptreact",
          "javascript",
          "javascriptreact",
          "sql",
        },
        callback = function()
          vim.treesitter.start()
        end,
      })
    end,
  },
  {
    "mason-org/mason.nvim",
    opts = {
      registries = {
        "github:mason-org/mason-registry",
        "github:Crashdummyy/mason-registry",
      },
    },
  },
  {
    "seblyng/roslyn.nvim",
    ft = "cs",
    opts = {},
  },
}
