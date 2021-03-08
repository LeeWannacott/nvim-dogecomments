Warning: Neovim plugin under development. 

Help Doge get to the moon by letting Doge comment out your code. Written in moon language.

Install instructions:
`Plug 'leewannacott/neovim-dogecomments'`

How to use:

" Current Keymappings to call different functions.
noremap <leader>cl :call Comment_line() <CR>
noremap <leader>cc :call Comment_on_cursor() <CR>
noremap <leader>cd :call Comment_todo() <CR>
noremap <leader>c$ :call Comment_end_of_line() <CR>