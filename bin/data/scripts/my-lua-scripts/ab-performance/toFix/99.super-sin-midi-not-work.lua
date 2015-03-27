local m
local n1,n2,n3, scale, step, th, count
midi = of.midi()

----------------------------------------------------
function setup()
	of.setWindowTitle("liveCoding_1")
        midi:setup()
        count = 0
        th =0
        midi:init(1,100)
--        of.background(0)
end
----------------------------------------------------
function update()
         midi:update()
end
----------------------------------------------------
function draw()

      of.fill()
      of.setColor(0,0,30,midi:map(19,0,255))
      of.rect(0,0,of.getWidth(), of.getHeight())
      sinEq()
      superformula()
      --print(m)
      count=count+1

end

function sinEq()
      of.noFill()
      of.setColor(255,255,250,220)
      local samples = {}
      of.beginShape()
      for i = 0, 800 do
          local a = (math.TWO_PI/100)*i;
          samples[i]=midi:map(3,0,500)*math.cos(10*math.sin(count*0.01)*math.sin(a*midi:map(1,0,20)));
          of.vertex(of.getWidth()/2 + math.sin(count*midi:map(2, 0.0001,0.2))*samples[i],i*2)
      end
      of.endShape(false)
end

function superformula()
      of.noFill()
      of.setColor(255,255,250,220)

   of.beginShape();
   for i= 1 , 250 do
      local a=1
      local b=1
      m = midi:map(1,5,40)
      n1 = midi:map(2,0,0.5)
      n2 = midi:map(3,0,6.1)
      n3 = midi:map(4,0,6.1)
      scale = midi:map(5,100,600)
      th = th + midi:map(6,0.05,10.1)
      local part1 = math.pow(math.cos(m*th/4)/a,n2)
      local part2 = math.pow(math.sin(m*th/4)/b,n3)
      local r = scale*(math.pow(math.abs(part1)+math.abs(part2), (-1/n1)))
      of.curveVertex((of.getWidth()/2)+r*math.cos(th),(of.getHeight()/2) + r*math.sin(th))
   end
   of.endShape(false)
end
----------------------------------------------------
function exit()
end
----------------------------------------------------
