local user=game:service'Players'.localPlayer;
local lastSound=nil;
user.Chatted:connect(function(msg)
	if(msg:match'dosound/%d+')then
		local id=tonumber(msg:match'dosound/(%d+)');
		if(lastSound)then 
			lastSound:stop();
			pcall(game.Destroy,lastSound);
		end;
		lastSound=Instance.new('Sound',workspace);
		lastSound.SoundId=string.format('rbxassetid://%d',id);
		lastSound:play();
	end;
end);