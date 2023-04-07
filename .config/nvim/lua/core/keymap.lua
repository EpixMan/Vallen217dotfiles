local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }


-- remap tab as leader
map('', '<Space>', '<Nop>', opts)
vim.g.mapleader = '<Tab>'
vim.g.maplocalleader = '<Tab>'

-- barbar
-- Goto buffer in position...
map('n', '<Space>0', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<Space>1', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<Space>2', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<Space>3', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<Space>4', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<Space>5', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<Space>6', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<Space>7', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<Space>8', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<Space>-1', '<Cmd>BufferLast<CR>', opts)

-- Close buffer
map('n', '<Space>q', '<Cmd>BufferClose<CR>', opts)

-- Magic buffer-picking mode
map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)

-- Sort automatically by...
map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)


-- focus window manager
map('n', '<Space>h', ':FocusSplitLeft<CR>', opts)
map('n', '<Space>j', ':FocusSplitDown<CR>', opts)
map('n', '<Space>k', ':FocusSplitUp<CR>', opts)
map('n', '<Space>l', ':FocusSplitRight<CR>', opts)


-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.keymap.set('n', '<control>fb', vim.cmd.Telescope, {})
