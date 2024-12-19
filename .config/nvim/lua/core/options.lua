vim.o.guicursor = ""

vim.o.nu = true
vim.o.relativenumber = true

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.o.smartindent = true

vim.o.wrap = false

vim.o.swapfile = false
vim.o.backup = false
vim.o.undofile = true

vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.termguicolors = true

vim.o.scrolloff = 8
vim.wo.signcolumn = 'yes'
vim.o.updatetime = 50

-- Set the cursor color
vim.api.nvim_set_hl(0, "Cursor", { bg = "#8A2BE2", fg = "#FFFFFF" }) -- Red cursor with white text
-- Cursor colors
vim.api.nvim_set_hl(0, "Cursor", { bg = "#8A2BE2", fg = "#FFFFFF" }) -- Block cursor (red)
vim.api.nvim_set_hl(0, "InCursor", { bg = "#8A2BE2", fg = "#000000" }) -- Vertical bar (green)
vim.api.nvim_set_hl(0, "ReplaceCursor", { bg = "#0000FF", fg = "#FFFFFF" }) -- Horizontal bar (blue)
-- Line highlight
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#333333" })
vim.o.cursorline = true -- Enable line highlight

-- Custom cursor behavior
vim.o.guicursor = "n-v-c:block-Cursor,i-ci-ve:ver25-InCursor,r-cr:hor20-ReplaceCursor,o:hor50-OpCursor"
vim.g.mapleader = " "
vim.wo.number = true
vim.o.clipboard = 'unnamedplus'
vim.o.linebreak = true
vim.o.mouse = 'a'
vim.o.autoindent = true
vim.o.smartcase = true
vim.o.ignorecase = true
vim.o.cursorline = false
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.showmode = false
vim.o.whichwrap = 'bs<>[]hl'
vim.o.numberwidth = 4
vim.o.showtabline = 2
vim.o.backspace = 'indent,eol,start'
vim.o.pumheight = 10
vim.o.conceallevel = 0
vim.o.fileencoding = 'utf-8'
vim.o.cmdheight = 1

