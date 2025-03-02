return {
  'sbdchd/neoformat',
  opts = {
    try_node_exe = 1,
  },
  config = function()
    vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
      pattern = { '*.py', '*.js', '*.ts', '*.vue', '.css' },
      callback = function()
        vim.cmd 'Neoformat'
      end,
    })
  end,
}
