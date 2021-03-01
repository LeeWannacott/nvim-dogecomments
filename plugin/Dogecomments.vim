
echo 'Dogecomments'

fun! Dogecomments()
    lua for k in pairs(package.loaded) do if k:match("^Dogecomments") then package.loaded[k] = nill end end
    lua require("Dogecomments").comment_line()
endfun

augroup Dogecomments
