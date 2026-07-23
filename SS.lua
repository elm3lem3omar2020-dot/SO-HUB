fF.CreateToggle({
	Title = "Auto Drago (V2)",
	Description = "turn on for auto kill Forest Pirate & Collect fireflower",
	Default = false,
	Callback = function(Y)
		_G.AutoFireFlowers = Y;
	end,
});
spawn(function()
	while wait(T) do
		if _G.AutoFireFlowers then
			local Y = workspace:FindFirstChild("FireFlowers");
			local d = GetConnectionEnemies("Forest Pirate");
			if d then
				repeat
					wait();
					f.Kill(d, _G.AutoFireFlowers);
				until not _G.AutoFireFlowers or not d.Parent or d.Humanoid.Health <= 0 or Y;
			else
				_tp(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375));
			end;
			if Y then
				for Y, d in pairs(Y:GetChildren()) do
					if d:IsA("Model") and d.PrimaryPart then
						local Y = d.PrimaryPart.Position;
						local R = game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
						local Q = (Y - R).Magnitude;
						if Q <= 100 then
							K:SendKeyEvent(true, "E", false, game);
							wait(1.5);
							K:SendKeyEvent(false, "E", false, game);
						else
							_tp(CFrame.new(Y));
						end;
					end;
				end;
			end;
		end;
	end;
end);
fF.CreateToggle({
	Title = "Auto Drago (V3)",
	Description = "turn on for sea event kill terror shark",
	Default = false,
	Callback = function(Y)
		_G.DragoV3 = Y;
	end,
});
spawn(function()
	while wait(T) do
		pcall(function()
			if _G.DragoV3 then
				repeat
					wait();
					_G.DangerSc = "Lv Infinite";
					_G.SailBoats = true;
					_G.TerrorShark = true;
				until not _G.DragoV3;
				_G.DangerSc = "Lv 1";
				_G.SailBoats = false;
				_G.TerrorShark = false;
			end;
		end);
	end;
end);
fF.CreateToggle({
	Title = "Auto Relic Drago Trial [Beta]",
	Description = "turn on for auto trial v4 you have to COLLECT RELIC by your self",
	Default = false,
	Callback = function(Y)
		_G.Relic123 = Y;
	end,
});
spawn(function()
	while wait(T) do
		if _G.Relic123 then
			pcall(function()
				if workspace.Map:FindFirstChild("DracoTrial") then
					Q.Remotes.DracoTrial:InvokeServer();
					wait(.5);
					repeat
						wait();
						_tp(CFrame.new(-39934.9765625, 10685.359375, 22999.34375));
					until not _G.Relic123 or R.Position == (CFrame.new(-39934.9765625, 10685.359375, 22999.34375)).Position;
					repeat
						wait();
						_tp(CFrame.new(-40511.25390625, 9376.4013671875, 23458.37890625));
					until not _G.Relic123 or R.Position == (CFrame.new(-40511.25390625, 9376.4013671875, 23458.37890625)).Position;
					wait(2.5);
					repeat
						wait();
						_tp(CFrame.new(-39914.65625, 10685.384765625, 23000.177734375));
					until not _G.Relic123 or R.Position == (CFrame.new(-39914.65625, 10685.384765625, 23000.177734375)).Position;
					repeat
						wait();
						_tp(CFrame.new(-40045.83203125, 9376.3984375, 22791.287109375));
					until not _G.Relic123 or R.Position == (CFrame.new(-40045.83203125, 9376.3984375, 22791.287109375)).Position;
					wait(2.5);
					repeat
						wait();
						_tp(CFrame.new(-39908.5, 10685.405273438, 22990.04296875));
					until not _G.Relic123 or R.Position == (CFrame.new(-39908.5, 10685.405273438, 22990.04296875)).Position;
					repeat
						wait();
						_tp(CFrame.new(-39609.5, 9376.400390625, 23472.94335975));
					until not _G.Relic123 or R.Position == (CFrame.new(-39609.5, 9376.400390625, 23472.94335975)).Position;
				else
					local Y = workspace.Map.PrehistoricIsland:FindFirstChild("TrialTeleport");
					if Y and Y:IsA("Part") then
						_tp(CFrame.new(Y.Position));
					end;
				end;
			end);
		end;
	end;
end);
fF.CreateToggle({
	Title = "Auto Train Drago v4",
	Description = "turn on for training Drago race v4 + auto upgrade tier",
	Default = false,
	Callback = function(Y)
		_G.TrainDrago = Y;
	end,
});
spawn(function()
	while wait(T) do
		pcall(function()
			if _G.TrainDrago then
				local Y = { "Venomous Assailant", "Hydra Enforcer" };
				for R = 1, #Y, 1 do
					if (d.Character:FindFirstChild("RaceEnergy")).Value == 1 then
						K:SendKeyEvent(true, "Y", false, game);
						Q.Remotes.CommF_:InvokeServer("UpgradeRace", "Buy", 2);
						_tp(CFrame.new(4620.6157226562, 1002.2954711914, 399.08688354492));
					elseif (d.Character:FindFirstChild("RaceTransformed")).Value == false then
						local d = GetConnectionEnemies(Y);
						if d then
							repeat
								wait();
								f.Kill(d, _G.TrainDrago);
							until _G.TrainDrago == false or d.Humanoid.Health <= 0 or not d.Parent;
						else
							_tp(CFrame.new(4620.6157226562, 1002.2954711914, 399.08688354492));
						end;
					end;
				end;
			end;
		end);
	end;
end);
fF.CreateToggle({
	Title = "Tween to Drago Trials",
	Description = "",
	Default = false,
	Callback = function(Y)
		_G.TpDrago_Prehis = Y;
	end,
});
spawn(function()
	while wait(T) do
		if _G.TpDrago_Prehis then
			local Y = workspace.Map.PrehistoricIsland:FindFirstChild("TrialTeleport");
			if Y and Y:IsA("Part") then
				_tp(CFrame.new(Y.Position));
			end;
		end;
	end;
end);
fF.CreateToggle({
	Title = "Swap Drago Race",
	Description = "",
	Default = false,
	Callback = function(Y)
		_G.BuyDrago = Y;
	end,
});
spawn(function()
	while wait(T) do
		if _G.BuyDrago then
			pcall(function()
				if ((CFrame.new(5814.4272460938, 1208.3267822266, 884.57855224609)).Position - R.Position).Magnitude >= 300 then
					_tp(CFrame.new(5814.4272460938, 1208.3267822266, 884.57855224609));
				else
					_tp(CFrame.new(5814.4272460938, 1208.3267822266, 884.57855224609));
					local Y = { [1] = { NPC = "Dragon Wizard", Command = "DragonRace" } };
					(Q.Modules.Net:FindFirstChild("RF/InteractDragonQuest")):InvokeServer(unpack(Y));
				end;
			end);
		end;
	end;
end);
fF.CreateToggle({
	Title = "Upgrade Dragon Talon With Uzoth",
	Description = "",
	Default = false,
	Callback = function(Y)
		_G.DT_Uzoth = Y;
	end,
});
spawn(function()
	while wait(T) do
		if _G.DT_Uzoth then
			local Y = CFrame.new(5661.89014, 1211.31909, 864.836731, .811413169, -1.36805838e-08, -0.584473014, 4.75227395e-08, 1, 4.25682458e-08, .584473014, -6.23161966e-08, .811413169);
			_tp(Y);
			if (Y.Position - d.Character.HumanoidRootPart.Position).Magnitude <= 25 then
				local Y = { NPC = "Uzoth", Command = "Upgrade" };
				Q.Modules.Net["RF/InteractDragonQuest"]:InvokeServer(Y);
			end;
		end;
	end;
end);
local sF = oz.CreateSection("Volcanic Magnet");
sF.CreateToggle({
	Title = "Auto Craft Volcanic Magnet",
	Description = "turn on for auto farm material and craft volcanic magnet & stop when you have 1 volcanic magnet",
	Default = false,
	Callback = function(Y)
		_G.CraftVM = Y;
	end,
});
sF.CreateButton({ Title = "Craft Volcanic Magnet", Callback = function()
		Q.Remotes.CommF_:InvokeServer("CraftItem", "Craft", "Volcanic Magnet");
	end });
spawn(function()
	while wait(T) do
		pcall(function()
			if _G.CraftVM then
				if GetM("Volcanic Magnet") < 1 then
					if GetM("Scrap Metal") >= 10 and GetM("Blaze Ember") >= 15 then
						Q.Remotes.CommF_:InvokeServer("CraftItem", "Craft", "Volcanic Magnet");
					elseif GetM("Scrap Metal") < 10 then
						local Y = GetConnectionEnemies("Forest Pirate");
						if Y then
							repeat
								wait();
								f.Kill(Y, _G.CraftVM);
							until not _G.CraftVM or not Y.Parent or Y.Humanoid.Health <= 0 or GetM("Scrap Metal") >= 10;
						else
							_tp(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375));
						end;
					elseif GetM("Blaze Ember") < 15 then
						repeat
							wait();
							_G.FarmBlazeEM = true;
						until not _G.CraftVM or GetM("Blaze Ember") >= 15;
						_G.FarmBlazeEM = false;
					end;
				end;
			end;
		end);
	end;
