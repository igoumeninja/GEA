--http://tequibo.tumblr.com/post/75745412208/1-1

batang = of.Font()



local r,g,b,a=0,0,0,100
function setup()
   of.setWindowTitle("liveCoding_1")
   batang:loadFont("/Users/ari/Media/fonts/favorites/Batang.ttf", 11, false, true)
end
----------------------------------------------------
function update()
   
end
----------------------------------------------------
function draw()
   of.fill()
   of.setColor(r,g,b,a)
   of.rect(0,0,of.getWidth(), of.getHeight())


   of.noFill()


   for i=0,40 do
      of.setColor(255,25,25,200)
      of.line(40*i,0,40*i,of.getWidth()/2+100*(math.sin(of.getFrameNum()/50+i)-1))
      of.setColor(255,250,25,200)
      batang:drawString(
         string.format("%.1f",tostring(-1*math.sin(of.getFrameNum()/50+i))),
         40*i,
         of.getWidth()/2+100*(math.sin(of.getFrameNum()/50+i)-1)
      )   
   end

end
----------------------------------------------------
function keyPressed(key)
   if key == string.byte("s") then
      r=200
   end
end
