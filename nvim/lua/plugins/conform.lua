return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        prettier = {
          prepend_args = { "--tab-width", "4", "--use-tabs", "false", "--print-width", "99999" },
        },
      },
      formatters_by_ft = {
        javascript = { "prettier" },
        javascriptreact = { "prettier" },
        -- typescript = { "prettier" },
        -- typescriptreact = { "prettier" },
      }
    },
    keys = {
      {
        "<leader>f",
        function()
          require("conform").format({ async = true, timeout_ms = 5000, lsp_format = "prefer" })
        end,
        desc = "Format buffer",
      },
    },
  },
}
