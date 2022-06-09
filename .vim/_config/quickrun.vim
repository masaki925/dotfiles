let g:quickrun_config={}
autocmd BufNewFile,BufRead *.rs  let g:quickrun_config.rust = {'exec' : 'cargo run'}
let g:quickrun_config._ = {
      \ 'outputter/buffer/opener': 'new',
      \ 'outputter/buffer/close_on_empty': 1,
      \ }
set splitbelow

nnoremap <silent> <Leader>r :QuickRun<CR>

