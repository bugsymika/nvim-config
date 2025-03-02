--
-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_autocmd('BufWritePost', {
  pattern = '*.rb',
  callback = function()
    local file = vim.fn.expand '%:p'
    vim.fn.jobstart('bundle exec rubocop -A ' .. file .. " | sed 's/^/[RuboCop] /'", {
      on_exit = function(_, exit_code)
        if exit_code == 0 then
          print('RuboCop: Auto-corrected ' .. file)
        else
          print('RuboCop: Failed to auto-correct ' .. file)
        end
        vim.cmd 'checktime'
      end,
    })
  end,
  group = vim.api.nvim_create_augroup('RuboCop', { clear = true }),
})

-- vim.api.nvim_create_autocmd('BufWritePre', {
--   pattern = '*.ts,*.tsx,*.js,*.jsx,*.json',
--   callback = function()
--     local file = vim.fn.expand '%:p'
--     vim.cmd('silent !deno fmt ' .. file .. '')
--     vim.cmd 'e!'
--   end,
--   group = vim.api.nvim_create_augroup('DenoFmt', { clear = true }),
-- })

-- Autocmd to copy file path to clipboard
vim.api.nvim_create_autocmd('FileType', {
  pattern = '*',
  callback = function()
    vim.keymap.set('n', '<leader>cp', function()
      local path = vim.fn.expand '%:p'
      vim.fn.setreg('+', path)
      print('Copied to clipboard: ' .. path)
    end, { buffer = true, desc = 'Copy file path to clipboard' })
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'html',
  callback = function()
    vim.bo.formatexpr = ''
  end,
})

-- Clear any existing format BufWritePre
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*.html',
  callback = function()
    return true -- This prevents other formatters from running
  end,
})

-- Then set up Neoformat
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*.html',
  command = 'Neoformat',
})

vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = '*.html',
  command = 'set filetype=htmldjango',
})
