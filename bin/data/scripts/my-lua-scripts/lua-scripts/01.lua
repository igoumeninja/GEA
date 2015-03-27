function setup()
   of.setWindowTitle("01")
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

   of.setColor(255,0,0,125)
   for j=1,50 do
      for i=1,20 do
         of.rect(math.random(0,of.getWidth()),j*20,10,10)
      end
   end
end
----------------------------------------------------
function keyPressed(key)
   if key == string.byte("s") then
   end
end
