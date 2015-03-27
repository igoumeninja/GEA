takis = of.gea()

function setup()
   of.setWindowTitle("adf")
   of.background(0)
   takis:setup()
end
----------------------------------------------------
function update()
--   takis:update()
   --takis:amp()
   --print(
--   print(takis:amp())
   
end
----------------------------------------------------
function draw()
   of.fill()
   of.setColor(0,0,0,10)
   of.rect(0,0,of.getWidth(), of.getHeight())
end
----------------------------------------------------
function keyPressed(key)
   if key == string.byte("s") then
   end
end
