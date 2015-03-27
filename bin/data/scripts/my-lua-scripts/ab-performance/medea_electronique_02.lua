-- 5 min by AB
local speed = 2/400;
----------------------------------------------------
function setup()
   of.setWindowTitle("patterns")
--   of.background(0)
   of.enableSmoothing()
   of.setCircleResolution(50)
end
----------------------------------------------------
function update()
end
----------------------------------------------------
function draw()
   of.fill()
   of.setColor(0,0,0,10)
   of.rect(0,0,of.getWidth(), of.getHeight())
   for j=-1,of.getHeight()/20 do
      for i=-1,of.getWidth()/20 do
         of.pushMatrix()
            of.translate(20*math.random(0,2)*i, 20*j, 0)
            pattern()
            of.popMatrix()
      end
   end
end

function pattern()
   of.setColor(25,255,255,20)
   of.fill()
   of.ellipse(20,0,10*math.sin(of.getFrameNum()*speed),10*math.sin(of.getFrameNum()*speed))
   of.setColor(255,0,0,10)
   of.fill()
   of.ellipse(10,0,10*math.sin(of.getFrameNum()*speed),10*math.sin(of.getFrameNum()*speed))
end
