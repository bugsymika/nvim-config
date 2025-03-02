return {
  'lukas-reineke/indent-blankline.nvim',
  main = 'ibl',
  opts = {
    indent = {
      highlight = { 'LineNr' },
      char = '⋅', -- Or use "·" for a smaller dot
      smart_indent_cap = true,
    },
    scope = { enabled = true },
  },
  config = true,
}
