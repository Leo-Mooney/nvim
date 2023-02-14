vim.g.mapleader = " "

local keymap = vim.keymap

---------------------
-- General Keymaps
---------------------

-- basic movement 
keymap.set("i", "jk", "<ESC>")
keymap.set("n", "J", "5j")
keymap.set("n", "K", "5k")

-- general
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")
keymap.set("x", "<leader>p", "\"_d")
keymap.set("n", "<leader>j", "J")
keymap.set("n", "gg", "gg0")

-- open
keymap.set("n", "<leader>ot", ":e ~/documents/todolist <CR>")

-- terminal management
keymap.set("t", "jk", "<C-\\><C-n>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

---------------------
-- Plugin Keymaps
---------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- file explorer
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- floaterm
keymap.set("n", "<leader>co", ":FloatermNew --wintype=split --height=0.25<CR>")
keymap.set("n", "<leader>ct", ":FloatermToggle<CR>")
keymap.set("n", "<leader>cn", ":FloatermNext<CR>")
keymap.set("n", "<leader>cp", ":FloatermPrev<CR>")
keymap.set("n", "<leader>cx", ":FloatermKill<CR>")

-- lsp
keymap.set("n", "<leader>lt", ":LspStart<CR>:LspStop<CR>", {silent=true})

-- startup screen
keymap.set("n", "<leader>as", ":Alpha<CR>")
