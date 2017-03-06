timer = {}

local timers 			= {}

function timer.update(dt)

	for i, tim in ipairs(timers) do
		timers[i].currentTime = love.timer.getTime() - timers[i].startTime
	end

end



function timer.newTimer(name)

	tim 				= {}
	tim.name 			= name
	tim.startTime 		= love.timer.getTime()
	tim.currentTime 	= 0

	table.insert(timers, tim)
end



function timer.getTime(name)

	for i, tim in ipairs(timers) do

		if timers[i].name == name then
			return timers[i].currentTime
		end

	end

	return 0

end



function timer.delTimer(name)

	for i, tim in ipairs(timers) do

		if timers[i].name == name then
			table.remove(timers, i)
			break
		end

	end

end