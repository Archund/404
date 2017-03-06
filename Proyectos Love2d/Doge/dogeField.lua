dogeField = {}

local instances 		= { }
local counter 			= 19
local spawnDelay 		= 20
local dimRate 			= 60



function dogeField.update(dt)

	if startField then 
		counter = counter + 100*dt 
	end

	if counter >= spawnDelay then 

		dog 			= {}
		dog.x 			= love.math.random(800)
		dog.y 			= love.math.random(600)
		dog.r 			= 0
		dog.direction 	= love.math.random(-1,1)
		dog.scale 		= 0
		dog.growthSpeed = love.math.random(20,40)
		dog.dim 		= 255


		table.insert(instances,dog)
		counter = 0
	end


	for i, dog in ipairs(instances)do
		
		instances[i].r = instances[i].r + (instances[i].direction*10*dt) 
		instances[i].scale = instances[i].scale + dt/instances[i].growthSpeed

		if instances[i].scale >= .25 then
			instances[i].dim = instances[i].dim - dimRate*dt
		end

		if instances[i].dim <=20 then
			table.remove(instances, i)
		end
	end

end



function dogeField.draw()

	for i, dog in ipairs(instances) do
		love.graphics.setColor(255, 237, 193, instances[i].dim)
		love.graphics.draw(highlight, instances[i].x, instances[i].y, instances[i].r, instances[i].scale +.006, instances[i].scale +.006, doge:getWidth()/2, doge:getHeight()/2)
		
		love.graphics.setColor(255,255,255,instances[i].dim)
		love.graphics.draw(doge, instances[i].x, instances[i].y, instances[i].r, instances[i].scale, instances[i].scale, doge:getWidth()/2, doge:getHeight()/2)
	end

end