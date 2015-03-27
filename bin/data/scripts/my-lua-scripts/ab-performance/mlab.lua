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
   of.rect(100, 0, 10, mlab.amp*5000)
   of.rect(100, mlab.amp*5000+120, 10, of.getHeight()-mlab.amp*5000)

   of.fill()
   of.setColor(255,2,2,250)
   if mlab.onset then
      of.background(255)
      of.rect(100, 0, 10, 400)
   end

   of.fill()
   of.setColor(25,25,255,250)
   of.rect(200, 0, 10, mlab.freq/2)
end
----------------------------------------------------
function draw()
end

