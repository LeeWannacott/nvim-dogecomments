
echo 'Dogecomments lifting off'


fun! Comment_line()
    lua for k in pairs(package.loaded) do if k:match("^Dogecomments") then package.loaded[k] = nill end end
    lua require("Dogecomments/comment_line").comment_line()
endfun

fun! Comment_on_cursor()
    lua for k in pairs(package.loaded) do if k:match("^Dogecomments") then package.loaded[k] = nill end end
    lua require("Dogecomments/comment_on_cursor").comment_on_cursor()
endfun

" Keymappings to call different functions.
noremap <leader>c :call Comment_line() <CR>
noremap <leader>q :call Comment_on_cursor() <CR>



