--http://dailydesigndish.tumblr.com/post/75049627314/make-a-day-16-dot-patterns
-- start 1402011659

local r,g,b,a=0,0,0,40
function setup()
   of.setWindowTitle("liveCoding_1")
   of.setFrameRate(20)
end
----------------------------------------------------
function update()
   
end
----------------------------------------------------
function draw()
   of.fill()
   of.setColor(r,g,b,a)
   of.rect(0,0,of.getWidth(), of.getHeight())
      for i=1,of.getWidth(),20 do
         for j=1,of.getHeight(), 20 do
            of.setColor(255,225,255,100)
            of.ellipse(
               i,
               j,
               20*math.sin(of.getFrameNum()/i),
               20*math.sin(of.getFrameNum()/j)
            )
         end
      end
end
----------------------------------------------------
function keyPressed(key)
   if key == string.byte("s") then
      r=200
   end
end