end);
local xF = oz.CreateSection("Prehistoric Island");
local JF = xF.CreateLabel({ Title = " Prehistoric Island Status ", Content = "" });
spawn(function()
	while wait(.2) do
		if workspace.Map:FindFirstChild("PrehistoricIsland") or workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island") then
			JF:SetDesc(" Prehistoric Island : True");
		else
			JF:SetDesc(" Prehistoric Island : False");
		end;
	end;
end);
xF.CreateToggle({
	Title = "Auto Find Prehistoric Island",
	Description = "turn on for finding & tween & start prehistoric island",
	Default = false,
	Callback = function(Y)
		_G.Prehis_Find = Y;
	end,
});
local Yq = nil;
spawn(function()
	while wait() do
		if _G.Prehis_Find then
			pcall(function()
				if not workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island", true) then
					local Y = CheckBoat();
					if not Y then
						local Y = CFrame.new(-16927.451, 9.086, 433.864);
						TeleportToTarget(Y);
						if (Y.Position - d.Character.HumanoidRootPart.Position).Magnitude <= 10 then
							Q.Remotes.CommF_:InvokeServer("BuyBoat", _G.SelectedBoat);
						end;
					else
						if d.Character.Humanoid.Sit == false then
							local d = Y.VehicleSeat.CFrame * CFrame.new(0, 1, 0);
							_tp(d);
						else
							repeat
								wait();
								local Y = CFrame.new(-10000000, 31, 37016.25);
								if CheckEnemiesBoat() or CheckTerrorShark() or CheckPirateGrandBrigade() then
									_tp(CFrame.new(-10000000, 150, 37016.25));
								else
									_tp(CFrame.new(-10000000, 31, 37016.25));
								end;
							until not _G.Prehis_Find or (Y.Position - d.Character.HumanoidRootPart.Position).Magnitude <= 10 or workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island") or d.Character.Humanoid.Sit == false;
							d.Character.Humanoid.Sit = false;
						end;
					end;
				else
					if ((workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island")).CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 then
						_tp((workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island")).CFrame);
					end;
					if workspace.Map:FindFirstChild("PrehistoricIsland", true) or workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island", true) then
						if workspace.Map.PrehistoricIsland.Core.ActivationPrompt:FindFirstChild("ProximityPrompt", true) then
							if d:DistanceFromCharacter(workspace.Map.PrehistoricIsland.Core.ActivationPrompt.CFrame.Position) <= 150 then
								fireproximityprompt(workspace.Map.PrehistoricIsland.Core.ActivationPrompt.ProximityPrompt, math.huge);
								K:SendKeyEvent(true, "E", false, game);
								wait(1.5);
								K:SendKeyEvent(false, "E", false, game);
							end;
							_tp(workspace.Map.PrehistoricIsland.Core.ActivationPrompt.CFrame);
						end;
					end;
				end;
			end);
		end;
	end;
end);
xF.CreateToggle({
	Title = "Auto Patch Prehistoric Event",
	Description = "turn on for auto patch volcano + kill aura lava golems + auto remove lava",
	Default = false,
	Callback = function(Y)
		_G.Prehis_Skills = Y;
	end,
});
spawn(function()
	while wait() do
		if _G.Prehis_Skills then
			local Y = game.Workspace.Map:FindFirstChild("PrehistoricIsland");
			if Y then
				for Y, d in pairs(Y:GetDescendants()) do
					if d:IsA("Part") and (d.Name:lower()):find("lava") then
						d:Destroy();
					end;
					if d:IsA("MeshPart") and (d.Name:lower()):find("lava") then
						d:Destroy();
					end;
				end;
				local d = game.Workspace.Map.PrehistoricIsland.Core:FindFirstChild("InteriorLava");
				if d and d:IsA("Model") then
					d:Destroy();
				end;
				local R = workspace.Map:FindFirstChild("PrehistoricIsland");
				if R then
					local Y = workspace.Map.PrehistoricIsland:FindFirstChild("TrialTeleport");
					for d, R in pairs(R:GetDescendants()) do
						if R.Name == "TouchInterest" then
							if not (Y and R:IsDescendantOf(Y)) then
								R.Parent:Destroy();
							end;
						end;
					end;
				end;
			end;
		end;
	end;
end);
spawn(function()
	while wait() do
		pcall(function()
			if _G.Prehis_Skills then
				if workspace.Enemies:FindFirstChild("Lava Golem") then
					local Y = GetConnectionEnemies("Lava Golem");
					if Y then
						repeat
							wait();
							f.Kill(Y, _G.Prehis_Skills);
							Y.Humanoid:ChangeState(15);
						until not _G.Prehis_Skills or not Y.Parent or Y.Humanoid.Health <= 0;
					end;
				end;
				for Y, R in pairs(game.Workspace.Map.PrehistoricIsland.Core.VolcanoRocks:GetChildren()) do
					if R:FindFirstChild("VFXLayer") then
						if (R:FindFirstChild("VFXLayer")).At0.Glow.Enabled == true or R.VFXLayer.At0.Glow.Enabled == true then
							repeat
								wait();
								_tp(R.VFXLayer.CFrame);
								if R.VFXLayer.At0.Glow.Enabled == true and d:DistanceFromCharacter(R.VFXLayer.CFrame.Position) <= 150 then
									MousePos = R.VFXLayer.CFrame.Position;
									Useskills("Melee", "Z");
									wait(.5);
									Useskills("Melee", "X");
									wait(.5);
									Useskills("Melee", "C");
									wait(.5);
									Useskills("Blox Fruit", "Z");
									wait(.5);
									Useskills("Blox Fruit", "X");
									wait(.5);
									Useskills("Blox Fruit", "C");
								end;
							until not _G.Prehis_Skills or (R:FindFirstChild("VFXLayer")).At0.Glow.Enabled == false or R.VFXLayer.At0.Glow.Enabled == false;
						end;
					end;
				end;
			end;
		end);
	end;
end);
xF.CreateToggle({
	Title = "Auto Collect Dino Bones",
	Description = "",
	Default = false,
	Callback = function(Y)
		_G.Prehis_DB = Y;
	end,
});
spawn(function()
	while wait(T) do
		pcall(function()
			if _G.Prehis_DB then
				if workspace:FindFirstChild("DinoBone") then
					for Y, d in pairs(workspace:GetChildren()) do
						if d.Name == "DinoBone" then
							_tp(d.CFrame);
						end;
					end;
				end;
			end;
		end);
	end;
end);
xF.CreateToggle({
	Title = "Auto Collect Dragon Eggs",
	Description = "",
	Default = false,
	Callback = function(Y)
		_G.Prehis_DE = Y;
	end,
});
spawn(function()
	while wait(T) do
		pcall(function()
			if _G.Prehis_DE then
				if workspace.Map.PrehistoricIsland.Core.SpawnedDragonEggs:FindFirstChild("DragonEgg") then
					_tp((workspace.Map.PrehistoricIsland.Core.SpawnedDragonEggs:FindFirstChild("DragonEgg")).Molten.CFrame);
					fireproximityprompt(workspace.Map.PrehistoricIsland.Core.SpawnedDragonEggs.DragonEgg.Molten.ProximityPrompt, 30);
				end;
			end;
		end);
	end;
end);
xF.CreateToggle({
	Title = "Auto Reset When Complete Volcano",
	Description = "Reset When Complete Volcano not collect dino bones and else..",
	Default = false,
	Callback = function(Y)
		_G.ResetPH = Y;
	end,
});
spawn(function()
	while wait(T) do
		pcall(function()
			if _G.ResetPH then
				local Y = workspace.Map.PrehistoricIsland:FindFirstChild("TrialTeleport");
				if Y and Y:FindFirstChild("TouchInterest") then
					d.Character.Humanoid.Health = 0;
				else
					if workspace:FindFirstChild("DinoBone") then
						for Y, d in pairs(workspace:GetChildren()) do
							if d.Name == "DinoBone" then
								_tp(d.CFrame);
							end;
						end;
					end;
				end;
			end;
		end);
	end;
end);
local dq = Zz.CreateSection("Dungeon Event / Raiding");
local Rq = dq.CreateLabel({ Title = " Raiding Status ", Content = "" });
spawn(function()
	while wait(.2) do
		pcall(function()
			if d.PlayerGui.Main.Timer.Visible == true then
				Rq:SetDesc(" Raiding Statud : True");
			else
				Rq:SetDesc(" Raiding Statud : False");
			end;
		end);
	end;
end);
j = {
		"Flame",
		"Ice",
		"Quake",
		"Light",
		"Dark",
		"String",
		"Rumble",
		"Magma",
		"Human: Buddha",
		"Sand",
		"Bird: Phoenix",
		"Dough",
	};
dq.CreateDropdown({
	Title = "Select Chip",
	Description = "",
	Values = j,
	Default = "Flame",
	Multi = false,
	Callback = function(Y)
		_G.SelectChip = Y;
	end,
});
dq.CreateToggle({
	Title = "Auto Select Dungeon Chip",
	Description = "",
	Default = false,
	Callback = function(Y)
		_G.AutoSelectDungeon = Y;
	end,
});
spawn(function()
	while wait(T) do
		if _G.AutoSelectDungeon then
			pcall(function()
				if GetBP("Flame-Flame") then
					_G.SelectChip = "Flame";
				elseif GetBP("Ice-Ice") then
					_G.SelectChip = "Ice";
				elseif GetBP("Quake-Quake") then
					_G.SelectChip = "Quake";
				elseif GetBP("Light-Light") then
					_G.SelectChip = "Light";
				elseif GetBP("Dark-Dark") then
					_G.SelectChip = "Dark";
				elseif GetBP("String-String") then
					_G.SelectChip = "String";
				elseif GetBP("Rumble-Rumble") then
					_G.SelectChip = "Rumble";
				elseif GetBP("Magma-Magma") then
					_G.SelectChip = "Magma";
				elseif GetBP("Human-Human: Buddha Fruit") then
					_G.SelectChip = "Human: Buddha";
				elseif GetBP("Dough-Dough") then
					_G.SelectChip = "Dough";
				elseif GetBP("Sand-Sand") then
					_G.SelectChip = "Sand";
				elseif GetBP("Bird-Bird: Phoenix") then
					_G.SelectChip = "Bird: Phoenix";
				else
					_G.SelectChip = "Ice";
				end;
			end);
		end;
	end;
end);
dq.CreateButton({ Title = "Buy Dungeon Chips [Beli]", Callback = function()
		if not GetBP("Special Microchip") then
			Q.Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip);
		end;
	end });
dq.CreateButton({ Title = "Buy Dungeon Chips [Devil Fruit]", Callback = function()
		if GetBP("Special Microchip") then
			return;
		end;
		local Y = {};
		local d = {};
		for d, R in next, (Q:WaitForChild("Remotes")).CommF_:InvokeServer("GetFruits") do
			if R.Price <= 490000 then
				table.insert(Y, R.Name);
			end;
		end;
		for Y, d in pairs(Y) do
			for Y, R in pairs(j) do
				if not GetBP("Special Microchip") then
					Q.Remotes.CommF_:InvokeServer("LoadFruit", tostring(d));
					Q.Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip);
				end;
			end;
		end;
	end });
local Qq = Zz.CreateSection("Raiding Menu");
Qq.CreateToggle({
	Title = "Auto Start Raid",
	Description = "",
	Default = false,
	Callback = function(Y)
		_G.Auto_StartRaid = Y;
	end,
});
spawn(function()
	while wait(T) do
		pcall(function()
			if _G.Auto_StartRaid then
				if d.PlayerGui.Main.TopHUDList.RaidTimer.Visible == false then
					if GetBP("Special Microchip") then
						if World2 then
							_tp(CFrame.new(-6438.73535, 250.645355, -4501.50684));
							fireclickdetector(workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector);
						elseif World3 then
							Q.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-5097.93164, 316.447021, -3142.66602, -0.405007899, -4.31682743e-08, .914313197, -1.90943332e-08, 1, 3.8755779e-08, -0.914313197, -1.76180437e-09, -0.405007899));
							fireclickdetector(workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector);
						end;
					end;
				end;
			end;
		end);
	end;
end);
Qq.CreateToggle({
	Title = "Teleport To Lab",
	Description = "",
	Default = false,
	Callback = function(Y)
		_G.TpLab = Y;
		spawn(function()
			while _G.TpLab do
				wait(T);
				if _G.TpLab then
					if World2 then
						_tp(CFrame.new(-6438.73535, 250.645355, -4501.50684));
					elseif World3 then
						_tp(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, .378151238, 9.7681621e-08, -0.925743818));
					end;
				end;
			end;
		end);
	end,
});
Qq.CreateToggle({
	Title = "Auto Complete Raid [Safety]",
	Description = "",
	Default = false,
	Callback = function(Y)
		_G.Raiding = Y;
	end,
});
spawn(function()
	pcall(function()
		while wait(T) do
			if _G.Raiding then
				if d.PlayerGui.Main.TopHUDList.RaidTimer.Visible == true then
					local Y = {
							"Island5",
							"Island 4",
							"Island 3",
							"Island 2",
							"Island 1",
						};
					for Y, d in ipairs(Y) do
						local R = (game:GetService("Workspace"))._WorldOrigin.Locations:FindFirstChild(d);
						if R then
							for Y, d in pairs(workspace.Enemies:GetChildren()) do
								if d:FindFirstChild("Humanoid") or d:FindFirstChild("HumanoidRootPart") then
									if d.Humanoid.Health > 0 then
										repeat
											wait();
											f.Kill(d, _G.Raiding);
											NextIs = false;
										until not _G.Raiding or not d.Parent or d.Humanoid.Health <= 0;
										NextIs = true;
									end;
								end;
							end;
						end;
					end;
				else
					NextIs = false;
				end;
			else
				NextIs = false;
			end;
		end;
	end);
end);
Qq.CreateToggle({
	Title = "Kill Aura",
	Description = "",
	Default = false,
	Callback = function(Y)
		_G.KillH = Y;
	end,
});
spawn(function()
	while wait(T) do
		if _G.KillH then
			for Y, R in pairs(workspace.Enemies:GetChildren()) do
				if f.Alive(R) then
					pcall(function()
						repeat
							wait(T);
							sethiddenproperty(d, "SimulationRadius", math.huge);
							R:BreakJoints();
							R.Humanoid.Health = 0;
							R.HumanoidRootPart.CanCollide = false;
						until not _G.KillH or not R.Parent or R.Humanoid.Health <= 0;
					end);
				end;
			end;
		end;
	end;
end);
Qq.CreateToggle({
	Title = "Auto Next Island",
	Description = "",
	Default = false,
	Callback = function(Y)
		NextIs = Y;
	end,
});
spawn(function()
	while wait(T) do
		if NextIs then
			if d.PlayerGui.Main.TopHUDList.RaidTimer.Visible == true then
				if workspace._WorldOrigin.Locations:FindFirstChild("Island 5") then
					_tp((workspace._WorldOrigin.Locations:FindFirstChild("Island 5")).CFrame * CFrame.new(0, 50, 100));
				elseif workspace._WorldOrigin.Locations:FindFirstChild("Island 4") then
					_tp((workspace._WorldOrigin.Locations:FindFirstChild("Island 4")).CFrame * CFrame.new(0, 50, 100));
				elseif workspace._WorldOrigin.Locations:FindFirstChild("Island 3") then
					_tp((workspace._WorldOrigin.Locations:FindFirstChild("Island 3")).CFrame * CFrame.new(0, 50, 100));
				elseif workspace._WorldOrigin.Locations:FindFirstChild("Island 2") then
					_tp((workspace._WorldOrigin.Locations:FindFirstChild("Island 2")).CFrame * CFrame.new(0, 50, 100));
				elseif workspace._WorldOrigin.Locations:FindFirstChild("Island 1") then
					_tp((workspace._WorldOrigin.Locations:FindFirstChild("Island 1")).CFrame * CFrame.new(0, 50, 100));
				end;
			end;
		end;
	end;
end);
Qq.CreateToggle({
	Title = "Auto Awakening",
	Description = "",
	Default = false,
	Callback = function(Y)
		_G.Auto_Awakener = Y;
	end,
});
spawn(function()
	while wait(T) do
		pcall(function()
			if _G.Auto_Awakener then
				Q.Remotes.CommF_:InvokeServer("Awakener", "Check");
				Q.Remotes.CommF_:InvokeServer("Awakener", "Awaken");
			end;
		end);
	end;
end);
local rq = Tz.CreateSection("Combat / Aimbot");
__indexPlayer = rq.CreateLabel({ Title = "All Players On Server :", Content = "" });
spawn(function()
	while wait(T) do
		pcall(function()
			for Y, d in pairs((game:GetService("Players")):GetPlayers()) do
				if Y == 12 then
					__indexPlayer:SetDesc("All Players :" .. (" " .. (Y .. " / 12 [Max]")));
				elseif Y == 1 then
					__indexPlayer:SetDesc("All Players  :" .. (" " .. (Y .. " / 12")));
				else
					__indexPlayer:SetDesc("All Players  :" .. (" " .. (Y .. " / 12")));
				end;
			end;
		end);
	end;
end);
__AimBotTurn = rq.CreateLabel({ Title = "Aimbot Status :", Content = "" });
local aq = { "AimBots Skill", "Auto Aimbots" };
Checking_AimStatus = function()
		if _G.AimCam then
			return "Aimbot Camera";
		else
			return "";
		end;
		if _G.AimbotGun then
			return "Aimbot Guns";
		else
			return "";
		end;
	end;
