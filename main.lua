
function love.keypressed(key)
	if key == 'escape' then
		os.exit()
	end
end


function love.load()
	speed = 320
	screenwidth = 800
	shipx = screenwidth / 2
	shipy = 500
	shipxmin = 80
	shipxmax = screenwidth - shipxmin
	ship = love.graphics.newImage("ship.png")
	background = love.graphics.newImage("background.png")
	bulletImage = love.graphics.newImage("bullet.png")

    bullets = {}

	-- for i = 1, 20 do
	-- 	bullets[i] = {
	-- 		x = 300,
	-- 		y = 400 + i * 20
	-- 	}
	-- end
end

function love.draw()
    
    love.graphics.draw(background, 0, 0)	
    love.graphics.draw(ship, shipx - 16, shipy - 16)
    for i = 1, #bullets do
    	love.graphics.draw(bulletImage, bullets[i].x - 8, bullets[i].y - 8)
    end
end

function love.update(dt)
	if love.keyboard.isDown("right") then
		shipx = shipx + (speed * dt)
	end
	
	if love.keyboard.isDown("left") then
		shipx = shipx - (speed * dt)
	end
	
	if love.keyboard.isDown(" ") then
		bullets[#bullets + 1] = {
            x = shipx, 
            y = shipy - 20
	    }
	end
	
	if shipx > shipxmax then
		shipx = shipxmax
	end
	
	if shipx < shipxmin then
	   	shipx = shipxmin
	end

	for i = 1, #bullets do
		bullets[i].y = bullets[i].y - 5	
	end
end
