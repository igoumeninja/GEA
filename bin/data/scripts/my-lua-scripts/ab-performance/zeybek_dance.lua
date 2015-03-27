mlab = of.getApp()

function setup()
   of.setWindowTitle("play with amplitude")
   of.background(0)
end
----------------------------------------------------
function update()
   
   of.fill()
   of.setColor(0,0,0,30)
   of.rect(0,0,of.getWidth(),of.getHeight())

   of.fill()
   of.setColor(255,255,255,250)

   of.rect(500, of.getHeight(), 150, -mlab.note)
end
----------------------------------------------------
function draw()
end

