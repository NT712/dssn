function onCreate()

	makeLuaSprite('GHGround', 'GHGround', -4000, -3200);
	setLuaSpriteScrollFactor('GHGround', 1, 1);
	scaleObject('GHGround', 1.5, 1.5)

	makeLuaSprite('Sky', 'Sky', -2000, -2900);
	setLuaSpriteScrollFactor('Sky', 0.5, 0.9);
	scaleObject('Sky', 1.5, 1.5);

	makeAnimatedLuaSprite('Goomba','Goomba', -50, 480)
	addAnimationByPrefix('Goomba','idle','Goomb',24,true)
	setLuaSpriteScrollFactor('Goomba', 1, 1);

	makeAnimatedLuaSprite('Koopa','Koopa', 1100, 380)
	addAnimationByPrefix('Koopa','idle','Koopa',24,true)
	setLuaSpriteScrollFactor('Koopa', 1, 1);

	addLuaSprite('Sky', false);
	addLuaSprite('GHGround', false);
	addLuaSprite('Goomba', true);	
	addLuaSprite('Koopa', true);


end

function onCreatePost()

	setProperty('gf.visible',false)	

	close(true)
end 

function onBeatHit()

	objectPlayAnimation('Goomba','idle',true)
	objectPlayAnimation('Koopa','idle',true)

end