spawn(function()
	while wait(.2) do
		pcall(function()
			if _G.AimMethod then
				__AimBotTurn:SetDesc("Aimbot - Skills : True");
			elseif (_G.AimCam or _G.AimbotGun) and _G.AimMethod then
				__AimBotTurn:SetDesc("Aimbot - Skills |" .. (Checking_AimStatus() .. " :True"));
			else
				__AimBotTurn:SetDesc("Aimbot - Skills : False");
			end;
		end);
	end;
end);
local wq = {};
for Y, d in pairs((game:GetService("Players")):GetChildren()) do
	table.insert(wq, d.Name);
end;
rq.CreateDropdown({
	Title = "Choose Players",
	Description = "",
	Values = wq,
	Default = false,
	Multi = false,
	Callback = function(Y)
		_G.PlayersList = Y;
	end,
});
rq.CreateToggle({
	Title = "Teleport to choose players",
	Description = "",
	Default = false,
	Callback = function(Y)
		_G.TpPly = Y;
		spawn(function()
			pcall(function()
				while _G.TpPly do
					wait();
					_tp((game:GetService("Players"))[_G.PlayersList].Character.HumanoidRootPart.CFrame);
				end;
			end);
		end);
	end,
});
rq.CreateToggle({
	Title = "Spectate Choose Players",
	Description = "",
	Default = false,
	Callback = function(Y)
		SpectatePlys = Y;
		spawn(function()
			repeat
				task.wait(.1);
				workspace.Camera.CameraSubject = ((game:GetService("Players")):FindFirstChild(_G.PlayersList)).Character.Humanoid;
			until not SpectatePlys;
			workspace.Camera.CameraSubject = d.Character.Humanoid;
		end);
	end,
});
rq.CreateDropdown({
	Title = "Choose Aim Method",
	Description = "",
	Values = aq,
	Default = false,
	Multi = false,
	Callback = function(Y)
		ABmethod = Y;
	end,
});
rq.CreateToggle({
	Title = "Aimbot Method Skills",
	Description = "",
	Default = false,
	Callback = function(Y)
		_G.AimMethod = Y;
	end,
});
task.spawn(function()
	while task.wait() do
		pcall(function()
			if _G.AimMethod and ABmethod == "AimBots Skill" then
				for Y, d in pairs((game:GetService("Players")):GetPlayers()) do
					if d.Name == _G.PlayersList and d.Team ~= game.Players.LocalPlayer.Team then
						MousePos = (d.Character:FindFirstChild("HumanoidRootPart")).Position;
					end;
				end;
			end;
		end);
	end;
end);
task.spawn(function()
	while task.wait() do
		pcall(function()
			if _G.AimMethod and ABmethod == "Auto Aimbots" then
				local Y = math.huge;
				for R, Q in pairs((game:GetService("Players")):GetPlayers()) do
					if Q.Name ~= d.Name and Q.Team ~= game.Players.LocalPlayer.Team then
						local R = Q:DistanceFromCharacter(d.Character.HumanoidRootPart.Position);
						if R < Y then
							Y = R;
							MousePos = (Q.Character:FindFirstChild("HumanoidRootPart")).Position;
						end;
					end;
				end;
			end;
		end);
	end;
end);
rq.CreateToggle({
	Title = "Aimbot Camera Closet Players",
	Description = "",
	Default = false,
	Callback = function(Y)
		_G.AimCam = Y;
	end,
});
task.spawn(function()
	while task.wait(T) do
		pcall(function()
			if _G.AimCam then
				local R = workspace.CurrentCamera;
				closestplayer = function()
						local R = math.huge;
						local Q = nil;
						for Y, r in next, Y:GetPlayers() do
							if r ~= d then
								if r.Character and (r.Character:FindFirstChild("Head") and (_G.AimCam and r.Character.Humanoid.Health > 0)) then
									local Y = (r.Character.Head.Position - d.Character.Head.Position).Magnitude;
									if Y < R then
										R = Y;
										Q = r;
									end;
								end;
							end;
						end;
						return Q;
					end;
				repeat
					task.wait();
					R.CFrame = CFrame.new(R.CFrame.Position, (closestplayer()).Character.HumanoidRootPart.Position);
				until _G.AimCam == false or Mag > dist;
			end;
		end);
	end;
end);
local Fq = Tz.CreateSection("LocalPlayer Settings / Misc");
Fq.CreateToggle({
	Title = "Instance Mink V3 [ INF ]",
	Description = "turn on for make mink v3 infinity",
	Default = false,
	Callback = function(Y)
		InfAblities = Y;
	end,
});
spawn(function()
	while wait(.2) do
		pcall(function()
			if InfAblities then
				if not d.Character.HumanoidRootPart:FindFirstChild("Agility") then
					local Y = Q.FX.Agility:Clone();
					Y.Name = "Agility";
					Y.Parent = d.Character.HumanoidRootPart;
				end;
			else
				d.Character.HumanoidRootPart.Agility:Destroy();
			end;
		end);
	end;
end);
Fq.CreateToggle({
	Title = "Instance Energy [ INF ]",
	Description = "turn on for make energy infinity",
	Default = false,
	Callback = function(Y)
		infEnergy = Y;
		if Y then
			getInfinity_Ability("Energy", infEnergy);
		end;
	end,
});
Fq.CreateToggle({
	Title = "Instance Soru [ INF ]",
	Description = "turn on for make soru infinity",
	Default = false,
	Callback = function(Y)
		_G.InfSoru = Y;
		if Y then
			getInfinity_Ability("Soru", _G.InfSoru);
		end;
	end,
});
Fq.CreateToggle({
	Title = "Instance Observation Range [ INF ]",
	Description = "turn on for make observation range infinity",
	Default = false,
	Callback = function(Y)
		_G.InfiniteObRange = Y;
		if Y then
			getInfinity_Ability("Observation", _G.InfiniteObRange);
		end;
	end,
});
local Mq = Tz.CreateSection("Settings Combat / Aimbot Settings");
Mq.CreateToggle({
	Title = "Ignore Same Teams",
	Description = "turn on for ignore not aimbot same team",
	Default = false,
	Callback = function(Y)
		_G.NoAimTeam = Y;
	end,
});
Mq.CreateToggle({
	Title = "Accept Allies",
	Description = "turn on for auto accept ally",
	Default = false,
	Callback = function(Y)
		_G.AcceptAlly = Y;
	end,
});
spawn(function()
	while wait(T) do
		if _G.AcceptAlly then
			pcall(function()
				for Y, R in pairs(Y:GetChildren()) do
					if R.Name ~= d.Name and (R:FindFirstChild("Humanoid") and R:FindFirstChild("HumanoidRootPart")) then
						((Q:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("AcceptAlly", R.Name);
					end;
				end;
			end);
		end;
	end;
end);
local Kq = Tz.CreateSection("Esp Items / Entity / Island");
function isnil(Y)
	return Y == nil;
end;
local function nq(Y)
	return math.floor(tonumber(Y) + .5);
end;
Number = math.random(1, 1000000);
EspPly = function()
		for Y, d in next, game.Players:GetChildren() do
			pcall(function()
				if not isnil(d.Character) then
					if PlayerEsp then
						if not isnil(d.Character.Head) and not d.Character.Head:FindFirstChild("NameEsp" .. Number) then
							local Y = Instance.new("BillboardGui", d.Character.Head);
							Y.Name = "NameEsp" .. Number;
							Y.ExtentsOffset = Vector3.new(0, 1, 0);
							Y.Size = UDim2.new(1, 200, 1, 30);
							Y.Adornee = d.Character.Head;
							Y.AlwaysOnTop = true;
							local R = Instance.new("TextLabel", Y);
							R.Font = Enum.Font.Code;
							R.FontSize = "Size14";
							R.TextWrapped = true;
							R.Text = d.Name .. (" \n" .. (nq(((game:GetService("Players")).LocalPlayer.Character.Head.Position - d.Character.Head.Position).Magnitude / 3) .. " M"));
							R.Size = UDim2.new(1, 0, 1, 0);
							R.TextYAlignment = "Top";
							R.BackgroundTransparency = 1;
							R.TextStrokeTransparency = .5;
							if d.Team == I then
								R.TextColor3 = Color3.new(0, 0, 254);
							else
								R.TextColor3 = Color3.new(255, 0, 0);
							end;
						else
							d.Character.Head["NameEsp" .. Number].TextLabel.Text = d.Data.Level.Value .. (" | " .. (d.Name .. (" | " .. (nq(((game:GetService("Players")).LocalPlayer.Character.Head.Position - d.Character.Head.Position).Magnitude / 3) .. (" M\nHealth : " .. (nq((d.Character.Humanoid.Health * 100) / d.Character.Humanoid.MaxHealth) .. "%"))))));
						end;
					else
						if d.Character.Head:FindFirstChild("NameEsp" .. Number) then
							(d.Character.Head:FindFirstChild("NameEsp" .. Number)):Destroy();
						end;
					end;
				end;
			end);
		end;
	end;
LocationEsp = function()
		for Y, d in next, workspace._WorldOrigin.Locations:GetChildren() do
			pcall(function()
				if IslandESP then
					if d.Name ~= "Sea" then
						if not d:FindFirstChild("NameEsp") then
							local Y = Instance.new("BillboardGui", d);
							Y.Name = "NameEsp";
							Y.ExtentsOffset = Vector3.new(0, 1, 0);
							Y.Size = UDim2.new(1, 200, 1, 30);
							Y.Adornee = d;
							Y.AlwaysOnTop = true;
							local R = Instance.new("TextLabel", Y);
							R.Font = Enum.Font.Code;
							R.FontSize = "Size14";
							R.TextWrapped = true;
							R.Size = UDim2.new(1, 0, 1, 0);
							R.TextYAlignment = "Top";
							R.BackgroundTransparency = 1;
							R.TextStrokeTransparency = .5;
							R.TextColor3 = Color3.fromRGB(98, 252, 252);
						else
							d.NameEsp.TextLabel.Text = d.Name .. ("   \n" .. (nq(((game:GetService("Players")).LocalPlayer.Character.Head.Position - d.Position).Magnitude / 3) .. " M"));
						end;
					end;
				else
					if d:FindFirstChild("NameEsp") then
						(d:FindFirstChild("NameEsp")):Destroy();
					end;
				end;
			end);
		end;
	end;
DevEsp = function()
		for Y, d in next, workspace:GetChildren() do
			pcall(function()
				if DevilFruitESP then
					if string.find(d.Name, "Fruit") then
						if not d.Handle:FindFirstChild("NameEsp" .. Number) then
							local Y = Instance.new("BillboardGui", d.Handle);
							Y.Name = "NameEsp" .. Number;
							Y.ExtentsOffset = Vector3.new(0, 1, 0);
							Y.Size = UDim2.new(1, 200, 1, 30);
							Y.Adornee = d.Handle;
							Y.AlwaysOnTop = true;
							local R = Instance.new("TextLabel", Y);
							R.Font = Enum.Font.Code;
							R.FontSize = "Size14";
							R.TextWrapped = true;
							R.Size = UDim2.new(1, 0, 1, 0);
							R.TextYAlignment = "Top";
							R.BackgroundTransparency = 1;
							R.TextStrokeTransparency = .5;
							R.TextColor3 = Color3.fromRGB(255, 255, 255);
							R.Text = d.Name .. (" \n" .. (nq(((game:GetService("Players")).LocalPlayer.Character.Head.Position - d.Handle.Position).Magnitude / 3) .. " M"));
						else
							d.Handle["NameEsp" .. Number].TextLabel.Text = "[" .. (d.Name .. ("]" .. ("   \n" .. (nq(((game:GetService("Players")).LocalPlayer.Character.Head.Position - d.Handle.Position).Magnitude / 3) .. " M"))));
						end;
					end;
				else
					if d.Handle:FindFirstChild("NameEsp" .. Number) then
						(d.Handle:FindFirstChild("NameEsp" .. Number)):Destroy();
					end;
				end;
			end);
		end;
	end;
flowerEsp = function()
		for Y, d in pairs(workspace:GetChildren()) do
			pcall(function()
				if d.Name == "Flower2" or d.Name == "Flower1" then
					if FlowerESP then
						if not d:FindFirstChild("NameEsp" .. Number) then
							local Y = Instance.new("BillboardGui", d);
							Y.Name = "NameEsp" .. Number;
							Y.ExtentsOffset = Vector3.new(0, 1, 0);
							Y.Size = UDim2.new(1, 200, 1, 30);
							Y.Adornee = d;
							Y.AlwaysOnTop = true;
							local R = Instance.new("TextLabel", Y);
							R.Font = Enum.Font.Code;
							R.FontSize = "Size14";
							R.TextWrapped = true;
							R.Size = UDim2.new(1, 0, 1, 0);
							R.TextYAlignment = "Top";
							R.BackgroundTransparency = 1;
							R.TextStrokeTransparency = .5;
							R.TextColor3 = Color3.fromRGB(88, 214, 252);
							if d.Name == "Flower1" then
								R.Text = "Blue Flower" .. (" \n" .. (nq(((game:GetService("Players")).LocalPlayer.Character.Head.Position - d.Position).Magnitude / 3) .. " M"));
								R.TextColor3 = Color3.fromRGB(88, 214, 252);
							end;
							if d.Name == "Flower2" then
								R.Text = "Red Flower" .. (" \n" .. (nq(((game:GetService("Players")).LocalPlayer.Character.Head.Position - d.Position).Magnitude / 3) .. " M"));
								R.TextColor3 = Color3.fromRGB(88, 214, 252);
							end;
						else
							d["NameEsp" .. Number].TextLabel.Text = d.Name .. ("   \n" .. (nq(((game:GetService("Players")).LocalPlayer.Character.Head.Position - d.Position).Magnitude / 3) .. " M"));
						end;
					else
						if d:FindFirstChild("NameEsp" .. Number) then
							(d:FindFirstChild("NameEsp" .. Number)):Destroy();
						end;
					end;
				end;
			end);
		end;
	end;
EventIslandEsp = function()
		for Y, R in pairs(workspace._WorldOrigin.Locations:GetChildren()) do
			pcall(function()
				if EspEventIsland then
					if R.Name == "Mirage Island" or R.Name == "Prehistoric Island" or R.Name == "Kitsune Island" then
						if not R:FindFirstChild("NameEsp") then
							local Y = Instance.new("BillboardGui", R);
							Y.Name = "NameEsp";
							Y.ExtentsOffset = Vector3.new(0, 1, 0);
							Y.Size = UDim2.new(1, 200, 1, 30);
							Y.Adornee = R;
							Y.AlwaysOnTop = true;
							local d = Instance.new("TextLabel", Y);
							d.Font = "Code";
							d.FontSize = "Size14";
							d.TextWrapped = true;
							d.Size = UDim2.new(1, 0, 1, 0);
							d.TextYAlignment = "Top";
							d.BackgroundTransparency = 1;
							d.TextStrokeTransparency = .5;
							d.TextColor3 = Color3.fromRGB(80, 245, 245);
						else
							R.NameEsp.TextLabel.Text = R.Name .. ("   \n" .. (nq((d.Character.Head.Position - R.Position).Magnitude / 3) .. " M"));
						end;
					end;
				elseif R:FindFirstChild("NameEsp") then
					(R:FindFirstChild("NameEsp")):Destroy();
				end;
			end);
		end;
	end;
gearEsp = function()
		for Y, R in pairs(workspace.Map.MysticIsland:GetDescendants()) do
			pcall(function()
				if ESPGear then
					if R.Name == "Part" and R.Material == Enum.Material.Neon then
						if not R:FindFirstChild("NameEsp") then
							local Y = Instance.new("BillboardGui", R);
							Y.Name = "NameEsp";
							Y.ExtentsOffset = Vector3.new(0, 1, 0);
							Y.Size = UDim2.new(1, 200, 1, 30);
							Y.Adornee = R;
							Y.AlwaysOnTop = true;
							local d = Instance.new("TextLabel", Y);
							d.Font = "Code";
							d.FontSize = "Size14";
							d.TextWrapped = true;
							d.Size = UDim2.new(1, 0, 1, 0);
							d.TextYAlignment = "Top";
							d.BackgroundTransparency = 1;
							d.TextStrokeTransparency = .5;
							d.TextColor3 = Color3.fromRGB(80, 245, 245);
						else
							R.NameEsp.TextLabel.Text = "Gear" .. ("   \n" .. (nq((d.Character.Head.Position - R.Position).Magnitude / 3) .. " M"));
						end;
					end;
				else
					if R:FindFirstChild("NameEsp") then
						(R:FindFirstChild("NameEsp")):Destroy();
					end;
				end;
			end);
		end;
	end;
AdvanFruitEsp = function()
		if advanEsp == true then
			for Y, R in pairs(Q.NPCs:GetChildren()) do
				if R.Name == "Advanced Fruit Dealer" then
					if not workspace:FindFirstChild("Adv") then
						Adv = Instance.new("Part");
						Adv.Name = "Adv";
						Adv.Transparency = 1;
						Adv.Size = Vector3.new(1, 1, 1);
						Adv.Anchored = true;
						Adv.CanCollide = false;
						Adv.Parent = workspace;
						Adv.CFrame = R.HumanoidRootPart.CFrame;
					elseif workspace:FindFirstChild("Adv") then
						if not Adv:FindFirstChild("NameEsp") then
							local Y = Instance.new("BillboardGui", Adv);
							Y.Name = "NameEsp";
							Y.ExtentsOffset = Vector3.new(0, 1, 0);
							Y.Size = UDim2.new(1, 200, 1, 30);
							Y.Adornee = Adv;
							Y.AlwaysOnTop = true;
							local d = Instance.new("TextLabel", Y);
							d.Font = "Code";
							d.FontSize = "Size14";
							d.TextWrapped = true;
							d.Size = UDim2.new(1, 0, 1, 0);
							d.TextYAlignment = "Top";
							d.BackgroundTransparency = 1;
							d.TextStrokeTransparency = .5;
							d.TextColor3 = Color3.fromRGB(80, 245, 245);
						else
							Adv.NameEsp.TextLabel.Text = R.Name .. ("   \n" .. (nq((d.Character.Head.Position - R.HumanoidRootPart.Position).Magnitude / 3) .. " M"));
						end;
					end;
				end;
			end;
		else
			if workspace:FindFirstChild("Adv") then
				(workspace:FindFirstChild("Adv")):Destroy();
			end;
		end;
	end;
HakiClorEsp = function()
		if ColorEsp == true then
			for Y, R in pairs(Q.NPCs:GetChildren()) do
				if R.Name == "Barista Cousin" then
					if not workspace:FindFirstChild("Gay") then
						Gay = Instance.new("Part");
						Gay.Name = "Gay";
						Gay.Transparency = 1;
						Gay.Size = Vector3.new(1, 1, 1);
						Gay.Anchored = true;
						Gay.CanCollide = false;
						Gay.Parent = workspace;
						Gay.CFrame = R.HumanoidRootPart.CFrame;
					elseif workspace:FindFirstChild("Gay") then
						if not Gay:FindFirstChild("NameEsp") then
							local Y = Instance.new("BillboardGui", Gay);
							Y.Name = "NameEsp";
							Y.ExtentsOffset = Vector3.new(0, 1, 0);
							Y.Size = UDim2.new(1, 200, 1, 30);
							Y.Adornee = Gay;
							Y.AlwaysOnTop = true;
							local d = Instance.new("TextLabel", Y);
							d.Font = "Code";
							d.FontSize = "Size14";
							d.TextWrapped = true;
							d.Size = UDim2.new(1, 0, 1, 0);
							d.TextYAlignment = "Top";
							d.BackgroundTransparency = 1;
							d.TextStrokeTransparency = .5;
							d.TextColor3 = Color3.fromRGB(80, 245, 245);
						else
							Gay.NameEsp.TextLabel.Text = R.Name .. ("   \n" .. (nq((d.Character.Head.Position - R.HumanoidRootPart.Position).Magnitude / 3) .. " M"));
						end;
					end;
				end;
			end;
		else
			if workspace:FindFirstChild("Gay") then
				(workspace:FindFirstChild("Gay")):Destroy();
			end;
		end;
	end;
LegenSword = function()
		if LegenS == true then
			for Y, R in pairs(Q.NPCs:GetChildren()) do
				if R.Name == "Legendary Sword Dealer " then
					if not workspace:FindFirstChild("Lgd") then
						Lgd = Instance.new("Part");
						Lgd.Name = "Lgd";
						Lgd.Transparency = 1;
						Lgd.Size = Vector3.new(1, 1, 1);
						Lgd.Anchored = true;
						Lgd.CanCollide = false;
						Lgd.Parent = workspace;
						Lgd.CFrame = R.HumanoidRootPart.CFrame;
					elseif workspace:FindFirstChild("Lgd") then
						if not Lgd:FindFirstChild("NameEsp") then
							local Y = Instance.new("BillboardGui", Lgd);
							Y.Name = "NameEsp";
							Y.ExtentsOffset = Vector3.new(0, 1, 0);
							Y.Size = UDim2.new(1, 200, 1, 30);
							Y.Adornee = Lgd;
							Y.AlwaysOnTop = true;
							local d = Instance.new("TextLabel", Y);
							d.Font = "Code";
							d.FontSize = "Size14";
							d.TextWrapped = true;
							d.Size = UDim2.new(1, 0, 1, 0);
							d.TextYAlignment = "Top";
							d.BackgroundTransparency = 1;
							d.TextStrokeTransparency = .5;
							d.TextColor3 = Color3.fromRGB(80, 245, 245);
						else
							Lgd.NameEsp.TextLabel.Text = R.Name .. ("   \n" .. (nq((d.Character.Head.Position - R.HumanoidRootPart.Position).Magnitude / 3) .. " M"));
						end;
					end;
				end;
			end;
		else
			if workspace:FindFirstChild("Lgd") then
				(workspace:FindFirstChild("Lgd")):Destroy();
			end;
		end;
	end;
ChestEsp = function()
		if ChestESP then
			local Y = game:GetService("CollectionService");
			local d = game:GetService("Players");
			local R = d.LocalPlayer;
			local Q = R.Character or R.CharacterAdded:Wait();
			local r = (Q:GetPivot()).Position;
			local a = Y:GetTagged("_ChestTagged");
			for Y, d in ipairs(a) do
				local R = false;
				repeat
					if not SelectedIsland or d:IsDescendantOf(SelectedIsland) then
						if not d:GetAttribute("IsDisabled") then
							local Y;
							local Q, a = pcall(function()
									return (d:GetPivot()).Position;
								end);
							if Q then
								Y = a;
							elseif d:IsA("BasePart") then
								Y = d.Position;
							else
								R = true;
								break;
							end;
							local w = (Y - r).Magnitude;
							local F = (d:GetFullName()):gsub("[^%w_]", "_");
							local M = d:FindFirstChild("ChestEspAttachment");
							if not M then
								local Y = Instance.new("Attachment");
								Y.Name = "ChestEspAttachment";
								Y.Parent = d;
								Y.Position = Vector3.new(0, 3, 0);
								local R = Instance.new("BillboardGui");
								R.Name = "NameEsp";
								R.Size = UDim2.new(0, 200, 0, 30);
								R.Adornee = Y;
								R.ExtentsOffset = Vector3.new(0, 1, 0);
								R.AlwaysOnTop = true;
								R.Parent = Y;
								local Q = Instance.new("TextLabel");
								Q.Font = Enum.Font.Code;
								Q.TextSize = 14;
								Q.TextWrapped = true;
								Q.Size = UDim2.new(1, 0, 1, 0);
								Q.TextYAlignment = Enum.TextYAlignment.Top;
								Q.BackgroundTransparency = 1;
								Q.TextStrokeTransparency = .5;
								Q.TextColor3 = Color3.fromRGB(80, 245, 245);
								Q.Parent = R;
							end;
							local K = M and M:FindFirstChild("NameEsp");
							if K then
								local Y = math.floor(w / 3);
								local R = d.Name:gsub("Label", "");
								K.TextLabel.Text = string.format("[%s] %d M", R, Y);
							end;
							if _G_AutoFarmChest and w <= 20 then
								if M then
									M:Destroy();
								end;
							end;
						end;
					end;
					R = true;
				until true;
				if not R then
					break;
				end;
			end;
		else
			for Y, d in ipairs((game:GetService("CollectionService")):GetTagged("_ChestTagged")) do
				local R = d:FindFirstChild("ChestEspAttachment");
				if R then
					R:Destroy();
				end;
			end;
		end;
	end;
berriesEsp = function()
		if BerryEsp then
			local Y = game:GetService("CollectionService");
			local d = game:GetService("Players");
			local R = d.LocalPlayer;
			local Q = Y:GetTagged("BerryBush");
			for Y, d in ipairs(Q) do
				local Q = (d.Parent:GetPivot()).Position;
				for Y, d in pairs(d:GetAttributes()) do
					if d and (not BerryArray or table.find(BerryArray, d)) then
						local Y = "BerryEspPart_" .. (d .. ("_" .. tostring(Q)));
						local r = workspace:FindFirstChild(Y);
						if not r then
							r = Instance.new("Part");
							r.Name = Y;
							r.Transparency = 1;
							r.Size = Vector3.new(1, 1, 1);
							r.Anchored = true;
							r.CanCollide = false;
							r.Parent = workspace;
							r.CFrame = CFrame.new(Q);
						end;
						if not r:FindFirstChild("NameEsp") then
							local Y = Instance.new("BillboardGui", r);
							Y.Name = "NameEsp";
							Y.ExtentsOffset = Vector3.new(0, 1, 0);
							Y.Size = UDim2.new(0, 200, 0, 30);
							Y.Adornee = r;
							Y.AlwaysOnTop = true;
							local d = Instance.new("TextLabel", Y);
							d.Font = Enum.Font.Code;
							d.TextSize = 14;
							d.TextWrapped = true;
							d.Size = UDim2.new(1, 0, 1, 0);
							d.TextYAlignment = Enum.TextYAlignment.Top;
							d.BackgroundTransparency = 1;
							d.TextStrokeTransparency = .5;
							d.TextColor3 = Color3.fromRGB(80, 245, 245);
							d.Parent = Y;
						end;
						local a = r:FindFirstChild("NameEsp");
						local w = (R.Character.Head.Position - Q).Magnitude / 3;
						a.TextLabel.Text = "[" .. (d .. ("]" .. (" " .. (math.round(w) .. " M"))));
						if _G.AutoBerry and math.round(w) <= 20 then
							r:Destroy();
						end;
					end;
				end;
			end;
		else
			for Y, d in ipairs(workspace:GetChildren()) do
				if d:IsA("Part") and d.Name:match("BerryEspPart_.*") then
					d:Destroy();
				end;
			end;
		end;
	end;
Kq.CreateToggle({
	Title = "Esp Berries",
	Description = "",
	Default = false,
	Callback = function(Y)
		BerryEsp = Y;
		spawn(function()
			while BerryEsp do
				wait();
				berriesEsp();
			end;
		end);
	end,
});
Kq.CreateToggle({
	Title = "Esp Players",
	Description = "",
	Default = false,
	Callback = function(Y)
		PlayerEsp = Y;
		spawn(function()
			while PlayerEsp do
				wait();
				EspPly();
			end;
		end);
	end,
});
Kq.CreateToggle({
	Title = "Esp Chests",
	Description = "",
	Default = false,
	Callback = function(Y)
		ChestESP = Y;
		spawn(function()
			while ChestESP do
				wait();
				ChestEsp();
			end;
		end);
	end,
});
Kq.CreateToggle({
	Title = "Esp Fruits",
	Description = "",
	Default = false,
	Callback = function(Y)
		DevilFruitESP = Y;
		spawn(function()
			while DevilFruitESP do
				wait();
				DevEsp();
			end;
		end);
	end,
});
Kq.CreateToggle({
	Title = "Esp Island Location",
	Description = "",
	Default = false,
	Callback = function(Y)
		IslandESP = Y;
		spawn(function()
			while IslandESP do
				wait();
				LocationEsp();
			end;
		end);
	end,
});
if World2 then
	Kq.CreateToggle({
		Title = "Esp Flower",
		Description = "",
		Default = false,
		Callback = function(Y)
			FlowerESP = Y;
			spawn(function()
				while FlowerESP do
					wait();
					flowerEsp();
				end;
			end);
		end,
	});
	Kq.CreateToggle({
		Title = "Esp Legendary Sword",
		Description = "",
		Default = false,
		Callback = function(Y)
			LegenS = Y;
			spawn(function()
				while LegenS do
					wait();
					LegenSword();
				end;
			end);
		end,
	});
end;
if World2 or World3 then
	Kq.CreateToggle({
		Title = "Esp Aura Colour Dealers",
		Description = "",
		Default = false,
		Callback = function(Y)
			ColorEsp = Y;
			spawn(function()
				while ColorEsp do
					wait();
					HakiClorEsp();
				end;
			end);
		end,
	});
end;
if World3 then
	Kq.CreateToggle({
		Title = "Esp Gears",
		Description = "",
		Default = false,
		Callback = function(Y)
			ESPGear = Y;
			spawn(function()
				while ESPGear do
					wait();
					gearEsp();
				end;
			end);
		end,
	});
	Kq.CreateToggle({
		Title = "Esp SeaEvent Island",
		Description = "",
		Default = false,
		Callback = function(Y)
			EspEventIsland = Y;
			spawn(function()
				while EspEventIsland do
					wait();
					EventIslandEsp();
				end;
			end);
		end,
	});
	Kq.CreateToggle({
		Title = "Esp Advanced Fruits Dealer",
		Description = "",
		Default = false,
		Callback = function(Y)
			advanEsp = Y;
			spawn(function()
				while advanEsp do
					wait();
					AdvanFruitEsp();
				end;
			end);
		end,
	});
end;
local Iq = kz.CreateSection("Travel - Worlds");
Iq.CreateButton({ Title = "Travel East Blue (World 1)", Callback = function()
		Q.Remotes.CommF_:InvokeServer("TravelMain");
	end });
Iq.CreateButton({ Title = "Travel Dressrosa (World 2)", Callback = function()
		Q.Remotes.CommF_:InvokeServer("TravelDressrosa");
	end });
Iq.CreateButton({ Title = "Travel Zou (World 3)", Callback = function()
		Q.Remotes.CommF_:InvokeServer("TravelZou");
	end });
local Wq = kz.CreateSection("Travel - Island");
Location = {};
for Y, d in pairs(workspace._WorldOrigin.Locations:GetChildren()) do
	table.insert(Location, d.Name);
end;
Wq.CreateDropdown({
	Title = "Select Travelling",
	Description = "",
	Values = Location,
	Default = false,
	Multi = false,
	Callback = function(Y)
		_G.Island = Y;
	end,
});
Wq.CreateToggle({
	Title = "Auto Travel",
	Description = "Automatic teleport to pos island",
	Default = false,
	Callback = function(Y)
		_G.Teleport = Y;
		if Y then
			spawn(function()
				for Y, d in pairs(workspace._WorldOrigin.Locations:GetChildren()) do
					if d.Name == _G.Island then
						repeat
							wait();
							_tp(d.CFrame * CFrame.new(0, 30, 0));
						until not _G.Teleport or R.CFrame == d.CFrame;
					end;
				end;
			end);
		end;
	end,
});
local Nq = kz.CreateSection("Travel - Portal");
if World1 then
	Location_Portal = { "Sky", "UnderWater" };
elseif World2 then
	Location_Portal = { "SwanRoom", "Cursed Ship" };
elseif World3 then
	Location_Portal = {
			"Castle On The Sea",
			"Mansion Cafe",
			"Hydra Teleport",
			"Canvendish Room",
			"Temple of Time",
		};
end;
Nq.CreateDropdown({
	Title = "Select Portal",
	Description = "",
	Values = Location_Portal,
	Default = false,
	Multi = false,
	Callback = function(Y)
		_G.Island_PT = Y;
	end,
});
Nq.CreateButton({ Title = "requestEntrance", Callback = function()
		if _G.Island_PT == "Sky" then
			Q.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894, 5547, -380));
		elseif _G.Island_PT == "UnderWater" then
			Q.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163, 11, 1819));
		elseif _G.Island_PT == "SwanRoom" then
			Q.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(2285, 15, 905));
		elseif _G.Island_PT == "Cursed Ship" then
			Q.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923, 126, 32852));
		elseif _G.Island_PT == "Castle On The Sea" then
			Q.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-5097.93164, 316.447021, -3142.66602, -0.405007899, -4.31682743e-08, .914313197, -1.90943332e-08, 1, 3.8755779e-08, -0.914313197, -1.76180437e-09, -0.405007899));
		elseif _G.Island_PT == "Mansion Cafe" then
			Q.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375));
		elseif _G.Island_PT == "Hydra Teleport" then
			Q.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5643.4526367188, 1013.0858154297, -340.51025390625));
		elseif _G.Island_PT == "Canvendish Room" then
			Q.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5314.5463867188, 22.562219619751, -127.06755065918));
		elseif _G.Island_PT == "Temple of Time" then
			Q.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(28310.0234, 14895.1123, 109.456741, -0.469690144, -2.85620132e-08, -0.882831335, -3.23509219e-08, 1, -1.51411736e-08, .882831335, 2.14487486e-08, -0.469690144));
		end;
	end });
