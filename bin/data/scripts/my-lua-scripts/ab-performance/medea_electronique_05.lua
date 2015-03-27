--http://p5art.tumblr.com/post/75170301999/jd001-rotating-squares-so-im-taking-joshua

local r,g,b,a=0,0,0,0
local speed = 1.5
function setup()
   of.setWindowTitle("liveCoding_1")
--   of.background(0)
end
----------------------------------------------------
function update()
   
end
----------------------------------------------------
function draw()
   of.fill()
   of.setColor(r,g,b,10)
   of.rect(0,0,of.getWidth(), of.getHeight())

   of.noFill()
   of.setColor(255,255,255,20)
--   of.setColor(0,0,0,20)

   for i=1,60 do
      of.pushMatrix()
      of.translate(of.getWidth()/2, of.getHeight()/2, 0)
      of.rotateZ(-speed*of.getFrameNum()*i/8)
      of.rect(i*8,0,2*i,10)
      of.rect(i*6,0,10,100)
      of.popMatrix()
   end
end
----------------------------------------------------
function keyPressed(key)
   if key == string.byte("s") then
      r=200
   end
end
