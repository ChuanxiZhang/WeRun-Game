Bonus = {}
Bonus_mt = { __index = Bonus }

local collectSound = audio.loadSound( "assets/sounds/heart.mp3" )

--- Constructs a new Coin object.
function Bonus:new( parentGroup, params )

	local self = {}
	
	setmetatable( self, Bonus_mt )

	-- Create the visual
	local sheetInfo = require("heart")
	local myImageSheet = graphics.newImageSheet( "assets/images/heart.png", sheetInfo:getSheet() )
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
	
	-- Create the physics
	physics.addBody( self._visual, "static", { radius = 10 } )
	self._visual.isSensor = true
	
	-- Set up some stuff for the collision detection
	self._visual.type = "snow"
	self._visual.owner = self
	
	return self
	
end

--- Sets the position of the Coin.
-- @param x The X position.
-- @param x The Y position.
function Bonus:setPosition( x, y )
	self._visual.x = 200
	self._visual.y = 200
end

--- Moves the coin.
-- @param speed The speed of the level.

--end

function Bonus:enterFrame()
end

--end