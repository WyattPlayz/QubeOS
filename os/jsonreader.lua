local jsonreader = {}

local function jsonreader.getJson(filename)
    local path = system.pathForFile( filename, system.DocumentsDirectory)
    local contents = ""
    local myTable = {}
    local file = io.open( path, "r" )
    if file then
        --print("trying to read ", filename)
        -- read all contents of file into a string
        local contents = file:read( "*a" )
        myTable = json.decode(contents);
        io.close( file )
        --print("Loaded file")
        return myTable
    end
    print(filename, "file not found")
    return nil
end

return jsonreader
