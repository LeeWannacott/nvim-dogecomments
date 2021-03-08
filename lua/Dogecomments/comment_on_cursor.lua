
require("Dogecomments/init")

local function comment_on_cursor()
    print "Comment on cursor"
    current_vim_mode = api.nvim_get_mode().mode -- .blocking: Do we need to check if blocking is false in addition to 'n' mode?
    --if current_vim_mode:match('n') then
        get_cursor_row = api.nvim_win_get_cursor(0)[1]
        get_cursor_col = api.nvim_win_get_cursor(0)[2]
        get_line = api.nvim_get_current_line()
        to_end_line = get_line.sub(get_line,get_cursor_col +1)
        comment_line_on_cursor = api.nvim_set_current_line(get_line.sub(get_line,0,get_cursor_col) .. " " .. comment_marker .. space_after_comment .. to_end_line)

        -- '<,'> 
        --api.nvim_paste(comment_line_on_cursor,false,-1)
        --api.nvim_put(get_line,"c",true,true)
        -- put = api.nvim_put(api.readlines,"l",true,true)

    --end
end

return {
    comment_on_cursor = comment_on_cursor,
}
