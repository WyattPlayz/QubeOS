  local function writeAt(text, x, y, color) term.setTextColor(color) term.setCursorPos(x, y) term.write(text) end
  local function draw(x, y, color) term.setBackgroundColor(color) term.setCursorPos(x, y) term.write(" ") end
  local function getWidth() local w, h = term.getSize() return w end
  
  writeAt("
