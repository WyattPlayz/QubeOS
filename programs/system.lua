local function writeAt(text, x, y)
   term.setCursorPos(x, y)
   term.write(text)
end

local function drawAt(x, y, color)
   term.setCursorPos(x, y)
   term.setBackgroundColor(color)
   term.write(' ');
   term.setBackgroundColor(colors.white);
end

local function width()
   local x, y = term.getSize()
   return x
end

local function height()
   local x, y = term.getSize()
   return y
end

local function drawBar()
local i = 0
while i-1 < width() do
   drawAt(i, 0, colors.gray)
end

writeAt('Info', 2, 0)
writeAt('OS Version: 1.0');
