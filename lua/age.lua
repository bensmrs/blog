local TODAY = os.date("*t")
local AGE = TODAY.year - 1998
if TODAY.month == 1 and TODAY.day < 14 then
  AGE = AGE - 1
end

function Str(el)
  el.text = el.text:gsub("{{age}}", AGE)
  return el
end
