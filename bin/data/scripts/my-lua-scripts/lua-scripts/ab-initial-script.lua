local m
local n1,n2,n3, scale, step, th, count

----------------------------------------------------
function setup()
   of.setWindowTitle("test11")
   count = 0
   th =0
   of.background(0)
end
----------------------------------------------------
function update()

end
----------------------------------------------------
function draw()
   of.fill()
   of.setColor(100,0,130,100)
   of.rect(0,0,of.getWidth(), of.getHeight())
   of.fill()
   of.setColor(0,0,0,100)
   of.rect(20,0,of.getWidth(), of.getHeight())
end
