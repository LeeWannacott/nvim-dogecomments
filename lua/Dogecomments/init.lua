-- Dogecomments - Lee Wannacott - 2021

if vim.fn.has('nvim-0.5') == 0 then
    print("dogecomments requires nvim version >=0.5")
end

api = vim.api -- Shorten calling of the api.

telemetry = false

function log_telemetry(telemetry_string)
    local file = io.open("telemetry.txt", "a+")
    file:write(telemetry_string,"\n")
    file:close()
end

require("Dogecomments/filetypes") 

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
--  [x] Fix bug: If the user has existing comment that does not have space after it. The letter after the comment will be deleted.
--  [x] Put alert user needs at least Neovim version -0.5
--  [x] Restructure components of program to not all be in init.lua. Seperate function for different functionality.
