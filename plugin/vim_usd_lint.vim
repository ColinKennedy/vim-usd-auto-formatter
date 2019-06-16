if get(g:, 'vim_usd_autoformatter_loaded', 0) == 1
    finish
endif

let g:usdcat_command = get(g:, 'usdcat_command', 'usdcat')

" This re-prints the USD file as ASCII. It effectively auto-formats it,
" like how isort / black in Python auto-formats code
"
nnoremap <silent> <Plug>VimUsdAutoFormatterFormatCurrentBuffer :call vim_usd_autoformatter#auto_format_current_buffer()<CR>

let g:vim_usd_autoformatter_loaded = 1
