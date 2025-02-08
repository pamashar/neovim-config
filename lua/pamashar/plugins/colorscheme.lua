function ColorMyPencils(color)
--    color = color or "rose-pine-moon"
    vim.cmd.colorscheme(color)

--    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    {
        "catppuccin/nvim",
        lazy = false,
        config = function()
            vim.cmd.colorscheme('catppuccin')
        end
    },
    --{
    --    "rose-pine/neovim",
    --    lazy = false,
    --    config = function()
    --        ColorMyPencils("rose-pine-moon")
    --    end,
    --},
}

