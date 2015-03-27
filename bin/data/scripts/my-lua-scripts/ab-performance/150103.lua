
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
   of.setColor(0,0,50,20)
   of.rect(0,0,of.getWidth(), of.getHeight())
   of.setColor(255,2,29,30)
   for i=1,30 do
      of.ellipse(of.getFrameNum()%of.getWidth(),of.getFrameNum()%of.getHeight(),i*10,i*10)
   end

end
