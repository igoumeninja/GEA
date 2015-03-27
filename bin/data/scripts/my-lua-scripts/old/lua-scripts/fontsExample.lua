verdana = of.Font()
franklinBookLarge = of.Font()

counter = 0

----------------------------------------------------
function setup()
	print("script setup")
	-- now load another font, but with extended parameters:
	-- font name, size, anti-aliased, full character set
	verdana:loadFont("fonts/verdana.ttf", 8, false, true)
	verdana:lineHeight=20
end

----------------------------------------------------
function update()
	of.background(255, 255, 255)
	counter = counter + 1
end

----------------------------------------------------
function draw()

	of.setHexColor(0x000000)
	verdana:drawString("hello, I am aliased verdana -- full character set, see: � ! ", of.MouseX(), of.MouseY())


	of.setHexColor(0x000000)
	verdana:drawString("yeah, but I'm not exactly pretty\nthe problem is with freeType library...\napple has a patent on TTF font hints\nso our aliased type via freeType isn't super looking", 100, 380)

--    verdana:drawString(tostring(counter), 200,200)
    verdana:drawString(tostring(math.sin(counter)), 200,200)
end

----------------------------------------------------
function exit()
	print("script finished")
end
