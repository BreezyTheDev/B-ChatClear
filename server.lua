prefix = '^5[^1Server Name^5] ^3'


-- CODE 
RegisterCommand("clearchat", function(source, args, rawCommand)
    if IsPlayerAceAllowed(source, "clearchat.staff") then
        TriggerClientEvent("chat:clear", -1, true)
        Message(-1, "The chat has been cleared!")
            local players = GetAllPlayers()
            for i=1, #players do
                if IsPlayerAceAllowed(players[i], 'clearchat.staff') then
                    TriggerClientEvent('chatMessage', players[i], prefix .. 'Player ^5' .. GetPlayerName(source) .. " ^3has cleared message history for the in-game chat!" .. "")
                end
            end
    else
        TriggerClientEvent('chat:addMessage', source, {
            template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(193, 53, 132, 0.6); border-radius: 3px;"><i class="fas fa-user-shield"></i> Error: You do not have permission for this command.</div>',
        });
    end  
end)

RegisterCommand("clearc", function(source, args, rawCommand)
    TriggerClientEvent("chat:clear", source, true)
    Message(source, "You cleared your chat!")
end)

-- FUNCTIONS
function Message(src, msg)
    TriggerClientEvent('chat:addMessage', src, {
        args = { prefix .. msg }
    })
end

function GetAllPlayers()
    local players = {}

    for _, i in ipairs(GetPlayers()) do
        table.insert(players, i)    
    end

    return players
end
