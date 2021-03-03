-- Dogecomments - Lee Wannacott 2021

-- api commands reference 
-- local get_cursor_line_number = api.nvim_win_get_cursor(0)[1]
-- local set_line = api.nvim_set_current_line("hello")
-- local get_line = api.nvim_get_current_line() 
-- nvim_put({lines}, {type}, {after}, {follow}) *nvim_put()* Puts text at cursor, in any mode.

api = vim.api -- Shorten calling of the api.

-- file types table -- Comment markers for single line comments.
file = {}
file["python"] = "#"
file["javascript"] = "//"
file["lua"] = "--"
file["vim"] = "\""
file["text"] = "*"

filetype = vim.bo.filetype
print(filetype)

if file[filetype] ~= nil then
    comment_marker = file[filetype]
elseif filetype[filetype] == nil then
    default_comment_syntax = "//"
    comment_marker = default_comment_syntax
end
if type(string.len(comment_marker)) ~= nil then
    length_of_comment_marker = string.len(comment_marker)
end
--
function comment_line()
current_vim_mode = api.nvim_get_mode().mode -- .blocking: Do we need to check if blocking is false in addition to 'n' mode?

    if current_vim_mode == 'n' then
        get_line = api.nvim_get_current_line() 

        first_non_space_char = string.find(get_line, '%S')
        if first_non_space_char == nil then 
            first_non_space_char = 0 -- If no whitespace before comment_marker.
        end

        leading_space = string.rep(" ",first_non_space_char-1)
        comment_marker_placed = get_line.sub(get_line,first_non_space_char,first_non_space_char + length_of_comment_marker-1)
        print(comment_marker, comment_marker_placed)

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
    comment_line = comment_line
}

-- TODO:s
--  [x] Place comments with the indentation level.
--  [x] Get filetype of file e.g .py, .js, .lua , etc. 
--  [x] Assign comment type based on filetype.

--  [x] Single line comment when in normal mode
--  [] Be able to place multiple line comments or multiline comments in visual mode.
--  [] Fix bug: If the user has existing comment that does not have space after it. The letter after the comment will be deleted.
--  [] Put alert user needs at least Neovim version -0.5
--  [] Restructure components of program to not all be in init.lua. Seperate function for different functionality.

