## Description: Help get :dog: to the :last_quarter_moon_with_face: by commenting out your code. 

Install: `Plug 'leewannacott/nvim-dogecomments'`

### Current Keymappings to call different functions:
```lua
-- Commands are silenced with <silent>
noremap <leader>cl :call Comment_line() <CR> -- Comment out a single line or multiple using count or VL mode.

noremap <leader>cL :call Comment_end_of_line() <CR> -- Places comment at end of line and enters insert mode.

noremap <leader>cc :call Comment_on_cursor() <CR> -- Places a comment on the cursor mark position.

noremap <leader>ct :call Comment_todo() <CR> -- Places a TODO comment.

noremap <leader>cd :call Comment_remove() <CR> -- Deletes comments placed at start of lines.

noremap <leader>cp :call Comment_doge() <CR> -- Prints ascii Doge.
```

### Development on this repository:

`Plug '/home/user/Desktop/nvim-dogecomments'`

TODO: 

- [ ] Deploy server to AWS as EC2 instance to show global amount of lines of code commented out by users of the plugin.
