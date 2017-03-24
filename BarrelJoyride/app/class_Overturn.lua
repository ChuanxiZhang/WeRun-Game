Overturn = {}
Overturn_mt = { __index = Overturn }

local collectSound = audio.loadSound( "assets/sounds/heart.mp3" )

--- Constructs a new Coin object.
function Overturn:new( parentGroup, params )

	local self = {}
	
	setmetatable( self, Overturn_mt )

	-- Create the visual
	local sheetInfo = require("dizzy")
	local myImageSheet = graphics.newImageSheet( "assets/images/dizzy.png", sheetInfo:getSheet() )
	local sequences_rollingCoin = {
	    -- consecutive frames sequence
	    {
	        name = "normal",
	        start = 1,
	        count = 8,
	        time = 800,
	        loopCount = 0
	    },
	}
	self._visual = display.newSprite( myImageSheet , sequences_rollingCoin )--{frames={sheetInfo:getFrameIndex("sprite")}} )
	self._visual:play()
	--self._visual = display.newRect( parentGroup, display.contentWidth/2, 30, 60, 60)
	
	-- Create the physics
	physics.addBody( self._visual, "static", { radius = 10 } )
	self._visual.isSensor = true
	
	-- Set up some stuff for the collision detection
	self._visual.type = "overTurn"
	self._visual.owner = self
	
	return self
	
end

--- Sets the position of the Coin.
-- @param x The X position.
-- @param x The Y position.
function Overturn:setPosition( x, y )
	self._visual.x = x
	self._visual.y = y
end

--- Moves the coin.
-- @param speed The speed of the level.
function Overturn:move( speed )
	if self._visual then
		self._visual.x = self._visual.x - speed
		self._visual.y = self._visual.y - 1
	end
end

function Overturn:enterFrame()
end

--- Called when the player collides with the coin.
function Overturn:playerHit()
	audio.play( collectSound, { channel = audio.findFreeChannel( 4 ) } )
	Runtime:dispatchEvent{ name = "overTurnHit" }
	self:cleanUp()
end

--- Destroys the coin.
function Overturn:cleanUp()
	if self._visual then
		self._visual:removeSelf()
		self._visual = nil
	end
end