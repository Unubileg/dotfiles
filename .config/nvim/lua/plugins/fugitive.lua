
return {
    'tpope/vim-fugitive',
    config = function()
        -- Keybinding to open Git status
        vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Git Status" })
    end,
}
