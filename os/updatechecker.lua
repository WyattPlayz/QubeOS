local updater = require('updater.lua');
local version = 1.0
local github = "https://raw.githubusercontent.com/WyattPlayz/QubeOS/master/"
local file = "version.txt"
local url = github .. file

	
http.request( url )
event, url, handle = os.pullEvent( "http_success" )
local newver = handle.readAll()
if not version == newver then updater.update() end
handle:close()
