-- http://patakk.tumblr.com/post/68357328591/4-3-2-1
-- 1280x960
local size = 2
function setup()
   of.setWindowTitle("startUp")
   of.background(0)
end
----------------------------------------------------
function update()
end
----------------------------------------------------
function draw()
   of.fill()
   of.setColor(0,0,0,0)
   of.rect(0,0,of.getWidth(), of.getHeight())
   for i=1,10 do
      of.pushMatrix()
--      of.translate(400*math.sin(of.getFrameNum(),                              400*math.sin(of.getFrameNum(),0)

      local posX = 
         of.getWidth()/2+(200*math.sin(of.getFrameNum()/(200*i))) + 
         200*math.sin(of.getFrameNum()/(100*i))
      local posY = 
         of.getHeight()/2 + 250*math.cos(of.getFrameNum()/200)
      of.translate(posX,posY,0)

      of.setColor(255,255,255,180)
      of.ellipse(0,0,10,size,size)
      of.popMatrix()
      of.setColor(255,255,255,1)
      of.line(posX,posY,0,0)
      of.line(posX,posY,of.getWidth(),
              of.getHeight())
      of.line(posX,posY,of.getWidth(),0)
      of.line(posX,posY,0,
              of.getHeight())
   end
end
----------------------------------------------------
function keyPressed(key)
   if key == string.byte("s") then
   end
end

of.getWidth()


