local process,mustend = "RobloxPlayerBeta.exe",true

local gPiD =  getProcessIDFromProcessName

local iswinfocused = getForegroundProcess

local theseBytes = {
      ["Swim"]="8A86A80000005E5DC2040033C03886"
}
addresses = {}

function checkProc()

	PidA = gPiD(process)

	PidB = iswinfocused()

	if PidA == PidB and mustend then

	mustend = false

	openProcess(process)

	t1 = getTickCount()

	for anon,bytes in pairs(theseBytes) do
		scanMem(anon,bytes)
	end

	object_destroy(Memscan)

	Memscan = nil

	t2 = getTickCount()

	print("Average scan time for this computer: "..(t2-t1)*(0.001).." seconds")

    elseif not(PidA) then

	mustend = true

	end

end

function scanMem(name,aob)

	Memscan = AOBScan(aob,"*X*W*C")

	if Memscan ~= nil then scancount = stringlist_getCount(Memscan)

	if scancount == 1 then someaddr = stringlist_getString(Memscan,0)

	print("Successfully found "..name.." address",someaddr)

	else print("Could not find "..name.." because too many results") end

	else print("Unable to find "..name) end

end

showMessage("Created by SimIcy")

showMessage("Bytes Updated After Patches")

t = createTimer(nil,false)
timer_setInterval(t,95)
timer_onTimer(t,checkProc)
timer_setEnabled(t,true)

HotKeys = {VK_INSERT,VK_SPACE,VK_END,VK_HOME,VK_DELETE}

print("Default Keys: Space for Swim")

local insToggled, delToggled, endToggled, homeToggled,numtoggled,esctoggled

null = string.rep("0",8)

function checkKeyPress()
		
		if (isKeyPressed(HotKeys[2])) then
           sleep(40)

		   if not (insToggled) then
              insToggled = true

		      for key, addr in pairs(addresses) do
		          if key=="Swim" and (addr~=null) then
		               print("Succesfully wrote to Swim address")
		               print("Press again to disable.")
		               Swim=addr
		               writeBytes(Swim, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7A, 0x44, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7A, 0xC4)
		          end
              end

		elseif(Swim)
            then insToggled = false
		        writeBytes(Swim, 0x00, 0x46, 0x1C, 0x46, 0x00, 0x00, 0x7A, 0x44, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7A, 0xC4)
	        end
        end
		
end

keytimer= createTimer(nil,false)
timer_setInterval(keytimer,1)
timer_onTimer(keytimer,checkKeyPress)
timer_setEnabled(keytimer,true)