
-- F4Menu
-- FMenu

local Menu

net.Receive("FMenu", function()
	if (menu == nil)
		local Menu = vgui.Creat("DFrame")
	    Menu:SetSize(500, 500)
	    Menu:SetPos(ScrW() / 2 - 250, ScrH() / 2 - 250)
	    Menu:SetTitle("F4 Menu")
	    Menu:SetDraggable(false)
	    Menu:ShowCloseButton(false)
	    Menu:SetDeleteOnClose(false)
	end

	if (net.ReadBit() == 0) then
    	Menu:Hide()
    	gui.EnableScreenClicker(false)
	else
		Menu:Show()
		gui.EnableScreenClicker(true)
	end
end)

