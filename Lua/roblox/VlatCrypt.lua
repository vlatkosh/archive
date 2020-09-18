plugin = plugin;
create, gp, gp2, c3, v3, ins, bc, cf, c255, v2 = LoadLibrary("RbxUtility").Create, UDim.new,  UDim2.new, Color3.new,  Vector3.new, Instance.new, BrickColor,  CFrame, function(r,g,b) return Color3.new(r/255, g/255, b/255) end, Vector2.new;
random, pi, sin, cos, sqrt, abs, log, exp, tan = math.random, math.pi, math.sin, math.cos, math.sqrt, math.abs, math.log, math.exp, math.tan;

--[[
/////////////////////////////////////////////////////////////////////////////////////////
--]]

-- made by Vlatkovski

local VlatCryptVERSION = 1.3;


local ad = {};
ad.whileEncrypting = "VLATKOVSKI";
ad.startAndFinish = "--Encrypted by VlatCrypt "..tostring(VlatCryptVERSION)..", made by Vlatkovski.";

local hexString = "0123456789ABCDEF";


local mainmodel = script.Parent;
local assets = mainmodel.Assets;

local toolbar = plugin:CreateToolbar("VlatCrypt");
local mouse = plugin:GetMouse();

local encryptButton = toolbar:CreateButton(
	"EncryptButton",
	"Select the scripts you want to encrypt, then click me to encrypt them.",
	assets.ButtonImage.Texture
);


function stringRandom(length)
	math.randomseed(random(0, tick()));
	local chars = {"!","\"","#","$","%","&","'","(",")","*","+",",","-",".","/","0","1","2","3","4","5","6","7","8","9",":",";","<","=",">","?","@","[","]","^","_","`","{","|","}","~","\\","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z",""," ","	","\n"};
	local randomStr = "";
	for i=1,length do
		randomStr = randomStr.. chars[random(#chars)];
	end;
	return randomStr;
end;

function num2hex(num)
	local s = "";
	while (num > 0) do
		local mod = math.fmod(num, 16);
		s = hexString:sub(mod+1, mod+1)..s;
		num = math.floor(num / 16);
	end;
	return s == "" and "0" or s;
end


function stringToByte(s, offset)
	local offset = offset or 4;

	for w in s:gmatch(".") do
		local w1 = string.byte(w) + offset;
		s = s:gsub(w, "\\" .. tostring(w1) );
	end
	return s;
end;

function byteToString(s, offset)
	local offset = offset or 4;
	
	for w in s:gmatch("\\%d+") do
		local w1 = string.char( tonumber(w:sub(2)) - offset );
		s = s:gsub(w, w1);
	end;
	return s;
end;



function encrypt(str)
	local s = "(function(v,l,a,t,c,r,y,p,t)return(function(b,y,_,v,l,a,t,k,o,v,s,k,i)v,l,a,t,c,r,y,p,t={},{},table.insert,tostring,tonumber,function(h,i)a(v,{[h:reverse()]=i;});end,'';";

	local ad = ad.whileEncrypting;
	local adPos = 0;
	
	for i=1,#str,1 do
		local chr = str:sub(i,i);
		local byt = string.byte(chr);
		local hex = num2hex(byt);
		
		s = s .. string.format(
			--"a(v,{[%q]=%q});",			hex, ad:sub(adPos, adPos)..hex:rep(2):reverse()
			"r(%q,%q);",					hex, ad:sub(adPos, adPos)..hex:rep(2):reverse()
		);

		adPos = adPos >= #ad and 0 or adPos + 1;
	end;
	
	s = s.. --string.format(
		"for i,v in next,v do "..
		"for i,v in next,v do "..
		"a(l,c(t(i:reverse()),tonumber([===[61]===]):reverse()));"..
		"end;"..
		"end;"..
		"table.foreach(l,function(i,v)"..
		"y=y..string.char(v);"..	
		"end);"..
		"assert(loadstring(y))()end)([=[{end})()]=])end)([[)()end)()]]);"
	--);

	--print'finished encrypting'	

	return string.format(
		"assert(loadstring(%q))();",
		stringToByte(s)
	):gsub("\\\\", "\\");
end;




function onclick()
	assert(mainmodel.Name == "VlatCrypt v"..tostring(VlatCryptVERSION), "Please change model name to current version.");

	local selection = game:GetService("Selection"):Get();
	local done = {};
	
	for i=1,#selection,1 do
		if (selection[i]:IsA("LuaSourceContainer")) then
			table.insert(done, selection[i]);
			local sscript = selection[i];
			
			local source = ad.startAndFinish.."\n\n"..encrypt(sscript.Source).."\n\n"..ad.startAndFinish;
			local name = string.format("Encrypted_%s", sscript.Name);

			local newscr = ins(sscript.ClassName, sscript)
				newscr.Parent = sscript;
				newscr.Name = name;
				newscr.Disabled = true;
			newscr.Source = source;

		end;
	end;
	
	if (#done > 0) then
		local doneStr = "";
		for i=1,#done,1 do
			doneStr = doneStr..string.format("\n     %02i. %s", i, done[i]:GetFullName());
		end;
		print(string.format(
			"\n"..
			"/--------|    ENCRYPTED"..
			"%s\n"..
			"/--------|    VlatCrypt"..
			"\n",
			doneStr
		));
	else
		warn("\n/----|  VlatCrypt: Unable to encrypt any of the selected items, nothing is a script!\n");
	end;
end;

encryptButton.Click:connect(function()
	plugin:Activate(true);
	onclick();
end);