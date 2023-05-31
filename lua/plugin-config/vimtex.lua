vim.g.vimtex_view_method = 'zathura'
vim.g.tex_flavor='latex'
vim.g.vimtex_compiler_latexmk_engines = {
    _ = '-xelatex'
}
vim.cmd([[let g:vimtex_view_general_options
\ = '-reuse-instance -forward-search @tex @line @pdf'
\ . ' -inverse-search "' . exepath(v:progpath)
\ . ' --servername ' . v:servername
\ . ' --remote-send \"^<C-\^>^<C-n^>'
\ . ':execute ''drop '' . fnameescape(''\%f'')^<CR^>'
\ . ':\%l^<CR^>:normal\! zzzv^<CR^>'
\ . ':call remote_foreground('''.v:servername.''')^<CR^>^<CR^>\""']])
vim.g.tex_comment_nospell = 1
vim.g.vimtex_quickfix_mode = 1
vim.g.vimtex_compiler_progname = 'nvr'
vim.g.vimtex_view_general_options = [[--unique file:@pdf\#src:@line@tex]]
