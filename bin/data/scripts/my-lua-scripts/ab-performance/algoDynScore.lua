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
   of.rect(100, 200,200,200)
   of.setColor(255,0,0,250)
   of.rect(mlab.beat*100, mlab.beat*100,200,200)
end
----------------------------------------------------
function draw()
end

