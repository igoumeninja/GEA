fn_table = { aFun1=fun1, aFun2=fun2}
osc = of.osc()
----------------------------------------------------
function setup()
   of.setWindowTitle("test11")
   osc:setup()
   of.background(0)
end
----------------------------------------------------
function update()
   osc:update()
   --print(osc:resp("testResp"))
end
----------------------------------------------------
function draw()
   of.fill()
   of.setColor(100,0,130,100)
   of.rect(0,0,of.getWidth(), of.getHeight())

--   fun1()
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
function keyPressed(key)
	print("script keyPressed \""..tostring(key).."\"")
	if key == string.byte("s") then
       osc:sendMsg("msgName",12)
	end
	if key == string.byte("r") then

	end
end
