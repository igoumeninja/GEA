
function setup()
   of.setWindowTitle("liveCoding_1")
end
----------------------------------------------------
function update()
   
end
----------------------------------------------------
function draw()
   of.setColor(255,255,255,100)
   of.fill()

   for i=1,20 do
      of.drawSphere(20*i*math.sin(of.getFrameNum()*0.02),2*i,2)
      of.drawSphere(-20*i*math.sin(of.getFrameNum()*0.02),-0.4*i,2)
      of.drawSphere(-20*i*math.sin(of.getFrameNum()*0.02),2*i,-2)
   end

end
----------------------------------------------------
function keyPressed(key)
   if key == string.byte("s") then
      r=200
   end
end
