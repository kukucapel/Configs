return {
    "aserowy/tmux.nvim",
    lazy = false,
    config = function()
        require("tmux").setup({
            navigation = {
                enable_default_keybindings = false,
                cycle_navigation = false,
            },
            resize = {
                enable_default_keybindings = false,
            }
        })

        local tmux = require('tmux')
        vim.keymap.set("n", "<A-h>", function() tmux.move_left() end, { silent = true })
        vim.keymap.set("n", "<A-j>", function() tmux.move_bottom() end, { silent = true })
        vim.keymap.set("n", "<A-k>", function() tmux.move_top() end, { silent = true })
        vim.keymap.set("n", "<A-l>", function() tmux.move_right() end, { silent = true })
    end
}

