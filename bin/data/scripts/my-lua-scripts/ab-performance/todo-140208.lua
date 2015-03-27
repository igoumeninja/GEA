--http://tequibo.tumblr.com/post/75900050897/rose-again

local r,g,b,a=0,0,0,250
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
   for i=1,200 do
      of.pushMatrix()
      of.translate(of.getWidth()/2, of.getHeight()/2, 0)
      of.rotateZ(-of.getFrameNum()*i/1200)
      of.rect(0,0,2*i,20*i)
      of.popMatrix()

   end

end
----------------------------------------------------
function keyPressed(key)
   if key == string.byte("s") then
      r=200
   end
end
