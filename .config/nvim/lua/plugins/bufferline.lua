return {
  'akinsho/bufferline.nvim',
  dependencies = {
    'moll/vim-bbye',
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('bufferline').setup {
      options = {
        mode = 'buffers', -- set to "tabs" to only show tabpages instead
        themable = true, -- allows highlight groups to be overridden i.e. sets highlights as default
        numbers = 'none', -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
        close_command = 'Bdelete! %d', -- can be a string | function, see "Mouse actions"
        buffer_close_icon = '\u{f00d}', -- Close icon (Font Awesome cross)
        close_icon = '\u{ea76}', -- Tab close icon
        path_components = 1, -- Show only the file name without the directory
        modified_icon = '\u{25cf}', -- Modified icon
        left_trunc_marker = '\u{f0d8}', -- Left truncation marker
        right_trunc_marker = '\u{f0d9}', -- Right truncation marker
        max_name_length = 30,
        max_prefix_length = 30, -- prefix used when a buffer is de-duplicated
        tab_size = 21,
        diagnostics = false, -- Set to "nvim_lsp" if you want diagnostic icons
        diagnostics_update_in_insert = false,
        color_icons = true, -- Enable file-type icons
        show_buffer_icons = true, -- Show file-type icons
        show_buffer_close_icons = true, -- Show close icons for buffers
        show_close_icon = true, -- Show close icon for tabs
        persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
        separator_style = { '|', '|' }, -- Separators between tabs
        enforce_regular_tabs = true,
        always_show_bufferline = true,
        show_tab_indicators = false,
        indicator = {
          icon = '?', -- Indicator icon for the active buffer
          style = 'icon', -- Options: 'icon', 'underline', 'none'
        },
        icon_pinned = '?', -- Pinned icon (Material Design pin)
        minimum_padding = 1,
        maximum_padding = 5,
        maximum_length = 15,
        sort_by = 'insert_at_end',
      },
      highlights = {
        separator = {
          fg = '#434C5E',
        },
        buffer_selected = {
          bold = true,
          italic = false,
        },       -- separator_selected = {},
        -- tab_selected = {},
        -- background = {},
        -- indicator_selected = {},
        -- fill = {},
      },
    }
  end,
}
