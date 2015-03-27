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
   of.setColor(10,0,10,100)
   of.rect(0,0,of.getWidth(), of.getHeight())

   of.setColor(210,220,210,250)
   of.line(
      of.getWidth()/8,
      of.getHeight()/2,
      7*of.getWidth()/8,
      of.getHeight()/2)
end
----------------------------------------------------
function keyPressed(key)
   if key == string.byte("s") then
   end
end
