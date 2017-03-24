module(..., package.seeall)

local self = display.newGroup()
local floor = math.floor

new = function( params )
	
	physics.start( true )
	--physics.setDrawMode( "hybrid" )
	self._overturnGravity = -50
	self._normalGravity = 50
	physics.setGravity( 0, self._normalGravity )

	self._level = Level:new( self )
	self._player = Player:new( self )
	self._hud = Hud:new( self )
	self._depotBase = 100;

	print('test1')
	
	Runtime:addEventListener( "tap", self )
	Runtime:addEventListener( "touch", self )
	Runtime:addEventListener( "enterFrame", self )
	Runtime:addEventListener( "newLevelSectionCreated", self )
	Runtime:addEventListener( "zapperHit", self )
	Runtime:addEventListener( "coinHit", self )
	Runtime:addEventListener( "laserHit", self )
	Runtime:addEventListener( "missileHit", self )
	Runtime:addEventListener( "bonusHit", self )
	Runtime:addEventListener( "diamondHit", self )
	Runtime:addEventListener( "playerFalling", self )
	Runtime:addEventListener( "playerDead", self )
	Runtime:addEventListener( "snow", self )
	Runtime:addEventListener( "purchase", self )
	Runtime:addEventListener( "overTurnHit", self )
	
	self._distance = 0
	self._collectedStars = 0
	self._engergyStars = 0
	self._hitZappers = 0
	self._hitMissiles = 0
	self._hitBonus = 0
	self._hitDiamond = 0
	self._hitLasers = 0
	self._totalFrames = 0
	self._cointCount = 0
	self._isOverturn = false
	
	
	self._hud:setBestDistanceText( records:retrieve( "bestDistance" ) )
	
	self:pause()
	
	return self
	
end

function self:tap( event )
	if self._isPaused then
		self:resume()
	end
	if 	self._depot and event.x >= self._depot.x-self._depot.width/2 and event.x <= self._depot.x+self._depot.width/2 and event.y >= self._depot.y-self._depot.height/2 and event.y <= self._depot.y+self._depot.height/2 then
		-- print("tap at depot")
		-- audio.play( collectSound, { channel = audio.findFreeChannel( 4 ) } )
		self._engergyStars = 0
		self._depot:cleanUp()
		self:purchase()
	end
end

function self:touch( event )
	if not self._isPaused then
		if self._player then self._player:touch( event ) end
	end
end

function self:enterFrame( event )

	if not self._isPaused then
	
		self._totalFrames = self._totalFrames + 1
		
		if self._player and self._level then 
			
			self._player:enterFrame( event ) 

			if self._player:hasReachedStartingPoint() then
				self._level:startMoving()
			end
			
			self._level:enterFrame( event ) 
			--self._distance  = floor( ( ( self._level:getSpeed() / 2 ) * self._totalFrames ) / 10 )
			self._distance = floor( ( ( self._level:getSpeed() / 5 ) + self._distance ) )
			self._hud:setDistanceText( self._distance  )
			
			--if self._distance~=0 and self._distance%(self._depotBase)==0 and self._depot==nil and not self._player.undead then
			if self._engergyStars > 30 and (self._depot==nil or not self._depot)then
				self._depot = Depot:new( self )
				timer.performWithDelay( 3000, self.depotCleanUp )
			--	self._depotBase = self._depotBase + 500
			end

		end
		
	end
end

function self:newLevelSectionCreated( event )
	self._player:toFront()
	self._level._floor:toFront()
	if self._depot and self._depot._visual then
		self._depot._visual:toFront()
	end
end

function self:endGame()
	if not self._player.undead then
		self._player:kill()
		self._player:getVisual().isVisible = false
		self._isOverturn = false
		
		records:store( "lastGame", { stars = self._collectedStars, distance = self._distance} )
		records:storeIfHigher( "bestCoins", self._collectedStars )
		records:storeIfHigher( "bestDistance", self._distance )
		records:save()
		
		
		self:cleanUp()
		--self:pause()
		director:changeScene( "screen_MainMenu" )
	end
	
end

function self:zapperHit()
	if self._hitBonus == 1 then
		self._hitBonus = 0
		self._player:changeLook( self )
		-- self._hud:setHeartText(self._hitBonus)
	else
		self:endGame()
	end
