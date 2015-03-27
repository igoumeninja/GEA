-- Aris Bezas 6:22 PM Apr 22, 2013
myImage = {of.image(),of.image(),of.image()}
midi = of.midi()
--local test = 100

----------------------------------------------------
function setup()
   midi:setup()
   of.background(0,0,0)
--   of.frameRate(1)
   of.setWindowTitle("testing")
--   local dir = "/Users/ari/Media/images/bibliOdyssey/The-Temple-of-Muses"
--   myImage[1]:loadImage(dir+"/The-Chaos-or-the-Origin-of-the-World.jpg")
   myImage[1]:loadImage("/Users/ari/Media/images/bibliOdyssey/The-Temple-of-Muses/The-Chaos-or-the-Origin-of-the-World.jpg")
   myImage[2]:loadImage("/Users/ari/Media/images/bibliOdyssey/The-Temple-of-Muses/Sisyphus-stone.jpg")
--   myImage:setImageType(of.image.GRAYSCALE)
--   test = midi:init(18, 2000)
end
----------------------------------------------------
function update()
   midi:update()
end
----------------------------------------------------
function draw()
--   test = midi:map(18,0,100)
--   print(test)
   of.fill()
   of.setColor(0,0,0,midi:map(19,0,255))
   of.rect(0,0,of.getWidth(), of.getHeight())
   of.setColor(255,255,255,255)

   for i=1,10 do
      myImage[1]:draw(of.random(0,of.getWidth()),of.random(0,of.getHeight()),midi:map(1,2,800),midi:map(2,2,800))
      myImage[2]:draw(of.random(0,of.getWidth()),of.random(0,of.getHeight()),midi:map(1,2,800),midi:map(2,2,800))
   end

end
----------------------------------------------------
function exit()
end
