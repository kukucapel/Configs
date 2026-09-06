return {
  {
    "saghen/blink.cmp",
    version = "*",
    opts = {
      keymap = {
        ["<Tab>"] = { "select_and_accept", "fallback" },
        ["<Down>"] = { "select_next", "fallback" },
        ["<Up>"] = { "select_prev", "fallback" },
        ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
        ["<Esc>"] = {
          function(cmp)
            cmp.hide()
            vim.cmd("stopinsert")
            return true
          end,
        },
      },
      appearance = {
        nerd_font_variant = "mono",
      },
      completion = {
        documentation = { auto_show = true },
      },
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },
    },
    opts_extend = { "sources.default" },
  },
}
