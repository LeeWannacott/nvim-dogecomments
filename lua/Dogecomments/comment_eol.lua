
require("Dogecomments/init")

local function comment_eol()
    if current_vim_mode:match('n') then
    current_vim_mode = api.nvim_get_mode().mode -- .blocking: Do we need to check if blocking is false in addition to 'n' mode?
    --if current_vim_mode:match('n') then
    get_line = api.nvim_get_current_line()

    if string.sub(get_line, -(length_of_comment_marker+space_after_comment_length), -1) ~= comment_marker .. space_after_comment then
        place_comment_at_eol = api.nvim_set_current_line(get_line .. space_after_comment .. comment_marker .. space_after_comment)
        vim.cmd('startinsert!') -- Enter insert mode after comment. (a.k.a Append/A).
        if telemetry == true then
            log_telemetry("commented_eol")
        end

    elseif string.sub(get_line, -(length_of_comment_marker+space_after_comment_length), -1) == comment_marker .. space_after_comment then
        api.nvim_set_current_line(string.sub(get_line,0, -(length_of_comment_marker+space_after_comment_length)))
    end
    end
end

return {
    comment_eol = comment_eol,
}