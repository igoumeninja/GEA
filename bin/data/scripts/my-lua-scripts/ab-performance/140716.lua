--http://p5art.tumblr.com/post/75170301999/jd001-rotating-squares-so-im-taking-joshua
local speed = 1.1
local r,g,b,a=0,0,0,10
batang = of.Font()
batang:loadFont("/Users/ari/Media/fonts/favorites/Batang.ttf", 18, false, true)


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
   of.setColor(r,g,b,a)
   of.rect(0,0,of.getWidth(), of.getHeight())
   
   if of.getFrameNum()%15==0 then
      of.fill()
      of.setColor(255,0,0,100)
      of.rect(math.random(0,500),math.random(0,800),200,20)
   end
   of.setColor(255,255,0)
   batang:drawString(tostring(of.getFrameNum()),math.random(0,of.getWidth()),math.random(0,
                                                                                        of.getHeight()))
   if of.getFrameNum()%50==0 then
      of.setColor(255,255,255,40)
      of.rect(0,0,of.getWidth(),
              of.getHeight())
   end

end
----------------------------------------------------
