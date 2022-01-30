function onCreate()
	-- background shit

	makeLuaSprite('GHGround', 'GHGround', -4000, -3200);
	setLuaSpriteScrollFactor('GHGround', 1, 1);
	scaleObject('GHGround', 1.5, 1.5)

	makeLuaSprite('Sky', 'Sky', -6000, -2900);
	setLuaSpriteScrollFactor('Sky', 0.6, 1);
	scaleObject('Sky', 1.5, 1.5);

	addLuaSprite('Sky', false);
	addLuaSprite('GHGround', false);
	


end

function onCreatePost()

	setProperty('gf.visible',false)

	close(true)
end 