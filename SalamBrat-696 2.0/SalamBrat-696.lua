local math = getfenv(0).math
print("Salam Brat 696");
DataToColor = {}
local EventFrame = CreateFrame("Frame") 
local coordX = CreateFrame("Frame", nil, UIParent) 
local coordY = CreateFrame("Frame", nil, UIParent) 
local zoneName = CreateFrame("Frame", nil, UIParent) 
local maxHealth = CreateFrame("Frame", nil, UIParent) 
local currentHealth = CreateFrame("Frame", nil, UIParent) 
local maxMana = CreateFrame("Frame", nil, UIParent) 
local currentMana = CreateFrame("Frame", nil, UIParent) 
local selfLevel = CreateFrame("Frame", nil, UIParent) 
local rangeToTarget = CreateFrame("Frame", nil, UIParent) 
local targetName = CreateFrame("Frame", nil, UIParent)
local targetNameL = CreateFrame("Frame", nil, UIParent)
local targetHealth = CreateFrame("Frame", nil, UIParent)
local targetHealthMax = CreateFrame("Frame", nil, UIParent)
local targetLVL_DISTANCE_RANGE = CreateFrame("Frame", nil, UIParent)


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
	local size = 10*scale
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

	zoneName:SetFrameStrata("BACKGROUND")
	zoneName:SetSize(size, size) 
	zoneName.texture = zoneName:CreateTexture()
	zoneName.texture:SetTexture("Interface\\AddOns\\SalamBrat-696 2.0\\s\\qwe")
	zoneName.texture:SetAllPoints(zoneName)
	zoneName:SetPoint("TOPLEFT",size*2, 0)
	zoneName:Show()

	maxHealth:SetFrameStrata("BACKGROUND")
	maxHealth:SetSize(size, size) 
	maxHealth.texture = maxHealth:CreateTexture()
	maxHealth.texture:SetTexture("Interface\\AddOns\\SalamBrat-696 2.0\\s\\qwe")
	maxHealth.texture:SetAllPoints(maxHealth)
	maxHealth:SetPoint("TOPLEFT",size*3, 0)
	maxHealth:Show()

	currentHealth:SetFrameStrata("BACKGROUND")
	currentHealth:SetSize(size, size) 
	currentHealth.texture = currentHealth:CreateTexture()
	currentHealth.texture:SetTexture("Interface\\AddOns\\SalamBrat-696 2.0\\s\\qwe")
	currentHealth.texture:SetAllPoints(currentHealth)
	currentHealth:SetPoint("TOPLEFT",size*4, 0)
	currentHealth:Show()

	maxMana:SetFrameStrata("BACKGROUND")
	maxMana:SetSize(size, size) 
	maxMana.texture = maxMana:CreateTexture()
	maxMana.texture:SetTexture("Interface\\AddOns\\SalamBrat-696 2.0\\s\\qwe")
	maxMana.texture:SetAllPoints(maxMana)
	maxMana:SetPoint("TOPLEFT",size*5, 0)
	maxMana:Show()

	currentMana:SetFrameStrata("BACKGROUND")
	currentMana:SetSize(size, size) 
	currentMana.texture = currentMana:CreateTexture()
	currentMana.texture:SetTexture("Interface\\AddOns\\SalamBrat-696 2.0\\s\\qwe")
	currentMana.texture:SetAllPoints(currentMana)
	currentMana:SetPoint("TOPLEFT",size*6, 0)
	currentMana:Show()

	selfLevel:SetFrameStrata("BACKGROUND")
	selfLevel:SetSize(size, size) 
	selfLevel.texture = selfLevel:CreateTexture()
	selfLevel.texture:SetTexture("Interface\\AddOns\\SalamBrat-696 2.0\\s\\qwe")
	selfLevel.texture:SetAllPoints(selfLevel)
	selfLevel:SetPoint("TOPLEFT",size*7, 0)
	selfLevel:Show()

	rangeToTarget:SetFrameStrata("BACKGROUND")
	rangeToTarget:SetSize(size, size) 
	rangeToTarget.texture = rangeToTarget:CreateTexture()
	rangeToTarget.texture:SetTexture("Interface\\AddOns\\SalamBrat-696 2.0\\s\\qwe")
	rangeToTarget.texture:SetAllPoints(rangeToTarget)
	rangeToTarget:SetPoint("TOPLEFT",size*8, 0)
	rangeToTarget:Show()

	targetName:SetFrameStrata("BACKGROUND")
	targetName:SetSize(size, size) 
	targetName.texture = targetName:CreateTexture()
	targetName.texture:SetTexture("Interface\\AddOns\\SalamBrat-696 2.0\\s\\qwe")
	targetName.texture:SetAllPoints(targetName)
	targetName:SetPoint("TOPLEFT",size*9, 0)
	targetName:Show()

	targetNameL:SetFrameStrata("BACKGROUND")
	targetNameL:SetSize(size, size) 
	targetNameL.texture = targetNameL:CreateTexture()
	targetNameL.texture:SetTexture("Interface\\AddOns\\SalamBrat-696 2.0\\s\\qwe")
	targetNameL.texture:SetAllPoints(targetNameL)
	targetNameL:SetPoint("TOPLEFT",size*10, 0)
	targetNameL:Show()

	targetHealth:SetFrameStrata("BACKGROUND")
	targetHealth:SetSize(size, size) 
	targetHealth.texture = targetHealth:CreateTexture()
	targetHealth.texture:SetTexture("Interface\\AddOns\\SalamBrat-696 2.0\\s\\qwe")
	targetHealth.texture:SetAllPoints(targetHealth)
	targetHealth:SetPoint("TOPLEFT",size*11, 0)
	targetHealth:Show()

	targetHealthMax:SetFrameStrata("BACKGROUND")
	targetHealthMax:SetSize(size, size) 
	targetHealthMax.texture = targetHealthMax:CreateTexture()
	targetHealthMax.texture:SetTexture("Interface\\AddOns\\SalamBrat-696 2.0\\s\\qwe")
	targetHealthMax.texture:SetAllPoints(targetHealthMax)
	targetHealthMax:SetPoint("TOPLEFT",size*12, 0)
	targetHealthMax:Show()

	targetLVL_DISTANCE_RANGE:SetFrameStrata("BACKGROUND")
	targetLVL_DISTANCE_RANGE:SetSize(size, size) 
	targetLVL_DISTANCE_RANGE.texture = targetLVL_DISTANCE_RANGE:CreateTexture()
	targetLVL_DISTANCE_RANGE.texture:SetTexture("Interface\\AddOns\\SalamBrat-696 2.0\\s\\qwe")
	targetLVL_DISTANCE_RANGE.texture:SetAllPoints(targetLVL_DISTANCE_RANGE)
	targetLVL_DISTANCE_RANGE:SetPoint("TOPLEFT",size*13, 0)
	targetLVL_DISTANCE_RANGE:Show()

