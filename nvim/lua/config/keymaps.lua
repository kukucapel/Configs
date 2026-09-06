vim.g.mapleader = " "

--Comments
vim.keymap.set("n", "<leader>/", "gcc", { remap =  true, desc = "Comment"})
vim.keymap.set("v", "<leader>/", "gc", { remap =  true, desc = "Comment in visual mode"})

--LSP error
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Показать диагностику под курсором" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)

--Split
vim.keymap.set("n", "<leader>s", "<cmd>split<cr><C-w>w", { desc = "Split + focus" })
vim.keymap.set("n", "<leader>v", "<cmd>vsplit<cr><C-w>w", { desc = "Vsplit + focus" })
vim.cmd([[cnoreabbrev sp sp<bar>wincmd w]])
vim.cmd([[cnoreabbrev vsp vsp<bar>wincmd w]])
vim.cmd([[cnoreabbrev split split<bar>wincmd w]])
vim.cmd([[cnoreabbrev vsplit vsplit<bar>wincmd w]])
