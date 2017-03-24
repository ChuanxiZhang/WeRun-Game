Diamond = {}
Diamond_mt = { __index = Diamond }

local collectSound = audio.loadSound( "assets/sounds/diamond.mp3" )

--- Constructs a new Coin object.
function Diamond:new( parentGroup, params )

	local self = {}
	
	setmetatable( self, Diamond_mt )

	-- Create the visual
	local sheetInfo = require("diamond")
	local myImageSheet = graphics.newImageSheet( "assets/images/diamond.png", sheetInfo:getSheet() )
	local sequences_rollingCoin = {
	    -- consecutive frames sequence
	    {
	        name = "normal",
	        start = 1,
	        count = 5,
	        time = 800,
	        loopCount = 0
	    }
	}
	self._visual = display.newSprite( myImageSheet , sequences_rollingCoin )--{frames={sheetInfo:getFrameIndex("sprite")}} )
	self._visual:play()
	
	-- Create the physics
	physics.addBody( self._visual, "static", { radius = 10 } )
	self._visual.isSensor = true
	
	-- Set up some stuff for the collision detection
	self._visual.type = "diamond"
	self._visual.owner = self
	
	return self
	
end

--- Sets the position of the Coin.
-- @param x The X position.
-- @param x The Y position.
function Diamond:setPosition( x, y )
	self._visual.x = x
	self._visual.y = y
end

--- Moves the coin.
-- @param speed The speed of the level.
function Diamond:move( speed )
	if self._visual then
		self._visual.x = self._visual.x - speed
	end
end

function Diamond:enterFrame()
end

--- Called when the player collides with the coin.
function Diamond:playerHit()
	audio.play( collectSound, { channel = audio.findFreeChannel( 4 ) } )
	Runtime:dispatchEvent{ name = "diamondHit" }
	self:cleanUp()
end

--- Destroys the coin.
function Diamond:cleanUp()
	if self._visual then
		self._visual:removeSelf()
		self._visual = nil
	end
end