local r,g,b,a=0,0,0,10
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

   of.setColor(255,255,255,200)
   for i=1,15 do
         of.line(
            of.getFrameNum()%of.getWidth()+i,
            i,
            of.getFrameNum()%of.getWidth()+100*i,
            of.getFrameNum()%of.getWidth()+150*i)
   end
end
----------------------------------------------------
function keyPressed(key)
   if key == string.byte("s") then
      r=200
   end
end
