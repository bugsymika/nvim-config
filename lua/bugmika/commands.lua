vim.api.nvim_create_user_command('Cpp', "call setreg('+', expand('%'))", {})
vim.api.nvim_create_user_command('Vg', ':vertical Git', {})
