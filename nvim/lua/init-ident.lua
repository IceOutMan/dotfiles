
vim.opt.list = true
-- vim.opt.listchars:append "space:⋅"
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E5C07B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#56B6C2 gui=nocombine]]
require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
    },
}

