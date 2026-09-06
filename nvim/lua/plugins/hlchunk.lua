return {
  {
    "shellRaining/hlchunk.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("hlchunk").setup({
        chunk = {
          enable = true,
          delay = 75,
          style = {
            { fg = "#ebb483" },
            { fg = "#f38ba8" },
          },
        },
        indent = {
          enable = true,
          chars = {
            "┊",
          },
        },
        line_num = {
          enable = true,
          use_treesitter = true,
          style = "#ebb483",
        },
      })
    end,
  },
}
