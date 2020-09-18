findAndReplace = {};

function findAndReplace.Double(find, value)
	local ms, found = createMemScan(), {};
	ms.firstScan( soValueBetween, vtDouble, rtTruncated, find, find, 0, 0xFFFFFFFFFFFFFFF, "+W*X-C", fsmAligned, 4, false, false, false, false );
	local fl = createFoundList(ms);
	ms.waitTillDone();
	fl.initialize();
	if (fl.Count > 0) then
		for i=0, fl.Count-1 do
			local address = fl.Address[i];
			if (readDouble(address) == find) then
				writeDouble(address, value);
				do
					local n = #found+1;
					found[n] = address;
				end;
			end;
		end;
	end;
	fl.destroy();
	ms.destroy();
	return found;
end;

function findAndReplace.Float(find, value)
	local ms, found = createMemScan(), {};
	ms.firstScan( soValueBetween, vtFloat, rtTruncated, find, find, 0, 0xFFFFFFFFFFFFFFF, "+W*X-C", fsmAligned, 4, false, false, false, false );
	local fl = createFoundList(ms);
	ms.waitTillDone();
	fl.initialize();
	if (fl.Count > 0) then
		for i=0, fl.Count-1 do
			local address = fl.Address[i];
			if (readFloat(address) == find) then
				writeFloat(address, value);
				do
					local n = #found+1;
					found[n] = address;
				end;
			end;
		end;
	end;
	fl.destroy();
	ms.destroy();
	return found;
end;

function findAndReplace.String(find, value)
	local ms, found = createMemScan(), {};
	ms.firstScan( soValueBetween, vtString, rtTruncated, find, find, 0, 0xFFFFFFFFFFFFFFF, "+W*X-C", fsmAligned, 4, false, false, false, false );
	local fl = createFoundList(ms);
	ms.waitTillDone();
	fl.initialize();
	if (fl.Count > 0) then
		for i=0, fl.Count-1 do
			local address = fl.Address[i];
			if (readString(address) == find) then
				writeString(address, value);
				do
					local n = #found+1;
					found[n] = address;
				end;
			end;
		end;
	end;
	fl.destroy();
	ms.destroy();
	return found;
end;



