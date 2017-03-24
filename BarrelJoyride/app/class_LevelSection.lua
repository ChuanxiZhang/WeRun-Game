LevelSection = {}
LevelSection_mt = { __index = LevelSection }

--- Constructs a new LevelSection object.
function LevelSection:new( parentGroup, definition )

	local self = {}
	
	setmetatable( self, LevelSection_mt )
	
	self._back = display.newImage( parentGroup, definition.back, true )
	self._back.x = display.contentCenterX
	self._back.y = display.contentCenterY

	self._coins = {}
	self._zappers = {}
	self._missiles = {}
	self._bonus = {}
	self._diamond = {}
	self._overturn = {}
	
	if definition.coins then
		for i = 1, #definition.coins, 1 do
			self:createCoin( definition.coins[ i ] )
		end
	end
	
	if definition.zappers then
		for i = 1, #definition.zappers, 1 do
			self:createZapper( definition.zappers[ i ] )
		end
	end
	
	if definition.missiles then
		for i = 1, #definition.missiles, 1 do
			self:createMissile( definition.missiles[ i ] )
		end
	end

	if definition.bonus then
		for i = 1, #definition.bonus, 1 do
			self:createBonus( definition.bonus[ i ] )
		end		
	end

	if definition.diamond then
		for i = 1, #definition.diamond, 1 do
			self:createDiamond( definition.diamond[ i ] )
		end		
	end	
	
	if definition.overturn then
		for i = 1, #definition.overturn, 1 do
			self:createOverturn( definition.overturn[ i ] )
		end		
	end	

	return self
	
end

function LevelSection:positionObject( object, params )
	local x = self:getPosition() + self:getWidth() / 2
	object:setPosition( x + params.position[ 1 ], params.position[ 2 ] )
end

function LevelSection:createCoin( params )
	
	local coin = Coin:new( self._back.parent, params )
	
	self:positionObject( coin, params )
	
	self._coins[ #self._coins + 1 ] = coin
	
end

function LevelSection:createZapper( params )
	
	local zapper = Zapper:new( self._back.parent, params )
	
	self:positionObject( zapper, params )
	
	self._zappers[ #self._zappers + 1 ] = zapper
	
end

function LevelSection:createBonus( params )
	
	local bonus = Bonus:new( self._back.parent, params )
	
	self:positionObject( bonus, params )
	
	self._bonus[ #self._bonus + 1 ] = bonus
	
end

function LevelSection:createDiamond( params )
	
	local diamond = Diamond:new( self._back.parent, params )
	
	self:positionObject( diamond, params )
	
	self._diamond[ #self._diamond + 1 ] = diamond
	
end

function LevelSection:createMissile( params )

	params.levelSpeed = self._currentSpeed
	
	local missile = Missile:new( self._back.parent, params )
	
	params.position = { display.contentWidth, params.height }
	self:positionObject( missile, params )
	
	self._missiles[ #self._missiles + 1 ] = missile
	
end

function LevelSection:createOverturn( params )
	
	local overturn = Overturn:new( self._back.parent, params )
	
	self:positionObject( overturn, params )
	
	self._overturn[ #self._overturn + 1 ] = overturn
	
end

function LevelSection:move( speed )
	
	self._currentSpeed = speed-3
	
	if not self._back or not self._back.x then
		return 
	end
	
	self._back.x = self._back.x - speed
	
	for i = 1, #self._coins, 1 do
		self._coins[ i ]:move( speed)
	end
	for i = 1, #self._zappers, 1 do
		self._zappers[ i ]:move( speed)
	end
	for i = 1, #self._missiles, 1 do
		self._missiles[ i ]:move( speed-3)
	end
	for i = 1, #self._bonus, 1 do
		self._bonus[ i ]:move( speed)
	end	
	for i = 1, #self._diamond, 1 do
		self._diamond[ i ]:move( speed)
	end		
	for i = 1, #self._overturn, 1 do
		self._overturn[ i ]:move( speed )
	end	
end

function LevelSection:enterFrame()
	for i = 1, #self._coins, 1 do
		self._coins[ i ]:enterFrame()
	end
	for i = 1, #self._zappers, 1 do
		self._zappers[ i ]:enterFrame()
	end
	for i = 1, #self._missiles, 1 do
		self._missiles[ i ]:enterFrame()
	end
	for i = 1, #self._bonus, 1 do
		self._bonus[ i ]:enterFrame()
	end	
	for i = 1, #self._diamond, 1 do
		self._diamond[ i ]:enterFrame()
	end		
	for i = 1, #self._overturn, 1 do
		self._overturn[ i ]:enterFrame()
	end
end

function LevelSection:getPosition()
	return self:getVisual().x
end

function LevelSection:getWidth()
	return self:getVisual().contentWidth
end

function LevelSection:getVisual()
	return self._back
end

function LevelSection:cleanUp()
	for i = 1, #self._coins, 1 do
		self._coins[ i ]:cleanUp()
	end
	for i = 1, #self._zappers, 1 do
		self._zappers[ i ]:cleanUp()
	end
	for i = 1, #self._missiles, 1 do
		self._missiles[ i ]:cleanUp()
	end
	for i = 1, #self._bonus, 1 do
		self._bonus[ i ]:cleanUp()
	end	
	for i = 1, #self._diamond, 1 do
		self._diamond[ i ]:cleanUp()
	end
	return self:getVisual():removeSelf()
end