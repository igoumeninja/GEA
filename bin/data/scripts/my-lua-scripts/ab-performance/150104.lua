image = of.Image()

function setup()
   of.setWindowTitle("liveCoding_1")
   of.background(0)
   image:loadImage("/Users/ari/Pictures/2square.jpg")
end
----------------------------------------------------
function update()
   
end
----------------------------------------------------
function draw()
   of.fill()
   of.setColor(0,0,0,10)
   of.rect(0,0,of.getWidth(),of.getHeight())
   of.setColor(255,255,255,255)
   local itemsX = 120; local itemsY = 120;
   for i=0,20 do
      image:draw((itemsX*i),100+of.getHeight()/3*(1+math.sin(of.getFrameNum()/20)),100,100);
   end
end
