local encoder = require('encoder.lua')
local json = require('json')
local jsonreader = require('jsonreader.lua')


-- GUI based functions
local function writeAt(text, x, y, color) term.setTextColor(color) term.setCursorPos(x, y) term.write(text) end
local function draw(x, y, color) term.setBackgroundColor(color) term.setCursorPos(x, y) term.write(" ") end
local function getWidth() local w, h = term.getSize() return w end

local iop = jsonreader.loadJson("/os/iop.json")
for _, k, v in pairs(iop) do
  local currentPassword = v
end

local function setup()
  term.setBackgroundColor(colors.black)
  term.clear()
  writeAt("Please enter your password. Default password is 'password'", getWidth()-58, 1, color.white)
end

local function pass()
  os.run({}, "os/programs/desktop.lua")
end

local function deny()
  password = ""
  setup()
end
  

local password = ""
while true do
local event, key, holding = os.pullEvent()
if event == "char" then
  password = password .. key
  setup()
  writeAt(password, getWidth()-string.len(password), 3, colors.lightBlue)
else if event == "key" then
  if key == 28 then
    if encoder.encode(password) == currentPassword then
      pass()
    else
      deny()
    end
  end
end
end
