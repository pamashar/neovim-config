local accent = "#d8d8fc"
local grey = "#797C91"
local bg = "#2a2b3c"
vim.api.nvim_set_hl(0, "HarpoonInactive", { fg = grey, bg = bg })
vim.api.nvim_set_hl(0, "HarpoonActive", { fg = accent })
vim.api.nvim_set_hl(0, "HarpoonNumberActive", { fg = accent })
vim.api.nvim_set_hl(0, "HarpoonNumberInactive", { fg = grey, bg = bg })

return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")
        harpoon.setup()

        vim.keymap.set("n", "<leader>ma", function()
            harpoon:list():add()
            vim.cmd(":do User")
        end)
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

        function Harpoon_files()
            local contents = {}
            local marks_length = harpoon:list():length()
            local current_file_path = vim.fn.fnamemodify(vim.fn.expand("%:p"), ":.")
            for index = 1, marks_length do
                if pcall(function () local v = harpoon:list():get(index).value end) then
                    local harpoon_file_path = harpoon:list():get(index).value
                    local file_name = harpoon_file_path == "" and "(empty)" or vim.fn.fnamemodify(harpoon_file_path, ':t')

                    if current_file_path == harpoon_file_path then
                        contents[index] = string.format(" %%#HarpoonNumberActive# %s:%%#HarpoonActive#%s", index, file_name)
                    else
                        contents[index] = string.format(" %%#HarpoonNumberInactive# %s:%%#HarpoonInactive#%s", index, file_name)
                    end
                end
            end

            return table.concat(contents)
        end

        vim.opt.showtabline = 2
        vim.api.nvim_create_autocmd({ "BufEnter", "BufAdd", "User" }, {
            callback = function()
                vim.o.tabline = Harpoon_files()
                vim.api.nvim_set_hl(0, "TabLineFill", { fg = "white", bg = bg })
            end
        })
    end,
}

