
echo 'Dogecomments lifting off'


fun! Comment_line()
    lua for k in pairs(package.loaded) do if k:match("^Dogecomments") then package.loaded[k] = nill end end
    lua require("Dogecomments/comment_line").comment_line()
endfun

fun! Comment_on_cursor()
    lua for k in pairs(package.loaded) do if k:match("^Dogecomments") then package.loaded[k] = nill end end
    lua require("Dogecomments/comment_on_cursor").comment_on_cursor()
endfun

fun! Comment_todo()
    lua for k in pairs(package.loaded) do if k:match("^Dogecomments") then package.loaded[k] = nill end end
    lua require("Dogecomments/comment_todo").comment_todo()
endfun

fun! Comment_end_of_line()
    lua for k in pairs(package.loaded) do if k:match("^Dogecomments") then package.loaded[k] = nill end end
    lua require("Dogecomments/comment_eol").comment_eol()
endfun

fun! Comment_remove()
    lua for k in pairs(package.loaded) do if k:match("^Dogecomments") then package.loaded[k] = nill end end
    lua require("Dogecomments/comment_remove").comment_remove()
endfun

fun! Comment_doge()
    lua for k in pairs(package.loaded) do if k:match("^Dogecomments") then package.loaded[k] = nill end end
    lua require("Dogecomments/comment_doge").comment_doge()
endfun

" Keymappings to call different functions.
noremap <leader>cl :call Comment_line() <CR>
noremap <leader>cc :call Comment_on_cursor() <CR>
noremap <leader>ct :call Comment_todo() <CR>
noremap <leader>cL :call Comment_end_of_line() <CR>
noremap <leader>cd :call Comment_remove() <CR>
noremap <leader>cp :call Comment_doge() <CR>



