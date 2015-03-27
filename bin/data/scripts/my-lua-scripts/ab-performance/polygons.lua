-- polygorns by http://flairstudio.tumblr.com/post/77638692769/sunday-processing
-- http://www.colourlovers.com/palette/694737/Thought_Provoking
-- http://developer.coronalabs.com/code/color-rgb-value-table-lua-coding-corona
function setup()
   of.setWindowTitle("liveCoding_1")


   --# choose random from a table
   local myTable = { '#666633', '#CCCC99', '#FFFFFF', '#990033' }
--   local myTable = { [1] = , '#CCCC99', '#FFFFFF', '#990033' }
   print( myTable[ math.random( 1, 3 ) ] )
   

   of.fill()
   for i=1,20 do
--      of.setColor(myTable[ math.random( 0, 4 - 1 ) ])
  --    of.setColor(98,64,25,250)
      if i%2==0 then
         of.rotateY(i)
         of.setColor(0,0,0,250)
         of.setCircleResolution(21-i)
      end

      of.ellipse(of.getWidth()/2,
                 of.getHeight()/2,
                 500-(i*10),500-(i*10))      
   end
 
end
----------------------------------------------------
function update()
--   of.background(0)  
end
----------------------------------------------------
function draw()


--[[   of.beginShape()
   of.vertex(20,40)
   of.vertex(120,140)
   of.vertex(320,240)
   of.vertex(520,240)
   of.endShape(false)
]]
--   of.rect(0,0,of.getWidth(), of.getHeight())

end
----------------------------------------------------
function keyPressed(key)
   if key == string.byte("s") then
   end
end
        
