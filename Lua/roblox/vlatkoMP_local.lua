local create = assert(LoadLibrary("RbxUtility")).Create
local rbxGui = assert(LoadLibrary("RbxGui"))

local ud2 = UDim2.new

local marketplaceService = game:GetService("MarketplaceService")
local player = game:GetService("Players").LocalPlayer
local mouse = player:GetMouse()

local vlatkoMP = script.Parent.Parent
	local gui = vlatkoMP
		local main = gui:WaitForChild("Main")
			local title = main:WaitForChild("Title")
			local actionMenu = main:WaitForChild("ActionMenu")
			local controlMenu = main:WaitForChild("ControlMenu")
			local statusBar = main:WaitForChild("StatusBar")
			local sliderGui = main:WaitForChild("SliderGui")
		local other = gui:WaitForChild("Other")
	local code = vlatkoMP:WaitForChild("Code")
		local localScript = script
	local sound = vlatkoMP:WaitForChild("Sound")



local soundFunctions = {
	Play = function()
		if (sound.IsPaused) then
			sound:Resume()
		else
			
		end
	end,
	Pause = function()
		sound:Pause()
	end,
	Stop = function()
		sound:Stop()
	end,
	DecreaseSpeed = function()
		if sound.Pitch ~= 1/2/2/2 then --0.125
			sound.Pitch = sound.Pitch / 2
		end
	end,
	IncreaseSpeed = function()
		if sound.Pitch ~= 1*2*2*2 then --8
			sound.Pitch = sound.Pitch * 2
		end
	end,
	SkipBack = function()
		
	end,
	SkipForward = function()
		
	end
}

local playlist = {
	--http://wiki.roblox.com/index.php?title=API:Class/MarketplaceService/GetProductInfo
	--{Name="ASGORE Part 1", Description="From Undertale.", AssetID="300794031"},
	--{Name="ASGORE Part 2", Description="From Undertale.", AssetID="300794116"}
}

local function addToPlaylist(assetID)
	local data = marketplaceService:GetProductInfo(assetID)
	playlist[#playlist+1] = data
end
addToPlaylist(300794031)
addToPlaylist(300794116)


local function toggleGUI(obj, bool)
	if bool ~= nil then
		bool = bool
	else
		bool = not obj.Visible
	end
	obj.Visible, obj.Active = bool, bool
end

local function doThisWhenActionMenuIsParentMouseButton1Click(obj)
	local onClick = obj.OnClick
	for _,child in next, obj.Parent:GetChildren() do
		if child.OnClick ~= onClick then
			toggleGUI(child.OnClick, false)
		end
	end
	toggleGUI(onClick)
	onClick.Position = ud2(1, -5, 1, -5)
end

local function connectFunctionsToEvents(tbl, parentobject)
	for name,tbl2 in next,tbl do
		local object = parentobject:FindFirstChild(name)
		local events = tbl2.Events
		if object and events then
			print('found object '..object:GetFullName())
			print('found event table')
			for eventName,functionToConnect in next,events do
				object[eventName]:connect(functionToConnect)
				print('connected function to '..eventName)
			end
			connectFunctionsToEvents(tbl2, object)
		end
	end
end

--local function --hide other
local actionMenuEvents = {
	File = {
		Events = {
			MouseButton1Click = function() doThisWhenActionMenuIsParentMouseButton1Click(actionMenu.File) end
		},
		OnClick = {
			Events = {},
			MusicList = {
				Events = {
					MouseButton1Click = function()

					end,
				}
			},
			AddSong = {
				Events = {
					MouseButton1Click = function()
						toggleGUI(other.AddSong, true)
					end,
				}
			},
			Browse = {
				Events = {
					MouseButton1Click = function() end,
				}
			}
		}
	},
	Navigate = {
		Events = {
			MouseButton1Click = function() doThisWhenActionMenuIsParentMouseButton1Click(actionMenu.Navigate) end
		},
		OnClick = {
			Events = {},
			Previous = {
				Events = {
					MouseButton1Click = function() soundFunctions.SkipBack() end,
				}
			},
			Next = {
				Events = {
					MouseButton1Click = function() soundFunctions.SkipForward() end,
				}
			}
		}
	},
	Playlist = {
		Events = {
			MouseButton1Click = function() doThisWhenActionMenuIsParentMouseButton1Click(actionMenu.Playlist) end
		},
		OnClick = {
			Events = {},
			Organize = {
				Events = {
					MouseButton1Click = function() end,
				}
			}
		}
	}
}
connectFunctionsToEvents(actionMenuEvents, actionMenu)

local controlMenuEvents = {
	Play = {
		Events = {
			MouseButton1Click = function() soundFunctions.Play() end,
		}
	},
	Pause = {
		Events = {
			MouseButton1Click = function() soundFunctions.Pause() end,
		}
	},
	Stop = {
		Events = {
			MouseButton1Click = function() soundFunctions.Stop() end,
		}
	},
	DecreaseSpeed = {
		Events = {
			MouseButton1Click = function() soundFunctions.DecreaseSpeed() end,
		}
	},
	IncreaseSpeed = {
		Events = {
			MouseButton1Click = function() soundFunctions.IncreaseSpeed() end,
		}
	},
	SkipBack = {
		Events = {
			MouseButton1Click = function() soundFunctions.SkipBack() end,
		}
	},
	SkipForward = {
		Events = {
			MouseButton1Click = function() soundFunctions.SkipForward() end,
		}
	}
}
connectFunctionsToEvents(controlMenuEvents, controlMenu)

local sliderGuiEvents = {
	Bar = {
		Events = {
			MouseButton1Click = function() end,
		},
		TextButton = {
			Events = {
				MouseButton1Click = function() end,
			}
		}
	}
}
connectFunctionsToEvents(sliderGuiEvents, sliderGui)

local otherEvents = {
	AddSong = {
		Events = {},
		Confirm = {
			Events = {
				MouseButton1Click = function()

				end
			}
		},
		Cancel = {
			Events = {
				MouseButton1Click = function()
					toggleGUI(other.AddSong, false)
					other.AddSong.AudioID.Text = "Audio ID"
				end
			}
		}
	}
}
connectFunctionsToEvents(otherEvents, other)