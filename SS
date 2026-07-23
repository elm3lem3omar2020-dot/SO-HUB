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
