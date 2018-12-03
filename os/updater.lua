local updater = {}

local github = "https://raw.githubusercontent.com/WyattPlayz/QubeOS/master/"
local updatelocations = github .. "updatelocations.txt"

local function spinner()
  local function writeAt(text, x, y, color) term.setTextColor(color) term.setCursorPos(x, y) term.write(text) end
  local function draw(x, y, color) term.setBackgroundColor(color) term.setCursorPos(x, y) term.write(" ") end
  local function getWidth() local w, h = term.getSize() return w end
  while true do
    term.clear()
    writeAt("Error Code: 0", 1, 1, colors.white)
    writeAt("Error Message: updater.lua stopped bootup on bios level", 1, 2, colors.white)
    writeAt("message: updating. +")
    os.sleep(.25
    term.clear()
    writeAt("Error Code: 0", 1, 1, colors.white)
    writeAt("Error Message: updater.lua stopped bootup on bios level", 1, 2, colors.white)
    writeAt("message: updating. x")
    os.sleep(.25)
  end
end

function updater.update()
  local function writeAt(text, x, y, color) term.setTextColor(color) term.setCursorPos(x, y) term.write(text) end
  local function draw(x, y, color) term.setBackgroundColor(color) term.setCursorPos(x, y) term.write(" ") end
  local function getWidth() local w, h = term.getSize() return w end
  
  term.setBackgroundColor(colors.lightBlue)
  term.clear()
  spinner()
    for line in io.lines(updatelocations) do
      local url = github .. line
      for line in io.lines
    end
end

return updater
