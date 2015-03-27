-- http://blog.excites.co.uk/post/69216571414/swirls-wip
-- 1804~1812
-- TODO
--- Color Array

function setup()
   of.setWindowTitle("liveCoding_2")
   of.background(0)
   --kikloi()
   of.setFrameRate(25)
   of.smooth()
   of.setCircleResolution(10)
   of.setCurveResolution(1)
end
----------------------------------------------------
function update()
--   if of.getFrameNum()%10==0 then
--   kikloi()
--   end
end
----------------------------------------------------
function draw()
   kikloi()
end

function kikloi()
   of.setColor(0,0,0,255)
   of.fill()
   of.rect(0,0,of.getWidth(),of.getHeight())
   for i=1,20 do
      if i%2==0 then
         of.setColor(0,0,0,255)
      else
         of.setColor(255,0,0,255)
      end
      of.ellipse(
         of.getWidth()/2+math.random(0,15),
         of.getHeight()/2+math.random(0,15),
         500-25*i,
         500-25*i)
   end
end

----------------------------------------------------
function keyPressed(key)
   if key == string.byte("n") then
      kikloi()
   end
end
