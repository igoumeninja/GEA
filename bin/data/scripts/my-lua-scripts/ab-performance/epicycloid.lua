local steps = 2
local x,y,th=1,1,1
local r1,r2,d = 210, 310, 175
function setup()
   of.setWindowTitle("Epicycloid")
  of.background(0)
end
----------------------------------------------------
function update()
   
end
----------------------------------------------------
function draw()
   of.fill()
   of.setColor(0,0,0,2)
   of.rect(0,0,of.getWidth(), of.getHeight())
   for i=0,1 do
      epicycloid(r1,r2,d*i)      
   end
end


----------------------------------------------------
function epicycloid(r1,r2,d)
   of.noFill()
   --of.setPolyMode(of.POLY.WINDING_NONZERO) -- this is the normal mode
   of.setColor(255,255,255,255)

   if of.getFrameNum()%1 == 0 then
      of.beginShape()
      for i=1,10 do
         xE = ((r1+r2)*math.cos(th)) -  d*(math.cos(((r1+r2)/r2)*th));
         yE = ((r1+r2)*math.sin(th)) -  d*(math.sin(((r1+r2)/r2)*th));
         th = th + (3.14/steps)
         --of.curveVertex(of.getWidth()/2+xE,of.getHeight()/2+yE)
         of.ellipse(of.getWidth()/2+xE,of.getHeight()/2+yE,1,1)
      end
      of.endShape(false)
   end
end

----------------------------------------------------
function keyPressed(key)
   if key == string.byte("s") then
--      r=200
   end
end
