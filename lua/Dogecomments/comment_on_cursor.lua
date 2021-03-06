require("Dogecomments/init")

local function comment_on_cursor()
    print "Comment on cursor"
current_vim_mode = api.nvim_get_mode().mode -- .blocking: Do we need to check if blocking is false in addition to 'n' mode?
    if current_vim_mode:match('n') then
        get_line = api.nvim_get_current_line() 
    end
end

local comment_on_cursor = 
{
    comment_on_cursor= comment_on_cursor
}

return comment_on_cursor
