"let mapleader=","
" let maplocalleader = "\<Space>"

" Select the whole buffer.
" NOTE: this shadows the default <C-a> (increment number).
nnoremap <silent> <C-A> ggVG
vnoremap <silent> <C-A> ggVG

" Save without leaving the current mode.
" NOTE: if <C-s> freezes the terminal, disable XON/XOFF with: stty -ixon
nnoremap <silent> <C-s> :update<CR>
vnoremap <silent> <C-s> <Esc>:update<CR>
inoremap <silent> <C-s> <C-o>:update<CR>

" ALE: LSP navigation and diagnostics.
" NOTE: gd, gr and K shadow Vim's built-in commands.
nnoremap <silent> gd :ALEGoToDefinition<CR>
nnoremap <silent> gy :ALEGoToTypeDefinition<CR>
nnoremap <silent> gr :ALEFindReferences<CR>
nnoremap <silent> K  :ALEHover<CR>
nnoremap <silent> <Leader>rn :ALERename<CR>
nnoremap <silent> <Leader>ca :ALECodeAction<CR>
nnoremap <silent> [a :ALEPrevious<CR>
nnoremap <silent> ]a :ALENext<CR>

" fzf.vim: fuzzy file, buffer and search pickers.
nnoremap <silent> <Leader>ff :Files<CR>
nnoremap <silent> <Leader>fg :Rg<CR>
nnoremap <silent> <Leader>fb :Buffers<CR>
nnoremap <silent> <Leader>fr :History<CR>
nnoremap <silent> <Leader>fl :Lines<CR>
nnoremap <silent> <Leader>fw :Windows<CR>
nnoremap <silent> <Leader>fh :Helptags<CR>
nnoremap <silent> <Leader>fj :Jumps<CR>
nnoremap <silent> <Leader>fm :Maps<CR>
nnoremap <silent> <Leader>fc :Commands<CR>

" vim-test: run the test nearest to the cursor, the test file, etc.
" The default strategy uses ':!'.  For a split terminal, set
"   let test#strategy = 'vimterminal'
" vim-test's Rust runner has no project-root marker, so point it at the
" nearest Cargo.toml while the command runs.
function! s:RunTest(command) abort
    let l:had_root = exists('g:test#project_root')
    let l:saved_root = l:had_root ? g:test#project_root : v:null

    if &filetype ==# 'rust'
        let l:cargo = findfile('Cargo.toml', expand('%:p:h') . ';')
        if !empty(l:cargo)
            let g:test#project_root = fnamemodify(l:cargo, ':p:h')
        endif
    endif

    try
        execute a:command
    finally
        if l:had_root
            let g:test#project_root = l:saved_root
        else
            unlet! g:test#project_root
        endif
    endtry
endfunction

nnoremap <silent> <Leader>tn :call <SID>RunTest('TestNearest')<CR>
nnoremap <silent> <Leader>tf :call <SID>RunTest('TestFile')<CR>
nnoremap <silent> <Leader>ts :call <SID>RunTest('TestSuite')<CR>
nnoremap <silent> <Leader>tl :call <SID>RunTest('TestLast')<CR>
nnoremap <silent> <Leader>tv :call <SID>RunTest('TestVisit')<CR>
nnoremap <silent> <Leader>tc :call <SID>RunTest('TestClass')<CR>

" Vista.vim: symbol outline and fuzzy symbol finder.
nnoremap <silent> <Leader>vo :Vista!!<CR>
nnoremap <silent> <Leader>vf :Vista finder<CR>
nnoremap <silent> <Leader>vs :Vista show<CR>
nnoremap <silent> <Leader>vt :Vista toc<CR>

augroup vista_keybindings
    autocmd!
    autocmd FileType vista,vista_kind
                \ nnoremap <buffer> <silent> /
                \ :<C-u>call vista#finder#fzf#Run()<CR>
augroup END

" which-key: show the leader mappings and their groups.  The leader itself is
" still available as a normal mapping prefix; which-key only appears when no
" further key is pressed within 'timeoutlen'.
let g:which_key_map = get(g:, 'which_key_map', {})

let g:which_key_map.f = {
            \ 'name': '+fuzzy-find',
            \ 'f': 'files',
            \ 'g': 'ripgrep',
            \ 'b': 'buffers',
            \ 'r': 'recent files',
            \ 'l': 'lines',
            \ 'w': 'windows',
            \ 'h': 'help tags',
            \ 'j': 'jumps',
            \ 'm': 'maps',
            \ 'c': 'commands',
            \ }
let g:which_key_map.t = {
            \ 'name': '+test',
            \ 'n': 'nearest test',
            \ 'f': 'test file',
            \ 's': 'test suite',
            \ 'l': 'last test',
            \ 'v': 'visit test',
            \ 'c': 'test class',
            \ }
let g:which_key_map.v = {
            \ 'name': '+vista',
            \ 'o': 'toggle outline',
            \ 'f': 'find symbol',
            \ 's': 'show outline',
            \ 't': 'table of contents',
            \ }
let g:which_key_map.r = {
            \ 'name': '+refactor',
            \ 'n': 'rename symbol',
            \ }
let g:which_key_map.c = {
            \ 'name': '+code/comment',
            \ 'a': 'code action',
            \ 'c': 'comment',
            \ 'u': 'uncomment',
            \ 'm': 'minimal comment',
            \ 'i': 'invert comment',
            \ 's': 'sexy comment',
            \ 'y': 'yank and comment',
            \ 'n': 'nested comment',
            \ ' ': 'toggle comment',
            \ }
let g:which_key_map.b = {
            \ 'name': '+buffers',
            \ 'e': 'buffer explorer',
            \ 't': 'toggle buffer explorer',
            \ 's': 'horizontal split',
            \ 'v': 'vertical split',
            \ }

augroup which_key_config
    autocmd!
    " vim-which-key is lazy-loaded by plug; register descriptions after it
    " has been sourced so the autoload function exists.
    autocmd User vim-which-key call which_key#register('\', 'g:which_key_map')
augroup END

nnoremap <silent> <Leader> :<C-u>WhichKey '\'<CR>
vnoremap <silent> <Leader> :<C-u>WhichKeyVisual '\'<CR>
