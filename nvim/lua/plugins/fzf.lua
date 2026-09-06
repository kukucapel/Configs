return {
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
      {
        "<leader>ff",
        function()
          require("fzf-lua").files({
            fzf_opts = {
              ["--delimiter"] = "/",
              ["--nth"] = "-1",
            },
          })
        end,
        desc = "Find files (by name)",
      },
      { "<leader>fb", function() require("fzf-lua").buffers() end, desc = "Find open buffers" },
      { "<leader>fp", function() require("fzf-lua").complete_path() end, desc = "Complete path" },
      { "gr", function() require("fzf-lua").lsp_references() end, desc = "References" },
      { "gd", function() require("fzf-lua").lsp_definitions() end, desc = "Definition" },
      { "<leader>fd", function() require("fzf-lua").diagnostics_document() end, desc = "Diagnostics" },
      { "<leader>fg", function() require("fzf-lua").live_grep() end, desc = "Grep in project" },
      { "<leader>gs", function() require("fzf-lua").git_status() end, desc = "Git status" },
      { "<leader>gc", function() require("fzf-lua").git_commits() end, desc = "Git commits" },
      { "<leader>gb", function() require("fzf-lua").git_branches() end, desc = "Git branches" },
    },
    opts = {
      "telescope",
      ui_select = {},
      winopts = {
          border = "rounded",
          width = 0.8,
          height = 0.8,
          preview = {
              border = "rounded",
              scrollbar = "float",
          },
      },
      files = {
          prompt = "Files❯ ",
          path_shorten = false,
          cwd_prompt_shorten_len = 128,
          cwd_prompt_shorten_val = 1,
          cwd_prompt = false,
          file_ignore_patterns = {
              "%.dll$", "%.exe$", "%.pdb$", "bin/", "obj/", "node_modules/", "%.git/",
          },
          fzf_opts = {
              ["--delimiter"] = "/",
              ["--nth"] = "-1",
              ["-i"] = "",
          },
      },
      grep = {
        prompt = "Grep❯ ",
        input_prompt = "Grep For❯ ",
      },
    },
  },
}
