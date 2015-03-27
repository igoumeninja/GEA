local r=30

function setup()
   of.setWindowTitle("startUp")
   of.background(0)
   of.enableSmoothing()
end
----------------------------------------------------
function update()

end
----------------------------------------------------
function draw()
   of.fill()
   of.setColor(0,0,0,15)
   of.rect(0,0,of.getWidth(), of.getHeight())
   of.noFill()
   of.setColor(250,250,250,250)
   for i=1,(360/0.2) do
      of.pushMatrix()
      of.translate(of.getWidth()/2, of.getHeight()/2, 0)
      x = r*math.sin(i)+200*math.sin(of.getFrameNum()/20)
--      x = r*math.sin(i*of.getFrameNum()/8)
      y = r*math.cos(i)+50*math.sin(of.getFrameNum()/50)
--      of.translate(of.getWidth()/2, of.getHeight()/2, 0)
      of.ellipse(x,y,2,2)
      of.setColor(250,250,250,2)
      of.line(x,y,of.getWidth()/2,of.getHeight()*math.sin(of.getFrameNum()/10))
      of.popMatrix()
--      
   end

end
----------------------------------------------------
function keyPressed(key)
   if key == string.byte("s") then
   end
end
