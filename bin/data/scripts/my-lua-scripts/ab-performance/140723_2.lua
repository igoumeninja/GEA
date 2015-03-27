image = of.Image()
mygea = of.getApp()

function setup()
   of.setWindowTitle("play with amplitude")
   of.background(0)
   image:loadImage("/Users/ari/Desktop/Zay5g.png")
end
----------------------------------------------------
function update()
   
   of.fill()
   of.setColor(0,0,0,30)
   of.rect(0,0,of.getWidth(),of.getHeight())

   of.fill()
   of.setColor(255,255,255,250)
   of.rect(500, 500, mygea.amp*1000, mygea.amp*1000)
   of.line(0,mygea.freq,of.getWidth(),mygea.freq)

   image:draw(mygea.freq, 2000, mygea.amp*1000,mygea.amp*1000)   
--   of.rect(100, mygea.amp*5000+120, 10, of.getHeight()-mygea.amp*5000)

end
----------------------------------------------------
function draw()
end

