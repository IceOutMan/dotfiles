
-- 启用改插件
vim.g.textobj_parameter_no_default_key_mappings = true
vim.api.nvim_set_keymap('x', 'ia', '<Plug>(textobj-parameter-a)', {})
vim.api.nvim_set_keymap('o', 'ia', '<Plug>(textobj-parameter-a)', {})
vim.api.nvim_set_keymap('x', 'ic', '<Plug>(textobj-parameter-i)', {})
vim.api.nvim_set_keymap('o', 'ic', '<Plug>(textobj-parameter-i)', {})

