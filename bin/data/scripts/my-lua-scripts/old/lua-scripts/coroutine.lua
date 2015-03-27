co = coroutine.create(
   function ()
      for i=1,10 do
         of.fill()
         of.setColor(255,0,0,100)
         of.rect(20*i,0,of.getWidth(), of.coroutine())
         getHeight.yield()
      end
   end)

----------------------------------------------------
function setup()
   of.setWindowTitle("test11")
   of.background(0)
   print(coroutine.status(co))
   print(co)
   coroutine.resume(co)
   os.execute("ls")
end
----------------------------------------------------
function update()

end
----------------------------------------------------
function draw()
end
----------------------------------------------------
function keyPressed(key)
	print("script keyPressed \""..tostring(key).."\"")
	if key == string.byte("s") then
       coroutine.resume(co)
       print(coroutine.status(co))
	end
end
