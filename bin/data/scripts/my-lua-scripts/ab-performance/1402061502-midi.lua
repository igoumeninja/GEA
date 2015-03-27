--http://dailydesigndish.tumblr.com/post/75049627314/make-a-day-16-dot-patterns
-- start 1402011659

local r,g,b,a=0,0,0,40
midi = of.midi()
function setup()
   of.setWindowTitle("liveCoding_1")
   of.setFrameRate(20)
   midi:setup()
end
----------------------------------------------------
function update()
   midi:update()
end
----------------------------------------------------
function draw()
   of.fill()
   of.setColor(r,g,b,midi:map(18,0,255,0))
   of.rect(0,0,of.getWidth(), of.getHeight())
   for i=1,of.getWidth(),20 do
      for j=1,of.getHeight(), 20 do
         of.setColor(255,255,255,100)
         of.ellipse(
            i,
            j,
            math.random(2,midi:map(12,2,200,2)),
            math.random(2,20)
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
