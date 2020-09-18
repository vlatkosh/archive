local pastebin = {};
local httpservice = game:GetService("HttpService");

--[=[
/////////////////////////////////////////////////////////////////////////////////////////

    -PASTEBIN API

    -Made by Vlatkovski
    
    -It is recommended to read through (http://pastebin.com/api/) first, because this is solely based on it

    -Go and look through the source to know how it works
    (I'm too lazy to make a huge page with text about every function)

    -Go to the end of the script for an example of pastebin.post

/////////////////////////////////////////////////////////////////////////////////////////
--]=]

pastebin.api = "http://www.pastebin.com/api/api_post.php";
pastebin.login = "http://pastebin.com/api/api_login.php";

function pastebin:GetPasteKeyFromUrl(paste_link)
    local fix = paste_link;
    fix = fix:gsub("http://pastebin.com/", "");
    fix = fix:gsub("http://www.pastebin.com/", "");
    fix = fix:gsub("http://pastebin.com/raw.php?i=", "");
    fix = fix:gsub("http://www.pastebin.com/raw.php?i=", "");
    return fix;
end;

function pastebin:GetPasteTextFromKey(paste_key)
    return httpservice:GetAsync(
        "http://www.pastebin.com/raw.php?i="..tostring(paste_key),
        true
    );
end;

function pastebin:GetUserKeyFromDevKey(devKey, userName, userPassword)
    local data = string.format(
        "api_dev_key=%s&"..
        "api_user_name=%s&"..
        "api_user_password=%s",

        devKey, userName, userPassword
    );

    local result = httpservice:PostAsync(
        pastebin.login,
        data,
        2
    );

    --print("Results: " .. result);
    return result;
end;

function pastebin:DeletePaste(devKey, userKey, pasteKey)
    local data = string.format(
        "api_dev_key=%s&"..
        "api_user_key=%s&"..
        "api_paste_key=%s&"..
        "api_option=delete",

        devKey, userKey, pasteKey
    );

    local result = httpservice:PostAsync(
        pastebin.api,
        data,
        2
    );

    --print("Results: " .. result);
    return result;
end;

function pastebin:Post(devKey, userKey, name, code, format, expireDate, private)
    local function uenc(s) return httpservice:UrlEncode(tostring(s)); end;

    userKey, name, code, format, expireDate, private = 
        userKey or "", uenc(name), uenc(code), format or "lua", expireDate or "N", private and tonumber(private) or 0;
    
    --print(type(private), private);

    local data = string.format(
        "api_option=paste&"..

        "api_user_key=%s&"..
        "api_paste_private=%s&"..
        "api_paste_name=%s&"..
        "api_paste_expire_date=%s&"..
        "api_paste_format=%s&"..
        "api_dev_key=%s&"..
        "api_paste_code=%s",

        userKey, private, name, expireDate, format, devKey, code 
    );

    local result = httpservice:PostAsync(
        pastebin.api,
        data,
        2
    );

    local t = {};
        t.url = result;
        t.key = pastebin:GetPasteKeyFromUrl(t.url);
        t.name = name;
        t.code = pastebin:GetPasteTextFromKey(t.key);
        t.text = t.code;
        t.dev_key = devKey;
        t.user_key = userKey;
        t.format = format;
        t.expire_date = expireDate;
        t.private_exact = private;
        t.private = (private == 0 and "Public") or (private == 1 and "Unlisted") or (private == 2 and "Private") or private;
    return t;
end;

--[[
/////////////////////////////////////////////////////////////////////////////////////////
--]]

local devKey = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx" -- Your dev key here
--local userKey = pastebin:GetUserKeyFromDevKey(devKey, "username", "passw0rd");

--[=[
    If you don't enter the username and password of your account, you won't be able to:
    -Delete your pastes
    -Make new pastes through your pastebin account (you'll make new pastes as a guest)
    -Make private pastes
--]=]



local newPaste = pastebin:Post(devKey, userKey, "Paste title by Vlatkovski's API!", "Paste text by Vlatkovski's API!", "lua", "N", 0)

for i,v in next, newPaste do
    print(i, ":", v)
end
