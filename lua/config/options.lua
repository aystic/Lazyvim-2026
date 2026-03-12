-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.snacks_animate = false

-- LazyVim completion engine to use.
-- Can be one of: nvim-cmp, blink.cmp
-- Leave it to "auto" to automatically use the completion engine
-- enabled with `:LazyExtras`
vim.g.lazyvim_cmp = "auto"

-- Show the current document symbols location from Trouble in lualine
-- You can disable this for a buffer by setting `vim.b.trouble_lualine = false`
vim.g.trouble_lualine = true

local opt = vim.opt

opt.expandtab = true -- Use spaces instead of tabs
opt.tabstop = 2 -- Number of spaces tabs count for
opt.shiftwidth = 2 -- Size of an indent
opt.textwidth = 100
opt.wrap = false -- Disable line wrap
opt.linebreak = true -- Wrap lines at convenient points
opt.mouse = "nvch" -- Enable mouse mode
opt.number = true -- Print line number
opt.relativenumber = true -- Relative line numbers
opt.scrolloff = 10 -- Lines of context
opt.sidescrolloff = 10 -- Columns of context
opt.smoothscroll = false
opt.termguicolors = true -- True color support

-- Fix markdown indentation settings
vim.g.markdown_recommended_style = 0

vim.g.python3_host_prog = "/Users/pmohit/.pyenv/versions/neovim/bin/python3"
vim.g.loaded_perl_provider = 0