end

function self:coinHit()
	if self._hitDiamond == 0 then
		self._collectedStars = self._collectedStars + 1
		self._engergyStars = self._engergyStars + 1
	else
		self._collectedStars = self._collectedStars + 2
		self._cointCount = self._cointCount + 2
		self._engergyStars = self._engergyStars + 2
		if self._cointCount > 20 then
			self._cointCount = 0
			self._hitDiamond = 0
			self._player:changeLook( self )
		end
	end
	self._hud:setScoreText( self._collectedStars )
	self._hud:setEnergyBar( self._engergyStars )
end

function self:laserHit()
	self:endGame()
end

function self:bonusHit()
	if self._hitBonus == 0 then
		self._hitBonus = 1
		self._player:changeLook( self )
		-- self._hud:setHeartText(self._hitBonus)
	end
end

function self:diamondHit()
	if self._hitDiamond == 0 then
		self._hitDiamond = 1
		self._cointCount = 0
		self._player:changeLook( self )
	end
end

function self:missileHit()
	if self._hitBonus == 1 then
		self._hitBonus = 0
		self._player:changeLook( self )
		-- self._hud:setHeartText(self._hitBonus)
	else
		self:endGame()
	end
end

function self:playerFalling()
	self._level:playerFalling()
end

function self:playerDead()
	self:endGame()
end

self.depotCleanUp = function ( event )
	if self._depot then
		self._depot:cleanUp()
		self._depot = nil
		self._engergyStars = 0
	end
end

self.uncheckUndead = function ( event )
	self._player.undead = false;
end

self.clearDepotEffect = function ( event )
	local params = event.source.params
	self._level:setSpeed(params.speed);
	--physics.start()
	self._player._visual.gravityScale = 1
	timer.performWithDelay( 1000, self.uncheckUndead )
	
end

function self:purchase()
	self._player.undead = true;
	local speed = self._level:getSpeed()
	self._level:setSpeed(50);
	--physics.pause()
	self._player._visual.gravityScale = 0
	local tm = timer.performWithDelay( 6000, self.clearDepotEffect )
	tm.params = { speed = speed }
end

self.clearOverTurnEffect = function ( event )
	if self._player and (not (self._player == nil)) and self._isOverturn then
		self._isOverturn = false
		self._player:changeLook( self )
		physics.setGravity( 0, self._normalGravity )
	end
end

function self:overTurnHit()
	if not self._isOverturn then
		self._isOverturn = true
		self._player:changeLook( self )
		physics.setGravity( 0, self._overturnGravity )
		local tm = timer.performWithDelay( 3000, self.clearOverTurnEffect )
	end
end

function self:restart()

	self._level:restart()
	self._player:restart()
	self._hud:restart()
	self._snow:restart()
	
	self._distance = 0
	self._collectedStars = 0
	self._engergyStars = 0
	self._hitZappers = 0
	self._hitMissiles = 0
	self._hitLasers = 0
	self._totalFrames = 0
	self._hitBonus = 0
	self._hitDiamond = 0
	self._cointCount = 0
	
	self:resume()
	
end

function self:pause()
	physics.pause()
	self._isPaused = true
	self._hud:gamePaused()
end

function self:resume()
	physics.start( true )
	self._isPaused = false
	self._hud:gameResumed()
end

function self:cleanUp()
	Runtime:removeEventListener( "tap", self )
	Runtime:removeEventListener( "touch", self )
	Runtime:removeEventListener( "enterFrame", self )
	Runtime:removeEventListener( "newLevelSectionCreated", self )
	Runtime:removeEventListener( "zapperHit", self )
	Runtime:removeEventListener( "coinHit", self )
	Runtime:removeEventListener( "laserHit", self )
	Runtime:removeEventListener( "missileHit", self )
	Runtime:removeEventListener( "bonusHit", self )
	Runtime:removeEventListener( "diamondHit", self )
	Runtime:removeEventListener( "playerFalling", self )
	Runtime:removeEventListener( "playerDead", self )
	Runtime:removeEventListener( "snow", self )
	Runtime:removeEventListener( "purchase", self )
	Runtime:removeEventListener( "overTurnHit", self )
	self._level:cleanUp()
	self._player:cleanUp()
	self._hud:cleanUp()
end