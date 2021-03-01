
-- api commands reference 
-- local get_cursor_line_number = api.nvim_win_get_cursor(0)[1]
-- local set_line = api.nvim_set_current_line("hello")
-- local get_line = api.nvim_get_current_line() 

api = vim.api -- shorten calling the api

-- file types table
file = {}
file["python"] = "#"


--print(ft)
-- print(filetype["python"])
function trim_leading_whitespace(string)
    return string:match'^%s*(.*)'
  end
  

function comment_line()

local cursor_line_number = api.nvim_win_get_cursor(0)[1]
get_line = api.nvim_get_current_line() 
-- print(get_line.sub(get_line,1,2))

first_non_space_char_in_string = (string.len(get_line) - string.len(trim_leading_whitespace(get_line)))
amount_of_white_space = string.rep(" ",first_non_space_char_in_string)
amount_of_white_space_2 = string.rep(" ",first_non_space_char_in_string+2)
 
print(first_non_space_char_in_string)

print(get_line.sub(get_line,first_non_space_char_in_string+1,first_non_space_char_in_string+2))

if trim_leading_whitespace(get_line.sub(get_line,first_non_space_char_in_string+1,first_non_space_char_in_string+2)) ~= "//" then
    set_line = api.nvim_set_current_line(amount_of_white_space .. "// " .. get_line.sub(get_line,first_non_space_char_in_string+1))
elseif trim_leading_whitespace(get_line.sub(get_line,first_non_space_char_in_string+1,first_non_space_char_in_string+2)) == "//" then
    set_line = api.nvim_set_current_line(amount_of_white_space .. get_line.sub(get_line,first_non_space_char_in_string+4))
end
end

return {
    comment_line = comment_line
}

-- TODO:s
--  [] Place comments with the indentation level.
--  [] Get filetype of file e.g .py, .js, .lua , etc. 
--  [] Assign comment type based of filetype.
--  [] Be able to place multiple line comments or multiline comments in visual mode.