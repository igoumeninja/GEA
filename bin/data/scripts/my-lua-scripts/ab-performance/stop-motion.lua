
bikers = of.Image()

function setup()
   of.setWindowTitle("liveCoding_1")
   of.background(0)
   bikers:loadImage("/Users/ari/Desktop/Zay5g.png")
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
   bikers:draw(200, 0, 400,400)

end
----------------------------------------------------
function keyPressed(key)
   if key == string.byte("s") then
   end
end
