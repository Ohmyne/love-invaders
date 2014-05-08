
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
    love.graphics.draw(ship, shipx, 550)
end

function love.update(dt)
	shipx = shipx + 2
end