local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<leader>m1", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader>m2", function() ui.nav_file(2) end)
vim.keymap.set("n", "<leader>m3", function() ui.nav_file(3) end)
vim.keymap.set("n", "<leader>m4", function() ui.nav_file(4) end)
vim.keymap.set("n", "<leader>m5", function() ui.nav_file(5) end)
vim.keymap.set("n", "<leader>m6", function() ui.nav_file(6) end)
vim.keymap.set("n", "<leader>m7", function() ui.nav_file(7) end)
vim.keymap.set("n", "<leader>m8", function() ui.nav_file(8) end)
vim.keymap.set("n", "<leader>m9", function() ui.nav_file(9) end)

vim.keymap.set("n", "<leader>mn", function() ui.nav_next() end)
vim.keymap.set("n", "<leader>mp", function() ui.nav_prev() end)

require("harpoon").setup({
    tabline = true,
    tabline_prefix = "    ",
    tabline_suffix = "  ",
})

return {
    "ThePrimeagen/harpoon",
    dependencies = { "nvim-lua/plenary.nvim" },
}

