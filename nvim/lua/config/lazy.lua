-- macOS/Linux: ~/.local/share/nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)


require("lazy").setup({
    require("config.plugins.flutter"),
    require("config.plugins.go"),
    require("config.plugins.coc"),
    require("config.plugins.onedark"),
    require("config.plugins.wilder"),
    require("config.plugins.telescope"),
    require("config.plugins.toggleterm"),
    require("config.plugins.autopairs"),
    require("config.plugins.treesitter"),
    require("config.plugins.nvim_tree"),
    -- require("config.plugins.git"),
    require("config.plugins.indent"),
    require("config.plugins.comment"),
    require("config.plugins.surround"),
    require("config.plugins.buffer_line"),
    require("config.plugins.status_line"),
    require("config.plugins.joshuto"),
})
