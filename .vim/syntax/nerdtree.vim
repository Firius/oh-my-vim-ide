syn match NERDTreeTxtFile #^\s\+.*txt$#
hi def link NERDTreeTxtFile error

syn match NERDTreeTxtFile #^\s\+.*txt$#
highlight NERDTreeTxtFile ctermbg=blue ctermfg=magenta

 function! NERDTreeHighlightFile(extension, fg, bg)
    exec 'autocmd filetype nerdtree syn match NERDTreeTxtFile #^\s\+.*'. a:extension .'$#'
    exec 'autocmd filetype nerdtree highlight NERDTreeTxtFile ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:bg .' guifg='. a:fg
endfunction

call NERDTreeHighlightFile('txt', 'blue', 'black')
