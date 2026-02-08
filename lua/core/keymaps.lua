local keymap = vim.keymap

---------------------
-- General Keymaps
---------------------

-- basic movement
keymap.set("i", "jk", "<ESC>")
keymap.set("n", "J", "5j")
keymap.set("n", "K", "5k")
keymap.set("n", "H", "^")
keymap.set("n", "L", "$")

-- general
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")
keymap.set("x", "<leader>p", "\"_d")
keymap.set("n", "<leader>j", "J0")
keymap.set("n", "gg", "gg0")

-- line keymaps
keymap.set("n", "yl", "yy")
keymap.set("n", "dl", "dd")

-- colorbar
keymap.set("n", "<leader>bo", ":set colorcolumn=72<CR>")
keymap.set("n", "<leader>bx", ":set colorcolumn=0<CR>")

-- open
keymap.set("n", "<leader>ot", ":e ~/todolist <CR>")

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
keymap.set("n", "<leader>sv", "<C-w>v")     -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s")     -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=")     -- make split windows equal width & height
keymap.set("n", "<leader>sc", ":close<CR>") -- close current split window
keymap.set("n", "<leader>srl", ":WinShift right<CR>")
keymap.set("n", "<leader>srh", ":WinShift left<CR>")
keymap.set("n", "<leader>srk", ":WinShift up<CR>")
keymap.set("n", "<leader>srj", ":WinShift down<CR>")

-- keymap.set("n", "<leader>to", ":tabnew<CR>")   -- open new tab
-- keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
-- keymap.set("n", "<leader>tn", ":tabn<CR>")     --  go to next tab
-- keymap.set("n", "<leader>tp", ":tabp<CR>")     --  go to previous tab

keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")

local status, builtin = pcall(require, 'telescope.builtin')
if status then
  vim.keymap.set('n', '<leader>fd', builtin.find_files, {})
  vim.keymap.set('n', '<leader>fs', builtin.live_grep, {})
  vim.keymap.set('n', '<leader>fe', builtin.diagnostics, {})
  vim.keymap.set('n', '<leader>fr', builtin.lsp_references, {})
  vim.keymap.set('n', '<leader>fk', builtin.treesitter, {})
  vim.keymap.set('n', '<leader>fu', "<cmd>Telescope undo<cr>", {})
end

local status, _ = pcall(require, "lspconfig")
if status then
  vim.keymap.set("n", "<leader>ki", vim.lsp.buf.hover, {})
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
end

local status, _ = pcall(require, "null-ls")
if status then
  vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
end

keymap.set("n", "<leader>co", ":FloatermNew --wintype=split --height=0.25<CR>")
keymap.set("n", "<leader>ct", ":FloatermToggle<CR>")
keymap.set("n", "<leader>cn", ":FloatermNext<CR>")
keymap.set("n", "<leader>cp", ":FloatermPrev<CR>")
keymap.set("n", "<leader>cx", ":FloatermKill<CR>")
keymap.del("n", "gri")
keymap.del("n", "gra")

if status then
  keymap.set("n", "<leader>sm", '<cmd>lua require("maximizer").toggle()<CR>', {silent=true})
end

vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { noremap = true, silent = true })

-- copilot
keymap.set('i', '<C-l>', 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false
})
keymap.set('i', '<Right>', 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false
})
vim.g.copilot_no_tab_map = true

keymap.set("n", "<leader>go", ":G diff origin/main...HEAD .<CR>")

vim.api.nvim_create_user_command("Codex", function()
  -- Open vertical split
  vim.cmd("vsplit")

  -- Open terminal and run codex
  vim.cmd("terminal codex")

  -- Optional: start in insert mode
  vim.cmd("startinsert")
end, {})

vim.keymap.set("n", "<leader>t", function()
  vim.cmd("vsplit")
  vim.cmd("terminal")
  vim.cmd("startinsert")
end, {
  desc = "Open terminal in vertical split",
})

