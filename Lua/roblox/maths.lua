if (game.PlaceId == 178350907) or (game.PlaceId == 20279777) then script:Destroy(); elseif (game.PlaceId == 0) then wait(2) end;

---- SOME NICE FUNCTIONS I MADE FOR MYSELF
create, gp, gp2, c3, v3, ins, bc, cf, c255, v2 = LoadLibrary("RbxUtility").Create, UDim.new,  UDim2.new, Color3.new,  Vector3.new, Instance.new, BrickColor,  CFrame, function(r,g,b) return Color3.new(r/255, g/255, b/255) end, Vector2.new;
random, pi, sin, cos, sqrt, abs, log, exp, tan = math.random, math.pi, math.sin, math.cos, math.sqrt, math.abs, math.log, math.exp, math.tan;
function findFirstChild(object, property, want, recursive) local property, recursive, found = property or "Name", recursive or false, nil; local function find(obj, prop, want) for i,v in next, obj:GetChildren() do local success, bool = pcall(function() return tostring(v[prop]) == tostring(want); end); if (success and bool) then found = v; break; elseif (recursive) then find(v, prop, want); end; end; end; find(object, property, want); return found; end;
function getAllChildren(obj) local Children = {}; function gC(trg) for i,v in next, trg:GetChildren() do table.insert(Children, v); gC(v); end; end; pcall(function() gC(obj); end); return Children; end;
function stringRandom(length) math.randomseed(math.random(0, tick())) local chars = {"!","\"","#","$","%","&","'","(",")","*","+",",","-",".","/","0","1","2","3","4","5","6","7","8","9",":",";","<","=",">","?","@","[","]","^","_","`","{","|","}","~","\\","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z",""," ","	","\n"}; local randomStr = ""; for i=1,length do randomStr = randomStr.. chars[math.random(#chars)]; end; return randomStr; end;
-----------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------

---- VARIABLES OR WHATEVER THEY'RE CALLED
local players, lighting, rs = game:GetService("Players"), game:GetService("Lighting"), game:GetService("RunService");

local me = players.LocalPlayer;

local faces = {"Front","Back","Left","Right","Top","Bottom"};
local materials = {256,272,512,528,784,800,816,832,848,864,880,1040,1056,1072,1088,1280,1296,1312,1536};

local holderName = stringRandom(50);
local boolName = "smooth_memes_bool";

for i,root in next, workspace:GetChildren() do --remove leftovers from last time ran
	for i,v in next, root:GetChildren() do
		root = (v:IsA("BoolValue")) and (v.Value == true) and (v.Name == boolName) and root:Destroy() or root;
	end;
end;

local holder = create "Model" {
	Parent = workspace;
	Name = holderName;
	
	create "BoolValue" {
		Name = boolName;
		Value = true;
	};
};

local color = bc.new("Toothpaste")--bc.Random();
local i = 0;

lighting.GlobalShadows = false;
lighting.OutdoorAmbient = color == nil and bc.Random().Color or color.Color;
lighting.ShadowColor = color == nil and bc.Random().Color or color.Color;

-- one segment = 4 * 4; default for both is pi
local segments_X = 7;
local segments_Z = 7;


local size = 0.8;
local offset = size / 3 * 100;
local hight = -80;


local PATTERNS = {}
PATTERNS[1] =	function(x,z) return -- WAVES
					-cos(tick()+x) * sin(tick()+z) * offset ;
				end;
PATTERNS[2] =	function(x,z) return -- TRIPPY
					-cos(tick()+x/2) * offset-35 * sin(tick()+z/2) ;
				end;
PATTERNS[3] =	function(x,z) return -- WATER DROP
					sin(tick() - sqrt(x^2+z^2)) * offset ;
				end;
PATTERNS[4] =	function(x,z) return -- SMOOTH WAVES
					sin(tick()+x/2) * offset * cos(tick()+z/2) ;
				end;
PATTERNS[5] =	function(x,z) return -- ARENA 1
					-cos(tick()+x^2) * offset * -cos(tick()+z^2) ;
				end;
PATTERNS[7] =	function(x,z) return -- SEIZURES
					sin(-tan(tick()+x^2) * -sqrt(tick()+z^2)) * offset ;
				end;



local PATTERN_TO_INDEX = 2;



function isPart(trg)
	if (trg:IsA("BasePart")) and (not trg:IsA("Terrain")) and (not trg:IsDescendantOf(me.Character)) and (not trg:IsDescendantOf(holder)) and (not players:GetPlayerFromCharacter(trg.Parent)) and (not players:GetPlayerFromCharacter(trg)) --[[and (trg.Name:lower():sub(1,4) == "base")]] then
		return true;
	end;
	return false;
end;

function hideIfPart(trg)
	if (not isPart(trg)) then return; end

	trg.Anchored = true;
	trg.CanCollide = false;
	trg.Transparency = 1;
end;

function createP() --so its never removed <3
	local P = holder:FindFirstChild(i) or create "Part" {
		Parent = holder;
		Name = tostring(i);
		Locked = true;
		Anchored = true;
		FormFactor = "Custom";
		Size = v3(size*offset, size*offset, size*offset);
		CFrame = cf.new(0, 1000, 0);
		BrickColor = color == nil and bc.Random() or color;
		Material = materials[math.random(#materials)];
		create "SurfaceLight" {
			Face = faces[math.random(#faces)];
			Range = 20;
			Color = color == nil and bc.Random().Color or color.Color;
		};
	};
	
	i = i + 1;
	return P;
end;

---- THE MAGIC
function magic()
	spawn(function()
		--actual magic
		for x = -segments_X,segments_X,size do
			for z = -segments_Z,segments_Z,size do
				spawn(function()
					local p = createP();
					
					holder.ChildRemoved:connect(function(c) --so its never removed <3
						if (p == c) then
							p = createP();
						end;
					end);
	
					rs.RenderStepped:connect(function()
						p.CFrame = cf.new(x*offset,PATTERNS[PATTERN_TO_INDEX](x,z)+hight,z*offset);
					end);
	
					--rs.RenderStepped:wait(); --prevents a huge lag spike
				end);
			end;
		end;
	end);
	spawn(function()
		--so sh!t doesn't fall off
		for i,v in next, getAllChildren(workspace) do
			if (v:IsA("BasePart")) and (not v:IsA("Terrain")) then
				spawn(function()
					local anch = v.Anchored;
					v.Anchored = true;
					repeat wait(); until #holder:GetChildren() >= (segments_X*segments_Z)*(offset/4.1);
					v.Anchored = anch;
				end);
			end;
			if (isPart(v)) then
				v:Destroy();
			end;
		end;
	end);
	spawn(function()
		-- hide all other parts <3
		for i,v in next, getAllChildren(workspace) do
			hideIfPart(v);
		end;
		
		workspace.ChildAdded:connect(function(c)
			hideIfPart(c);
		end);
	end);
end;


spawn(magic);


holder.Changed:connect(function(c) --so its never removed <3
	spawn(function()
		if (not holder.Parent) then
			holder = ins("Model", workspace);
			holder.Name = holderName;

			i = 0;
			color = bc.Random();
			hight = hight - 20;

			spawn(magic);
			
			hight = hight + 20;
		end;
	end);
end);