return {
  'nvim-tree/nvim-web-devicons',
  config = function()
    require('nvim-web-devicons').setup({
      -- globally enable different highlight colors per icon (default to true)
      color_icons = true,
      -- globally enable default icons (default to false)
      -- will get overriden by `get_icons` option
      default = true,
      -- globally enable "strict" selection of icons - icon will be looked up in
      -- different tables, first by filename, and if not found by extension; this
      -- prevents cases when file doesn't have any extension but still gets some icon
      -- because its name happened to match some extension (default to false)
      strict = true,
    })
  end,
}
