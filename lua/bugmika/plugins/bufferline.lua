return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  opts = {},
  init = function()
    vim.keymap.set('n', '<C-q>', '<Cmd>BufferLineCyclePrev<CR>', { silent = true })
    vim.keymap.set('n', '<C-e>', '<Cmd>BufferLineCycleNext<CR>', { silent = true })
    vim.keymap.set('n', '<C-w>', '<Cmd>bdelete<CR>', { silent = true })
    vim.keymap.set('n', '<C-1>', '<Cmd>BufferGoto 1<CR>', { silent = true })
    vim.keymap.set('n', '<C-2>', '<Cmd>BufferGoto 2<CR>', { silent = true })
    vim.keymap.set('n', '<C-3>', '<Cmd>BufferGoto 3<CR>', { silent = true })
    vim.keymap.set('n', '<C-4>', '<Cmd>BufferGoto 4<CR>', { silent = true })
  end,
}
