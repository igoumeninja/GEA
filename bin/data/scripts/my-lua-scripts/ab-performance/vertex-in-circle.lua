--http://tequibo.tumblr.com/post/75900050897/rose-again

local r,g,b,a=0,0,0,25
function setup()
   of.setWindowTitle("liveCoding_1")
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
   of.setPolyMode(of.POLY.WINDING_ODD) -- this is the normal mode
   of.beginShape()
   of.vertex(100+10*math.sin(of.getFrameNum()/10),500+10*math.cos(-of.getFrameNum()/10))
   of.vertex(500+10*math.sin(-of.getFrameNum()/10),500+10*math.sin(of.getFrameNum()/10))
   of.vertex(300+10*math.sin(-of.getFrameNum()/10),100+10*math.cos(-of.getFrameNum()/10))
   of.endShape(true)
   of.beginShape()
   of.vertex(200+10*math.sin(-of.getFrameNum()/10),500+10*math.cos(-of.getFrameNum()/10))
   of.vertex(600+10*math.sin(of.getFrameNum()/10),500+10*math.sin(-of.getFrameNum()/10))
   of.vertex(400+10*math.sin(-of.getFrameNum()/10),100+10*math.cos(of.getFrameNum()/10))
   of.endShape(true)

end
----------------------------------------------------
function keyPressed(key)
   if key == string.byte("s") then
      r=200
   end
end
