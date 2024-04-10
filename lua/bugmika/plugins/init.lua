return {
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  { 'numToStr/Comment.nvim', opts = {} }, -- "gc" to comment visual regions/lines
  -- Highlight todo, notes, etc in comments
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },
  'mbbill/undotree',
  require 'bugmika.plugins.gitsigns',
  require 'bugmika.plugins.telescope',
  -- require 'bugmika.plugins.which-key',
  require 'bugmika.plugins.nvim-lspconfig', -- LSP Configuration & Plugins
  require 'bugmika.plugins.conform', -- Autoformat
  require 'bugmika.plugins.nvim-cmp', -- Autocompletion
  require 'bugmika.plugins.themes.tokyonight',
  require 'bugmika.plugins.mini',
  require 'bugmika.plugins.nvim-ts-autotag',
  require 'bugmika.plugins.nvim-treesitter',
  require 'bugmika.plugins.debug',
  require 'bugmika.plugins.indent_line',
  require 'bugmika.plugins.lint',
  require 'bugmika.plugins.neoformat',
  -- require 'bugmika.plugins.harpoon',
  require 'bugmika.plugins.nvim-autopairs',
  require 'bugmika.plugins.copilot',
  -- require 'bugmika.plugins.barbecue',
  require 'bugmika.plugins.barbar',
  require 'bugmika.plugins.oil',
  require 'bugmika.plugins.leap',
  require 'bugmika.plugins.auto-session',
}
