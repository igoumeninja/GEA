mygea = of.getApp()

function setup()
   of.setWindowTitle("adf")
   of.background(0)
end
----------------------------------------------------
function update()
   
   --print(mygea.amp)

   of.fill()
   of.setColor(100,100,100)
   of.rect(200,100,400,400)
   of.rect(mygea*200,100,400,400)

end
----------------------------------------------------
function draw()
end

