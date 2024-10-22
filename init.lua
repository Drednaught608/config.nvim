-- ~/.vimrc & Vimscript config
vim.cmd [[
    if filereadable(expand("~/.vimrc"))
        source ~/.vimrc
    endif
    set guicursor+=a:blinkon1

    augroup highlight_yank
        autocmd!
        au TextYankPost * silent! lua vim.highlight.on_yank { higroup='IncSearch', timeout=200 }
    augroup END
]]
