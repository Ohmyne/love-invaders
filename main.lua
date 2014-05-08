function love.keypressed(key)
	if key == 'escape' then
		os.exit()
	end
end

function love.draw()
    love.graphics.print("Hello World", 10, 30)
	love.graphics.print("Blaba", 30,40)
	love.graphics.print("hihihi", 100, 30)
end

