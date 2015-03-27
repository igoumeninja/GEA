
local speed = 0.005
local amp = 500
local freq = 1.8
----------------------------------------------------
function setup()
	of.setWindowTitle("sinEq")
        --of.background(0)
end
----------------------------------------------------
function update()
end
----------------------------------------------------
function draw()
   of.fill()
   of.setColor(0,0,0,20)
   of.rect(0,0,of.getWidth(),of.getHeight())
   sinEq()
end
----------------------------------------------------
function sinEq()
   of.noFill()
   of.setColor(255,255,250,220)
   local samples = {}
   of.beginShape()
   for i = 0, 500 do
      local a = (3.14/100)*2*i;
      samples[i]=amp*math.cos(math.sin(freq*a));
          of.vertex(
             of.getWidth()/2 + 10*math.sin(of.getFrameNum()*speed)*samples[i],
             i*2
          )
   end
   of.endShape(false)
end
----------------------------------------------------
function exit()
end
----------------------------------------------------
