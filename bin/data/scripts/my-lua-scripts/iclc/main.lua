mlab = of.getApp()
x,y,z = {},{},{}
iclcDir = "/Users/ari/Tools/openFrameworks/of_v0.8.4_osx_release/addons/ofxLua/gea/bin/data/scripts/my-lua-scripts/iclc/"
function setup()
   of.setWindowTitle("play with amplitude")
   of.background(0)
   for i=1,200 do
      x[i] = math.random(100,200)
      y[i] = math.random(100,200)
      z[i] = math.random(0,of.getWidth())
   end

--   loadxyz()
end
----------------------------------------------------
function update()
   
   dofile(iclcDir .. "beat1.lua")
   --print(os.date())
   of.fill()
   of.setColor(0,0,0,30)
   of.rect(0,0,of.getWidth(),of.getHeight())

   of.fill()
   of.setColor(255,255,255,250)
   of.rect(400, 200,20,20)
   of.setColor(255,0,0,250)
   of.rect(420+mlab.beat*20, 200,20,20)

   of.fill()
   of.setColor(0,0,255,255)
   for i=1,20 do
      --of.circle(x[i],y[i],z[i])
   end

--[[
   co = coroutine.create(function ()
            for i = 1, 10 do
               of.setColor(0,255,0,255) 
               of.rect(500,150+(i*120),100,20) 
               coroutine.yield()
            end
   end
]]
   --   coroutine.resume(co)
   --while mlab.beat=1 do
   --   of.setColor(255,0,0,250)
   --   of.rect(420, 200,220,20)
   --end

end
----------------------------------------------------
function draw()
end

----------------------------------------------------
function keyPressed(key)
	print("script keyPressed \""..tostring(key).."\"")
	if key == string.byte("s") then
--           coroutine.resume(co)
	end
end


-- from http://stackoverflow.com/questions/1891473/how-to-load-text-file-into-sort-of-table-like-variable-in-lua
function loadxyz()
   local file = io.open(iclcDir .. "filename.txt")
   if file then
--      for line in file:lines() do
--         i = i+1
  --       local x[i], y[i], z[i] = unpack(line:split(" ")) 
         --unpack turns a table like the one given (if you use the recommended version) into a bunch of separate variables
         --do something with that data
      --end
   else
      
   end

end
