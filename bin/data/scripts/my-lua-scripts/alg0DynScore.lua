-- Create script to receive beat from SuperCollider Dynamic Score 

mlab = of.getApp()

function setup()
   of.setWindowTitle("feel the beat")
   of.background(0)
end
----------------------------------------------------
function update()
   
   of.fill()
   of.setColor(0,0,0,30)
   of.rect(0,0,of.getWidth(),of.getHeight())

   of.setColor(255,255,255,250)
   of.rect(500, 400, 50, 20)

   of.setColor(255,0,0,250)
   --of.rect(800, 400, 150, 200)
   of.rect(mlab.beat*100, 200, 15, 20)
   of.rect(mlab.beat*200, 700, 15, 20)
end
----------------------------------------------------
function draw()
end


