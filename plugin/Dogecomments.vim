
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

fun! Comment_multiline()
    lua for k in pairs(package.loaded) do if k:match("^Dogecomments") then package.loaded[k] = nill end end
    lua require("Dogecomments/comment_multiline").comment_multiline()
endfun

" Keymappings to call different functions.
noremap <silent><leader>cl :call Comment_line() <CR>
noremap <silent><C-_> :call Comment_line() <CR>
noremap <silent><leader>cc :call Comment_on_cursor() <CR>
noremap <silent><leader>ct :call Comment_todo() <CR>
noremap <silent><leader>cL :call Comment_end_of_line() <CR>
noremap <silent><leader>cd :call Comment_remove() <CR>
noremap <silent><leader>cp :call Comment_doge() <CR>
noremap <silent><leader>cm :call Comment_multiline() <CR>



