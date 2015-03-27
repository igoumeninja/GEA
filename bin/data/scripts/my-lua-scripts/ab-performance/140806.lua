local radius = 200
   
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

   of.rect(0,0,of.getWidth(), of.getHeight())
   
   of.setColor(255,255,255,50)
   of.pushMatrix()
   of.translate(of.getWidth()/2, 
                of.getHeight()/2, 0)
   of.setColor(0,0,0,20)

   of.setPolyMode(of.POLY.WINDING_ODD)
   of.beginShape()
   of.endShape(of.CLOSE)
   of.popMatrix()


end
----------------------------------------------------
function keyPressed(key)
   if key == string.byte("s") then
   end
end
