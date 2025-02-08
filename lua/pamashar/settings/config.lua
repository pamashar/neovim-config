-- Terminal mode:
-- Turn off spell checking
-- Turn off line numbers 
if vim.fn.has('nvim') == 1 then
    vim.cmd[[
        augroup terminal_setup
            autocmd TermOpen * setlocal nospell
            autocmd TermOpen * setlocal nonumber norelativenumber
        augroup end
    ]]
end

vim.api.nvim_create_autocmd('ColorScheme', {
    command = [[
        highlight CursorColumn guibg='#2a2b3c'
        highlight CursorLine guibg='#2a2b3c'
        highlight ColorColumn guibg='#2a2b3c'
    ]]
})

