-- Dogecomments - Lee Wannacott - 2021

-- api commands reference:
-- local get_cursor_line_number = api.nvim_win_get_cursor(0)[1]
-- local set_line = api.nvim_set_current_line("hello")
-- local get_line = api.nvim_get_current_line() 
-- nvim_put({lines}, {type}, {after}, {follow}) *nvim_put()* Puts text at cursor, in any mode.

api = vim.api -- Shorten calling of the api.

-- file types table -- Comment markers for single line comments.
local file = {}
file["python"] = "#"
file["javascript"] = "//"
file["lua"] = "--"
file["vim"] = "\""
file["C"] = "::"
file["text"] = "*"



filetype = vim.bo.filetype
-- print(filetype)

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

space_after_comment = " "
space_after_comment_length = string.len(space_after_comment)

function dogecomments()
end

local dogecomments =
{
    dogecomments = dogecomments
}

return dogecomments

-- TODO:s
--  [x] Place comments with the indentation level.
--  [x] Get filetype of file e.g .py, .js, .lua , etc. 
--  [x] Assign comment type based on filetype.

--  [x] Single line comment when in normal mode
--  [x] Be able to place multiple line comments ,or multiline comments in visual mode. -- seems to do this by default o_0
-- https://vi.stackexchange.com/questions/17606/vmap-and-visual-block-how-do-i-write-a-function-to-operate-once-for-the-entire
--  [x] Be able to place comment on cursor
--  [] Be able to place comment in visual block mode
--  [] Fix bug: If the user has existing comment that does not have space after it. The letter after the comment will be deleted.
--  [] Put alert user needs at least Neovim version -0.5
--  [x] Restructure components of program to not all be in init.lua. Seperate function for different functionality.
