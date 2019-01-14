  local function writeAt(text, x, y, color) term.setTextColor(color) term.setCursorPos(x, y) term.write(text) end
  local function draw(x, y, color) term.setBackgroundColor(color) term.setCursorPos(x, y) term.write(" ") end
  local function getWidth() local w, h = term.getSize() return w end
  
  local function spinner()
  local function writeAt(text, x, y, color) term.setTextColor(color) term.setCursorPos(x, y) term.write(text) end
  local function draw(x, y, color) term.setBackgroundColor(color) term.setCursorPos(x, y) term.write(" ") end
  local function getWidth() local w, h = term.getSize() return w end
  os.sleep
  while true do
    term.clear()
    writeAt("Error Code: 0", 1, 1, colors.white)
    writeAt("Error Message: updater.lua stopped bootup on bios level", 1, 2, colors.white)
    writeAt("message: Installing. +")
    os.sleep(.25)
    term.clear()
    writeAt("Error Code: 0", 1, 1, colors.white)
    writeAt("Error Message: updater.lua stopped bootup on bios level", 1, 2, colors.white)
    writeAt("message: Installing. x")
    os.sleep(.25)
  end
end
  local function install()
  term.setBackgroundColor(colors.blue)
  term.clear()
  writeAt('Interruption. Entering BIOS Mode.', 1, 1, colors.white)
  writeAt('Error Code: 0', 1, 2, colors.white)
  writeAt('Error Message: installer.lua has caused a bios interruption.', 1, 3, colors.white)
  
  local files = http.request('https://raw.githubusercontent.com/WyattPlayz/QubeOS/master/installlocations.txt')
  local event, url, handle = os.pullEvent('http_success')
  local line
  while true do
      line = handle.readLine()
      if not line then handle:close() break end
      local file = http.request('https://raw.githubusercontent.com/WyattPlayz/QubeOS/master/' .. line)
      local event, url, handle2 = os.pullEvent('http_success')
      local ifile = io.open(line, "w")
      ifile:write(handle.readAll())
      ifile:close()
      handle2:close()
  end
  os.reboot()
end

parallel.waitForAll(install, spinner)
