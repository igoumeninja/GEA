function setup()
   of.setWindowTitle("liveCoding_1")
   of.background(0)
   of.setCircleResolution(200)
end
----------------------------------------------------
function update()
   
end
----------------------------------------------------
function draw()
   of.fill()
   of.setColor(0,0,0,10)
   of.rect(0,0,of.getWidth(), of.getHeight())

   of.setColor(255,255,255,100)
   if  of.getFrameNum() % 5 ==0 then
--         of.rotateX(of.getFrameNum()/10)
   end


   for i=1,5 do
      of.ellipse(i*200,
              of.getHeight()/2,
              200*math.sin(of.getFrameNum()/12),
              200*math.sin(of.getFrameNum()/100))
   end

   for i=1,400 do
      of.rect(
         math.random(0,of.getWidth()),
         math.random(0,of.getWidth()),
         2,
         2)
   end


end
----------------------------------------------------
function keyPressed(key)
   if key == string.byte("s") then
   end
end
