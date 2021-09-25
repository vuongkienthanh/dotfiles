vim.g.mapleader = ','
local map = vim.api.nvim_set_keymap
local opts = { noremap=true, silent=true }


-- ┌─────────────┐
-- │   vcoolor   │
-- └─────────────┘
vim.g.vcoolor_disable_mappings = 1
vim.g.vcoolor_map = '<leader>cc'
vim.g.vcool_ins_rgba_map = '<leader>ca'


-- ┌─────────────┐
-- │ lsp mapping │
-- └─────────────┘
map('n', '<C-f>', "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>", opts)
map('n', '<C-b>', "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>", opts)
-- commonly used
map('n', 'gh', ':Lspsaga lsp_finder<CR>', opts)
map('n', 'gd', ':Lspsaga preview_definition<CR>', opts)
map('n', 'gk', ':Lspsaga hover_doc<CR>', opts)
map('n', 'gs', ':Lspsaga signature_help<CR>', opts)
-- rarely used
map('n', 'gK', ':lua vim.lsp.buf.type_definition()<CR>', opts)
map('n', 'gD', ':lua vim.lsp.buf.declaration()<CR>', opts)
map('n', 'gI', ':lua vim.lsp.buf.implementation()<CR>', opts)
-- code action to fix diagnostic errors
map('n', '<space>ca', ':Lspsaga code_action<CR>', opts)
map('v', '<space>ca', ':<C-U>Lspsaga range_code_action<CR>', opts)
-- rename and format
map('n', '<space>rn', ':Lspsaga rename<CR>', opts)
map('n', '<space>rf', ':lua vim.lsp.buf.formatting()<CR>', opts)
-- workspace
map('n', '<space>wa', ':lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
map('n', '<space>wr', ':lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
map('n', '<space>wl', ':lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
-- terminal
map('n', '<M-d>', ':Lspsaga open_floaterm<CR>', opts)
map('t', '<M-d>', '<C-\\><C-n>:Lspsaga close_floaterm<CR>', opts)


-- ┌─────────────┐
-- │  html tags  │
-- └─────────────┘
map('i', '<M-j>', '<CR><ESC>O<TAB>', opts)
map('i', '<M-k>', '<ESC>C<CR>/><ESC>O<TAB>', opts)


-- ┌─────────────┐
-- │  telescope  │
-- └─────────────┘
map('n', '<space>fd', ':Telescope lsp_workspace_diagnostics<CR>', opts)
map('n', '<space>fb', ':Telescope buffers<CR>',opts)
map('n', '<space>ff', ':Telescope find_files<CR>',opts)
map('n', '<space>fg', ':Telescope live_grep<CR>',opts)
map('n', '<space>fq', ':Telescope quickfix<CR>',opts)
map('n', '<F1>', ':Telescope help_tags<CR>',opts)


-- ┌─────────────┐
-- │ navigation  │
-- └─────────────┘
-- diagnostic
map('n', ']d', ':Lspsaga diagnostic_jump_next<CR>zzzv', opts)
map('n', '[d', ':Lspsaga diagnostic_jump_prev<CR>zzzv', opts)
-- quickfix
map('n', ']q', ':cnext<CR>zzzv', opts)
map('n', '[q', ':cprev<CR>zzzv', opts)
-- buffers
map('n', ']b', ':bn<CR>', opts)
map('n', '[b', ':bp<CR>', opts)
-- add blank line
map('n', ']<space>', 'mxo<ESC>0D`x', opts)
map('n', '[<space>', 'mxO<ESC>0D`x', opts)
-- move line
map('v', '<C-j>', ":m '>+1<CR>gv=gv", opts)
map('v', '<C-k>', ":m '<-2<CR>gv=gv", opts)
map('n', '<C-j>', ':m .+1<CR>==', opts)
map('n', '<C-k>', ':m .-2<CR>==', opts)



-- ┌─────────────┐
-- │convenicence │
-- └─────────────┘
-- better default keymaps
map('n', 'n', 'nzzzv', opts)
map('n', 'N', 'Nzzzv', opts)
map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)
map('n', 'zz', 'zzzH', opts)
map('n', '<C-L>', ':<C-U>nohls<CR><C-L>', opts)
map('n', 'J', 'mxJ`x', opts)
-- copy visual selected to clipboard
map('v', '<C-Y>', '"+y', opts)
-- copy till end of line
map('n', 'Y', 'y$', opts)
-- paste last yanked
map('n', '<leader>p', '"0p', opts)
map('n', '<leader>P', '"0P', opts)
-- mistype jj
map('i', 'jj', '<ESC>', opts)
-- delete line
map('n', 'dc', '0D', opts)
-- save
map('n', '<C-s>', ':up<CR>', opts)
-- Undo break point
map('i', ',', ',<C-G>u', opts)
map('i', ';', ';<C-G>u', opts)
map('i', '.', '.<C-G>u', opts)
map('i', '!', '!<C-G>u', opts)
map('i', '?', '?<C-G>u', opts)
map('i', '<CR>', '<CR><C-G>u', opts)


-- ┌─────────────┐
-- │other plugins│
-- └─────────────┘
-- markdown-preview.nvim
map('n', '<space>m', ':MarkdownPreview<CR>', opts)
