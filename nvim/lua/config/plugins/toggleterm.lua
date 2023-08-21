-- multi terminal in vim
return {
    "akinsho/toggleterm.nvim",
    tag = '*',
    config = function()
        require("toggleterm").setup()
    end
}
