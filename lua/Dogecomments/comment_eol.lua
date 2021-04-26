
require("Dogecomments/init")

local function comment_eol()
    Get_line = api.nvim_get_current_line()
    if string.sub(Get_line, -(length_of_comment_marker+space_after_comment_length), -1) ~= comment_marker .. space_after_comment then
        Place_comment_at_eol = api.nvim_set_current_line(Get_line .. space_after_comment .. comment_marker .. space_after_comment)
        vim.cmd('startinsert!') -- Enter insert mode after comment. (a.k.a Append/A).
        if telemetry == true then
            log_telemetry("commented_eol")
        end

    elseif string.sub(Get_line, -(length_of_comment_marker+space_after_comment_length), -1) == comment_marker .. space_after_comment then
        api.nvim_set_current_line(string.sub(Get_line,0, -(length_of_comment_marker+space_after_comment_length)))
    end
end

return {
    comment_eol = comment_eol,
}
