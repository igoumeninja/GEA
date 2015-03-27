-- DONE in 6 minutes with ofxLua by Aris Bezas Nov 20 2013
---------------------------------------------------------
function setup()
--   of.background(0)
end
---------------------------------------------------------
function update()

end
---------------------------------------------------------
function draw()
   of.fill()
   of.setColor(0,0,0,10)
   of.rect(0,0,of.getWidth(), of.getHeight())
   for j=1,200 do
      for i=1,100 do
         of.fill()
         if i%2==0 then
            of.setColor(255,255,255,50)
         elseif i%3==0 then
            of.setColor(255,255,0,50)
         elseif i%5==0 then
            of.setColor(0,255,0,50)
         elseif i%7==0 then
            of.setColor(0,255,255,50)
         else
            of.setColor(255,0,0,50)
         end
         of.rect(
            20*i,
            20*j,
            math.random(2,10),
            math.random(2,10)
         )
      end
   end
end
