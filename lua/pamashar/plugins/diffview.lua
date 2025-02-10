vim.keymap.set("n", "<leader>do", "<cmd>DiffviewOpen<CR><C-w><C-w><cmd>:set number norelativenumber<CR><C-w><C-w><cmd>:set number norelativenumber<CR>")
vim.keymap.set("n", "<leader>dho", "<cmd>DiffviewFileHistory<CR><C-w><C-w><cmd>:set number norelativenumber<CR><C-w><C-w><cmd>:set number norelativenumber<CR>")
vim.keymap.set(
    "n",
    "<leader>dhf",
    "<cmd>DiffviewFileHistory --follow %<CR><C-w><C-w><cmd>:set number norelativenumber<CR><C-w><C-w><cmd>:set number norelativenumber<CR>"
)
vim.keymap.set("n", "<leader>dhl", "<cmd>.DiffviewFileHistory --follow<CR><C-w><C-w><cmd>:set number norelativenumber<CR><C-w><C-w><cmd>:set number norelativenumber<CR>")
vim.keymap.set("v", "<leader>dhb", "<cmd>'<,'>DiffviewFileHistory --follow<CR><C-w><C-w><cmd>:set number norelativenumber<CR><C-w><C-w><cmd>:set number norelativenumber<CR>")
vim.keymap.set("n", "<leader>dc", "<cmd>DiffviewClose<CR>")

return {
    "sindrets/diffview.nvim",
}