end 
local math = getfenv(0).math

function StringToASCIIHex(str)
    -- Converts string to upper case so only 2 digit ASCII values
    -- All lowercase letters have a decimal ASCII value >100, so we only uppercase numbers which are a mere 2 digits long.
    str = string.sub(string.upper(str), 0, 6)
    -- Sets string to an empty string
    local ASCII = ''
    -- Loops through all of string passed to it and converts to upper case ASCII values
    for i = 1, string.len(str) do
        -- Assigns the specific value to a character to then assign to the ASCII string/number
        local c = string.sub(str, i, i)
        -- Concatenation of old string and new character
        ASCII = ASCII .. string.byte(c)
    end
    return ASCII
end

function isInRange()
    -- Assigns arbitrary value (50) to note the target is not within range
    local range = 50
    if IsActionInRange(2) then range = 35 end -- Checks Fireball Range, slot 2
    if IsActionInRange(3) and UnitLevel("player") < 25 then range = 30 end -- Checks Frostbolt Range, slot 3
    -- if IsActionInRange(10) then range = 30 end -- Checks Counterspell Range, slot 11. Useful for when after arctic reach is applied
    if CheckInteractDistance("target", 1) then range = 28 end 
    -- if IsActionInRange(4) then range = 20 end -- Checks Fire Blast Range, slot 4
    if CheckInteractDistance("target", 3) then range = 10 end
    return range
end

function Range_To_Target()
    local range = 50
    if CheckInteractDistance("target", 3) then range = 9.9 end -- Checks Fireball Range, slot 2
    if CheckInteractDistance("target", 1) then range = 28 end -- Checks Frostbolt Range, slot 3
    if IsActionInRange(2) then range = 35 end -- Checks Counterspell Range, slot 11. Useful for when after arctic reach is applied
    return range
end


function Modulo(val, by)
    return val - math.floor(val / by) * by
end

