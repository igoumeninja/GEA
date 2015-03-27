fn_table = { aFun1=fun1, aFun2=fun2}
----------------------------------------------------
function setup()
   of.setWindowTitle("test11")
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
   fun1()
end

function fun1()
   of.fill()
   of.setColor(100,100,0,100)
   of.rect(20,0,400,500)
end
function fun2()
   of.fill()
   of.setColor(110,0,0,100)
   of.rect(20,0,200,200)
end
