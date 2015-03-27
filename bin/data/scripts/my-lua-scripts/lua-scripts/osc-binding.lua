ampq = of.app()

function setup()
   of.setWindowTitle("adf")
   of.background(0)
end
----------------------------------------------------
function update()
   
   print(ampq:amp())

end
----------------------------------------------------
function draw()
   of.fill()
   of.setColor(100,0,0,10)
   of.rect(100,0,of.getWidth(), of.getHeight())
end
----------------------------------------------------
