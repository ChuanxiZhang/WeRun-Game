module(..., package.seeall)

local self = display.newGroup()

new = function( params )
	
	self._back = display.newImage( self, "assets/images/levelSections/1.png", true )
	self._back.x = display.contentCenterX
	self._back.y = display.contentCenterY
	
	self._scroll = display.newImage( self, "assets/images/night.png", true )
	self._scroll.x = display.contentCenterX
	self._scroll.y = display.contentCenterY
	
	local lastGame = records:retrieve( "lastGame" ) or {}
	
	local stars = ( lastGame.stars or 0 )
	self._scoreText = display.newText( self, "You collected " .. stars .. " stars!", 0, 0, "Trebuchet MS", 50 )
	self._scoreText:setTextColor( 255, 255, 255 )
	self._scoreText.x = display.contentCenterX
	self._scoreText.y = 150
	
	local distance = ( lastGame.distance or 0 )
	self._distanceText = display.newText( self, "You traveled " .. distance .. " metres!", 0, 0, "Trebuchet MS", 50 )
	self._distanceText:setTextColor( 255, 255, 255 )
	self._distanceText.x = display.contentCenterX
	self._distanceText.y = 250
	
	local bestDistance = ( records:retrieve( "bestDistance" ) or 0 )
	self._bestDistanceText = display.newText( self, "best distance：" .. bestDistance .. " metres!", 0, 0, "Trebuchet MS", 50 )
	self._bestDistanceText:setTextColor( 255, 255, 255 )
	self._bestDistanceText.x = display.contentCenterX
	self._bestDistanceText.y = display.contentHeight - self._bestDistanceText.contentHeight * 2

	self._playText = display.newText( self, "Play Again", 0, 0, "Trebuchet MS", 80 )
	self._playText:setTextColor( 255, 255, 255 )
	self._playText.x = display.contentCenterX
	self._playText.y = display.contentCenterY + 50
	
	function onTap()	
		Runtime:removeEventListener( "tap", onTap )
		director:changeScene( "screen_Game" )
	end

	Runtime:addEventListener( "tap", onTap )
	
	return self
	
end