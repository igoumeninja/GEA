function setup()
   of.setWindowTitle("startUp")
   of.background(0)
end
----------------------------------------------------
function update()

end
----------------------------------------------------
function draw()
   of.fill()
   of.setColor(0,0,0,20)
   of.rect(0,0,of.getWidth(), of.getHeight())

   of.setColor(250,30,230,230)
   of.rect(100,100,100,100)
   of.setColor(250,30,20,230)   
   of.rect(100,300,100,my.myFunction(300))
end
----------------------------------------------------
function keyPressed(key)
   if key == string.byte("s") then
   end
end