function integerToColor(i)
    if i ~= math.floor(i) then
        error("The number passed to 'integerToColor' must be an integer")
    end
    
    if i > (256 * 256 * 256 - 1) then -- the biggest value to represent with 3 bytes of colour
        error("Integer too big to encode as color")
    end
    
    -- r,g,b are integers in range 0-255
    local b = Modulo(i, 256)
    i = math.floor(i / 256)
    local g = Modulo(i, 256)
    i = math.floor(i / 256)
    local r = Modulo(i, 256)
    
    -- then we turn them into 0-1 range
    return r / 255, g / 255, b / 255
end

-- Grabs current target's name (friend or foe)
function GetTargetName(partition)
    -- Uses wow function to get target string
    local target = GetUnitName("target")
    if target ~= nil then
    	target = StringToASCIIHex(target)
    	if partition == 0 then
    		return tonumber(string.sub(target, 0, 6))
    	else
    		return tonumber(string.sub(target, 7, 12))
    	end
   	else
   		return 0
    end
end


function GetZoneName(partition)
    local zone = StringToASCIIHex(GetZoneText())
    if zone and tonumber(string.sub(zone, 7, 12)) ~= nil then
        -- Returns first 3 characters of zone
        if partition < 3 then
            return tonumber(string.sub(zone, 0, 6))
            -- Returns characters 4-6 of zone
        elseif partition >= 3 then
            return tonumber(string.sub(zone, 7, 12))
        end
    end
    -- Fail safe to prevent nil
    return 1
end

function EventFrame:OnUpdate() 

	local health = UnitHealth("player")
	local px, py = C_Map.GetPlayerMapPosition(C_Map.GetBestMapForUnit("player"), "player"):GetXY()
	local x1, x2 = math.modf(px*255)
	local y1, y2 = math.modf(py*255)
	local facing = GetPlayerFacing();
	local zone = StringToASCIIHex(GetZoneText())
	local targetN = StringToASCIIHex(GetZoneText())
	local base, modifier = UnitRangedAttack("unit");

	-- print(format("%f %f %f", x1/255, x2, facing/7))
	coordX.texture:SetVertexColor(x1/255, x2, facing/6.28318530718) -- x cords, facing
	coordY.texture:SetVertexColor(y1/255, y2, 0) -- y cords
	zoneName.texture:SetVertexColor(tonumber(zone:sub(1,2))/255, tonumber(zone:sub(3,4))/255, tonumber(zone:sub(5,6))/255) -- Get name of first 6 characters of zone
	maxHealth.texture:SetVertexColor(integerToColor(UnitHealthMax("player"))) -- Represents maximum amount of health
	currentHealth.texture:SetVertexColor(integerToColor(UnitHealth("player"))) -- Represents current amount of health
	maxMana.texture:SetVertexColor(integerToColor(UnitPowerMax("player")))  -- Represents max amount of mana
	currentMana.texture:SetVertexColor(integerToColor(UnitPower("player")))  -- Represents current amount of mana
	selfLevel.texture:SetVertexColor(integerToColor(UnitLevel("player"))) -- get self level
	rangeToTarget.texture:SetVertexColor(integerToColor(isInRange())) -- range to target
	targetName.texture:SetVertexColor(integerToColor(GetTargetName(0)))
	targetNameL.texture:SetVertexColor(integerToColor(GetTargetName(1)))
	targetHealthMax.texture:SetVertexColor(integerToColor(UnitHealthMax("target")))
	targetHealth.texture:SetVertexColor(integerToColor(UnitHealth("target")))
	targetLVL_DISTANCE_RANGE.texture:SetVertexColor(UnitLevel("target")/255, 0, (base + modifier)/255) -- enemy lvl, range to enemy, eneny attack range

	
end
EventFrame:SetScript("OnUpdate", EventFrame.OnUpdate)


function SlashCmdList.HELLO_WORLD(msg, editbox)
	local type, id, info = GetCursorInfo("player")
	base, modifier = UnitRangedAttack("target");
	print(isInRange())
	print("Level "..UnitLevel("target"))
	local facing = GetPlayerFacing();
	local zone = StringToASCIIHex(GetZoneText())
	local mana = UnitPower("player");
	local target = integerToColor(GetTargetName(0))

	local px, py = C_Map.GetPlayerMapPosition(C_Map.GetBestMapForUnit("player"), "player"):GetXY()
	print(format("x: %.2f y: %.2f facing: %f", px*100, py*100, facing));

end