-- vim.keymap.set('n', '<leader>pv', vim.cmd.Vex)
vim.keymap.set('n', '<leader>x', vim.cmd.q)
vim.keymap.set('n', '<leader>X', vim.cmd.wq)
vim.keymap.set('n', '<leader><C-q>', '<C-w>h')
vim.keymap.set('n', '<leader><C-e>', '<C-w>l')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
vim.keymap.set('n', '<C-s>', vim.cmd.w, { desc = 'shortcut for :w' })
vim.keymap.set('n', '<leader><leader>', vim.cmd.w, { desc = 'shortcut for :w' })
vim.keymap.set('v', '<C-c>', 'gc', { desc = 'shortcut for gc, shortcut to comment/uncomment' })

vim.keymap.set('n', '<C-b>', '[{', { desc = 'Move to previous block [{]' })
vim.keymap.set('n', '<C-B>', ']}', { desc = 'Move to next block [}]' })

local toggle_oil = function()
  local oil = require 'oil'
  local pwd = vim.fn.expand '%:p:h'
  oil.toggle_float(pwd)
end
vim.keymap.set('n', '<leader>pp', toggle_oil, { desc = 'Open current directory' })
vim.keymap.set('n', '<C-c>', 'gcc')
vim.keymap.set('v', '<C-c>', 'gcc')
