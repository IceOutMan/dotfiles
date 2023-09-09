-- color scheme
return {
    'navarasu/onedark.nvim',
    config = function()
        require('onedark').setup{
            style = 'cool',
        }
        require('onedark').load()
    end
}
