" Replace the current entire Vim buffer with the given `a:lines`
function! s:ReplaceLines(lines)
    let l:total = line('$')

    let l:current_row = line('.')
    let l:current_column = col('.')

    let l:index = 1
    for l:line in split(a:lines, '\n')
        call setline(l:index, l:line)
        let l:index += 1
    endfor

    " If there are any lines left-over, delete them
    if l:index != l:total
        execute ':' . l:index ',' . l:total . 'd'
    endif

    " Restore the original cursor position, if possible
    call cursor(l:current_row, l:current_column)
endfunction


" Run `usdcat` on the current file and dump its output to the current buffer
function! vim_usd_lint#auto_format_current_buffer()
    update  " Save the current buffer if there are any unsaved changes

    let l:command = g:usdcat_command . ' "' . expand('%:p') . '" --usdFormat usda'

    let l:output = system(l:command)
    if l:output =~ '^Failed to open'
        echoerr "Failed to open the file for auto-formatting"
        return
    endif

    call s:ReplaceLines(l:output)
endfunction
