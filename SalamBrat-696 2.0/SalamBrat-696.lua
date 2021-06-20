local math = getfenv(0).math
print("Salam Brat 696");

local EventFrame = CreateFrame("Frame") 
local coordX = CreateFrame("Frame", nil, UIParent) 
local coordY = CreateFrame("Frame", nil, UIParent) 

-- local frame = CreateFrame("Frame",ShowUF,UIParent)

-- frame.ufTexture = frame:CreateTexture()
-- frame.ufTexture:SetTexture("Interface\\AddOns\\SalamBrat-696\\s\\qwe")
-- frame.ufTexture:SetPoint("CENTER", UIParent)
-- frame.ufTexture:SetSize(32, 32) 
SLASH_HELLO_WORLD1 = '/q';

function EventFrame:OnEvent(event, ...) 
	print("Salam Brat:", event)
	self[event](self, ...) 
end
EventFrame:SetScript("OnEvent", EventFrame.OnEvent)

EventFrame:RegisterEvent("PLAYER_LOGIN")
function EventFrame:PLAYER_LOGIN()
	print(GetScreenWidth())
	local current_monitor_height = 1080
	local scale = GetScreenHeight()/current_monitor_height
	local size = 40*scale
	print(scale)
	coordX:SetFrameStrata("BACKGROUND")
	coordX:SetSize(size, size) 
	coordX.texture = coordX:CreateTexture()
	coordX.texture:SetTexture("Interface\\AddOns\\SalamBrat-696 2.0\\s\\qwe")
	coordX.texture:SetAllPoints(coordX)
	coordX:SetPoint("TOPLEFT",0,0)
	coordX:Show()

	coordY:SetFrameStrata("BACKGROUND")
	coordY:SetSize(size, size) 
	coordY.texture = coordY:CreateTexture()
	coordY.texture:SetTexture("Interface\\AddOns\\SalamBrat-696 2.0\\s\\qwe")
	coordY.texture:SetAllPoints(coordY)
	coordY:SetPoint("TOPLEFT",size, 0)
	coordY:Show()
	
end 
local math = getfenv(0).math

function EventFrame:OnUpdate() 
	local health = UnitHealth("player")
	local px, py = C_Map.GetPlayerMapPosition(C_Map.GetBestMapForUnit("player"), "player"):GetXY()
	local x1, x2 = math.modf(px*255)
	local y1, y2 = math.modf(py*255)
	local facing = GetPlayerFacing();
	-- print(format("%f %f %f", x1/255, x2, facing/7))
	coordX.texture:SetVertexColor(x1/255, x2, facing/6.28318530718)
	coordY.texture:SetVertexColor(y1/255, y2, 0)
	
end
EventFrame:SetScript("OnUpdate", EventFrame.OnUpdate)

-- function myCreateTexture(x,y)
-- 	local texture = UIParent:CreateTexture()
-- 	texture:SetPoint("TOPLEFT", UIParent, "TOPLEFT", x*10, y*10)
-- 	texture:SetSize(10,10)
-- 	return texture
-- end

function SlashCmdList.HELLO_WORLD(msg, editbox)
	local facing = GetPlayerFacing();
	local px, py = C_Map.GetPlayerMapPosition(C_Map.GetBestMapForUnit("player"), "player"):GetXY()
	print(format("x: %.2f y: %.2f facing: %f", px*100, py*100, facing));

end