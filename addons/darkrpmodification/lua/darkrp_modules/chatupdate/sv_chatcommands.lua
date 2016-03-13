
local function LOOC(ply, args)
   local DoSay = function(text)
        if text == "" then
            DarkRP.notify(ply, 1, 4, DarkRP.getPhrase("invalid_x", "argument", ""))
            return ""
        end
        DarkRP.talkToRange(ply, "(" .. DarkRP.getPhrase("looc") .. ") " .. ply:Nick(), text, 550)
    end
    return args, DoSay
end
DarkRP.defineChatCommand("looc", LOOC, 1.5)
DarkRP.defineChatCommand("/.", LOOC, 1.5)

local function comms(ply, args)
   if args == "" then
        DarkRP.notify(ply, 1, 4, DarkRP.getPhrase("invalid_x", "argument", ""))
        return ""
    end
    local DoSay = function(text)
        if text == "" then
            DarkRP.notify(ply, 1, 4, DarkRP.getPhrase("invalid_x", "argument", ""))
            return
        end
        for k,v in pairs(player.GetAll()) do
            local col = team.GetColor(ply:Team())
            DarkRP.talkToPerson(v, col, DarkRP.getPhrase("comms") .. " " .. ply:Nick(), Color(0, 255, 255, 255), text, ply)
        end
    end
    return args, DoSay
end
DarkRP.defineChatCommand("coms", comms, 1.5)
DarkRP.defineChatCommand("comms", comms, 1.5)

local function hcomms(ply, args)
   if args == "" then
        DarkRP.notify(ply, 1, 4, DarkRP.getPhrase("invalid_x", "argument", ""))
        return ""
    end
    local DoSay = function(text)
        if text == "" then
            DarkRP.notify(ply, 1, 4, DarkRP.getPhrase("invalid_x", "argument", ""))
            return
        end
        for k,v in pairs(player.GetAll()) do
            local col = team.GetColor(ply:Team())
            DarkRP.talkToPerson(v, col, DarkRP.getPhrase("hcomms") .. " " .. ply:Nick(), Color(0, 255, 255, 255), text, ply)
        end
    end
    return args, DoSay
end
DarkRP.defineChatCommand("hcoms", hcomms, 1.5)
DarkRP.defineChatCommand("hcomms", hcomms, 1.5)
