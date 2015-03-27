-- Aris Bezas 10:05 AM Apr 4, 2013
-- TODO


print("update script")

mySketch = of.sketch()

counter = 0
bSmooth = false

----------------------------------------------------
function setup()
        print("update script")
	of.setCircleResolution(50)
	of.setWindowTitle("liveCoding_0")
	of.setFrameRate(30)
        of.setBackgroundAuto(false)
        --of.background(0)
        --recursive()
        --of.rect(500,500,5,5)
        mySketch:init(1.5,0.2)
end
----------------------------------------------------
function update()
end
----------------------------------------------------
function draw()
--       of.setColor(0,0,30,5)
--       of.rect(0,0,1200,1000)
--       vertical()
--       horizon()
--       glitch()
--       rects()
       sketching()
end
----------------------------------------------------
function sketching()
--         mySketch:drawSketch(200,200,0,255,0,0,255,1)
         mySketch:drawSketch(of.mouseX(), of.mouseY(),0,255,0,0,55,1)
end
----------------------------------------------------
function vertical()
         of.setColor(255)
         local randPos = of.random(1000);
         of.line(randPos, 0, randPos, 1000)
end
----------------------------------------------------
function horizon()
         of.setColor(255,0,0,85)
         local randPos = of.random(1000);
         of.line(0, randPos, 1200, randPos)
end
----------------------------------------------------
function glitch()
         if of.getFrameNum() % 16 == 0 then
            of.background(0)
            of.setColor(0,0,0,255)
            of.fill()
            of.rect(0,0,of.getWidth(), of.getHeight())
         else
            of.background(255)
            of.setColor(255,255,255,255)
            of.fill()
            of.rect(0,0,of.getWidth(), of.getHeight())
         end
end
----------------------------------------------------
function rects()
         of.setColor(255,255,255,255)
         of.fill()
         of.rect(of.random(of.getWidth()),of.random(of.getHeight()),10,10)
end
----------------------------------------------------
function recursive()
         of.setColor(255,255,255,255)
         of.fill()
         of.rect(of.random(of.getWidth()),of.random(of.getHeight()),10,10)
         if of.getSeconds() %2 == 0 then
            recursive()
         end
end

----------------------------------------------------
function exit()
	print("script finished")
end

----------------------------------------------------
function keyPressed(key)
	print("script keyPressed \""..tostring(key).."\"")
	if key == string.byte("s") then
		bSmooth = not bSmooth
	end
end
-----------------------------------------------------
