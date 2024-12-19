
return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    {
      's1n7ax/nvim-window-picker',
      version = '2.*',
      config = function()
        require 'window-picker'.setup({
          filter_rules = {
            include_current_win = false,
            autoselect_one = true,
            bo = {
              filetype = { 'neo-tree', "neo-tree-popup", "notify" },
              buftype = { 'terminal', "quickfix" },
            },
          },
        })
      end,
    },
  },
  config = function()
    -- Diagnostic icons
    vim.fn.sign_define("DiagnosticSignError", { text = "\u{f057}", texthl = "DiagnosticSignError" }) -- Cross mark
    vim.fn.sign_define("DiagnosticSignWarn", { text = "\u{f071}", texthl = "DiagnosticSignWarn" }) -- Warning triangle
    vim.fn.sign_define("DiagnosticSignInfo", { text = "\u{f05a}", texthl = "DiagnosticSignInfo" }) -- Info circle
    vim.fn.sign_define("DiagnosticSignHint", { text = "\u{f0eb}", texthl = "DiagnosticSignHint" }) -- Light bulb

    require("neo-tree").setup({
      close_if_last_window = false,
      popup_border_style = "rounded",
      enable_git_status = true,
      enable_diagnostics = true,
      open_files_do_not_replace_types = { "terminal", "trouble", "qf" },
      default_component_configs = {
        indent = {
          indent_size = 2,
          padding = 1,
          indent_marker = "\u{2502}", -- Vertical bar
          last_indent_marker = "\u{2514}", -- Corner
          highlight = "NeoTreeIndentMarker",
          expander_collapsed = "\u{f462}", -- Collapsed arrow
          expander_expanded = "\u{f47c}", -- Expanded arrow
          expander_highlight = "NeoTreeExpander",
        },
        icon = {
          folder_closed = "\u{e5ff}", -- Closed folder
          folder_open = "\u{e5fe}", -- Open folder
          folder_empty = "\u{f115}", -- Empty folder
          default = "\u{f15c}", -- File icon
          highlight = "NeoTreeFileIcon",
        },
        modified = {
          symbol = "\u{25cf}", -- Modified dot
          highlight = "NeoTreeModified",
        },
        name = {
          trailing_slash = false,
          use_git_status_colors = true,
          highlight = "NeoTreeFileName",
        },
        git_status = {
          symbols = {
            added = "\u{271a}", -- Added symbol
            modified = "\u{f6a7}", -- Modified symbol
            deleted = "\u{f56e}", -- Deleted symbol
            renamed = "\u{f0e2}", -- Renamed symbol
            untracked = "\u{2729}", -- Untracked symbol
            ignored = "\u{25cc}", -- Ignored symbol
            unstaged = "\u{2718}", -- Unstaged symbol
            staged = "\u{2713}", -- Staged symbol
            conflict = "\u{f0b2}", -- Conflict symbol
          },
        },
      },
      window = {
        position = "left",
        width = 40,
        mappings = {
          ["<space>"] = { "toggle_node", nowait = false },
          ["<2-LeftMouse>"] = "open",
          ["<cr>"] = "open",
          ["P"] = { "toggle_preview", config = { use_float = true, use_image_nvim = true } },
          ["z"] = "close_all_nodes",
          ["a"] = { "add", config = { show_path = "none" } },
          ["A"] = "add_directory",
          ["d"] = "delete",
          ["r"] = "rename",
          ["y"] = "copy_to_clipboard",
          ["x"] = "cut_to_clipboard",
          ["p"] = "paste_from_clipboard",
          ["q"] = "close_window",
          ["R"] = "refresh",
          ["?"] = "show_help",
          ["<"] = "prev_source",
          [">"] = "next_source",
        },
      },
    })

    -- Key mappings
    vim.cmd([[nnoremap \ :Neotree reveal<cr>]])
    vim.keymap.set('n', '<leader>e', ':Neotree toggle position=left<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>gs', ':Neotree float git_status<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>r', ':Neotree toggle position=right<CR>', { noremap = true, silent = true })
  end
}
