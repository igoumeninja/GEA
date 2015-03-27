myImage = of.Image()

----------------------------------------------------
function setup()
	of.setWindowTitle("image-painting")	
	of.setFrameRate(30)
	myImage:loadImage("/Users/ari/Media/images/microscope/bryozoan.jpg")
--	tdfSmall:resize(tdfSmall.width / 4, tdfSmall.height / 4)
--	tdfSmall:setImageType(of.IMAGE.GRAYSCALE)
end

----------------------------------------------------
function update()
--	of.background(255)
end

----------------------------------------------------
function draw()
	of.setColor(255)

--        of.rotateX(7*math.sin(of.getFrameNum()/2))
--        of.rotateY(2*math.sin(of.getFrameNum()/20))
	myImage:draw(0, 0, of.getWidth(), of.getHeight())
--[[
	local w = myImage.width
	local h = myImage.height
	local diameter = 10

	for y=1,h-1 do
		for x=1,w-1 do
			local cur = myImage:getColor(x, y)
		end
	end
]]    
        of.setColor(myImage:getColor(120,120))
        of.rect(0,0,40,40)

--[[	
	of.setColor(255)
	of.enableAlphaBlending()
	local wave = math.sin(of.getElapsedTimef())
	transparency:draw(500 + (wave * 100), 20)
	of.disableAlphaBlending()

	-- getting the ofColors from an image,
	-- using the brightness to draw circles

	-- same as above, but this time
	-- use the raw data directly with getPixels()
	local pixels = bikeIcon:getPixelsRef()
	of.setColor(0, 0, 255)
	for y=1,h-1 do
		for x=1,w-1 do
			local index = y * w + x
			cur = pixels:getPixel(index)
			size = 1 - (cur / 255)
			of.circle(200 + x * diameter, 500 + y * diameter,
					  1 + size * diameter / 2)		
		end
	end

	of.setColor(255)
	bikeIcon:draw(190, 490, 20, 20)
]]
end

----------------------------------------------------
function exit()
	print("script finished")
end

