
local lagswitchKey = "Z"
local checkDelayMs = 50

local onSpeed = 5
local offSpeed = 1
local lastSpeed = offSpeed


local function setSpeed(n)
	speedhack_setSpeed(n)
	lastSpeed = n
end

local function checkKeys(timer)
	if isKeyPressed( getfenv()["VK_"..lagswitchKey] ) then
		if lastSpeed ~= onSpeed then
			setSpeed(onSpeed)
		end
	else
		if lastSpeed ~= offSpeed then
			setSpeed(offSpeed)
		end
	end
end


do
	local t = createTimer()
	timer_setInterval(t, checkDelayMs)
	timer_onTimer(t, checkKeys)
	timer_setEnabled(t, true)
end