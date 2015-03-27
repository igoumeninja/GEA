--http://p5art.tumblr.com/post/75170301999/jd001-rotating-squares-so-im-taking-joshua
local speed = 1.1
local r,g,b,a=0,0,0,10
function setup()
   of.setWindowTitle("liveCoding_1")
   of.background(0)
end
----------------------------------------------------
function update()
   
end
----------------------------------------------------
function draw()
   of.fill()
   of.setColor(r,g,b,a)
   of.rect(0,0,of.getWidth(), of.getHeight())

   of.noFill()
   of.setColor(255,255,255,200)
   
   of.pushMatrix()
   of.translate(of.getWidth()/2, of.getHeight()/2, 0)
   of.rotateZ(speed*of.getFrameNum())
   of.rect(0,0,200,100)
   of.popMatrix()

   of.pushMatrix()
   of.translate(of.getWidth()/2, of.getHeight()/2, 0)
   of.rotateZ(speed*of.getFrameNum())
   of.rect(150,0,200,200)
   of.popMatrix()

   of.pushMatrix()
   of.translate(of.getWidth()/2, of.getHeight()/2, 0)
   of.rotateZ(-speed*of.getFrameNum())
   of.rect(50,0,100,100)
   of.popMatrix()

end
----------------------------------------------------
function keyPressed(key)
   if key == string.byte("s") then
      r=200
   end
end
