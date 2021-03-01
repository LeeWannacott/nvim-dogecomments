
-- reference 
-- local get_cursor_line_number = api.nvim_win_get_cursor(0)[1]
-- local set_line = api.nvim_set_current_line("hello")
-- local get_line = api.nvim_get_current_line() 

api = vim.api -- shorten calling the api

-- file types table


local function comment_line()
local cursor_line_number = api.nvim_win_get_cursor(0)[1]
get_line = api.nvim_get_current_line() 
print(get_line.sub(get_line,1,2))
--print(vim.bo)

if get_line.sub(get_line,1,2) ~= "//" then
    set_line = api.nvim_set_current_line("//" .. get_line)
elseif get_line.sub(get_line,1,2) == "//" then
    set_line = api.nvim_set_current_line(get_line.sub(get_line,3,-1))
end
end

return {
    comment_line = comment_line
}

