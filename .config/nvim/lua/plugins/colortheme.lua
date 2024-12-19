return {
    'fcancelinha/nordern.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        require('nordern').setup {
            transparent = true, -- Enable transparency
            styles = {
                comments = "italic", -- Italicize comments
                keywords = "bold", -- Bold keywords
                functions = "NONE", -- No special styling for functions
                variables = "NONE", -- No special styling for variables
            },
        }
    end,
    init = function()
        -- Set the Nordern colorscheme
        vim.cmd("colorscheme nordern")

        -- Initialize transparency toggle
        local bg_transparent = true

        local toggle_transparency = function()
            bg_transparent = not bg_transparent
            require('nordern').setup {
                transparent = bg_transparent,
            }
            vim.cmd("colorscheme nordern")
        end

        -- Keymap to toggle transparency
        vim.keymap.set('n', '<leader>bg', toggle_transparency, { noremap = true, silent = true })
    end,
}
