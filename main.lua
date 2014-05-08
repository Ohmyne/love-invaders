function love.keypressed(key)
	if key == 'escape' then
		os.exit()
	end
end

function love.load()
	ship = love.graphics.newImage("ship.png")
end

function love.draw()
    love.graphics.draw(ship, 10, 30)
end