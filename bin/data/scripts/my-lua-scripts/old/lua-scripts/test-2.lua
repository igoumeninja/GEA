batang = of.font()


function setup()
   of.setWindowTitle("liveCoding_1")
   of.background(0)
   batang:loadFont("/Users/ari/Media/fonts/favorites/Batang.ttf", 8, false, true)
end
----------------------------------------------------
function update()

end
----------------------------------------------------
function draw()
   of.fill()
   of.setColor(100,0,130,100)
   of.rect(0,0,of.getWidth(), of.getHeight())
   of.setColor(200,0,130,100)
   batang:drawString("test",20,20)
end
----------------------------------------------------
function keyPressed(key)
   if key == string.byte("s") then
   end
end
