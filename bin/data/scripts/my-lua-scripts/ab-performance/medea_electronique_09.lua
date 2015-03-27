midi = of.midi()

local steps = 20


local x,y,th=1,1,1
local r1,r2,d = 205, 170, 15
function setup()
   of.setWindowTitle("Epicycloid")
   of.background(0)
   midi:setup()
end
----------------------------------------------------
function update()
   midi:update()
end
----------------------------------------------------
function draw()
   of.fill()
   of.setColor(0,0,0,midi:map(19,0,50,15))
   of.rect(0,0,of.getWidth(), of.getHeight())
   r1 = midi:map(1,0,200,120)
   r2 = midi:map(2,0,200,180)
   d  = midi:map(3,0,50,10)
   for i=0,10 do
      epicycloid(r1,r2,d*i)
   end
end


----------------------------------------------------
function epicycloid(r1,r2,d)
   of.setColor(255,255,255,230)
   of.noFill()
--   of.setPolyMode(of.POLY.WINDING_NONZERO) -- this is the normal mode
--   of.beginShape()
   for i=1,steps do
      xE = ((r1+r2)*math.cos(th)) -  d*(math.cos(((r1+r2)/r2)*th));
      yE = ((r1+r2)*math.sin(th)) -  d*(math.sin(((r1+r2)/r2)*th));
      th = th + (3.14/steps)
--      of.ellipse(of.getWidth()/2+xE,of.getHeight()/2+yE,1,1)
--      of.ellipse(20*i+xE,of.getHeight()/2+yE,1,1)
      of.ellipse(of.getWidth()/2+xE,of.getHeight()/2+yE,1,1)
--      of.vertex(of.getWidth()/2+xE,of.getHeight()/2+yE)
   end
--   of.endShape(false)
end

----------------------------------------------------
function keyPressed(key)
   if key == string.byte("s") then
--      r=200
   end
end
