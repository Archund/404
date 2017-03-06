giant = {}

local fadeIn			= 0



function giant.update(dt)

end



function giant.draw()

--love.graphics.setColor(LBLU)
	--love.graphics.draw(highlight, love.graphics.getWidth()/2, love.graphics.getHeight()/2-10, 0, 1.2, 1.2, doge:getWidth()/2, doge:getHeight()/2)
	love.graphics.setColor(FULL)
	love.graphics.draw(doge, love.graphics.getWidth()/2, love.graphics.getHeight()/2, 0, 1, 1, doge:getWidth()/2, doge:getHeight()/2)

end