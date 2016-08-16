hook.Add( "PlayerSay", "AutoSalute", function( ply, text, public )
	text = string.lower( text ) 
	
	if ply:InVehicle() == true then return end

	if ( text == "/me salutes." or text == "/me salutes" or text == "/me salute" or text == "/me salute." ) then
		ply:DoAnimationEvent(ACT_GMOD_TAUNT_SALUTE) -- salute anim
	end
	
	if ( text == "/me waves." or text == "/me waves" or text == "/me wave" or text == "/me wave." ) then
		ply:DoAnimationEvent(ACT_GMOD_GESTURE_WAVE) -- wave anim
	end
	
	if ( text == "/me cheers." or text == "/me cheers" or text == "/me cheer" or text == "/me cheer." ) then
		ply:DoAnimationEvent(ACT_GMOD_TAUNT_CHEER) -- cheer anim
	end
	
	if ( text == "/me laughs." or text == "/me laughs" or text == "/me laugh" or text == "/me laugh." ) then
		ply:DoAnimationEvent(ACT_GMOD_TAUNT_LAUGH) -- laugh anim
	end
	
	if ( text == "/me dances." or text == "/me dances" or text == "/me dance" or text == "/me dance." ) then
		ply:DoAnimationEvent(ACT_GMOD_TAUNT_MUSCLE) -- dance anim
	end
		
end )