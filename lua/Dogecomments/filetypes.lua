-- file types table -- Comment markers for single line comments.
file = {}
file["python"] = "#"
file["javascript"] = "//"
file["lua"] = "--"
file["vim"] = "\""
file["c"] = "//"
file["cpp"]= "//"
file["text"] = "*"

return {
    filetypes = filetypes,
}