batang = of.Font()
local counter

function setup()
   of.setWindowTitle("liveCoding_2")
   of.background(0)
   batang:loadFont("/Users/ari/Media/fonts/favorites/Batang.ttf", 24, false, true)

end
----------------------------------------------------
function update()
counter = counter +1

end
----------------------------------------------------
function draw()
   of.fill()
   of.setColor(10,0,10,100)
   of.rect(0,0,of.getWidth(), of.getHeight())

   of.setColor(210,220,210,250)

   for i=1,200 do
      of.line(
         (of.getWidth()/8) + math.sin(counter),
         10*i,
         7*of.getWidth()/8,
         10*i)
   end
   batang:drawString(tostring(of.getFrameNum()),10,100)
end
----------------------------------------------------
function keyPressed(key)
   if key == string.byte("s") then
   end
end
