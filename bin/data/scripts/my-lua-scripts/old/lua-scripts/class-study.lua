-- http://www.lua.org/pil/16.html
-- http://lua-users.org/wiki/SimpleLuaClasses

local r = 500
batang = of.font()

-----------------------------------------------------
local MyClass = {} -- the table representing the class, which will double as the metatable for the instances
MyClass.__index = MyClass -- failed table lookups on the instances should fallback to the class table, to get methods

-- syntax equivalent to "MyClass.new = function..."
function MyClass.new(init)
  local self = setmetatable({}, MyClass)
  self.value = init
  return self
end

function MyClass.set_value(self, newval)
  self.value = newval
end

function MyClass.get_value(self)
  return self.value
end
-----------------------------------------------------
local i = MyClass.new(5)
-----------------------------------------------------

local x,y,a,r = 250
local m = 10
function setup()
   of.setWindowTitle("OOO study")
   of.background(0)
   batang:loadFont("/Users/ari/Media/fonts/favorites/Batang.ttf", 8, false, true)
end
----------------------------------------------------
function update()

end
----------------------------------------------------
function draw()
   of.fill()
   of.setColor(0,0,0,255)
   of.rect(0,0,of.getWidth(), of.getHeight())

   of.setColor(250,0,0,250)
   batang:drawString(tostring(i:get_value()),10,10) ---XXX

end
----------------------------------------------------
function keyPressed(key)
   if key == string.byte("s") then
      i:set_value(15) ---XXX
   end
end