local Dq = kz.CreateSection("Travel - NPCs");
for Y, d in pairs(Q.NPCs:GetChildren()) do
	table.insert(m, d.Name);
end;
Dq.CreateDropdown({
	Title = "Select NPCs",
	Description = "",
	Values = m,
	Default = false,
	Multi = false,
	Callback = function(Y)
		NPClist = Y;
	end,
});
Dq.CreateToggle({
	Title = "Auto Tween to NPCs",
	Description = "Automatic teleport to pos Npcs",
	Default = false,
	Callback = function(Y)
		_G.TPNpc = Y;
	end,
});
spawn(function()
	while wait(T) do
		if _G.TPNpc then
			pcall(function()
				for Y, d in pairs(Q.NPCs:GetChildren()) do
					if d.Name == NPClist then
						_tp(d.HumanoidRootPart.CFrame);
					end;
				end;
			end);
		end;
	end;
end);
local Aq = Lz.CreateSection("Fruits Options");
local uq = {};
local function gq(Y)
	local d = tostring(Y);
	while true do
		d, k = d:gsub("^(-?%d+)(%d%d%d)", "%1,%2");
		if k == 0 then
			break;
		end;
	end;
	return d;
end;
for Y, d in pairs(Q.Remotes.CommF_:InvokeServer("GetFruits", true)) do
	if d.OnSale == true then
		local Y = gq(d.Price);
		local R = d.Name;
		table.insert(uq, R);
	end;
