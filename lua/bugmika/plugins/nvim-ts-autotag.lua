return {
  {
    'windwp/nvim-ts-autotag',
    dependencies = 'nvim-treesitter/nvim-treesitter',
    config = function()
      require('nvim-ts-autotag').setup {
        filetypes = {
          'html',
          'xml',
          'javascript',
          'javascriptreact',
          'typescriptreact',
          'svelte',
          'vue',
          'tsx',
          'jsx',
          'rhtml',
          'eruby',
          'heex',
        },
      }
    end,
  },
}
