# Nvim plugin under development. 

Description: Help Doge get to the moon by letting Doge comment out your code. Written in moon language.

Install: `Plug 'leewannacott/nvim-dogecomments'`

How to use:

Current Keymappings to call different functions.  
```lua
-- Commands are silenced with <silent>
noremap <leader>cl :call Comment_line() <CR> -- Comment out a single line or multiple using count or VL mode.

noremap <leader>cL :call Comment_end_of_line() <CR> -- Places comment at end of line and enters insert mode.

noremap <leader>cc :call Comment_on_cursor() <CR> -- Places a comment on the cursor mark position.

noremap <leader>ct :call Comment_todo() <CR> -- Places a TODO comment.

noremap <leader>cd :call Comment_remove() <CR> -- Deletes comments placed at start of lines.

noremap <leader>cp :call Comment_doge() <CR> -- Prints ascii Doge.
```

Help my coding language isn't supported: #1 .Feel free to make a PR, or ask me to add it.

Example how to install(fork and clone first) for development on this repo:

`Plug '/home/lee/Desktop/nvim-dogecomments'`
