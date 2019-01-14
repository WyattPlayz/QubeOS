local function writeAt(text, x, y, color) term.setTextColor(color) term.setCursorPos(x, y) term.write(text) end
local function draw(x, y, color) term.setBackgroundColor(color) term.setCursorPos(x, y) term.write(" ") end
local function getWidth() local w, h = term.getSize() return w end
local function getHeight() local w, h = term.getSize() return h end

local debugmode = false

local function debug(msg) if debugmode then rednet.broadcast(msg, 'debug') end

  
if debugmode then writeAt("Debug Mode ON", getWidth()-13, 0, colors.yellow) end
