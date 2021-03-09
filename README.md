# Warning: Neovim plugin under development. 

## Help Doge get to the moon by letting Doge comment out your code. Written in moon language.

Install: `Plug 'leewannacott/neovim-dogecomments'`

How to use:

Current Keymappings to call different functions.

```lua
noremap <leader>cl :call Comment_line() <CR>

noremap <leader>cL :call Comment_end_of_line() <CR>

noremap <leader>cc :call Comment_on_cursor() <CR>

noremap <leader>ct :call Comment_todo() <CR>

noremap <leader>cu :call Comment_remove() <CR>
```