-- 快速保存、退出、加载配置文件

-- vim.cmd('noremap R :source $INITVIM<CR>')


local mode_nv = { "n", "v" }
local mode_n  = { "n" }
local mode_i  = { "i" }
local mode_t  = { "t" }


local nmappings = {
    { from = "Q",          to = ":q<CR>",                           mode = mode_n },
    { from = "S",          to = ":w<CR>",                           mode = mode_n },
    { from = "J",          to = "5j",                               mode = mode_n },

    -- 快速光标移动
    { from = "J",          to = "5j",                               mode = mode_n },
    { from = "K",          to = "5k",                               mode = mode_n },
    { from = "L",          to = "5l",                               mode = mode_n },
    { from = "H",          to = "5h",                               mode = mode_n },
    { from = "<Leader>w",  to = "wbve",                             mode = mode_n },
    --
    -- Tab Change
    { from = "tn",         to = ":tabnew<CR>",                      mode = mode_n },
    { from = "th",         to = ":-tabnext<CR>",                    mode = mode_n },
    { from = "tl",         to = ":+tabnext<CR>",                    mode = mode_n },
    { from = "tc",         to = ":tabclose<CR>",                    mode = mode_n },

    -- Screen Size Change
    { from = "<C-k>",      to = ":res +5<CR>",                      mode = mode_n },
    { from = "<C-j>",      to = ":res -5<CR>",                      mode = mode_n },
    { from = "<C-h>",      to = ":vertical resize+5<CR>",           mode = mode_n },
    { from = "<C-l>",      to = ":vertical resize-5<CR>",           mode = mode_n },

    -- Screen Skip
    { from = "<Leader>h",  to = "<C-w>h",                           mode = mode_n },
    { from = "<Leader>l",  to = "<C-w>l",                           mode = mode_n },
    { from = "<Leader>j",  to = "<C-w>j",                           mode = mode_n },
    { from = "<Leader>k",  to = "<C-w>k",                           mode = mode_n },

    -- Screen Split
    { from = "sl",         to = ":set splitright<CR>:vsplit<CR>",   mode = mode_n },
    { from = "sh",         to = ":set nosplitright<CR>:vsplit<CR>", mode = mode_n },
    { from = "sk",         to = ":set nosplitbelow<CR>:split<CR>",  mode = mode_n },
    { from = "sj",         to = ":set splitbelow<CR>:split<CR>",    mode = mode_n },

    -- code skip <C-o> is Back, <C-i> is Pre
    { from = "<LEADER>[",  to = "<C-o>",                            mode = mode_n },
    { from = "<LEADER>[",  to = "<C-i>",                            mode = mode_n },

    -- Code Operation | coc | code format
    { from = "<LEADER>fc", to = ":call CocAction(\'format\')<CR>",  mode = mode_n },

    -- Find files using Telescope command-line sugar.
    { from = "<LEADER>ff", to = ":Telescope find_files<CR>",        mode = mode_n },
    { from = "<LEADER>fg", to = ":Telescope live_grep<CR>",         mode = mode_n },
    { from = "<LEADER>fb", to = ":Telescope buffers<CR>",           mode = mode_n },
    { from = "<LEADER>fh", to = ":Telescope help_tags<CR>",         mode = mode_n },

    -- Nvim tree qucik
    { from = "tt",         to = ":NvimTreeToggle<CR>",              mode = mode_n },
    { from = "<Leader>vp", to = ":NvimTreeFindFile<CR>",            mode = mode_n },

    -- Terminal Mode Quit
    { from = "tq",         to = "<C-\\><C-n>",                      mode = mode_t },
    { from = "<Leader>tm", to = "<C-\\><C-n>:ToggleTerm<CR>",       mode = mode_t },
    { from = "<Leader>tm", to = ":ToggleTerm<CR>",                  mode = mode_n },


    -- Joshuto
    -- { from = "R", to = ":Joshuto<CR>"}
}


for _, mapping in ipairs(nmappings) do
    vim.keymap.set(mapping.mode or "n", mapping.from, mapping.to, { noremap = true })
end
