local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<TAB>", ":bnext<CR>", opts)
keymap("n", "<S-TAB>", ":bprevious<CR>", opts)
keymap("n", "<Leader>w", "<cmd>Bdelete!<CR>", {silent = true})
keymap("n", "<Leader>b", ":BufferLinePick<CR>", {silent = true})

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Replace something with something
keymap("n", "<leader>/", ":%s//g<Left><Left>", {silent = false})

keymap("n", "<leader>;", "A;<esc>", opts)

-- keymap("n", "j", "(v:count == 0 ? 'gj' : 'j')", {silent = true, expr = true})
-- keymap("n", "k", "(v:count == 0 ? 'gk' : 'k')", {silent = true, expr = true})
-- keymap("n", "j", "(v:count > 5 ? \"m'\" . v:count : \"\") . 'j'", {expr = true})
-- keymap("n", "k", "(v:count > 5 ? \"m'\" . v:count : \"\") . 'k'", {expr = true})

keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)
keymap("n", "J", "mzJ`z", opts)

keymap("n", "cn", "*``cgn", opts)
keymap("n", "cN", "*``cgN", opts)

keymap("n", "H", "^", opts)
keymap("n", "L", "$", opts)

keymap("n", "<leader>l", ":nohlsearch<cr>", opts)

-- Insert --
keymap("i", "<C-c>", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("v", "Q", "", opts)

-- Move text up and down
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Telescope
keymap("n", "<leader>p", "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({previewer = false}))<cr>", opts)
keymap("n", "<leader>g", "<cmd>lua require('telescope.builtin').live_grep(require('telescope.themes').get_dropdown({}))<cr>", opts)
keymap("n", "<leader>o", "<cmd>lua require('telescope.builtin').treesitter(require('telescope.themes').get_dropdown({}))<cr>", opts)
keymap("n", "<leader>ac", "<cmd>lua require('telescope.builtin').lsp_code_actions(require('telescope.themes').get_dropdown({previewer = false}))<cr>", opts)
keymap("n", "<leader>r", "<cmd>lua require('telescope.builtin').oldfiles(require('telescope.themes').get_dropdown({previewer = false}))<cr>", opts)

-- Nvim Tree
keymap("n", "<Leader>e", "<cmd>NvimTreeToggle<cr>", opts)