end;
local zq = {};
for Y, d in pairs(Q.Remotes.CommF_:InvokeServer("GetFruits", false)) do
	if d.OnSale == true then
		local Y = gq(d.Price);
		local R = d.Name;
		table.insert(zq, R);
	end;
end;
Aq.CreateDropdown({
	Title = "Select Fruit Stock",
	Description = "",
	Values = zq,
	Default = false,
	Multi = false,
	Callback = function(Y)
		_G.SelectFruit = Y;
	end,
});
Aq.CreateButton({ Title = "Buy Basic Stock", Callback = function()
		Q.Remotes.CommF_:InvokeServer("PurchaseRawFruit", _G.SelectFruit);
	end });
Aq.CreateDropdown({
	Title = "Select Mirage Fruit",
	Description = "",
	Values = uq,
	Default = false,
	Multi = false,
	Callback = function(Y)
		SelectF_Adv = Y;
	end,
});
local iq = {};
for Y, d in pairs(Q.Remotes.CommF_:InvokeServer("GetFruits", false)) do
	if d.OnSale == true then
		local Y = gq(d.Price);
		local R = d.Name;
		table.insert(iq, R);
	end;
end;
Aq.CreateButton({ Title = "Buy Mirage Stock", Callback = function()
		Q.Remotes.CommF_:InvokeServer("PurchaseRawFruit", SelectF_Adv);
	end });
