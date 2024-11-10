-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true, silent = true })

-- Ensure vim-tmux-navigator keybindings are correctly recognized
vim.g.tmux_navigator_no_mappings = 1 -- Disable default mappings (if you want to customize them)

-- Map the keys to tmux navigation
vim.api.nvim_set_keymap("n", "<C-h>", "<C-a><left>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", ":TmuxNavigateDown", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", ":TmuxNavigateUp", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-a><right>", { noremap = true, silent = true })

-- manage tabs
vim.api.nvim_set_keymap("n", "tc", ":tabclose<CR>", { noremap = true, silent = true })

-- Compile LaTeX with vimtex
--vim.api.nvim_set_keymap("n", "<leader>ll", ":VimtexCompile<CR>", { noremap = true, silent = true })

-- View PDF with vimtex
--vim.api.nvim_set_keymap("n", "<leader>lv", ":VimtexView<CR>", { noremap = true, silent = true })
