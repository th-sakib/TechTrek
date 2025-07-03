--[[multiline
comments
--]] 
-- single line comment 

-- 1. Variables and follow control
num = 2 -- numbers can be intiger or floating points
s = "foo" -- immutable string
p = 'bar' -- double quites are also fine
u = [[
multi line 
string 
]]
t = nil -- Undefined t; lua can garbage collect 
globalVar = "gloabal varibale by default" -- by default varibales are global | and camelCase is common in lua
local localVar = "its my hood" -- local varible

-- while loop
num1 = 3
while num1 > 0 do
  -- print(num1)
  num1 = num1 - 1 -- no ++ or += operator
end

-- if clauses
superhero = "thor"
msg = ''
if superhero == "iron man" then
  msg = "legend"
elseif superhero == "thor" then
  msg = "feel the thunder"
elseif superhero ~= "spider man" then -- ~= not equal
  msg = "no swinging"
else 
  msg = "idk may be swing swing spidey"
end
-- print(msg.." as its the "..superhero) -- .. is used for concatination

-- empty variables are implicitly have 'nul' value
abc = asd -- its not an error, abc varible now holds 'nil'
-- print (abc)

-- also false and nil is falsy and 0, '' these are true
falsyVar = false
falsyVar2 = nil

aBooleanValue = falsyVar

-- some conditional shorthands
if not aBooleanValue then print('it was false') end

--ternary 
local result = aBooleanValue and 'yes' or 'no' --> no

-- Loop
res = 0
for i = 1, 100 do
  -- print(i) -- print 1 - 100
  res = res + 1
end
-- print(res) --> 100

anotherRes = 0
for i = 1, 100, 2 do
  -- print(i) -- print 1 - 100 odd numbers
  anotherRes = anotherRes + 1
end
-- print(anotherRes) --> 50

-- funcitons
function fib(n)
  if n == 0 then return 0 end -- base case for 0 
  if n == 1 then return 1 end -- base case for 1
  return fib(n - 2) + fib(n - 1)
end
local res = fib(2)
-- print(res) --> 1

-- Closures and anonymous functions are ok:
function adder(x)
  -- The returned function is created when adder is
  -- called, and remembers the value of x:
  return function (y) return x + y end
end
a1 = adder(9)
a2 = adder(36)
print(a1(16))  --> 25
print(a2(64))  --> 100

