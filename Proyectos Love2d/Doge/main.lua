require "dogeField"
require "giant"
require "timer"

local dF 				= dogeField



function love.load()

	doge 				= love.graphics.newImage("resources/doge.png")
	highlight			= love.graphics.newImage("resources/highlight.png")

	buildup 			= love.audio.newSource("resources/buildup.ogg")
	loop1				= love.audio.newSource("resources/loop1.ogg")
	loop1:setLooping(true)

	--colors--
	FULL 				= {255, 255, 255}
	BLUE 				= {059, 078, 128}
	DOGE 				= {205, 185, 135}
	LIGH 				= {255, 237, 193}
	LBLU				= {135, 154, 205}

	startField			= false


	buildup:play()
	timer.newTimer("Buildup")

end



function love.update(dt)

	timer.update(dt)
	dF.update(dt)
	giant.update(dt)

	if timer.getTime("Buildup") >= 23 then
		startField = true 
		timer.delTimer("Buildup")

		loop1:play()
	end
	print(timer.getTime("Buildup"))
end



function love.draw() 
	love.graphics.setColor(FULL)
	love.graphics.setBackgroundColor(BLUE)

	dF.draw()
	giant.draw()

	end

