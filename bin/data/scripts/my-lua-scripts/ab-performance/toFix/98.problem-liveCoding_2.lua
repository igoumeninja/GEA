local count=0
----------------------------------------------------
function setup()
	of.setWindowTitle("liveCoding_2")
end
----------------------------------------------------
function update()
end
----------------------------------------------------
function draw()
      of.fill()
      of.setColor(0,0,130,4)
      of.rect(0,0,1200,1000)

--      of.setColor(255,255,255,240)
--      of.rect(math.random(1000),400,20,400)

      of.noFill()
      of.setColor(255,255,250,220)
      local samples = {}
      of.beginShape()
      for i = 0, 800 do
         local a = (3.14*(math.sin(50*0.2)));
          of.vertex(i*2,400 + math.sin(count*0.05)*samples[i])
      end
      of.endShape(false)
      count = count+1
end
----------------------------------------------------
function exit()
end
----------------------------------------------------
