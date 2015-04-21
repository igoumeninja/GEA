function setup()
   of.setWindowTitle("startUp")
   of.background(0)
   of.smooth()
end
----------------------------------------------------
function update()

end
----------------------------------------------------
function draw()
   of.fill()
   of.setColor(0,0,0,10)
   of.rect(0,0,of.getWidth(), of.getHeight())

   of.setColor(250,30,20,180)   
   for i=1,400 do
         of.ellipse((0.05*i*of.getFrameNum()%of.getWidth()),2*i,10,my.myFunction(5))
         --of.rect((0.05*i*of.getFrameNum()%of.getWidth()),2*i,10,my.myFunction(5))
   end
end
----------------------------------------------------
function keyPressed(key)
   if key == string.byte("s") then
   end
end
