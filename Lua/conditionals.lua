-- writing conditions in
local age = 17
local msg = ""
if age >= 18 then
  msg = "adult"
end

if age < 18 then
  msg = "not adult"
end

-- if else 
if age < 18 then
  msg = "not adult"
else 
  msg = "adult "
end

-- if elseif
if age <= 17 then
  msg = "not adult"
elseif age == 18 then
  masg = "Oh, you are 18yo"
else 
  msg = "adult "
end
print(msg)
