require("init-packer")
require("init-lsp")

-- common config
vim.o.relativenumber = true
vim.o.number = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.termguicolors = true
vim.o.cursorline = true

vim.g.mapleader = ' '

-- 快速保存、退出、加载配置文件
vim.cmd('noremap Q :q<CR>')
vim.cmd('noremap S :w<CR>')
vim.cmd('noremap R :source $INITVIM<CR>')

-- 快速光标移动
vim.cmd('noremap J 5j')
vim.cmd('noremap K 5k')
vim.cmd('noremap L 5l')
vim.cmd('noremap H 5h')

-- Tab Change
vim.cmd('noremap tn :tabe<CR>')
vim.cmd('noremap th :-tabnext<CR>')
vim.cmd('noremap tl :+tabnext<CR>')

-- Screen Size Change
vim.cmd('noremap <C-k> :res +5<CR>')
vim.cmd('noremap <C-j> :res -5<CR>')
vim.cmd('noremap <C-h> :vertical resize-5<CR>')
vim.cmd('noremap <C-l> :vertical resize+5<CR>')

-- Screen Skip
vim.cmd('noremap <LEADER>h <C-w>h')
vim.cmd('noremap <LEADER>l <C-w>l')
vim.cmd('noremap <LEADER>j <C-w>j')
vim.cmd('noremap <LEADER>k <C-w>k')

-- Screen Split
vim.cmd('noremap sl :set splitright<CR>:vsplit<CR>')
vim.cmd('noremap sh :set nosplitright<CR>:vsplit<CR>')
vim.cmd('noremap sk :set nosplitbelow<CR>:split<CR>')
vim.cmd('noremap sj :set splitbelow<CR>:split<CR>')


-- Nvim tree qucik 
vim.cmd('map tt :NvimTreeToggle<CR>')
