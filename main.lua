
function love.keypressed(key)
	if key == 'escape' then
		os.exit()
	end
end


function love.load()
	shipx = 400
	ship = love.graphics.newImage("ship.png")
end

function love.draw()

    love.graphics.draw(ship, shipx - 16, 560)
end

function love.update(dt)
	speed = 2
	if love.keyboard.isDown ("right") then
		shipx = shipx + speed
	end
	if love.keyboard.isDown ("left") then
		shipx = shipx - speed
	end
end