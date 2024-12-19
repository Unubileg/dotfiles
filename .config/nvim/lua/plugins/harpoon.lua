
return {
    'ThePrimeagen/harpoon',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require("harpoon").setup({})
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")

        -- Keybindings
        vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Harpoon: Add file" })
        vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, { desc = "Harpoon: Toggle quick menu" })

        -- Navigation
        vim.keymap.set("n", "<C-t>", function() ui.nav_file(1) end, { desc = "Harpoon: Navigate to file 1" })
        vim.keymap.set("n", "<C-n>", function() ui.nav_file(2) end, { desc = "Harpoon: Navigate to file 2" })
        vim.keymap.set("n", "<C-s>", function() ui.nav_file(3) end, { desc = "Harpoon: Navigate to file 3" })
    end,
}
