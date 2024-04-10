return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  opts = {
    color_overrides = {
      mocha = {
        base = '#121212',
        mantle = '#121212',
        crust = '#121212',
      },
    },
  },
  init = function()
    vim.cmd.colorscheme 'catppuccin-mocha'
    vim.cmd.hi 'Comment gui=none'
  end,
}
