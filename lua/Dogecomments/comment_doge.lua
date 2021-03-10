
require("Dogecomments/init")

function comment_doge()

    -- see if the file exists
    function file_exists(file)
        local f = io.open(file, "rb")
        if f then f:close() end
        return f ~= nil
    end

    -- get all lines from a file, returns an empty
    -- list/table if the file does not exist
    function lines_from(file)
        if not file_exists(file) then return {} end
        lines = {}
        for line in io.lines(file) do 
        lines[#lines + 1] = line
        --print(line)
        end
        return lines
    end

    -- tests the functions above
    -- TODO: change to get present working directory and then after ascii text file, or to get from github.
    local file = "https://raw.githubusercontent.com/LeeWannacott/nvim-dogecomments/master/lua/Dogecomments/Doge.txt"
    local lines = lines_from(file)

    -- paste doge
    api.nvim_put(lines,'l',true,true)
end

return{
    comment_doge = comment_doge,
}