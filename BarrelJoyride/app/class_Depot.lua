Depot = {}
Depot_mt = { __index = Depot }

local collectSound = audio.loadSound( "assets/sounds/acceleration.mp3" )

--- Constructs a new Depot object.
function Depot:new( parentGroup )

	local self = {}
	
	setmetatable( self, Depot_mt )

	self._parentGroup = parentGroup

	--self._visual = display.newRect( parentGroup, display.contentWidth/2, 30, 60, 60 )
	local sheetInfo = require("acceleration")
	local myImageSheet = graphics.newImageSheet( "assets/images/acceleration.png", sheetInfo:getSheet() )
	local sequences_rollingCoin = {
	    -- consecutive frames sequence
	    {
	        name = "normal",
	        start = 1,
	        count = 9,
	        time = 800,
	        loopCount = 0
	    }
	}
	self._visual = display.newSprite( myImageSheet , sequences_rollingCoin )--{frames={sheetInfo:getFrameIndex("sprite")}} )
	self._visual:play()
	audio.play( collectSound, { channel = audio.findFreeChannel( 4 ) } )
	self._visual.x=display.contentWidth / 2
	self._visual.y=50
	self.x = display.contentWidth / 2
	self.y = 30
	self.width = 60
	self.height = 60
	

	return self
	
end

function Depot:getVisual()
	
	return self._visual
end

function Depot:cleanUp()
	
	if self._visual and self._visual.removeSelf then
		
		-- print("clean up depot!!!!!!!!!!!!!!!!!!!!")
		--self._visual.isVisible = false
		self._visual:removeSelf()
		self._visual = nil
	end
end