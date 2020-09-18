debugProcess(2);
autoAssemble([[

    GlobalAlloc(modecheck,7048) //locate space for our codecave

    registerSymbol(health) //define our labels, so we can go to them as addresses
    registerSymbol(cave) // here is our cave.

    label(original)
    label(health)
    label(start)
    label(cave)

    "RobloxPlayerBeta.exe"+2FB278: // our godmode addr.
    health:

    modecheck: //our memory area

    original:
    cave: // the cave were we write, NaN
    db FF FF FF FF FF FF FF FF FF FF FF FF FF FF // NAN

    jmp start // jump back to the begin

    "msvcrt.dll"+26C09: //write into an unprotected region
    jmp modecheck // back to our shit.

    start:

]]);

debugger_onBreakpoint=function() -- debug it change to our code cave.
    if EIP==getAddress'health'then
        hasChangedARegister=true;
        EAX=getAddress'cave';
        changedEAX=true;
    end;
    debug_continueFromBreakpoint(co_run);
    return 1;
end;

debug_setBreakpoint(getAddress'health');