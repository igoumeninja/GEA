print("Hello World!")

counter = 0
bSmooth = false

----------------------------------------------------
function setup()
	print("script setup")

	of.setCircleResolution(50)
	of.background(255, 255, 255, 255)
	of.setWindowTitle("Empty script")

end

----------------------------------------------------
function update()
	counter = counter + 0.033
end

----------------------------------------------------
function draw()
end

----------------------------------------------------
function exit()
end
