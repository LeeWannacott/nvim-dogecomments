
require("Dogecomments/init")

local function comment_line()
    print "Comment the line"
current_vim_mode = api.nvim_get_mode().mode -- .blocking: Do we need to check if blocking is false in addition to 'n' mode?

    if current_vim_mode:match('n') then
        get_line = api.nvim_get_current_line() 

        first_non_space_char = string.find(get_line, '%S')
        if first_non_space_char == nil then 
            first_non_space_char = 0 -- If no whitespace before comment_marker.
        end

        leading_space = string.rep(" ",first_non_space_char-1)
        comment_marker_placed = get_line.sub(get_line,first_non_space_char,first_non_space_char + length_of_comment_marker-1)
        space_after_comment = " "
        space_after_comment_length = string.len(space_after_comment)

        if comment_marker_placed ~= comment_marker then
            set_line = api.nvim_set_current_line(leading_space .. comment_marker .. space_after_comment .. get_line.sub(get_line,first_non_space_char))
        elseif comment_marker_placed == comment_marker  then
            set_line = api.nvim_set_current_line(leading_space .. get_line.sub(get_line, first_non_space_char + length_of_comment_marker + space_after_comment_length))
        end

    end
end

return {
    comment_line = comment_line,
}
