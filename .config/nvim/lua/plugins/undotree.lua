
return {
    'mbbill/undotree',
    config = function()
        -- Keybinding to toggle Undotree
        vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = "Toggle UndoTree" })
    end,
}
