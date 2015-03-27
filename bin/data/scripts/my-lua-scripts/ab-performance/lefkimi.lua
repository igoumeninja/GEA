local r=230

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

   for i=1,(180/0.2) do
      of.pushMatrix()
      of.translate(of.getWidth()/2, of.getHeight()/2, 0)
      x = -of.getWidth()/4+r*math.sin(i)+200*math.sin(of.getFrameNum()/20)
      y = r*math.cos(i)+50*math.sin(of.getFrameNum()/50)
      of.setColor(250,250,250,4)
      of.ellipse(x,y,r*math.sin(of.getFrameNum()/10),r*math.sin(of.getFrameNum()/100))
      of.setColor(250,0,0,3)
      of.line(x,y,of.getWidth()/2,of.getHeight()/2*math.sin(of.getFrameNum()/10))
      of.line(x,y,of.getWidth()/2*math.sin(of.getFrameNum()/10),of.getHeight()/2)
      of.popMatrix()
   end

end