Aq.CreateToggle({
	Title = "Auto Random Fruit",
	Description = "Automatic random devil fruit",
	Default = false,
	Callback = function(Y)
		_G.Random_Auto = Y;
	end,
});
spawn(function()
	while wait(T) do
		pcall(function()
			if _G.Random_Auto then
				Q.Remotes.CommF_:InvokeServer("Cousin", "Buy");
			end;
		end);
	end;
end);
Aq.CreateToggle({
	Title = "Auto Drop Fruit",
	Description = "Automatic drop devil fruit",
	Default = false,
	Callback = function(Y)
		_G.DropFruit = Y;
	end,
});
spawn(function()
	while wait(T) do
		if _G.DropFruit then
			pcall(function()
				DropFruits();
			end);
		end;
	end;
end);
Aq.CreateToggle({
	Title = "Auto Store Fruit",
	Description = "Automatic store devil fruit",
	Default = false,
	Callback = function(Y)
		_G.StoreF = Y;
	end,
});
spawn(function()
	while wait(T) do
		if _G.StoreF then
			pcall(function()
				UpdStFruit();
			end);
		end;
	end;
end);
Aq.CreateToggle({
	Title = "Auto Tween to Fruit",
	Description = "Automatic tween to get devil fruit",
	Default = false,
	Callback = function(Y)
		_G.TwFruits = Y;
	end,
});
spawn(function()
	while wait(T) do
		if _G.TwFruits then
			pcall(function()
				for Y, d in pairs(workspace:GetChildren()) do
					if string.find(d.Name, "Fruit") then
						_tp(d.Handle.CFrame);
					end;
				end;
			end);
		end;
	end;
end);
Aq.CreateToggle({
	Title = "Auto Collect Fruit",
	Description = "Automatic bring devil fruit",
	Default = false,
	Callback = function(Y)
		_G.InstanceF = Y;
	end,
});
spawn(function()
	while wait(T) do
		if _G.InstanceF then
			pcall(function()
				collectFruits(_G.InstanceF);
			end);
		end;
	end;
end);
local Uq = Pz.CreateSection("Shop Options");
Uq.CreateButton({ Title = "Buy Buso", Callback = function()
		Q.Remotes.CommF_:InvokeServer("BuyHaki", "Buso");
	end });
Uq.CreateButton({ Title = "Buy Geppo", Callback = function()
		Q.Remotes.CommF_:InvokeServer("BuyHaki", "Geppo");
	end });
Uq.CreateButton({ Title = "Buy Soru", Callback = function()
		Q.Remotes.CommF_:InvokeServer("BuyHaki", "Soru");
	end });
Uq.CreateButton({ Title = "Buy Ken", Callback = function()
		Q.Remotes.CommF_:InvokeServer("KenTalk", "Buy");
	end });
local Cq = Pz.CreateSection("Fighting - Style");
Cq.CreateButton({ Title = "Buy Black Leg", Callback = function()
		Q.Remotes.CommF_:InvokeServer("BuyBlackLeg");
	end });
Cq.CreateButton({ Title = "Buy Electro", Callback = function()
		Q.Remotes.CommF_:InvokeServer("BuyElectro");
	end });
Cq.CreateButton({ Title = "Buy Fishman Karate", Callback = function()
		Q.Remotes.CommF_:InvokeServer("BuyFishmanKarate");
	end });
Cq.CreateButton({ Title = "Buy DragonClaw", Callback = function()
		Q.Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
	end });
Cq.CreateButton({ Title = "Buy Superhuman", Callback = function()
		Q.Remotes.CommF_:InvokeServer("BuySuperhuman");
	end });
Cq.CreateButton({ Title = "Buy Death Step", Callback = function()
		Q.Remotes.CommF_:InvokeServer("BuyDeathStep");
	end });
Cq.CreateButton({ Title = "Buy Sharkman Karate", Callback = function()
		Q.Remotes.CommF_:InvokeServer("BuySharkmanKarate");
	end });
Cq.CreateButton({ Title = "Buy ElectricClaw", Callback = function()
		Q.Remotes.CommF_:InvokeServer("BuyElectricClaw");
	end });
Cq.CreateButton({ Title = "Buy DragonTalon", Callback = function()
		Q.Remotes.CommF_:InvokeServer("BuyDragonTalon");
	end });
Cq.CreateButton({ Title = "Buy Godhuman", Callback = function()
		Q.Remotes.CommF_:InvokeServer("BuyGodhuman");
	end });
Cq.CreateButton({ Title = "Buy SanguineArt", Callback = function()
		Q.Remotes.CommF_:InvokeServer("BuySanguineArt");
	end });
local vq = Pz.CreateSection("Accessory");
vq.CreateButton({ Title = "Buy Tomoe Ring", Callback = function()
		Q.Remotes.CommF_:InvokeServer("BuyItem", "Tomoe Ring");
	end });
vq.CreateButton({ Title = "Buy Black Cape", Callback = function()
		Q.Remotes.CommF_:InvokeServer("BuyItem", "Black Cape");
	end });
vq.CreateButton({ Title = "Buy Swordsman Hat", Callback = function()
		Q.Remotes.CommF_:InvokeServer("BuyItem", "Swordsman Hat");
	end });
vq.CreateButton({ Title = "Buy Bizarre Rifle", Callback = function()
		Q.Remotes.CommF_:InvokeServer("Ectoplasm", "Buy", 1);
	end });
vq.CreateButton({ Title = "Buy Ghoul Mask", Callback = function()
		Q.Remotes.CommF_:InvokeServer("Ectoplasm", "Buy", 2);
	end });
local mq = Pz.CreateSection("Accessory SeaEvent");
mq.CreateButton({ Title = "Craft Dragonheart", Callback = function()
		Q.Remotes.CommF_:InvokeServer("CraftItem", "Craft", "Dragonheart");
	end });
