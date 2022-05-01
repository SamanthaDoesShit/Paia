-- Init
AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
AddCSLuaFile("f4menu.lua")
include( "shared.lua" )

local open = false

function GM:PlayerInitialSpawn(ply)
	if (ply:GetData(""))



PrintMessage(3, "Paia is Working \n Hopefully")


--F4 menu stuff

util.AddNetworkString("FMenu")
function GM:ShowSpare2(ply)
    if (open == false) then 
    	open = true
    else
    	open = false
    end
    
    net.Start("FMenu")
        net.WriteBit()
    net.Broadcast()
end