--local mark = require("harpoon.mark")
--local ui = require("harpoon.ui")
--
--vim.keymap.set("n", "<leader>a", mark.add_file)
--vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
--
--vim.keymap.set("n", "<leader>m1", function() harpoon:list():select(1) end)
--vim.keymap.set("n", "<leader>m2", function() harpoon:list():select(2) end)
--vim.keymap.set("n", "<leader>m3", function() harpoon:list():select(3) end)
--vim.keymap.set("n", "<leader>m4", function() harpoon:list():select(4) end)
--vim.keymap.set("n", "<leader>m5", function() harpoon:list():select(5) end)
--vim.keymap.set("n", "<leader>m6", function() harpoon:list():select(6) end)
--vim.keymap.set("n", "<leader>m7", function() harpoon:list():select(7) end)
--vim.keymap.set("n", "<leader>m8", function() harpoon:list():select(8) end)
--vim.keymap.set("n", "<leader>m9", function() harpoon:list():select(9) end)
--
--vim.keymap.set("n", "<leader>mn", function() harpoon:list():next() end)
--vim.keymap.set("n", "<leader>mp", function() harpoon:list():prev() end)
--
--require("harpoon").setup({
--    tabline = true,
--    tabline_prefix = "    ",
--    tabline_suffix = "  ",
--})
--
--return {
--    "ThePrimeagen/harpoon",
--    dependencies = { "nvim-lua/plenary.nvim" },
--}
--

return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    global_settings = {
        -- enable tabline with harpoon marks
        tabline = true,
        tabline_prefix = "    ",
        tabline_suffix = "  ",
    },
    config = function()
        local harpoon = require("harpoon")
        harpoon.setup()

        vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
        vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

        vim.keymap.set("n", "<leader>m1", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "<leader>m2", function() harpoon:list():select(2) end)
        vim.keymap.set("n", "<leader>m3", function() harpoon:list():select(3) end)
        vim.keymap.set("n", "<leader>m4", function() harpoon:list():select(4) end)
        vim.keymap.set("n", "<leader>m5", function() harpoon:list():select(5) end)
        vim.keymap.set("n", "<leader>m6", function() harpoon:list():select(6) end)
        vim.keymap.set("n", "<leader>m7", function() harpoon:list():select(7) end)
        vim.keymap.set("n", "<leader>m8", function() harpoon:list():select(8) end)
        vim.keymap.set("n", "<leader>m9", function() harpoon:list():select(9) end)

        vim.keymap.set("n", "<leader>mn", function() harpoon:list():next() end)
        vim.keymap.set("n", "<leader>mp", function() harpoon:list():prev() end)
    end,
}

