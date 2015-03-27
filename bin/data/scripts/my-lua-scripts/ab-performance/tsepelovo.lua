
function setup()
   of.setWindowTitle("liveCoding_1")
   of.background(255)
end
----------------------------------------------------
function update()
   
end
----------------------------------------------------
function draw()
   of.fill()
   of.setColor(0,0,0,20)
   of.rect(0,0,of.getWidth(), of.getHeight())


   for i=1,100 do
      of.setColor(255,0,0,255)
      of.rect(math.random(0,of.getWidth()),math.random(0,
                                                       of.getHeight()),1,1)
   end

end
