local count=0
midi = of.midi()
----------------------------------------------------
function setup()
	of.setWindowTitle("liveCoding_3")
        midi:setup()
--        of.background(0)

end
----------------------------------------------------
function update()
         midi:update()
end
----------------------------------------------------
function draw()

      of.fill()
      of.setColor(0,0,30,20)
      of.rect(0,0,of.getWidth(),
              of.getHeight())

      of.noFill()
      of.setColor(255,255,250,220)
      local samples = {}
      of.beginShape()
      for i = 0, of.getHeight()/20 do
          local a = (3.14/200)*i;
          samples[i]=of.getWidth()/2*math.cos(12*math.sin(count*10.1)*math.sin(5*a*midi:map(1,0,0.5,0.01)));
          of.vertex(400 + math.sin(count)*samples[i],i*20)
          of.vertex(409 + math.sin(count)*samples[i],i*20)
      end
      of.endShape(false)

      count=count+0.01

end
----------------------------------------------------
function exit()
end
----------------------------------------------------
