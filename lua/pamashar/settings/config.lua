-- Terminal mode:
--
-- Turn off spell checking
-- Turn off line numbers 
--
if vim.fn.has('nvim') == 1 then
    vim.cmd[[
        augroup terminal_setup
            autocmd TermOpen * setlocal nospell
            autocmd TermOpen * setlocal nonumber norelativenumber
        augroup end
    ]]
end

