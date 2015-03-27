mlab = of.getApp()

local r,g,b,a=0,0,0,250
function setup()
   of.setWindowTitle("Rose Amp")
end
----------------------------------------------------
function update()
   
end
----------------------------------------------------
function draw()
   of.fill()
   of.setColor(r,g,b,a)
   of.rect(0,0,of.getWidth(), of.getHeight())

   of.noFill()

   for i=1,100 do
      of.pushMatrix()
      of.translate(of.getWidth()/2, of.getHeight()/2, 0)
      of.rotateZ(-of.getFrameNum()*i/200)
--      of.rotateZ(-of.getFrameNum()*i/200*mlab.amp)
      of.setColor(255,255,255,200)
      of.rect(0,0,2*i*mlab.amp*10+200,2*i*mlab.amp*10+200)
      of.setColor(255,0,0,100)
      of.ellipse(2*i*mlab.amp*10+200,2*i*mlab.amp*10+200,120,120)
      of.setColor(255,255,0,100)
      of.line(0,0,2*i*mlab.amp*10+200,2*i*mlab.amp*10+200)
      of.popMatrix()

   end

end
----------------------------------------------------
function keyPressed(key)
   if key == string.byte("s") then
      r=200
   end
end