mq.CreateButton({ Title = "Craft Dragonstorm", Callback = function()
		Q.Remotes.CommF_:InvokeServer("CraftItem", "Craft", "Dragonstorm");
	end });
mq.CreateButton({ Title = "Craft DinoHood", Callback = function()
		Q.Remotes.CommF_:InvokeServer("CraftItem", "Craft", "DinoHood");
	end });
mq.CreateButton({ Title = "Craft SharkTooth", Callback = function()
		Q.Remotes.CommF_:InvokeServer("CraftItem", "Craft", "SharkTooth");
	end });
mq.CreateButton({ Title = "Craft TerrorJaw", Callback = function()
		Q.Remotes.CommF_:InvokeServer("CraftItem", "Craft", "TerrorJaw");
	end });
mq.CreateButton({ Title = "Craft SharkAnchor", Callback = function()
		Q.Remotes.CommF_:InvokeServer("CraftItem", "Craft", "SharkAnchor");
	end });
mq.CreateButton({ Title = "Craft LeviathanCrown", Callback = function()
		Q.Remotes.CommF_:InvokeServer("CraftItem", "Craft", "LeviathanCrown");
	end });
mq.CreateButton({ Title = "Craft LeviathanShield", Callback = function()
		Q.Remotes.CommF_:InvokeServer("CraftItem", "Craft", "LeviathanShield");
	end });
mq.CreateButton({ Title = "Craft LeviathanBoat", Callback = function()
		Q.Remotes.CommF_:InvokeServer("CraftItem", "Craft", "LeviathanBoat");
	end });
mq.CreateButton({ Title = "Craft LegendaryScroll", Callback = function()
		Q.Remotes.CommF_:InvokeServer("CraftItem", "Craft", "LegendaryScroll");
	end });
mq.CreateButton({ Title = "Craft MythicalScroll", Callback = function()
		Q.Remotes.CommF_:InvokeServer("CraftItem", "Craft", "MythicalScroll");
	end });
local yq = Pz.CreateSection("Weapon World1");
yq.CreateButton({ Title = "Buy Cutlass", Callback = function()
		Q.Remotes.CommF_:InvokeServer("BuyItem", "Cutlass");
	end });
yq.CreateButton({ Title = "Buy Katana", Callback = function()
		Q.Remotes.CommF_:InvokeServer("BuyItem", "Katana");
	end });
yq.CreateButton({ Title = "Buy Iron Mace", Callback = function()
		Q.Remotes.CommF_:InvokeServer("BuyItem", "Iron Mace");
	end });
yq.CreateButton({ Title = "Buy Duel Katana", Callback = function()
		Q.Remotes.CommF_:InvokeServer("BuyItem", "Duel Katana");
	end });
yq.CreateButton({ Title = "Buy Triple Katana", Callback = function()
		Q.Remotes.CommF_:InvokeServer("BuyItem", "Triple Katana");
	end });
yq.CreateButton({ Title = "Buy Pipe", Callback = function()
		Q.Remotes.CommF_:InvokeServer("BuyItem", "Pipe");
	end });
yq.CreateButton({ Title = "Buy Dual-Headed Blade", Callback = function()
		Q.Remotes.CommF_:InvokeServer("BuyItem", "Dual-Headed Blade");
	end });
yq.CreateButton({ Title = "Buy Bisento", Callback = function()
		Q.Remotes.CommF_:InvokeServer("BuyItem", "Bisento");
	end });
yq.CreateButton({ Title = "Buy Soul Cane", Callback = function()
		Q.Remotes.CommF_:InvokeServer("BuyItem", "Soul Cane");
	end });
yq.CreateButton({ Title = "Buy Slingshot", Callback = function()
		Q.Remotes.CommF_:InvokeServer("BuyItem", "Slingshot");
	end });
yq.CreateButton({ Title = "Buy Musket", Callback = function()
		Q.Remotes.CommF_:InvokeServer("BuyItem", "Musket");
	end });
yq.CreateButton({ Title = "Buy Dual Flintlock", Callback = function()
		Q.Remotes.CommF_:InvokeServer("BuyItem", "Dual Flintlock");
	end });
yq.CreateButton({ Title = "Buy Flintlock", Callback = function()
		Q.Remotes.CommF_:InvokeServer("BuyItem", "Flintlock");
	end });
yq.CreateButton({ Title = "Buy Refined Flintlock", Callback = function()
		Q.Remotes.CommF_:InvokeServer("BuyItem", "Refined Flintlock");
	end });
yq.CreateButton({ Title = "Buy Cannon", Callback = function()
		Q.Remotes.CommF_:InvokeServer("BuyItem", "Cannon");
	end });
yq.CreateButton({ Title = "Buy Kabucha", Callback = function()
		Q.Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "2");
	end });
local bq = Pz.CreateSection("Fragments shop");
bq.CreateButton({ Title = "Buy Refund Stats", Callback = function()
		Q.Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "2");
	end });
bq.CreateButton({ Title = "Buy Reroll Race", Callback = function()
		Q.Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "2");
	end });
bq.CreateButton({ Title = "Buy Ghoul Race (2.5k)", Callback = function()
		Q.Remotes.CommF_:InvokeServer("Ectoplasm", " Change", 4);
	end });
bq.CreateButton({ Title = "Buy Cyborg Race (2.5k)", Callback = function()
		Q.Remotes.CommF_:InvokeServer("CyborgTrainer", " Buy");
	end });
local cq = jz.CreateSection("Server - Function");
cq.CreateButton({ Title = "Rejoin Server", Callback = function()
		(game:GetService("TeleportService")):Teleport(game.PlaceId, game.Players.LocalPlayer);
	end });
cq.CreateButton({ Title = "Hop Server", Callback = function()
		Hop();
	end });
cq.CreateButton({ Title = "Hop to Lowest Players", Callback = function()
		local Y = game:GetService("HttpService");
		local R = game:GetService("TeleportService");
		local Q = "https://games.roblox.com/v1/games/";
		local r = game.PlaceId;
		local a = Q .. (r .. "/servers/Public?sortOrder=Asc&limit=100");
		function ListServers(d)
			local R = game:HttpGet(a .. (d and "&cursor=" .. d or ""));
			return Y:JSONDecode(R);
		end;
		local w, F;
		repeat
			local Y = ListServers(F);
			w = Y.data[1];
			F = Y.nextPageCursor;
		until w;
		R:TeleportToPlaceInstance(r, w.id, d);
	end });
cq.CreateButton({ Title = "Hop to Lowest Pings Server", Callback = function()
		local Y = game:GetService("HttpService");
		local d = game:GetService("TeleportService");
		local R = game:GetService("Stats");
		local function Q(d, R)
			local Q = string.format("https://games.roblox.com/v1/games/%d/servers/Public?limit=%d", d, R);
			local r, a = pcall(function()
					return Y:JSONDecode(game:HttpGet(Q));
				end);
			if r and (a and a.data) then
				return a.data;
			end;
			return nil;
		end;
		local r = game.PlaceId;
		local a = 100;
		local w = Q(r, a);
		if not w then
			return;
		end;
		local F = w[1];
		for Y, d in pairs(w) do
			if d.ping < F.ping and d.maxPlayers > d.playing then
				F = d;
			end;
		end;
		local M = .5;
		task.wait(M);
		local K = 100;
		local n = R.Network.ServerStatsItem;
		local I = n["Data Ping"]:GetValueString();
		local W = tonumber(I:match("(%d+)"));
		if W >= K then
			d:TeleportToPlaceInstance(r, F.id);
		else
 
		end;
	end });
cq.CreateBox({
	Title = "JobID",
	Placeholder = "Type something...",
	Default = "",
	Number = false,
}, function(Y)
	_G.JobId = Y;
end);
spawn(function()
	while wait(T) do
		if _G.JobId then
			pcall(function()
				local Y;
				Y = d.OnTeleport:Connect(function(d)
						if d == Enum.TeleportState.Failed then
							Y:Disconnect();
							if workspace:FindFirstChild("Message") then
								workspace.Message:Destroy();
							end;
						end;
					end);
			end);
		end;
	end;
end);
cq.CreateButton({ Title = "Teleport [Job ID]", Callback = function()
		Q.__ServerBrowser:InvokeServer("teleport", _G.JobId);
	end });
cq.CreateButton({ Title = "Copy JobID", Callback = function()
		setclipboard(tostring(game.JobId));
	end });
local Hq = jz.CreateSection("Player Gui / Others");
Hq.CreateButton({ Title = "Open Awakenings Expert", Callback = function()
		d.PlayerGui.Main.AwakeningToggler.Visible = true;
	end });
Hq.CreateButton({ Title = "Open Title Selection", Callback = function()
		Q.Remotes.CommF_:InvokeServer("getTitles", true);
		d.PlayerGui.Main.Titles.Visible = true;
	end });
Hq.CreateToggle({
	Title = "Disable Chat GUI",
	Description = "",
	Default = false,
	Callback = function(Y)
		_G.Rechat = Y;
		local d = game:GetService("StarterGui");
		if _G.Rechat then
			d:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false);
		else
			d:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true);
		end;
	end,
});
Hq.CreateToggle({
	Title = "Disable Leader Board GUI",
	Description = "",
	Default = false,
	Callback = function(Y)
		ReLeader = Y;
		local d = game:GetService("StarterGui");
		if ReLeader then
			d:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false);
		else
			d:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true);
		end;
	end,
});
Hq.CreateButton({ Title = "Set Pirate Team", Callback = function()
		Pirates();
	end });
Hq.CreateButton({ Title = "Set Marine Team", Callback = function()
		Marines();
	end });
Hq.CreateToggle({
	Title = "Unlock All Portals",
	Description = "unlocked portal for who doesn\'t defeat rip_indra",
	Default = false,
	Callback = function(Y)
		_G.PortalUnLock = Y;
	end,
});
spawn(function()
	while wait(T) do
		pcall(function()
			if _G.PortalUnLock then
				if f.Pos(CstlePos_Miti, 8) then
					Q.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375));
				elseif f.Pos(Man3Pos_Miti, 8) then
					Q.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812));
				elseif f.Pos(HydraPos_Miti, 8) then
					Q.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5748.7587890625, 610.44982910156, -267.81704711914));
				elseif f.Pos(HydratoCastle, 8) then
					Q.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812));
				end;
			end;
		end);
	end;
end);
local Sq = jz.CreateSection("Graphics / Haki Stats");
HakiSt = {
		"State 0",
		"State 1",
		"State 2",
		"State 3",
		"State 4",
		"State 5",
	};
Sq.CreateDropdown({
	Title = "Select Haki States",
	Description = "",
	Values = HakiSt,
	Default = false,
	Multi = false,
	Callback = function(Y)
		_G.SelectStateHaki = Y;
	end,
});
Sq.CreateButton({ Title = "ChangeBusoStage", Callback = function()
		if _G.SelectStateHaki == "State 0" then
			Q.Remotes.CommF_:InvokeServer("ChangeBusoStage", 0);
		elseif _G.SelectStateHaki == "State 1" then
			Q.Remotes.CommF_:InvokeServer("ChangeBusoStage", 1);
		elseif _G.SelectStateHaki == "State 2" then
			Q.Remotes.CommF_:InvokeServer("ChangeBusoStage", 2);
		elseif _G.SelectStateHaki == "State 3" then
			Q.Remotes.CommF_:InvokeServer("ChangeBusoStage", 3);
		elseif _G.SelectStateHaki == "State 4" then
			Q.Remotes.CommF_:InvokeServer("ChangeBusoStage", 4);
		elseif _G.SelectStateHaki == "State 5" then
			Q.Remotes.CommF_:InvokeServer("ChangeBusoStage", 5);
		end;
	end });
