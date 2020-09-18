
function scanAob(array)
	local scan = createMemScan(true)

	memscan_returnOnlyOneResult(scan, true)
	memscan_firstScan(scan, soExactValue, vtByteArray, rtTruncated, array, nil, 0x00000000, 0xFFFFFFFF, "*W", fsmNotAligned, nil, true, false, false, false)
	memscan_waitTillDone(scan)

	local result = memscan_getOnlyResult(scan)
	if result then
		result = string.format("%x", result)
		result = ("0"):rep(8-#result) .. result
	end

	return result
end