-- 5 min by AB
local speed = 20/1000;
----------------------------------------------------
function setup()
   of.setWindowTitle("patterns")
   of.enableSmoothing()
   of.setCircleResolution(20)
end
----------------------------------------------------
function update()
end
----------------------------------------------------
function draw()
   of.fill()
   of.setColor(255,255,255,10)
   of.rect(0,0,of.getWidth(), of.getHeight())
   for j=-1,of.getHeight()/20 do
      for i=-1,of.getWidth()/20 do
         of.pushMatrix()
            of.translate(20*math.random(0,10)*i, 20*j, 0)
            pattern()
            of.popMatrix()
      end
   end
end

function pattern()
   of.setColor(0,0,0,20)
   of.fill()
   of.ellipse(20,0,40*math.sin(of.getFrameNum()*speed),40*math.sin(of.getFrameNum()*speed))
   of.setColor(255,0,0,10)
   of.fill()
   of.ellipse(10,0,40*math.sin(of.getFrameNum()*speed),40*math.sin(of.getFrameNum()*speed))
end