Sq.CreateToggle({
	Title = "Turn on RTX Mode",
	Description = "",
	Default = false,
	Callback = function(Y)
		_G.RTXMode = Y;
		local R = game.Lighting;
		local Q = Instance.new("ColorCorrectionEffect", R);
		local r = Instance.new("ColorCorrectionEffect", R);
		local a = R.Ambient;
		local w = R.Brightness;
		local F = R.ColorShift_Top;
		local M = Q.Brightness;
		local K = Q.Contrast;
		local n = Q.TintColor;
		local I = r.TintColor;
		spawn(function()
			while _G.RTXMode do
				wait();
				R.Ambient = Color3.fromRGB(33, 33, 33);
				R.Brightness = .3;
				Q.Brightness = .176;
				Q.Contrast = .39;
				Q.TintColor = Color3.fromRGB(217, 145, 57);
				game.Lighting.FogEnd = 999;
				if not d.Character.HumanoidRootPart:FindFirstChild("PointLight") then
					local Y = Instance.new("PointLight");
					Y.Parent = d.Character.HumanoidRootPart;
					Y.Range = 15;
					Y.Color = Color3.fromRGB(217, 145, 57);
				end;
			end;
			R.Ambient = a;
			R.Brightness = w;
			R.ColorShift_Top = F;
			Q.Contrast = K;
			Q.Brightness = M;
			Q.TintColor = n;
			r.TintColor = I;
			game.Lighting.FogEnd = 2500;
			local Y = d.Character.HumanoidRootPart:FindFirstChild("PointLight");
			if Y then
				Y:Destroy();
			end;
		end);
	end,
});
Sq.CreateButton({ Title = "Turn on Fast Mode", Callback = function()
		for Y, d in next, workspace:GetDescendants() do
			if table.find(t, d.ClassName) then
				d.Material = "Plastic";
			end;
		end;
	end });
Sq.CreateButton({ Title = "Turn on Low CPU", Callback = function()
		LowCpu();
	end });
Sq.CreateButton({ Title = "Turn on increase Boats", Callback = function()
		for Y, R in pairs(workspace.Boats:GetDescendants()) do
			if table.find(jF, R.Name) and tostring(R.Owner.Value) == tostring(d.Name) then
				R.VehicleSeat.MaxSpeed = 350;
				R.VehicleSeat.Torque = .2;
				R.VehicleSeat.TurnSpeed = 5;
				R.VehicleSeat.HeadsUpDisplay = true;
			end;
		end;
	end });
Sq.CreateButton({ Title = "Remove Sky Fog", Callback = function()
		if F:FindFirstChild("LightingLayers") then
			F.LightingLayers:Destroy();
		end;
		if F:FindFirstChild("SeaTerrorCC") then
			F.SeaTerrorCC:Destroy();
		end;
		if F:FindFirstChild("FantasySky") then
			F.FantasySky:Destroy();
		end;
	end });
local oq = jz.CreateSection("Configure - God");
oq.CreateButton({ Title = "Rain Fruits (Client)", Callback = function()
		for Y, R in pairs((game:GetObjects("rbxassetid://14759368201"))[1]:GetChildren()) do
			R.Parent = game.Workspace.Map;
			R:MoveTo(d.Character.PrimaryPart.Position + Vector3.new(math.random(-50, 50), 100, math.random(-50, 50)));
			if R.Fruit:FindFirstChild("AnimationController") then
				((R.Fruit:FindFirstChild("AnimationController")):LoadAnimation(R.Fruit:FindFirstChild("Idle"))):Play();
			end;
			R.Handle.Touched:Connect(function(Y)
				if Y.Parent == d.Character then
					R.Parent = d.Backpack;
					d.Character.Humanoid:EquipTool(R);
				end;
			end);
		end;
	end });
oq.CreateToggle({ Title = "Turn on Full Bright", Default = false, Callback = function(Y)
		bright = Y;
		if Y then
			F.Ambient = Color3.new(1, 1, 1);
			F.ColorShift_Bottom = Color3.new(1, 1, 1);
			F.ColorShift_Top = Color3.new(1, 1, 1);
		else
			F.Ambient = Color3.new(0, 0, 0);
			F.ColorShift_Bottom = Color3.new(0, 0, 0);
			F.ColorShift_Top = Color3.new(0, 0, 0);
		end;
	end });
Cheat_DayNight = { "Day", "Night" };
oq.CreateDropdown({
	Title = "Select Time",
	Description = "",
	Values = Cheat_DayNight,
	Default = false,
	Multi = false,
	Callback = function(Y)
		_G.SelectDN = Y;
	end,
});
oq.CreateToggle({
	Title = "Turn on Time",
	Description = "",
	Default = false,
	Callback = function(Y)
		_G.daylightN = Y;
	end,
});
task.spawn(function()
	while task.wait() do
		if _G.daylightN then
			if _G.SelectDN == "Day" then
				F.ClockTime = 12;
			elseif _G.SelectDN == "Night" then
				F.ClockTime = 0;
			end;
		end;
	end;
end);
oq.CreateToggle({
	Title = "Turn on Walk on Water",
	Description = "walk on water",
	Default = true,
	Callback = function(Y)
		_G.WalkWater_Part = Y;
		local d = (game:GetService("Workspace")).Map["WaterBase-Plane"];
		if _G.WalkWater_Part then
			d.Size = Vector3.new(1000, 112, 1000);
		else
			d.Size = Vector3.new(1000, 80, 1000);
		end;
	end,
});
oq.CreateToggle({
	Title = "Turn on Ice Walk",
	Description = "Ice walk just like walk on water but have ice effect",
	Default = false,
	Callback = function(Y)
		_G.WalkWater = Y;
	end,
});
spawn(function()
	while task.wait() do
		if _G.WalkWater then
			pcall(function()
				if d.Character and d.Character:FindFirstChild("LeftFoot") then
					local Y = Q.Assets.Models.IceSpikes4:Clone();
					Y.Parent = workspace;
					Y.Size = Vector3.new(3 + math.random(10, 12), 1.7, 3 + math.random(10, 12));
					Y.Color = Color3.fromRGB(128, 187, 219);
					Y.CFrame = CFrame.new(d.Character.Head.Position.X, -3.8, d.Character.Head.Position.Z) * CFrame.Angles((math.random() - .5) * .06, math.random() * 7, (math.random() - .5) * .07);
					local R = {};
					R.Size = Vector3.new(0, .3, 0);
					local r = w:Create(Y, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.In), R);
					r.Completed:Connect(function()
						Y:Destroy();
					end);
					r:Play();
				end;
			end);
		end;
	end;
end);
local Zq = game.Players.LocalPlayer;
local function Tq(Y)
	if not Y then
		return false;
	end;
	local d = Y:FindFirstChild("Humanoid");
	return d and d.Health > 0;
end;
local function kq(Y, d)
	local R = (game:GetService("Workspace")).Enemies:GetChildren();
	local Q = (game:GetService("Players")):GetPlayers();
	local r = {};
	local a = (Y:GetPivot()).Position;
	for Y, R in ipairs(R) do
		local Q = R:FindFirstChild("HumanoidRootPart");
		if Q and Tq(R) then
			local Y = (Q.Position - a).Magnitude;
			if Y <= d then
				table.insert(r, R);
			end;
		end;
	end;
	for Y, R in ipairs(Q) do
		if R ~= Zq and R.Character then
			local Y = R.Character:FindFirstChild("HumanoidRootPart");
			if Y and Tq(R.Character) then
				local Q = (Y.Position - a).Magnitude;
				if Q <= d then
					table.insert(r, R.Character);
				end;
			end;
		end;
	end;
	return r;
end;
function AttackNoCoolDown()
	local Y = (game:GetService("Players")).LocalPlayer;
	local d = Y.Character;
	if not d then
		return;
	end;
	local R = nil;
	for Y, d in ipairs(d:GetChildren()) do
		if d:IsA("Tool") then
			R = d;
			break;
		end;
	end;
	if not R then
		return;
	end;
	local Q = kq(d, 60);
	if #Q == 0 then
		return;
	end;
	local r = game:GetService("ReplicatedStorage");
	local a = r:FindFirstChild("Modules");
	if not a then
		return;
	end;
	local w = ((r:WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RE/RegisterAttack");
	local F = ((r:WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RE/RegisterHit");
	if not w or not F then
		return;
	end;
	local M, K = {}, nil;
	for Y, d in ipairs(Q) do
		if not d:GetAttribute("IsBoat") then
			local Y = {
					"RightLowerArm",
					"RightUpperArm",
					"LeftLowerArm",
					"LeftUpperArm",
					"RightHand",
					"LeftHand",
				};
			local R = d:FindFirstChild(Y[math.random(#Y)]) or d.PrimaryPart;
			if R then
				table.insert(M, { d, R });
				K = R;
			end;
		end;
	end;
	if not K then
		return;
	end;
	w:FireServer(0);
	local n = Y:FindFirstChild("PlayerScripts");
	if not n then
		return;
	end;
	local I = n:FindFirstChildOfClass("LocalScript");
	while not I do
		n.ChildAdded:Wait();
		I = n:FindFirstChildOfClass("LocalScript");
	end;
	local W;
	if getsenv then
		local Y, d = pcall(getsenv, I);
		if Y and d then
			W = d._G.SendHitsToServer;
		end;
	end;
	local N, D = pcall(function()
			return (require(a.Flags)).COMBAT_REMOTE_THREAD or false;
		end);
	if N and (D and W) then
		W(K, M);
	elseif N and not D then
		F:FireServer(K, M);
	end;
end;
CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker);
CameraShakerR:Stop();
get_Monster = function()
		for Y, R in pairs(workspace.Enemies:GetChildren()) do
			local Q = R:FindFirstChild("UpperTorso") or R:FindFirstChild("Head");
			if R:FindFirstChild("HumanoidRootPart", true) and Q then
				if (R.Head.Position - d.Character.HumanoidRootPart.Position).Magnitude <= 50 then
					return true, Q.Position;
				end;
			end;
		end;
		for Y, d in pairs(workspace.SeaBeasts:GetChildren()) do
			if d:FindFirstChild("HumanoidRootPart") and (d:FindFirstChild("Health") and d.Health.Value > 0) then
				return true, d.HumanoidRootPart.Position;
			end;
		end;
		for Y, d in pairs(workspace.Enemies:GetChildren()) do
			if d:FindFirstChild("Health") and (d.Health.Value > 0 and d:FindFirstChild("VehicleSeat")) then
				return true, d.Engine.Position;
			end;
		end;
	end;
Actived = function()
		local Y = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool");
		for Y, d in next, getconnections(Y.Activated) do
			if typeof(d.Function) == "function" then
				getupvalues(d.Function);
			end;
		end;
	end;
task.spawn(function()
	W.Heartbeat:Connect(function()
		pcall(function()
			if not _G.Seriality then
				return;
			end;
			AttackNoCoolDown();
			local Y = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool");
			local d = Y.ToolTip;
			local R, Q = get_Monster();
			if d == "Blox Fruit" then
				if R then
					local d = Y:FindFirstChild("LeftClickRemote");
					if d then
						Actived();
						d:FireServer(Vector3.new(.01, -500, .01), 1, true);
						d:FireServer(false);
					end;
				end;
			end;
		end);
	end);
end);
