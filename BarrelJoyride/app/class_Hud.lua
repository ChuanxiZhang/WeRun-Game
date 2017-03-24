Hud = {}
Hud_mt = { __index = Hud }

--- Constructs a new Hud object.
function Hud:new( parentGroup )

	local self = {}
	
	setmetatable( self, Hud_mt )

	self._parentGroup = parentGroup
	
	self._scoreText = display.newText( parentGroup, "", 0, 0, "Deutsch Gothic", 30 )
	self._scoreText:setTextColor( 255, 255, 255 )
	self._scoreText.y = display.contentHeight - 20
	self:setScoreText( 0 )
	
	self._bestDistanceText = display.newText( parentGroup, "", 0, 0, "Deutsch Gothic", 30 )
	self._bestDistanceText:setTextColor( 255, 255, 255 )
	self._bestDistanceText.y = display.contentHeight - 20
	self:setBestDistanceText( 0 )
	
	self._distanceText = display.newText( parentGroup, "", 0, 0, "Deutsch Gothic", 30 )
	self._distanceText:setTextColor( 255, 255, 255 )
	self._distanceText.y = display.contentHeight - 20
	self:setDistanceText( 0 )
	
	self._pausedText = display.newText( parentGroup, "Tap to Play", 0, 0, "Deutsch Gothic", 100 )
	self._pausedText:setTextColor( 0, 0, 0 )
	self._pausedText.x = display.contentCenterX
	self._pausedText.y = display.contentCenterY
	self._pausedText.isVisible = false

	-- self._visual = display.newImage(parentGroup, 'assets/images/star.png')
	local sheetInfo = require("snow")
	local myImageSheet = graphics.newImageSheet( "assets/images/snow.png", sheetInfo:getSheet() )
	local sequences_rollingCoin = {
	    -- consecutive frames sequence
	    {
	        name = "normal",
	        start = 1,
	        count = 2,
	        time = 800,
	        loopCount = 0
	    },
	}
	self._visual = display.newSprite( myImageSheet , sequences_rollingCoin )--{frames={sheetInfo:getFrameIndex("sprite")}} )
	self._visual:play()
	self._visual.x = 512
	self._visual.y = 384
	
	
	local sheetInfo = require("energy_seiya")
	local myImageSheet = graphics.newImageSheet( "assets/images/energy_seiya.png", sheetInfo:getSheet() )
	local sequences_rollingCoin = {
	    -- consecutive frames sequence
	    {
	        name = "normal",
	        start = 1,
	        count = 12,
	        time = 800,
	        loopCount = 0
	    },
	}
	self._energy_seiya = display.newSprite( myImageSheet , sequences_rollingCoin )--{frames={sheetInfo:getFrameIndex("sprite")}} )
	self._energy_seiya:play()
	self._energy_seiya.x = 40
	self._energy_seiya.y = 200
	local sheetInfo = require("bar")
	local myImageSheet = graphics.newImageSheet( "assets/images/bar.png", sheetInfo:getSheet() )
	local sequences_rollingCoin = {
	    -- consecutive frames sequence
	    {
	        name = "normal",
	        start = 1,
	        count = 2,
	        time = 800,
	        loopCount = 0
	    },
	}
	self._bar = display.newSprite( myImageSheet , sequences_rollingCoin )--{frames={sheetInfo:getFrameIndex("sprite")}} )
	self._bar:play()
	self._bar.x = 50
	self._bar.y = 400
	
	self._energy = display.newImage( parentGroup, "assets/images/star.png" )
	self._energy.x = 40
	self._energy.width = 35
	self._energy.y = display.contentHeight - 225
	Runtime:addEventListener( "newLevelSectionCreated", self )
	
	return self
	
end

function Hud:setScoreText( score )

	if not self._scoreText then
		return
	end
	
	self._scoreText.text = "Score: " .. score
	self._scoreText.x = math.floor( self._scoreText.contentWidth / 2 ) + 10
end

function Hud:setEnergyBar( star )
	if star >= 30 then
		self._energy.y = display.contentHeight - 225 - math.floor( 29 / 30 * (display.contentHeight - 420))
	else
		self._energy.y = display.contentHeight - 225 - math.floor((star%30) / 30 * (display.contentHeight - 420))	
	end
end

function Hud:setDistanceText( distance )

	if not self._distanceText then
		return
	end
	
	self._distanceText.text = "Distance: " .. distance .. "Ms"
	self._distanceText.x = display.contentWidth - math.floor( self._distanceText.contentWidth / 2 ) - 10
end

function Hud:setBestDistanceText( distance )
	
	if not self._bestDistanceText then
		return
	end
	
	self._bestDistanceText.text = "Best Distance: " .. ( distance or 0 ) .. "Ms"
	self._bestDistanceText.x = display.contentCenterX
end

function Hud:newLevelSectionCreated()

	if self._scoreText then
		self._scoreText:toFront()
	end
	
	if self._bestDistanceText and self._bestDistanceText[ "toFront" ] then
		self._bestDistanceText:toFront()
	end
	
	if self._distanceText then
		self._distanceText:toFront()
	end
	
	if self._visual then
		self._visual:toFront()
	end

	
	if self._bar then
		self._bar:toFront()
	end	
	
	if self._energy_seiya then
		self._energy_seiya:toFront()
	end	
	
	
	if self._energy then
		self._energy:toFront()
	end	
end

function Hud:gamePaused()
	self._pausedText.isVisible = true
end

function Hud:gameResumed()
	self._pausedText.isVisible = false
end

function Hud:restart()
	local parentGroup = self._parentGroup
	self:cleanUp()
	self = Hud:new( parentGroup )
end

function Hud:cleanUp()
	self._scoreText:removeSelf()
	self._scoreText = nil
	self._distanceText:removeSelf()
	self._distanceText = nil
	self._visual:removeSelf()
	self._visual = nil
	
	self._bar:removeSelf()
	self._bar = nil
	self._energy_seiya:removeSelf()
	self._energy_seiya = nil
	self._energy:removeSelf()
	self._energy = nil
end