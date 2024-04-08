return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },
  init = function()
    vim.g.barbar_auto_setup = false
    vim.keymap.set('n', '<C-q>', '<Cmd>BufferPrevious<CR>', { silent = true })
    vim.keymap.set('n', '<C-e>', '<Cmd>BufferNext<CR>', { silent = true })
    vim.keymap.set('n', '<C-w>', '<Cmd>BufferClose<CR>', { silent = true })
    vim.keymap.set('n', '<C-1>', '<Cmd>BufferGoto 1<CR>', { silent = true })
    vim.keymap.set('n', '<C-2>', '<Cmd>BufferGoto 2<CR>', { silent = true })
    vim.keymap.set('n', '<C-3>', '<Cmd>BufferGoto 3<CR>', { silent = true })
    vim.keymap.set('n', '<C-4>', '<Cmd>BufferGoto 4<CR>', { silent = true })

    -- vim.cmd 'highlight BufferCurrent guibg=#74C05E guifg=black'
    -- vim.cmd 'highlight BufferInactive guifg=white'
    -- vim.cmd 'highlight BufferCurrentMod guibg=#E1A907 guifg=black'
    -- vim.cmd 'highlight BufferCurrentModBtn guibg=0 guifg=black'
    -- vim.cmd 'highlight BufferVisibleMod guibg=red guifg=black'
    -- vim.cmd 'highlight BufferInactiveMod guibg=red guifg=black'
    -- vim.cmd 'highlight BufferAlternateMod guibg=red guifg=black'

    vim.cmd 'highlight BufferVisibleIcon guibg=black guifg=black'
  end,
  opts = {
    -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
    animation = false,
    maximum_padding = 25,
    auto_hide = true,
    tabpages = true,
    insert_at_end = true,
    icons = {
      custom_colors = true,
    },
  },
  version = '^1.0.0', -- optional: only update when a new 1.x version is released
}
