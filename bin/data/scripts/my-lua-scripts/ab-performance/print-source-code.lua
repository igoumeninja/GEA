batang = of.Font()
local steps = 100
local x,y,th=1,1,1
local r1,r2,d = 15, 120, 27
function setup()
   of.setWindowTitle("Epicycloid")
   of.setFrameRate(30)
   --of.background(255)
   batang:loadFont("/Users/ari/Media/fonts/favorites/Batang.ttf", 28, false, true)
end
----------------------------------------------------
function update()
   if of.getFrameNum()%100 == 0 then
     -- d = math.random(20,100)
     -- r1 = math.random(20,100)
     -- r2 = math.random(20,100)
   end                                   
end
----------------------------------------------------
function draw()
   of.fill()
   of.setColor(0,0,0,15)
   of.rect(0,0,of.getWidth(), of.getHeight())

   for i=1,15 do
      epicycloid(120,180,d*i)      
   end
--   local f = io.open(file,"print-source-code-lua")
--   local content = f:read("*all")
--   f:close()
--   t = io.read("*all")         -- read the whole file
--   t = string.gsub(t, ...)     -- do the job
 --  io.write(t)                 -- write the file
   of.setColor(255,255,255,15)
   batang:drawString(tostring(of.getFrameNum()),600,of.getFrameNum()%1000)
end


----------------------------------------------------
function epicycloid(r1,r2,d)
   of.setColor(255,255,255,150)
   of.noFill()
   of.setPolyMode(of.POLY.WINDING_NONZERO) -- this is the normal mode
   for i=0,steps do
      xE = ((r1+r2)*math.cos(th)) -  d*(math.cos(((r1+r2)/r2)*th));
      yE = ((r1+r2)*math.sin(th)) -  d*(math.sin(((r1+r2)/r2)*th));
      th = th + (3.14/steps)
      of.ellipse(of.getWidth()/2+xE,of.getHeight()/2+yE,1,1)
   end

end

----------------------------------------------------
function keyPressed(key)
   if key == string.byte("s") then
--      r=200
   end
end
