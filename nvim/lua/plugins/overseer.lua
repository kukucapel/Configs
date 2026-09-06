return {
  {
    "stevearc/overseer.nvim",
    cmd = { "OverseerRun", "OverseerToggle" },
    opts = {
      task_list = {
        direction = "bottom",
        min_height = 15,
        max_height = 25,
      },
    },
    keys = {
      { "<leader>or", "<cmd>OverseerRun<CR>", desc = "Run task" },
      { "<leader>ot", "<cmd>OverseerToggle<CR>", desc = "Toggle task list" },
    },
  },
}
