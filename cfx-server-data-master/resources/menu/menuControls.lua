Citizen.CreateThread(function()
	menuToggle = false
	whichMenu = 1
	elementSelected = 1
	while true do
		if IsControlJustReleased(1, 74) then
			if not menuToggle then
				menuToggle = true
				drawMenu()
				notification("~g~MENU ON.")
			else
				whichMenu = 1
				elementSelected = 1
				menuToggle = false
				notification("~r~MENU OFF.")
			end
		end
		if menuToggle then
			if IsControlJustReleased(1, 18) then --todo: once there are a lot of functions optimize it by categorizing them
				functionActive = true
				exitMenu()
				previousMenu()
				if not functionActive then
					changeMenu()
				end
			end
			if IsControlJustReleased(1, 172) then
				changeSelection(-1)
			end
			if IsControlJustReleased(1, 173) then
				changeSelection(1)
			end
		end
		Citizen.Wait(0)
	end
end)