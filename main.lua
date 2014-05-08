
function love.keypressed(key)
	if key == 'escape' then
		os.exit()
	end
end


function love.load()
	speed = 180
	screenwidth = 800
	shipx = screenwidth / 2
	ship = love.graphics.newImage("ship.png")
	background = love.graphics.newImage("background.png")
end

function love.draw()
    
    love.graphics.draw(background, 0, 0)	
    love.graphics.draw(ship, shipx - 16, 500)
end

function love.update(dt)
	if love.keyboard.isDown ("right") then
		shipx = shipx + (speed * dt)
	end
	if love.keyboard.isDown ("left") then
		shipx = shipx - (speed * dt)
	end
end