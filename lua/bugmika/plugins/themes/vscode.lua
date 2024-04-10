return {
  'askfiy/visual_studio_code',
  priority = 100,
  config = function()
    vim.cmd [[colorscheme visual_studio_code]]
    vim.cmd [[highlight BufferInactive guifg=#555555]]
  end,
}
