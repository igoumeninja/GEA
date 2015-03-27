-- 15:20
-- http://alexeverything.tumblr.com/post/68724699957/spin-float-x-y-a-r-250-m-6707-change-m-to
local x,y,a,r = 250
local m = 10
function setup()
   of.setWindowTitle("spin")
   of.background(0)
end
----------------------------------------------------
function update()

end
----------------------------------------------------
function draw()
   of.fill()
   of.setColor(0,0,0,10)
   --of.rect(0,0,of.getWidth(), of.getHeight())

   x = r*math.cos(a)
   y = r*math.sin(a)

   --of.translate(250,250,0)
   --of.rotate(r*m)
   of.fill(255,255,255,250)
   --of.ellipse(x,y,3*r/100,3*r/100)
   of.ellipse(100,100,20,20)
   a = a + 0.05
   r = r - math.sqrt(0.01)
   r = math.abs(r)
end
----------------------------------------------------
function keyPressed(key)
   if key == string.byte("s") then
   end
end
