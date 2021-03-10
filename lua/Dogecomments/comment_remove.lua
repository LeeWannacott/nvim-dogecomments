
require("Dogecomments/init")

function comment_remove()

current_vim_mode = api.nvim_get_mode().mode -- .blocking: Do we need to check if blocking is false in addition to 'n' mode?

    if current_vim_mode:match('n') then
        get_line = api.nvim_get_current_line()

        first_non_space_char = string.find(get_line, '%S')

        if first_non_space_char == nil then 
            first_non_space_char = 0 -- If no whitespace before comment_marker.
        end

        leading_space = string.rep(" ",first_non_space_char-1)
        if_comment_marker = get_line.sub(get_line,first_non_space_char,first_non_space_char + length_of_comment_marker-1)
        if_comment_marker_with_space = get_line.sub(get_line,first_non_space_char,first_non_space_char + length_of_comment_marker)

        if if_comment_marker_with_space == comment_marker .. space_after_comment then
            set_line = api.nvim_set_current_line(leading_space .. get_line.sub(get_line, first_non_space_char + length_of_comment_marker + space_after_comment_length))
        else if if_comment_marker == comment_marker  then
            set_line = api.nvim_set_current_line(leading_space .. get_line.sub(get_line, first_non_space_char + length_of_comment_marker))
        end

    end
end
end

return {
    comment_remove = comment_remove,
}
