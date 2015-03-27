-- 32 min by AB
----------------------------------------------------
function setup()
   of.setWindowTitle("patterns")
   of.background(0)
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
            of.translate(20*i, 20*j, 0)
            pattern()
            of.popMatrix()
      end
   end
end

function pattern()
   of.setColor(0,0,0,200)
   of.fill()
   of.ellipse(20,0,40*math.sin(of.getFrameNum()/80),40*math.sin(of.getFrameNum()/80))
   of.setColor(255,255,255,255)
   of.rect(10,0,10,10)
end
