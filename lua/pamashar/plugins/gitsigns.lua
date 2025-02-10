vim.keymap.set(
	'n',
	'<leader>dh',
    function ()
        require('gitsigns').toggle_word_diff()
        require('gitsigns').toggle_linehl()
        require('gitsigns').toggle_deleted()
    end,
	{ desc = 'Toggle word diff' }
)

return {
    {
        "lewis6991/gitsigns.nvim",
        init = function()
            require("gitsigns").setup()
        end,
    },
}

