-- Yes, I know this can be cracked.
-- Is this Hashing? No.
-- Does it work? yes.
-- If you want to add hashing, create a program and put it in os/hash.lua and make a pull request.
-- END.


local encoder = {}

function encoder.encode(text)
  if not text return "error" else
    text = string.gsub(text, "a", "17")
    text = string.gsub(text, "b", "48")
    text = string.gsub(text, "c", "29")
    text = string.gsub(text, "d", "58")
    text = string.gsub(text, "e", "38")
    text = string.gsub(text, "f", "12")
    text = string.gsub(text, "g", "39")
    text = string.gsub(text, "h", "19")
    text = string.gsub(text, "i", "45")
    text = string.gsub(text, "j", "58")
    text = string.gsub(text, "k", "42")
    text = string.gsub(text, "l", "52")
    text = string.gsub(text, "m", "23")
    text = string.gsub(text, "n", "93")
    text = string.gsub(text, "o", "95")
    text = string.gsub(text, "p", "12")
    text = string.gsub(text, "q", "92")
    text = string.gsub(text, "r", "19")
    text = string.gsub(text, "s", "98")
    text = string.gsub(text, "t", "99")
    text = string.gsub(text, "u", "74")
    text = string.gsub(text, "v", "21")
    text = string.gsub(text, "w", "90")
    text = string.gsub(text, "x", "80")
    text = string.gsub(text, "y", "70")
    text = string.gsub(text, "z", "60")
    return text
  end
end

return encoder
