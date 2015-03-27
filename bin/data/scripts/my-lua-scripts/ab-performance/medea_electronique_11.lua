-- add 3 min
local speed = 0.0000021
local amp = 2000
local freq = 0.4
local xPos = of.getWidth()/2
----------------------------------------------------
function setup()
	of.setWindowTitle("sinEq")
        of.setCircleResolution(10)
end
----------------------------------------------------
function update()
end
----------------------------------------------------
function draw()
   of.fill()
   of.setColor(0,0,0,50)
   of.rect(0,0,of.getWidth(),of.getHeight())
   for i=0,28 do
      sinEq(22*i, speed, amp, freq*math.sin(of.getFrameNum()/10))
   end
end
----------------------------------------------------
function sinEq(xPosF,speedF,ampF,freqF)
   of.noFill()
   of.setColor(255,255,250,150)
   local samples = {}
   of.beginShape()
   for i = 0, 100 do
      local a = (3.14/1)*i;
      samples[i]=ampF*math.cos(math.sin(freqF*a));
          of.vertex(
             2*xPosF+ math.sin(of.getFrameNum()*speedF)*samples[i],
             i*20
          )
   end
   of.endShape(false)
end
----------------------------------------------------
function exit()
end
----------------------------------------------------
