function setup()
   of.setWindowTitle("liveCoding_1")
   of.background(0)
end
----------------------------------------------------
function update()
   
end
----------------------------------------------------
function draw()
   of.fill()
   of.setColor(0,0,0,10)
   of.rect(0,0,of.getWidth(), of.getHeight())

   of.setColor(255,255,0,25)
   for i=1,20 do
      of.rect(0,i*of.getFrameNum()%of.getHeight(),of.getWidth(),1)
   end


end
----------------------------------------------------
function keyPressed(key)
   if key == string.byte("s") then
   end
end
