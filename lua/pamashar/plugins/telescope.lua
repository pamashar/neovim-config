return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("telescope").setup({
            defaults = {
                file_ignore_patterns = {
                    "node_modules"
                }
            }
        })
        local builtin = require("telescope.builtin")

        vim.keymap.set("n", "<leader>pf", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })

        vim.keymap.set(
            "n",
            "<leader>gd",
            "<cmd>lua require'telescope.builtin'.lsp_definitions()<CR>",
            { noremap=true, silent=true }
        )
        vim.keymap.set(
            "n",
            "<leader>gdv",
            "<cmd>lua require'telescope.builtin'.lsp_definitions({jump_type='vsplit'})<CR>",
            { noremap=true, silent=true }
        )

        vim.keymap.set("n", "<leader>ps", function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") }) -- brew install ripgrep should be executed first
        end)
    end,
}

