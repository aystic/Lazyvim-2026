-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local keymap = vim.keymap
local opts = { silent = true, noremap = true }

-- Do not yank with x & p
keymap.set("n", "x", '"_x')
keymap.set("v", "p", '"_dP', opts)

-- Delete a word backwords without it overwriting the clipboard
keymap.set("n", "dw", 'vb"_d')

-- Increment/Decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Select all
keymap.set("n", "<C-a>", "ggVG")

-- keymap.set for moving buffer left right using bufferline
keymap.set("n", "<C-n>", ":BufferLineMovePrev<CR>", opts)
keymap.set("n", "<C-m>", ":BufferLineMoveNext<CR>", opts)

-- Write a file
keymap.set("n", "<leader>cw", ":w<CR>", { silent = true, noremap = true, desc = "Save" })

keymap.del("n", "<leader>l")

keymap.set("n", "<leader>ll", "<cmd>Lazy<cr>", { desc = "Lazy" })
keymap.set("n", "<leader>lw", "<cmd>w<cr><esc>", { desc = "Save File" })
keymap.set("n", "<leader>lf", function()
  LazyVim.format({ force = true })
end, { desc = "Format" })

-- Visual --
-- Stay in indent mode
keymap.set("v", "<", "<gv^", opts)
keymap.set("v", ">", ">gv^", opts)

-- Move text up and down
keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- Visual Block --
-- Move text up and down
keymap.set("x", "J", ":m '>+1<CR>gv=gv", opts)
keymap.set("x", "K", ":m '<-2<CR>gv=gv", opts)
keymap.set("x", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap.set("x", "<A-k>", ":m '<-2<CR>gv=gv", opts)
