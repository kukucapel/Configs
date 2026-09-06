return {
  {
    "jake-stewart/multicursor.nvim",
    branch = "1.0",
    event = "VeryLazy",
    config = function()
      local mc = require("multicursor-nvim")
      mc.setup()

      local set = vim.keymap.set
      
      set({ "n", "x" }, "<leader>j", function() mc.lineAddCursor(1) end, { desc = "Add cursor below" })
      set({ "n", "x" }, "<leader>k", function() mc.lineAddCursor(-1) end, { desc = "Add cursor above" })

      set({ "n", "x" }, "gb", function() mc.matchAddCursor(1) end, { desc = "Add cursor on next match" })
      set({ "n", "x" }, "ga", function() mc.matchAllAddCursors() end, { desc = "Select all matches" })

      set("n", "<Esc>", function()
        if not mc.cursorsEnabled() then
          mc.enableCursors()
        else
          mc.clearCursors()
        end
      end)
    end,
  },
}
