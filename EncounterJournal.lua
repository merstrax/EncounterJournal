--FILE CONSTANTS
local HEADER_INDENT = 15;
local MAX_CREATURES_PER_ENCOUNTER = 9;

local SECTION_BUTTON_OFFSET = 6;
local SECTION_DESCRIPTION_OFFSET = 27;

local EJ_STYPE_ITEM = 0;
local EJ_STYPE_ENCOUNTER = 1;
local EJ_STYPE_CREATURE = 2;
local EJ_STYPE_SECTION = 3;
local EJ_STYPE_INSTANCE = 4;

local EJ_HTYPE_OVERVIEW = 3;

local EJ_NUM_INSTANCE_PER_ROW = 4;

local EJ_LORE_MAX_HEIGHT = 97;
local EJ_MAX_SECTION_MOVE = 320;

local EJ_NUM_SEARCH_PREVIEWS = 5;
local EJ_SHOW_ALL_SEARCH_RESULTS_INDEX = EJ_NUM_SEARCH_PREVIEWS + 1;

AJ_MAX_NUM_SUGGESTIONS = 3;

LE_EXPANSION_CLASSIC = 1;
LE_EXPANSION_BURNING_CRUSADE = 2;
LE_EXPANSION_WRATH_OF_THE_LICH_KING = 3;

Enum.EncounterJournalTypes = {};
Enum.EncounterJournalTypes.Instance = 0;
Enum.EncounterJournalTypes.Encounter = 1;
Enum.EncounterJournalTypes.Section = 3;
EJ_TYPES = Enum.EncounterJournalTypes;

AtlasInfo["UI-EJ-Classic"] = { "Interface\\AddOns\\EncounterJournal\\Assets\\UI-EJ-Classic", 786, 425, 0, 1, 0, 0.9995, false, false}
AtlasInfo["UI-EJ-BurningCrusade"] = { "Interface\\AddOns\\EncounterJournal\\Assets\\UI-EJ-BurningCrusade", 786, 425, 0, 1, 0, 0.9995, false, false}
AtlasInfo["UI-EJ-WrathoftheLichKing"] = { "Interface\\AddOns\\EncounterJournal\\Assets\\UI-EJ-WrathoftheLichKing", 786, 425, 0, 1, 0, 0.9995, false, false}

-- Priority list for *not my spec*
local overviewPriorities = {
	[1] = "DAMAGER",
	[2] = "HEALER",
	[3] = "TANK",
	[4] = "NONE",
}

local NONE_FLAG = -1;
local flagsByRole = {
	["DAMAGER"] = 1,
	["HEALER"] = 2,
	["TANK"] = 0,
	["NONE"] = NONE_FLAG,
}

local EJ_Tabs = {};

EJ_Tabs[1] = {frame="overviewScroll", button="overviewTab"};
EJ_Tabs[2] = {frame="lootScroll", button="lootTab"};
EJ_Tabs[3] = {frame="detailsScroll", button="bossTab"};
EJ_Tabs[4] = {frame="model", button="modelTab"};

local EJ_section_openTable = {};
local EJ_LINK_INSTANCE 		= EJ_TYPES.Instance;
local EJ_LINK_ENCOUNTER		= EJ_TYPES.Encounter;
local EJ_LINK_SECTION 		= EJ_TYPES.Section;

local EJ_DIFFICULTIES = {
	DifficultyUtil.ID.DungeonNormal,
	DifficultyUtil.ID.DungeonHeroic,
	DifficultyUtil.ID.DungeonMythic,
	DifficultyUtil.ID.RaidNormal,
	DifficultyUtil.ID.RaidHeroic,
	DifficultyUtil.ID.RaidMythic,
	DifficultyUtil.ID.RaidAscended,
};

local function IsEJDifficulty(difficultyID)
	return tContains(EJ_DIFFICULTIES, difficultyID);
end

local function GetEJDifficultySize(difficultyID)
	return DifficultyUtil:GetMaxPlayers(difficultyID);
end

local function GetEJDifficultyString(difficultyID)
	local name = DifficultyUtil.GetDifficultyName(difficultyID);
	local size = GetEJDifficultySize(difficultyID);
	if size then
		return name.." ("..tostring(size)..")";
	else
		return name;
	end
end

local EJ_TIER_DATA =
{
	[1] = { backgroundAtlas = "UI-EJ-Classic", r = 1.0, g = 0.8, b = 0.0 },
	[2] = { backgroundAtlas = "UI-EJ-BurningCrusade", r = 0.6, g = 0.8, b = 0.0 },
	[3] = { backgroundAtlas = "UI-EJ-WrathoftheLichKing", r = 0.2, g = 0.8, b = 1.0 },
}

EJButtonMixin = {}

function EJButtonMixin:OnLoad()
	local l, t, _, b, r = self.UpLeft:GetTexCoord();
	self.UpLeft:SetTexCoord(l, l + (r-l)/2, t, b);
	l, t, _, b, r = self.UpRight:GetTexCoord();
	self.UpRight:SetTexCoord(l + (r-l)/2, r, t, b);

	l, t, _, b, r = self.DownLeft:GetTexCoord();
	self.DownLeft:SetTexCoord(l, l + (r-l)/2, t, b);
	l, t, _, b, r = self.DownRight:GetTexCoord();
	self.DownRight:SetTexCoord(l + (r-l)/2, r, t, b);

	l, t, _, b, r = self.HighLeft:GetTexCoord();
	self.HighLeft:SetTexCoord(l, l + (r-l)/2, t, b);
	l, t, _, b, r = self.HighRight:GetTexCoord();
	self.HighRight:SetTexCoord(l + (r-l)/2, r, t, b);
end

function EJButtonMixin:OnMouseDown(button)
	self.UpLeft:Hide();
	self.UpRight:Hide();

	self.DownLeft:Show();
	self.DownRight:Show();
end

function EJButtonMixin:OnMouseUp(button)
	self.UpLeft:Show();
	self.UpRight:Show();

	self.DownLeft:Hide();
	self.DownRight:Hide();
end

function GetEJTierData(tier)
	return EJ_TIER_DATA[tier] or EJ_TIER_DATA[1];
end

local BOSS_LOOT_BUTTON_HEIGHT = 45;
local INSTANCE_LOOT_BUTTON_HEIGHT = 64;

function EncounterJournal_OnLoad(self)
	Mixin(self, "PortraitFrameMixin");
	EncounterJournalTitleText:SetText("Dungeon Journal");
	EncounterJournal:SetPortraitToAsset("Interface\\AddOns\\EncounterJournal\\Assets\\UI-EJ-PortraitIcon");
	self:RegisterForDrag("LeftButton");
	EncounterJournal:RegisterEvent("VARIABLES_LOADED");

	EncounterJournal.selectedTab = 1;

	EncounterJournal.encounter.freeHeaders = {};
	EncounterJournal.encounter.usedHeaders = {};
	EncounterJournal.encounter.info.creatureButtons = {};
	EncounterJournal.encounter.info.Tabs = {};

	EncounterJournal.encounter.overviewFrame = EncounterJournal.encounter.info.overviewScroll.child;
	EncounterJournal.encounter.overviewFrame.isOverview = true;
	EncounterJournal.encounter.overviewFrame.overviews = {};
	EncounterJournal.encounter.info.overviewScroll.ScrollBar.stepSize = 30;

	EncounterJournal.encounter.infoFrame = EncounterJournal.encounter.info.detailsScroll.child;
	EncounterJournal.encounter.info.detailsScroll.ScrollBar.stepSize = 30;

	EncounterJournal.encounter.bossesFrame = EncounterJournal.encounter.info.bossesScroll.child;
	--EncounterJournal.encounter.info.bossesScroll.ScrollBar.stepSize = 30;

	EncounterJournal.encounter.info.overviewTab:Click();

	EncounterJournal.encounter.lootFrame = EncounterJournal.encounter.info.lootScroll.child;
	EncounterJournal.encounter.info.lootScroll.buttons = {};
	EncounterJournal.encounter.info.lootScroll.ScrollBar.stepSize = 30;
	--EncounterJournal.encounter.info.lootScroll.dynamic = EncounterJournal_LootCalcScroll;
	--HybridScrollFrame_CreateButtons(self.encounter.info.lootScroll, "EncounterItemTemplate", 0, 0);

	local homeData = {
		name = HOME,
		OnClick = function()
			EncounterJournal_ListInstances()
		end,
	}
	EJ_NavBar_Initialize(self.navBar, "EJ_NavButtonTemplate", homeData, self.navBar.home, self.navBar.overflow);

	-- initialize tabs
	local instanceSelect = EncounterJournal.instanceSelect;
	EncounterJournal.instanceSelect.scroll.ScrollBar.stepSize = 30;

	local tierName = EJ_GetTierInfo(EJ_GetCurrentTier());
	UIDropDownMenu_SetText(instanceSelect.tierDropDown, tierName);

	EncounterJournal.instanceSelect.Tabs = {
		instanceSelect.dungeonsTab,
		instanceSelect.raidssTab
	};

	EncounterJournal_SetupModelController();
end

function EncounterJournal_EnableTierDropDown()
	local tierName = EJ_GetTierInfo(EJ_GetCurrentTier());
	UIDropDownMenu_SetText(EncounterJournal.instanceSelect.tierDropDown, tierName);
	UIDropDownMenu_EnableDropDown(EncounterJournal.instanceSelect.tierDropDown);
end

function EncounterJournal_DisableTierDropDown(removeText)
	UIDropDownMenu_DisableDropDown(EncounterJournal.instanceSelect.tierDropDown);
	if ( removeText ) then
		UIDropDownMenu_SetText(EncounterJournal.instanceSelect.tierDropDown, nil);
	else
		local tierName = EJ_GetTierInfo(EJ_GetCurrentTier());
		UIDropDownMenu_SetText(EncounterJournal.instanceSelect.tierDropDown, tierName);
	end
end

function EncounterJournal_HasChangedContext(instanceID, instanceType, difficultyID)
	if ( instanceType == "none" ) then
		-- we've gone from a dungeon to the open world
		return EncounterJournal.lastInstance ~= nil;
	elseif ( instanceID ~= 0 and (instanceID ~= EncounterJournal.lastInstance or EncounterJournal.lastDifficulty ~= difficultyID) ) then
		-- dungeon or difficulty has changed
		return true;
	end
	return false;
end

function EncounterJournal_ResetDisplay(instanceID, instanceType, difficultyID)
	if ( instanceType == "none" ) then
		EncounterJournal.lastInstance = nil;
		EncounterJournal.lastDifficulty = nil;
	else
		EJ_ContentTab_Select(1);

		EncounterJournal_DisplayInstance(instanceID);
		EncounterJournal.lastInstance = instanceID;
		-- try to set difficulty to current instance difficulty
		if ( EJ_IsValidInstanceDifficulty(difficultyID) ) then
			EJ_SetDifficulty(difficultyID);
		end
		EncounterJournal.lastDifficulty = difficultyID;
	end
end

function EncounterJournal_OnShow(self)
	EncounterJournal_LootUpdate();

	local instanceSelect = EncounterJournal.instanceSelect;

	--automatically navigate to the current dungeon if you are in one;
	local mapID = 0 --C_Map.GetBestMapForUnit("player");
	local instanceID = mapID and EJ_GetInstanceForMap(mapID) or 0;
	local _, instanceType, difficultyID = GetInstanceInfo();
	if ( EncounterJournal_HasChangedContext(instanceID, instanceType, difficultyID) ) then
		EncounterJournal_ResetDisplay(instanceID, instanceType, difficultyID);
		EncounterJournal.queuedPortraitUpdate = nil;
	elseif ( self.encounter.overviewFrame:IsShown() and EncounterJournal.overviewDefaultRole and not EncounterJournal.encounter.overviewFrame.linkSection ) then
		local role = "DAMAGER";

		if ( EncounterJournal.overviewDefaultRole ~= role ) then
			EncounterJournal_ToggleHeaders(EncounterJournal.encounter.overviewFrame);
		end
	end

	if ( EncounterJournal.queuedPortraitUpdate ) then
		-- fixes portraits when switching between fullscreen and windowed mode
		EncounterJournal.queuedPortraitUpdate = false;
		EncounterJournal_UpdatePortraits();
	end

	local tierData = GetEJTierData(EJ_GetCurrentTier());
	
	instanceSelect.bg:SetAtlas(tierData.backgroundAtlas, true);
	instanceSelect.raidsTab.selectedGlow:SetVertexColor(tierData.r, tierData.g, tierData.b);
	instanceSelect.dungeonsTab.selectedGlow:SetVertexColor(tierData.r, tierData.g, tierData.b);

	EJ_ContentTab_Select(1);
end

function EncounterJournal_CheckAndDisplayLootTab()
end

function EncounterJournal_OnHide(self)
	self.shouldDisplayDifficulty = nil;
end

local function EncounterJournal_IsHeaderTypeOverview(headerType)
	return headerType == EJ_HTYPE_OVERVIEW;
end

local function EncounterJournal_GetRootAfterOverviews(rootSectionID)
	local nextSectionID = rootSectionID;

	repeat
		local info = C_EncounterJournal.GetSectionInfo(nextSectionID);
		local isOverview = info and EncounterJournal_IsHeaderTypeOverview(info.headerType);
		if isOverview then
			nextSectionID = info.siblingSectionID;
		end
	until not isOverview;

	return nextSectionID;
end

local function EncounterJournal_CheckForOverview(rootSectionID)
	local sectionInfo = C_EncounterJournal.GetSectionInfo(rootSectionID);
	return sectionInfo and EncounterJournal_IsHeaderTypeOverview(sectionInfo.headerType);
end

local function EncounterJournal_SearchForOverview(instanceID)
	local bossIndex = 1;
	local _, _, bossID = EJ_GetEncounterInfoByIndex(bossIndex);
	while bossID do
		local _, _, _, rootSectionID = EJ_GetEncounterInfo(bossID);

		if (EncounterJournal_CheckForOverview(rootSectionID)) then
			return true;
		end

		bossIndex = bossIndex + 1;
		_, _, bossID = EJ_GetEncounterInfoByIndex(bossIndex);
	end

	return false;
end

local function EncounterJournal_UpdateSpellText(self, spellID)
	if self.encounter.encounterID then
		local rootSectionID = select(4, EJ_GetEncounterInfo(self.encounter.encounterID));
		if (EncounterJournal_CheckForOverview(rootSectionID)) then
			if self.encounter.overviewFrame.spellID == spellID then
				local sectionInfo = C_EncounterJournal.GetSectionInfo(rootSectionID);
				EncounterJournal_SetBullets(self.encounter.overviewFrame.overviewDescription, sectionInfo.description, false);
			end
		end
	end

	-- Overview frames
	for overviewIndex, overview in ipairs(self.encounter.overviewFrame.overviews) do
		if overview.spellID == spellID then
			local sectionInfo = C_EncounterJournal.GetSectionInfo(overview.sectionID);
			EncounterJournal_SetDescriptionWithBullets(overview, sectionInfo.description);
		end
	end

	-- Section info
	EncounterJournal.encounter.infoFrame.updatingSpells = true;
	for headerIndex, header in ipairs(self.encounter.usedHeaders) do
		if header.spellID == spellID then
			local sectionInfo = C_EncounterJournal.GetSectionInfo(header.myID);
			local description = sectionInfo.description:gsub("\|cffffffff(.-)\|r", "%1");
			header.description:SetText(description);
			if EJ_section_openTable[header.myID] then
				EncounterJournal_ToggleHeaders(header);
				EncounterJournal_ToggleHeaders(header);
			end
		end
	end
	EncounterJournal.encounter.infoFrame.updatingSpells = nil;
end

function EncounterJournal_OnEvent(self, event, ...)
	if(event == "VARIABLES_LOADED") then
		EJ_Data:LoadAddons();
	end
end

function EncounterJournal_UpdateDifficulty(newDifficultyID)
	if IsEJDifficulty(newDifficultyID) then
		local difficultyStr = GetEJDifficultyString(newDifficultyID);
		EncounterJournal.encounter.info.difficulty:SetText(difficultyStr);
		EncounterJournal_Refresh();
	end
end

function EncounterJournal_GetCreatureButton(index)
	if index > MAX_CREATURES_PER_ENCOUNTER then
		return nil;
	end

	local self = EncounterJournal.encounter.info;
	local button = self.creatureButtons[index];
	if (not button) then
		button = CreateFrame("BUTTON", nil, self, "EncounterCreatureButtonTemplate");
		button:SetPoint("TOPLEFT", self.creatureButtons[index-1], "BOTTOMLEFT", 0, 8);
		self.creatureButtons[index] = button;
	end
	return button;
end

function EncounterJournal_FindCreatureButtonForDisplayInfo(displayInfo)
	for index, button in ipairs(EncounterJournal.encounter.info.creatureButtons) do
		if button.displayInfo == displayInfo then
			return button;
		end
	end

	return nil;
end

function EncounterJournal_UpdatePortraits()
	if ( EncounterJournal:IsShown() ) then
		local creatures = EncounterJournal.encounter.info.creatureButtons;
		for i = 1, #creatures do
			local button = creatures[i];
			if ( button and button:IsShown() ) then
				SetPortraitTextureFromCreatureDisplayID(button.creature, button.displayInfo);
			else
				break;
			end
		end
		local usedHeaders = EncounterJournal.encounter.usedHeaders;
		for _, header in pairs(usedHeaders) do
			if ( header.button.portrait.displayInfo ) then
				SetPortraitTextureFromCreatureDisplayID(header.button.portrait.icon, header.button.portrait.displayInfo);
			end
		end
	else
		EncounterJournal.queuedPortraitUpdate = true;
	end
end

local infiniteLoopPolice = false; --design might make a tier that has no instances at all sigh
function EncounterJournal_ListInstances()
	local instanceSelect = EncounterJournal.instanceSelect;

	local tierName = EJ_GetTierInfo(EJ_GetCurrentTier());
	UIDropDownMenu_SetText(instanceSelect.tierDropDown, tierName);
	EJ_NavBar_Reset(EncounterJournal.navBar);
	EncounterJournal.encounter:Hide();
	instanceSelect:Show();
	local showRaid = EJ_ShouldShowRaid();

	local scrollFrame = instanceSelect.scroll.child;
	local index = 1;
	local instanceID, name, description, _, _, buttonImage, link = EJ_GetInstanceByIndex(index, showRaid);

	--No instances in this tab
	if not instanceID and not infiniteLoopPolice then
		--disable this tab and select the other one.
		infiniteLoopPolice = true;
		if ( showRaid ) then
			instanceSelect.raidsTab.grayBox:Show();
			EJ_ContentTab_Select(1);
		else
			instanceSelect.dungeonsTab.grayBox:Show();
			EJ_ContentTab_Select(2);
		end
		return;
	end
	infiniteLoopPolice = false;

	while instanceID do
		local instanceButton = scrollFrame["instance"..index];
		if not instanceButton then -- create button
			instanceButton = CreateFrame("BUTTON", scrollFrame:GetParent():GetName().."instance"..index, scrollFrame, "EncounterInstanceButtonTemplate");
			scrollFrame["instance"..index] = instanceButton;
			if mod(index-1, EJ_NUM_INSTANCE_PER_ROW) == 0 then
				instanceButton:SetPoint("TOP", scrollFrame["instance"..(index-EJ_NUM_INSTANCE_PER_ROW)], "BOTTOM", 0, -15);
			else
				instanceButton:SetPoint("LEFT", scrollFrame["instance"..(index-1)], "RIGHT", 15, 0);
			end
		end

		instanceButton.name:SetText(name);
		instanceButton.bgImage:SetTexture(buttonImage);
		instanceButton.instanceID = instanceID;
		instanceButton.tooltipTitle = name;
		instanceButton.tooltipText = description;
		instanceButton.link = link;
		instanceButton:Show();

		index = index + 1;
		instanceID, name, description, _, _, buttonImage, link = EJ_GetInstanceByIndex(index, showRaid);
	end

	EJ_HideInstances(index);
	EJ_SelectInstance(nil);
end

function EncounterJournalInstanceButton_OnClick(self)
	EJ_NavBar_Reset(EncounterJournal.navBar);
	EncounterJournal_DisplayInstance(EncounterJournal.instanceID);
end

local function EncounterJournal_SetupIconFlags(sectionID, infoHeaderButton)
	local iconFlag = C_EncounterJournal.GetSectionIconFlags(sectionID);
	local textRightAnchor;

	infoHeaderButton.icon1:Hide();
	infoHeaderButton.icon2:Hide();
	infoHeaderButton.icon3:Hide();
	infoHeaderButton.icon4:Hide();

	if #iconFlag ~= 0 then
		textRightAnchor = infoHeaderButton.icon1;
	end
	
	for i = 1, #iconFlag do
		infoHeaderButton["icon"..tostring(i)]:Show();
		infoHeaderButton["icon"..tostring(i)].tooltip = EJ_Data.IconTooltip[iconFlag[i] + 1];
		EncounterJournal_SetFlagIcon(infoHeaderButton["icon"..tostring(i)].icon, iconFlag[i]);
	end

	if textRightAnchor then
		infoHeaderButton.title:SetPoint("RIGHT", textRightAnchor, "LEFT", -5, 0);
	else
		infoHeaderButton.title:SetPoint("RIGHT", infoHeaderButton, "RIGHT", -5, 0);
	end
end

local function UpdateDifficultyAnchoring(difficultyFrame)
	local infoFrame = difficultyFrame:GetParent();
	infoFrame.reset:ClearAllPoints();

	if difficultyFrame:IsShown() then
		infoFrame.reset:SetPoint("RIGHT", difficultyFrame, "LEFT", -10, 0);
	else
		infoFrame.reset:SetPoint("TOPRIGHT", infoFrame, "TOPRIGHT", -19, -13);
	end
end

local function UpdateDifficultyVisibility()
	local shouldDisplayDifficulty = select(8, EJ_GetInstanceInfo()) ~= 2;

	-- As long as the current tab isn't the model tab, which always suppresses the difficulty, then update the shown state.
	local info = EncounterJournal.encounter.info;
	info.difficulty:Hide();
	info.difficulty:SetShown(shouldDisplayDifficulty and (info.tab ~= 4));

	UpdateDifficultyAnchoring(info.difficulty);
end

local IconIndexByDifficulty = {
	[3] = 3, -- Heroic
	[4] = 12, -- Mythic
	[6] = 3,
	[7] = 12,
	[8] = 14,
};

local function GetIconIndexForDifficultyID(difficultyID)
	return IconIndexByDifficulty[difficultyID];
end

function EncounterJournal_DisplayInstance(instanceID, noButton)
	local difficultyID = EJ_GetDifficulty();

	local self = EncounterJournal.encounter;
	EncounterJournal.instanceSelect:Hide();
	EncounterJournal.encounter:Show();
	EncounterJournal.creatureDisplayID = 0;

	EncounterJournal.instanceID = instanceID;
	EncounterJournal.encounterID = nil;
	EJ_SelectInstance(instanceID);
	
	local difficultyStr = GetEJDifficultyString(difficultyID);
	EncounterJournal.encounter.info.difficulty:SetText(difficultyStr);

	EncounterJournal_LootUpdate();
	EncounterJournal_ClearDetails();

	local _, instanceName, description, bgImage, loreImage, buttonImage = EJ_GetInstanceInfo();
	self.instance.title:SetFontObject("GameFontNormal");
	self.instance.title:SetText(instanceName);
	self.instance.titleBG:SetWidth(self.instance.title:GetStringWidth() + 80);
	self.instance.loreBG:SetTexture(loreImage);
	
	self.info.instanceTitle:ClearAllPoints();
	local iconIndex = GetIconIndexForDifficultyID(difficultyID);
	local hasDifficultyIcon = iconIndex ~= nil;
	self.info.difficultyIcon:SetShown(hasDifficultyIcon);
	if hasDifficultyIcon then
		self.info.instanceTitle:SetPoint("LEFT", self.info.difficultyIcon, "RIGHT", -6, -0);
		EncounterJournal_SetFlagIcon(self.info.difficultyIcon, iconIndex);
	else
		self.info.instanceTitle:SetPoint("TOPLEFT", 65, -20);
	end

	self.info.instanceTitle:SetFontObject("GameFontNormal");
	self.info.instanceTitle:SetText(instanceName);
	--self.instance.mapButton:SetShown(dungeonAreaMapID and dungeonAreaMapID > 0);

	self.instance.loreScroll.child.lore:SetText(description);
	local loreHeight = self.instance.loreScroll.child.lore:GetHeight();
	self.instance.loreScroll.ScrollBar:SetValue(0);
	if loreHeight <= EJ_LORE_MAX_HEIGHT then
		self.instance.loreScroll.ScrollBar:Hide();
	else
		self.instance.loreScroll.ScrollBar:Show();
	end

	self.info.instanceButton.instanceID = instanceID;
	--self.info.instanceButton.icon:SetTexture(buttonImage);
	SetPortraitToTexture(self.info.instanceButton.icon, buttonImage);
	--self.info.instanceButton.icon:SetMask("Interface\\CharacterFrame\\TempPortraitAlphaMask");
	
	self.info.model.dungeonBG:SetTexture(bgImage);

	UpdateDifficultyVisibility();

	local scrollFrame = EncounterJournal.encounter.bossesFrame;
	local bossIndex = 1;

	local name = "";
	local description = "";
	local bossID = 0;
	local rootSectionID = 0;
	local link = "";

	local encounterInfo = EJ_GetEncounterInfoByIndex(bossIndex);
	if encounterInfo then 
		name = encounterInfo.Name;
		description = encounterInfo.Description;
		bossID = encounterInfo.EncounterID;
		rootSectionID = encounterInfo.RootSectionID;
		link = "";
	end

	local hasBossAbilities = false;

	while bossID do
		local bossButton = scrollFrame["BossButton"..bossIndex];
		if not bossButton then -- create a new header;
			bossButton = CreateFrame("BUTTON", scrollFrame:GetParent():GetName().."BossButton"..bossIndex, EncounterJournal.encounter.bossesFrame, "EncounterBossButtonTemplate");
			scrollFrame["BossButton"..bossIndex] = bossButton;
			if bossIndex > 1 then
				bossButton:SetPoint("TOPLEFT", scrollFrame:GetParent():GetName().."BossButton"..(bossIndex - 1), "BOTTOMLEFT", 0, -15);
			else
				bossButton:SetPoint("TOPLEFT", EncounterJournal.encounter.bossesFrame, "TOPLEFT", 0, -10);
			end
		end

		bossButton.link = link;
		bossButton:SetText(name);
		bossButton:Show();
		bossButton.encounterID = bossID;
		--Use the boss' first creature as the button icon
		local _, _, _, bossImage = EJ_GetCreatureInfo(bossIndex);
		bossImage = bossImage or "Interface\\AddOns\\EncounterJournal\\Assets\\UI-EJ-BOSS-Default";
		bossButton.creature:SetTexture(bossImage);
		
		if(bossButton.creature:GetTexture() ~= bossImage) then
			bossButton.creature:SetTexture("Interface\\AddOns\\EncounterJournal\\Assets\\UI-EJ-BOSS-Default");
		end
		
		bossButton:UnlockHighlight();
		
		--EncounterJournalBossButton_UpdateDifficultyOverlay(bossButton);
		
		if ( not hasBossAbilities ) then
			hasBossAbilities = rootSectionID ~= nil;
		end

		bossIndex = bossIndex + 1;
		local nextEncounter = EJ_GetEncounterInfoByIndex(bossIndex);
		if(nextEncounter) then
			name = nextEncounter.Name;
			description = nextEncounter.Description;
			bossID = nextEncounter.EncounterID;
			rootSectionID = nextEncounter.RootSectionID;
			link = "";
		else
			bossID = nil;
		end
	end

	EncounterJournal_SetTabEnabled(EncounterJournal.encounter.info.overviewTab, true);
	--disable model tab and abilities tab, no boss selected
	EncounterJournal_SetTabEnabled(EncounterJournal.encounter.info.modelTab, false);
	EncounterJournal_SetTabEnabled(EncounterJournal.encounter.info.bossTab, false);
	EncounterJournal_SetTabEnabled(EncounterJournal.encounter.info.lootTab, C_EncounterJournal.InstanceHasLoot());

	if (EncounterJournal_SearchForOverview(instanceID)) then
		EJ_Tabs[1].frame = "overviewScroll";
		EJ_Tabs[3].frame = "detailsScroll"; -- flip them back
		self.info[EJ_Tabs[1].button].tooltip = "Overview";
		self.info[EJ_Tabs[3].button]:Show();
		self.info[EJ_Tabs[4].button]:SetPoint("TOP", self.info[EJ_Tabs[3].button], "BOTTOM", 0, 2)
		self.info.overviewFound = true;
	else
		EJ_Tabs[1].frame = "detailsScroll";
		EJ_Tabs[3].frame = "overviewScroll"; -- flip these so detailsScroll won't get hidden, overview will never be shown here
		self.info[EJ_Tabs[1].button].tooltip = "Overview";
		self.info[EJ_Tabs[3].button]:Hide();
		self.info[EJ_Tabs[4].button]:SetPoint("TOP", self.info[EJ_Tabs[2].button], "BOTTOM", 0, 2)
		self.info.overviewFound = false;
	end

	self.instance:Show();
	self.info.overviewScroll:Hide();
	self.info.detailsScroll:Hide();
	self.info.lootScroll:Hide();
	self.info.rightShadow:Hide();

	if (self.info.tab < 3) then
		self.info[EJ_Tabs[self.info.tab].button]:Click()
	else
		self.info.overviewTab:Click();
	end

	if not noButton then
		local buttonData = {
			id = instanceID,
			name = instanceName,
			OnClick = EJNAV_RefreshInstance,
			listFunc = EJNAV_GetInstanceList,
		}
		EJ_NavBar_AddButton(EncounterJournal.navBar, buttonData);
	end
end

function EncounterJournal_DisplayEncounter(encounterID, noButton)
	local self = EncounterJournal.encounter;

	local ename, description, _, rootSectionID = EJ_GetEncounterInfo(encounterID);

	if (EncounterJournal.encounterID == encounterID) then
		--EJ_NavBar is already set to the right button, don't add another
		noButton = true;
	elseif (EncounterJournal.encounterID) then
		--make sure the previous EJ_NavBar button is the instance button
		EJ_NavBar_OpenTo(EncounterJournal.navBar, EncounterJournal.instanceID);
	end
	EncounterJournal.encounterID = encounterID;
	EJ_SelectEncounter(encounterID);
	EncounterJournal_LootUpdate();
	--need to clear details, but don't want to scroll to top of bosses list
	local bossListScrollValue = EncounterJournal.encounter.info.bossesScroll.ScrollBar:GetValue()
	EncounterJournal_ClearDetails();
	EncounterJournal.encounter.info.bossesScroll.ScrollBar:SetValue(bossListScrollValue);

	self.info.encounterTitle:SetText(ename);

	EncounterJournal_SetTabEnabled(EncounterJournal.encounter.info.overviewTab, rootSectionID or description ~= "");
	EncounterJournal_SetTabEnabled(EncounterJournal.encounter.info.lootTab, C_EncounterJournal.InstanceHasLoot());	

	local sectionInfo = C_EncounterJournal.GetSectionInfo(rootSectionID);

	local overviewFound;
	if (sectionInfo and EncounterJournal_IsHeaderTypeOverview(sectionInfo.headerType)) then
		EncounterJournal.encounter.overviewFrame.spellID = sectionInfo.spellID;
		EncounterJournal.encounter.overviewFrame.loreDescription:SetHeight(0);
		EncounterJournal.encounter.overviewFrame.loreDescription:SetWidth(EncounterJournal.encounter.overviewFrame:GetWidth() - 5);
		EncounterJournal.encounter.overviewFrame.loreDescription:SetText(description);
		EncounterJournal.encounter.overviewFrame.overviewDescription:SetWidth(EncounterJournal.encounter.overviewFrame:GetWidth() - 5);
		EncounterJournal.encounter.overviewFrame.overviewDescription.Text:SetWidth(EncounterJournal.encounter.overviewFrame:GetWidth() - 5);
		EncounterJournal_SetBullets(EncounterJournal.encounter.overviewFrame.overviewDescription, sectionInfo.description, false);
		local bulletHeight = 0;
		if (EncounterJournal.encounter.overviewFrame.Bullets and #EncounterJournal.encounter.overviewFrame.Bullets > 0) then
			for i = 1, #EncounterJournal.encounter.overviewFrame.Bullets do
				bulletHeight = bulletHeight + EncounterJournal.encounter.overviewFrame.Bullets[i]:GetHeight();
			end
			local bullet = EncounterJournal.encounter.overviewFrame.Bullets[1];
			bullet:ClearAllPoints();
			bullet:SetPoint("TOPLEFT", EncounterJournal.encounter.overviewFrame.overviewDescription, "BOTTOMLEFT", 0, -9);
		end
		EncounterJournal.encounter.overviewFrame.descriptionHeight = EncounterJournal.encounter.overviewFrame.loreDescription:GetHeight() + EncounterJournal.encounter.overviewFrame.overviewDescription:GetHeight() + bulletHeight + 42;
		EncounterJournal.encounter.overviewFrame.rootOverviewSectionID = rootSectionID;
		rootSectionID = EncounterJournal_GetRootAfterOverviews(rootSectionID);
		overviewFound = true;
	end

	EncounterJournal.encounter.infoFrame.description:SetWidth(EncounterJournal.encounter.infoFrame:GetWidth() -5);
	EncounterJournal.encounter.infoFrame.description:SetText(description);
	EncounterJournal.encounter.infoFrame.descriptionHeight = EncounterJournal.encounter.infoFrame.description:GetHeight();

	EncounterJournal.encounter.infoFrame.encounterID = encounterID;
	EncounterJournal.encounter.infoFrame.rootSectionID = rootSectionID;
	EncounterJournal.encounter.infoFrame.expanded = false;
	
	local scrollFrame = EncounterJournal.encounter.bossesFrame;
	local bossIndex = 1;
	local name = "";
	local description = "";
	local bossID = 0;
	local rootSectionID = 0;
	local link = "";

	local encounterInfo = EJ_GetEncounterInfoByIndex(bossIndex);
	if encounterInfo then 
		name = encounterInfo.Name;
		description = encounterInfo.Description;
		bossID = encounterInfo.EncounterID;
		rootSectionID = encounterInfo.RootSectionID;
		link = "";
	end
	
	while bossID do
		local bossButton = scrollFrame["BossButton"..bossIndex];
		if not bossButton then -- create a new header;
			bossButton = CreateFrame("BUTTON", scrollFrame:GetParent():GetName().."BossButton"..bossIndex, EncounterJournal.encounter.bossesFrame, "EncounterBossButtonTemplate");
			scrollFrame["BossButton"..bossIndex] = bossButton;
			if bossIndex > 1 then
				bossButton:SetPoint("TOPLEFT", scrollFrame:GetParent():GetName().."BossButton"..(bossIndex - 1), "BOTTOMLEFT", 0, -15);
			else
				bossButton:SetPoint("TOPLEFT", EncounterJournal.encounter.bossesFrame, "TOPLEFT", 0, -10);
			end
		end

		bossButton.link = link;
		bossButton:SetText(name);
		bossButton:Show();
		bossButton.encounterID = bossID;

		local _, _, _, bossImage = EJ_GetCreatureInfo(bossIndex);
		bossImage = bossImage or "Interface\\AddOns\\EncounterJournal\\Assets\\UI-EJ-BOSS-Default";
		bossButton.creature:SetTexture(bossImage);
		
		if(bossButton.creature:GetTexture() ~= bossImage) then
			bossButton.creature:SetTexture("Interface\\AddOns\\EncounterJournal\\Assets\\UI-EJ-BOSS-Default");
		end

		if (encounterID == bossID) then
			bossButton:LockHighlight();
		else
			bossButton:UnlockHighlight();
		end

		bossIndex = bossIndex + 1;
		local nextEncounter = EJ_GetEncounterInfoByIndex(bossIndex);
		if(nextEncounter) then
			name = nextEncounter.Name;
			description = nextEncounter.Description;
			bossID = nextEncounter.EncounterID;
			rootSectionID = nextEncounter.RootSectionID;
			link = "";
		else
			bossID = nil;
		end
	end

	--enable model and abilities tab
	local displayInfo = select(5, EJ_GetCreatureInfo(0, encounterID));
	if displayInfo then
		EncounterJournal_SetTabEnabled(EncounterJournal.encounter.info.modelTab, true);
	else
		EncounterJournal_SetTabEnabled(EncounterJournal.encounter.info.modelTab, false);
	end
	EncounterJournal_SetTabEnabled(EncounterJournal.encounter.info.bossTab, false);

	if (overviewFound) then
		EncounterJournal_ToggleHeaders(EncounterJournal.encounter.overviewFrame);
		EncounterJournal.encounter.overviewFrame:Show();
	else
		EncounterJournal.encounter.overviewFrame:Hide();
	end

	EncounterJournal_ToggleHeaders(EncounterJournal.encounter.infoFrame);

	EncounterJournal.encounter:Show();

	--make sure we stay on the tab we were on
	EncounterJournal.encounter.info[EJ_Tabs[EncounterJournal.encounter.info.tab].button]:Click()

	if not noButton then
		local buttonData = {
			id = encounterID,
			name = ename,
			OnClick = EJNAV_RefreshEncounter,
			listFunc = EJNAV_GetEncounterList,
		}
		EJ_NavBar_AddButton(EncounterJournal.navBar, buttonData);
	end
end

function EncounterJournal_SetupModelController()
	--Thank you Ascension Developers for this :D
	EncounterJournal.encounter.info.model.ClickHandler = CreateFrame("Frame", nil, EncounterJournal.encounter.info.model)
	EncounterJournal.encounter.info.model.ClickHandler:SetAllPoints()
	EncounterJournal.encounter.info.model.ClickHandler:EnableMouse(true)
	EncounterJournal.encounter.info.model.ClickHandler:EnableMouseWheel(true)
	EncounterJournal.encounter.info.model.MaxSize = 3;
	EncounterJournal.encounter.info.model.MinSize = 0.3;


	EncounterJournal.encounter.info.model.ClickHandler:SetScript("OnUpdate", function(self)
		if self.StartX then
			local x = GetCursorPosition()
			local diff = (x - self.StartX) * 0.01
			self.StartX = x
			self:GetParent():SetFacing(self:GetParent():GetFacing() + diff)
		end
	end)

	EncounterJournal.encounter.info.model.ClickHandler:SetScript("OnMouseDown", function(self, button)
		if button == "LeftButton" then
			self.StartX = GetCursorPosition()
		end
	end)

	EncounterJournal.encounter.info.model.ClickHandler:SetScript("OnMouseUp", function(self, button)
		if button == "LeftButton" then
			self.StartX = nil
		end
	end)

	EncounterJournal.encounter.info.model.ClickHandler:SetScript("OnMouseWheel", function(self, delta)
		local preview = self:GetParent()
		local scale = preview:GetModelScale()
		if scale >= preview.MaxSize and delta > 0 then
			return
		end

		if scale <= preview.MinSize and delta < 0 then
			return
		end

		preview:SetModelScale(scale + (delta * 0.05))
	end)
end

function EncounterJournal_DisplayCreature(self, forceUpdate)
	if EncounterJournal.encounter.info.shownCreatureButton then
		EncounterJournal.encounter.info.shownCreatureButton:Enable();
	end

	local modelScene = EncounterJournal.encounter.info.model;

	if self.displayInfo then
		modelScene:Show();
		modelScene:ClearModel();
		modelScene:ApplyUICamera(0, true);
		modelScene:RefreshUnit();
		local scale = modelScene:GetEffectiveScale();
		modelScene:SetModelScale(self.displayInfo[EJ_Data.Scale] / scale);
		modelScene:SetPosition(self.displayInfo[EJ_Data.PosX] / scale, self.displayInfo[EJ_Data.PosY] / scale, self.displayInfo[EJ_Data.PosZ] / scale);
		modelScene:SetDisplayInfo(self.displayInfo[1]);
		modelScene:SetFacing(0);

		EncounterJournal.creatureDisplayID = self.displayInfo;
	end

	modelScene.imageTitle:SetText(self.name);

	self:Disable();
	EncounterJournal.encounter.info.shownCreatureButton = self;

	-- Ensure that the models tab properly updates the selected button (it's possible to display creatures here
	-- that only have a portrait/creature button on the abilities tab).
	local creatureButton = EncounterJournal_FindCreatureButtonForDisplayInfo(self.displayInfo);
	if creatureButton and creatureButton:IsShown() then
		creatureButton:Click();
	end
end

function EncounterJournal_ShowCreatures(forceUpdate)
	local id, name, description, iconImage, displayInfo, uiModelSceneID = EJ_GetCreatureInfo(0, C_EncounterJournal.SELECTED_ENCOUNTER);
	local button = EncounterJournal.encounter.info.creatureButton;

	button.name = name;
	button.id = id;
	button.description = description;
	button.displayInfo = displayInfo;
	button.uiModelSceneID = uiModelSceneID;

	EncounterJournal_DisplayCreature(button, forceUpdate);
end

function EncounterJournal_HideCreatures(clearDisplayInfo)
	EncounterJournal.encounter.info.creatureButton:Hide();

	if clearDisplayInfo then
		EncounterJournal.encounter.info.creatureButton.displayInfo = nil;
		EncounterJournal.encounter.info.creatureButton.uiModelSceneID = nil;
	end
end

local toggleTempList = {};
local headerCount = 0;

PAPER_FRAME_EXPANDED_COLOR	= CreateColor(0.929, 0.788, 0.620);
PAPER_FRAME_COLLAPSED_COLOR = CreateColor(0.827, 0.659, 0.463);

function EncounterJournal_UpdateButtonState(self)
	local oldtex = self.textures.expanded;
	if self:GetParent().expanded then
		self.tex = self.textures.expanded;
		oldtex = self.textures.collapsed;
		self.expandedIcon:SetTextColor(PAPER_FRAME_EXPANDED_COLOR:GetRGB());
		self.title:SetTextColor(PAPER_FRAME_EXPANDED_COLOR:GetRGB());
	else
		self.tex = self.textures.collapsed;
		self.expandedIcon:SetTextColor(PAPER_FRAME_COLLAPSED_COLOR:GetRGB());
		self.title:SetTextColor(PAPER_FRAME_COLLAPSED_COLOR:GetRGB());
	end

	oldtex.up[1]:Hide();
	oldtex.up[2]:Hide();
	oldtex.up[3]:Hide();
	oldtex.down[1]:Hide();
	oldtex.down[2]:Hide();
	oldtex.down[3]:Hide();


	self.tex.up[1]:Show();
	self.tex.up[2]:Show();
	self.tex.up[3]:Show();
	self.tex.down[1]:Hide();
	self.tex.down[2]:Hide();
	self.tex.down[3]:Hide();
end

function EncounterJournal_OnClick(self)
	if IsModifiedClick("CHATLINK") and ChatEdit_GetActiveWindow() then
		if self.link then
			ChatEdit_InsertLink(self.link);
		end
		return;
	end

	EncounterJournal_ToggleHeaders(self:GetParent())
	self:GetScript("OnShow")(self);
	--PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON);
end

function EncounterJournal_OnHyperlinkEnter(self, link, text, fontString, left, bottom, width, height)
	self.tooltipFrame:SetOwner(self, "ANCHOR_PRESERVE");
	self.tooltipFrame:ClearAllPoints();
	self.tooltipFrame:SetPoint("BOTTOMLEFT", fontString, "TOPLEFT", left + width, bottom);
	self.tooltipFrame:SetHyperlink(link, EJ_GetDifficulty(), EJ_GetContentTuningID());
end

function EncounterJournal_CleanBullets(self, start, keep)
	if (not self.Bullets) then return end
    start = start or 1;
	for i = start, #self.Bullets do
		self.Bullets[i]:Hide();
		if (not keep) then
			if (not self.BulletCache) then
				self.BulletCache = {};
			end
			self.Bullets[i]:ClearAllPoints();
			tinsert(self.BulletCache, self.Bullets[i]);
			self.Bullets[i] = nil;
		end
	end
end

function EncounterJournal_SetBullets(object, description, hideBullets)
	local parent = object:GetParent();

	if (not string.find(description, "\$bullet;")) then
		object.Text:SetText(description);
		object.textString = description;
		object:SetHeight(object.Text:GetHeight());
		EncounterJournal_CleanBullets(parent);
		return;
	end

	local desc = strtrim(string.match(description, "(.-)\$bullet;"));

	if (desc) then
		object.Text:SetText(desc);
		object.textString = desc;
		object:SetHeight(object.Text:GetHeight());
	end

	local bullets = {}
	for v in string.gmatch(description,"\$bullet;([^$]+)") do
		tinsert(bullets, v);
	end

	local k = 1;
	local skipped = 0;
	for j = 1,#bullets do
		local text = strtrim(bullets[j]).."|n|n";
		if (text and text ~= "") then
			local bullet;
			bullet = parent.Bullets and parent.Bullets[k];
			if (not bullet) then
				if (parent.BulletCache and #parent.BulletCache > 0) then
					-- We only need to check for BulletCache because the BulletCache is created when we clean the bullets, so the BulletCache existing also means the Bullets exist.
					parent.Bullets[k] = tremove(parent.BulletCache);
					bullet = parent.Bullets[k];
				else
					bullet = CreateFrame("Frame", nil, parent, "EncounterOverviewBulletTemplate");
				end
				bullet:SetWidth(parent:GetWidth() - 13);
				bullet.Text:SetWidth(bullet:GetWidth() - 26);
			end
			bullet:ClearAllPoints();
			if (k == 1) then
				if (parent.button) then
					bullet:SetPoint("TOPLEFT", parent.button, "BOTTOMLEFT", 13, object:GetHeight());
				else
					bullet:SetPoint("TOPLEFT", parent.button, "TOPLEFT", 13, object:GetHeight());
				end
			else
				bullet:SetPoint("TOP", parent.Bullets[k-1], "BOTTOM", 0, 0);
			end
			bullet.Text:SetText(text);
			if (bullet.Text:GetHeight() ~= 0) then
				bullet:SetHeight(bullet.Text:GetHeight());
			end

			if (hideBullets) then
				bullet:Hide();
			else
				bullet:Show();
			end
			k = k + 1;
		else
			skipped = skipped + 1;
		end
	end

	EncounterJournal_CleanBullets(parent, (#bullets - skipped) + 1);
end

function EncounterJournal_SetDescriptionWithBullets(infoHeader, description)
	EncounterJournal_SetBullets(infoHeader.overviewDescription, description, true);

	infoHeader.descriptionBG:ClearAllPoints();
	infoHeader.overviewDescription:ClearAllPoints();
	infoHeader.descriptionBG:SetPoint("TOPLEFT", infoHeader.button, "BOTTOMLEFT", 1, 0);
	infoHeader.overviewDescription:SetPoint("TOPLEFT", infoHeader.button, "BOTTOMLEFT", 1, 0);
	if (infoHeader.Bullets and #infoHeader.Bullets > 0) then
		--infoHeader.descriptionBG:SetPoint("TOPRIGHT", infoHeader.Bullets[#infoHeader.Bullets], -1, -11);
	else
		infoHeader.descriptionBG:SetPoint("TOPRIGHT", infoHeader.overviewDescription,"TOPRIGHT", 9, -11);
	end
	infoHeader.descriptionBG:Hide();
	infoHeader.descriptionBGBottom:Hide();
	infoHeader.overviewDescription:Hide();
end

function EncounterJournal_SetUpOverview(self, overviewSectionID, index)
	local infoHeader;
	if not self.overviews[index] then -- create a new header;
		infoHeader = CreateFrame("FRAME", "EncounterJournalOverviewInfoHeader"..index, EncounterJournal.encounter.overviewFrame, "EncounterInfoTemplate");
		infoHeader.description:Hide();
		infoHeader.overviewDescription:Hide();
		infoHeader.descriptionBG:Hide();
		infoHeader.descriptionBGBottom:Hide();
		infoHeader.button.abilityIcon:Hide();
		infoHeader.button.portrait:Hide();
		infoHeader.button.portrait.name = nil;
		infoHeader.button.portrait.displayInfo = nil;
		infoHeader.button.portrait.uiModelSceneID = nil;
		infoHeader.button.icon2:Hide();
		infoHeader.button.icon3:Hide();
		infoHeader.button.icon4:Hide();
		infoHeader.overviewIndex = index;
		infoHeader.isOverview = true;

		local textLeftAnchor = infoHeader.button.expandedIcon;
		local textRightAnchor = infoHeader.button.icon1;
		infoHeader.button.title:SetPoint("LEFT", textLeftAnchor, "RIGHT", 5, 0);
		infoHeader.button.title:SetPoint("RIGHT", textRightAnchor, "LEFT", -5, 0);

		self.overviews[index] = infoHeader;
	else
		infoHeader = self.overviews[index];
	end

	infoHeader.button.expandedIcon:SetText("+");
	infoHeader.expanded = false;

	infoHeader:ClearAllPoints();
	if (index == 1) then
		infoHeader:SetPoint("TOPLEFT", 0, -15 - self.descriptionHeight - SECTION_BUTTON_OFFSET);
		infoHeader:SetPoint("TOPRIGHT", 0, -15 - self.descriptionHeight - SECTION_BUTTON_OFFSET);
	else
		infoHeader:SetPoint("TOPLEFT", self.overviews[index-1], "BOTTOMLEFT", 0, -9);
		infoHeader:SetPoint("TOPRIGHT", self.overviews[index-1], "BOTTOMRIGHT", 0, -9);
	end

	infoHeader.description:Hide();

	for i = 1, #infoHeader.Bullets do
		infoHeader.Bullets[i]:Hide();
	end

	wipe(infoHeader.Bullets);
	local sectionInfo = C_EncounterJournal.GetSectionInfo(overviewSectionID);

	if (not sectionInfo) then
		infoHeader:Hide();
		return;
	end

	EncounterJournal_SetupIconFlags(overviewSectionID, infoHeader.button);

	infoHeader.spellID = sectionInfo.spellID;
	infoHeader.button.title:SetText(sectionInfo.title);
	infoHeader.button.link = sectionInfo.link;
	infoHeader.sectionID = overviewSectionID;

	infoHeader.overviewDescription:SetWidth(infoHeader:GetWidth() - 20);
	infoHeader.overviewDescription:SetHeight(self.descriptionHeight)
	infoHeader.overviewDescription:SetPoint("TOPLEFT", infoHeader, "BOTTOMLEFT");
	EncounterJournal_SetDescriptionWithBullets(infoHeader, sectionInfo.description);
	infoHeader:Show();
end

local function GetOverviewSections(rootOverviewSectionID)
	local overviewSections = {};
	local overviewInfo = C_EncounterJournal.GetSectionInfo(rootOverviewSectionID);
	local nextSectionID = overviewInfo.firstChildSectionID;

	while nextSectionID do
		local currentSectionID = nextSectionID; -- cache current one to get icons
		local sectionInfo = C_EncounterJournal.GetSectionInfo(nextSectionID);
		nextSectionID = sectionInfo and sectionInfo.siblingSectionID;

		if sectionInfo then
			if not sectionInfo.filteredByDifficulty then
				local iconFlags = C_EncounterJournal.GetSectionIconFlags(currentSectionID);
				overviewSections[currentSectionID] = iconFlags and iconFlags[1] or NONE_FLAG;
			end
		end
	end

	return overviewSections;
end

local function GetOverviewSectionIDForRole(overviewSections, role)
	for sectionID, flag in pairs(overviewSections) do
		if (flag == flagsByRole[role]) then
			return sectionID;
		end
	end
	return nil;
end

local function SetUpSectionsForRole(self, overviewSections, role, currentIndex)
	local roleSectionID = GetOverviewSectionIDForRole(overviewSections, role);
	while ( roleSectionID ) do
		EncounterJournal_SetUpOverview(self, roleSectionID, currentIndex);
		currentIndex = currentIndex + 1;
		overviewSections[roleSectionID] = nil;
		roleSectionID = GetOverviewSectionIDForRole(overviewSections, role);
	end
	return currentIndex;
end

function EncounterJournal_ToggleHeaders(self, doNotShift)
	local numAdded = 0;
	local infoHeader, parentID, _;
	local hWidth = self:GetWidth();
	local nextSectionID;
	local topLevelSection = false;

	local isOverview = self.isOverview;

	local hideHeaders;
	if (not self.isOverview or (self.isOverview and self.overviewIndex)) then
		self.expanded = not self.expanded;
		hideHeaders = not self.expanded;
	end

	if hideHeaders then
		self.button.expandedIcon:SetText("+");
		self.description:Hide();
		if (self.overviewDescription) then
			self.overviewDescription:Hide();
		end
		self.descriptionBG:Hide();
		self.descriptionBGBottom:Hide();

		EncounterJournal_CleanBullets(self, nil, true);

		if (self.overviewIndex) then
			local overview = EncounterJournal.encounter.overviewFrame.overviews[self.overviewIndex + 1];

			if (overview) then
				overview:SetPoint("TOPLEFT", self, "BOTTOMLEFT", 0, -9);
			end
		else
			EncounterJournal_ClearChildHeaders(self);
		end
	else
		if (not isOverview) then
			if strlen(self.description:GetText() or "") > 0 then
				self.description:Show();
				if (self.overviewDescription) then
					self.overviewDescription:Hide();
				end
				if self.button then
					self.overviewDescription:SetPoint("TOPLEFT", self.button, "BOTTOMLEFT", 11, -9);
					self.description:SetPoint("TOPLEFT", self.overviewDescription,  0, 0);
					self.descriptionBG:Show();
					self.descriptionBGBottom:Show();
					self.button.expandedIcon:SetText("-");
				end
			elseif self.button then
				self.description:Hide();
				if (self.overviewDescription) then
					self.overviewDescription:Hide();
				end
				self.descriptionBG:Hide();
				self.descriptionBGBottom:Hide();
				self.button.expandedIcon:SetText("-");
			end
		else
			if (self.overviewIndex) then
				self.button.expandedIcon:SetText("-");
				for i = 1, #self.Bullets do
					self.Bullets[i]:Show();
				end
				self.description:Hide();
				self.overviewDescription:Show();
				self.descriptionBG:Show();
				self.descriptionBGBottom:Show();

				local overview = EncounterJournal.encounter.overviewFrame.overviews[self.overviewIndex + 1];

				if (overview) then
					if (self.Bullets and #self.Bullets > 0) then
						overview:SetPoint("TOPLEFT", self.Bullets[#self.Bullets], "BOTTOMLEFT", -13, -18);
					else
						local yoffset = -18 -- self:GetHeight();
						overview:SetPoint("TOPLEFT", self, "BOTTOMLEFT", 0, yoffset);
					end
				end
				EncounterJournal_UpdateButtonState(self.button);
			end
		end

		-- Get Section Info
		if (not isOverview) then
			local freeHeaders = EncounterJournal.encounter.freeHeaders;
			local usedHeaders = EncounterJournal.encounter.usedHeaders;

			local listEnd = #usedHeaders;

			if self.myID then  -- this is from a button click
				local sectionInfo = C_EncounterJournal.GetSectionInfo(self.myID);
				nextSectionID = sectionInfo.firstChildSectionID;
				parentID = self.myID;
				self.description:SetWidth(self:GetWidth() -20);
				hWidth = hWidth - HEADER_INDENT;
			else
				--This sets the base encounter header
				parentID = self.encounterID;
				nextSectionID = self.rootSectionID;
				topLevelSection = true;
			end

			while nextSectionID do
				local sectionInfo = C_EncounterJournal.GetSectionInfo(nextSectionID);
				if not sectionInfo then
					break;
				end

				if not sectionInfo.filteredByDifficulty then --ignore all sections that should not be shown with our current difficulty settings, but do not stop iteration
					if #freeHeaders == 0 then -- create a new header;
						headerCount = headerCount + 1; -- the is a file local
						infoHeader = CreateFrame("FRAME", "EncounterJournalInfoHeader"..headerCount, EncounterJournal.encounter.infoFrame, "EncounterInfoTemplate");
						infoHeader.Bullets = {};
						infoHeader:Hide();
					else
						infoHeader = freeHeaders[#freeHeaders];
						freeHeaders[#freeHeaders] = nil;
					end

					numAdded = numAdded + 1;
					toggleTempList[#toggleTempList+1] = infoHeader;

					infoHeader.spellID = sectionInfo.spellID;
					infoHeader.button.link = sectionInfo.link;
					infoHeader.parentID = parentID;
					infoHeader.myID = nextSectionID;
					-- Spell names can show up in white, which clashes with the parchment, strip out white color codes.
					local description;
					if sectionInfo.description then
						description = sectionInfo.description:gsub("\|cffffffff(.-)\|r", "%1");
					else
						description = "";
					end
					infoHeader.description:SetText(description);
					infoHeader.button.title:SetText(sectionInfo.title);

					if topLevelSection then
						infoHeader.button.title:SetFontObject("GameFontNormalMed3");
					else
						infoHeader.button.title:SetFontObject("GameFontNormal");
					end

					--All headers start collapsed
					infoHeader.expanded = false
					infoHeader.description:Hide();
					infoHeader.descriptionBG:Hide();
					infoHeader.descriptionBGBottom:Hide();
					infoHeader.button.expandedIcon:SetText("+");

					for i = 1, #infoHeader.Bullets do
						infoHeader.Bullets[i]:Hide();
					end

					local textLeftAnchor = infoHeader.button.expandedIcon;
					--Show ability Icon
					if sectionInfo.abilityIcon then
						infoHeader.button.abilityIcon:SetTexture(sectionInfo.abilityIcon);
						infoHeader.button.abilityIcon:Show();
						textLeftAnchor = infoHeader.button.abilityIcon;
					else
						infoHeader.button.abilityIcon:Hide();
					end

					--Show Creature Portrait
					if sectionInfo.creatureDisplayID ~= 0 then
						--SetPortraitTextureFromCreatureDisplayID(infoHeader.button.portrait.icon, sectionInfo.creatureDisplayID);
						infoHeader.button.portrait.name = sectionInfo.title;
						infoHeader.button.portrait.displayInfo = sectionInfo.creatureDisplayID;
						infoHeader.button.portrait.uiModelSceneID = 9;
						infoHeader.button.portrait:Show();
						textLeftAnchor = infoHeader.button.portrait;
						infoHeader.button.abilityIcon:Hide();
					else
						infoHeader.button.portrait:Hide();
						infoHeader.button.portrait.name = nil;
						infoHeader.button.portrait.displayInfo = nil;
						infoHeader.button.portrait.uiModelSceneID = nil;
					end
					infoHeader.button.title:SetPoint("LEFT", textLeftAnchor, "RIGHT", 5, 0);

					EncounterJournal_SetupIconFlags(nextSectionID, infoHeader.button);

					infoHeader.index = nil;
					infoHeader:SetWidth(hWidth);

					-- If this section has not be seen and should start open
					if EJ_section_openTable[infoHeader.myID] == nil and sectionInfo.startsOpen then
						EJ_section_openTable[infoHeader.myID] = true;
					end

					--toggleNested?
					if EJ_section_openTable[infoHeader.myID]  then
						infoHeader.expanded = false; -- setting false to expand it in EncounterJournal_ToggleHeaders
						numAdded = numAdded + EncounterJournal_ToggleHeaders(infoHeader, true);
					end

					infoHeader:Show();
				end -- if not filteredByDifficulty

				nextSectionID = sectionInfo.siblingSectionID;
			end

			if not doNotShift and numAdded > 0 then
				--fix the usedlist
				local startIndex = self.index or 0;
				for i=listEnd,startIndex+1,-1 do
					usedHeaders[i+numAdded] = usedHeaders[i];
					usedHeaders[i+numAdded].index = i + numAdded;
					usedHeaders[i] = nil
				end
				for i=1,numAdded do
					usedHeaders[startIndex + i] = toggleTempList[i];
					usedHeaders[startIndex + i].index = startIndex + i;
					toggleTempList[i] = nil;
				end
			end

			if topLevelSection and usedHeaders[1] then
				usedHeaders[1]:SetPoint("TOPRIGHT", 0 , -8 - EncounterJournal.encounter.infoFrame.descriptionHeight - SECTION_BUTTON_OFFSET);
			end
		elseif (not self.overviewIndex) then
			for i = 1, #self.overviews do
				self.overviews[i]:Hide();
			end

			if (not self.rootOverviewSectionID) then
				return;
			end

			if (self.linkSection) then
				for i = 1, 3 do
					local overview = self.overviews[i];
					if (overview.sectionID == self.linkSection) then
						overview.expanded = false;
							EncounterJournal_ToggleHeaders(overview);
						overview.cbCount = 0;
					else
						overview.expanded = true;
							EncounterJournal_ToggleHeaders(overview);
					end
				end
				self.linkSection = nil;
			else
				self.overviews[1].expanded = false;
				if ( hasRoleSection ) then
					EncounterJournal_ToggleHeaders(self.overviews[1]);
				end
			end
		end
	end

	if (not isOverview) then
		if self.myID then
			EJ_section_openTable[self.myID] = false;--self.expanded;
		end

		if not doNotShift then
			EncounterJournal_ShiftHeaders(self.index or 1);

			--check to see if it is offscreen
			if self.index then
				local scrollValue = EncounterJournal.encounter.info.detailsScroll.ScrollBar:GetValue();
				local cutoff = EncounterJournal.encounter.info.detailsScroll:GetHeight() + scrollValue;

				local _, _, _, _, anchorY = self:GetPoint();
				anchorY = anchorY - self:GetHeight();
				if self.description:IsShown() then
					anchorY = anchorY - self.description:GetHeight() - SECTION_DESCRIPTION_OFFSET;
				end

				if cutoff < abs(anchorY) then
					self.frameCount = 0;
					self:SetScript("OnUpdate", EncounterJournal_MoveSectionUpdate);
				end
			end
		end
		return numAdded;
	else
		return 0;
	end
end

function EncounterJournal_ShiftHeaders(index)
	local usedHeaders = EncounterJournal.encounter.usedHeaders;
	if not usedHeaders[index] then
		return;
	end

	local _, _, _, _, anchorY = usedHeaders[index]:GetPoint();
	for i=index,#usedHeaders-1 do
		anchorY = anchorY - usedHeaders[i]:GetHeight();
		if usedHeaders[i].description:IsShown() then
			anchorY = anchorY - usedHeaders[i].description:GetHeight() - SECTION_DESCRIPTION_OFFSET;
		else
			anchorY = anchorY - SECTION_BUTTON_OFFSET;
		end

		usedHeaders[i+1]:SetPoint("TOPRIGHT", 0 , anchorY);
	end
end

function EncounterJournal_ResetHeaders()
	for key,_ in pairs(EJ_section_openTable) do
		EJ_section_openTable[key] = nil;
	end

	--PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON);
	EncounterJournal_Refresh();
end

function EncounterJournal_MoveSectionUpdate(self)

	if self.frameCount > 0 then
		local _, _, _, _, anchorY = self:GetPoint();
		local height = min(EJ_MAX_SECTION_MOVE, self:GetHeight() + self.description:GetHeight() + SECTION_DESCRIPTION_OFFSET);
		local scrollValue = abs(anchorY) - (EncounterJournal.encounter.info.detailsScroll:GetHeight()-height);
		EncounterJournal.encounter.info.detailsScroll.ScrollBar:SetValue(scrollValue);
		self:SetScript("OnUpdate", nil);
	end
	self.frameCount = self.frameCount + 1;
end

function EncounterJournal_ClearChildHeaders(self, doNotShift)
	local usedHeaders = EncounterJournal.encounter.usedHeaders;
	local freeHeaders = EncounterJournal.encounter.freeHeaders;
	local numCleared = 0
	for key,header in pairs(usedHeaders) do
		if header.parentID == self.myID then
			if header.expanded then
				numCleared = numCleared + EncounterJournal_ClearChildHeaders(header, true)
			end
			header:Hide();
			usedHeaders[key] = nil;
			freeHeaders[#freeHeaders+1] = header;
			numCleared = numCleared + 1;
		end
	end

	if numCleared > 0 and not doNotShift then
		local placeIndex = self.index + 1;
		local shiftHeader = usedHeaders[placeIndex + numCleared];
		while shiftHeader do
			usedHeaders[placeIndex] = shiftHeader;
			usedHeaders[placeIndex].index = placeIndex;
			usedHeaders[placeIndex + numCleared] = nil;
			placeIndex = placeIndex + 1;
			shiftHeader = usedHeaders[placeIndex + numCleared];
		end
	end
	return numCleared
end

function EncounterJournal_ClearDetails()
	EncounterJournal.encounter.instance:Hide();
	EncounterJournal.encounter.infoFrame.description:SetText("");
	EncounterJournal.encounter.info.encounterTitle:SetText("");

	--EncounterJournal.encounter.info.overviewScroll.ScrollBar:SetValue(0);
	--EncounterJournal.encounter.info.lootScroll.ScrollBar:SetValue(0);
	--EncounterJournal.encounter.info.detailsScroll.ScrollBar:SetValue(0);
	--EncounterJournal.encounter.info.bossesScroll.scrollBar:SetValue(0);

	local freeHeaders = EncounterJournal.encounter.freeHeaders;
	local usedHeaders = EncounterJournal.encounter.usedHeaders;

	for key,used in pairs(usedHeaders) do
		used:Hide();
		usedHeaders[key] = nil;
		freeHeaders[#freeHeaders+1] = used;
	end

	local clearDisplayInfo = true;
	EncounterJournal_HideCreatures(clearDisplayInfo);

	local bossIndex = 1
	local bossButton = _G["EncounterJournalEncounterFrameInfoBossesScrollFrameBossButton"..bossIndex];
	while bossButton do
		bossButton:Hide();
		bossIndex = bossIndex + 1;
		bossButton = _G["EncounterJournalEncounterFrameInfoBossesScrollFrameBossButton"..bossIndex];
	end
end

function EncounterJournal_TabClicked(self, button)
	local tabType = self:GetID();
	EncounterJournal_SetTab(tabType);
	--PlaySound(SOUNDKIT.IG_ABILITY_PAGE_TURN);
end

function EncounterJournal_SetTab(tabType)
	local info = EncounterJournal.encounter.info;
	info.tab = tabType;
	for key, data in pairs(EJ_Tabs) do
		if key == tabType then
			info[data.frame]:Show();
			info[data.button].selected:Show();
			info[data.button].unselected:Hide();
			info[data.button]:LockHighlight();
		else
			info[data.frame]:Hide();
			info[data.button].selected:Hide();
			info[data.button].unselected:Show();
			info[data.button]:UnlockHighlight();
		end
	end

	UpdateDifficultyVisibility();
end

function EncounterJournal_SetTabEnabled(tab, enabled)
	tab:SetEnabled(enabled);
	tab:GetDisabledTexture():SetDesaturated(not enabled);
	tab.unselected:SetDesaturated(not enabled);
	if not enabled then
		EncounterJournal_ValidateSelectedTab();
	end
end

function EncounterJournal_ValidateSelectedTab()
	local info = EncounterJournal.encounter.info;
	local selectedTabButton = info[EJ_Tabs[info.tab].button];
	if not selectedTabButton:IsEnabled() then
		for index, data in ipairs(EJ_Tabs) do
			local tabButton = info[data.button];
			if tabButton:IsEnabled() then
				EncounterJournal_SetTab(index);
				break;
			end
		end
	end
end

function EncounterJournal_SetLootButton(item)
	local itemInfo = C_EncounterJournal.GetLootInfoByIndex(item.index);
	if ( itemInfo and itemInfo.name ) then
		item.name:SetText(itemInfo.name);
		item.icon:SetTexture(itemInfo.icon);
		item.slot:SetText(itemInfo.slot);
		item.armorType:SetText(itemInfo.armorType);
		item.boss:SetText(EJ_GetEncounterInfo(itemInfo.encounterID));
	else
		item.name:SetText("RETRIEVING_ITEM_INFO");
		item.icon:SetTexture("Interface\\Icons\\INV_Misc_QuestionMark");
		item.slot:SetText("");
		item.armorType:SetText("");
		item.boss:SetText("");
	end
	item.encounterID = itemInfo and itemInfo.encounterID;
	item.itemID = itemInfo and itemInfo.itemID;
	item.link = itemInfo and itemInfo.link;
	item:Show();
	if item.showingTooltip then
		EncounterJournal_SetTooltip(item.link);
	end
end

function EncounterJournal_LootCallback(itemID)
	local scrollFrame = EncounterJournal.encounter.info.lootScroll;
	local itemIndex = 1
	local itemButton = scrollFrame["ItemButton"..itemIndex];
	while itemButton do
		if itemButton.itemID == itemID and itemButton:IsShown() then
			EncounterJournal_SetLootButton(itemButton);
			break;
		end
		itemIndex = itemIndex + 1;
		itemButton = scrollFrame["ItemButton"..itemIndex];
	end
end

function EncounterJournal_LootUpdate()
	local scrollFrame = EncounterJournal.encounter.info.lootScroll;
	local numLoot = EJ_GetNumLoot() or 0;
	local buttonSize = BOSS_LOOT_BUTTON_HEIGHT;

	local itemIndex = 1
	local itemButton = scrollFrame["ItemButton"..itemIndex];
	while itemButton do
		itemButton:Hide();
		itemIndex = itemIndex + 1;
		itemButton = scrollFrame["ItemButton"..itemIndex];
	end

	for itemIndex = 1, numLoot do
		local item = scrollFrame["ItemButton"..itemIndex];
		if not item then
			item = CreateFrame("BUTTON", scrollFrame:GetParent():GetName().."ItemButton"..itemIndex, EncounterJournal.encounter.info.lootScroll.scrollChild, "EncounterItemTemplate");
			scrollFrame["ItemButton"..itemIndex] = item;
			if itemIndex > 1 then
				item:SetPoint("TOPLEFT", scrollFrame:GetParent():GetName().."ItemButton"..(itemIndex - 1), "BOTTOMLEFT", 0, -15);
			else
				item:SetPoint("TOPLEFT", EncounterJournal.encounter.info.lootScroll.scrollChild, "TOPLEFT", 0, -10);
			end
		end
		
		if (EncounterJournal.encounterID) then
			item:SetHeight(BOSS_LOOT_BUTTON_HEIGHT);
			item.boss:Hide();
			item.bossTexture:Hide();
			item.bosslessTexture:Show();
		else
			buttonSize = INSTANCE_LOOT_BUTTON_HEIGHT;
			item:SetHeight(INSTANCE_LOOT_BUTTON_HEIGHT);
			item.boss:Show();
			item.bossTexture:Show();
			item.bosslessTexture:Hide();
		end
		item.index = itemIndex;
		EncounterJournal_SetLootButton(item);
	end
end

function EncounterJournal_LootCalcScroll(offset)
	local buttonHeight = BOSS_LOOT_BUTTON_HEIGHT;
	local numLoot = EJ_GetNumLoot();

	if (not EncounterJournal.encounterID) then
		buttonHeight = INSTANCE_LOOT_BUTTON_HEIGHT;
	end

	local index = floor(offset/buttonHeight)
	return index, offset - (index*buttonHeight);
end

function EncounterJournal_Loot_OnUpdate(self)
	if GameTooltip:IsOwned(self) then
		if IsModifiedClick("DRESSUP") then
			ShowInspectCursor();
		else
			ResetCursor();
		end
	end
end

function EncounterJournal_Loot_OnClick(self)
	if (EncounterJournal.encounterID ~= self.encounterID) then
		--PlaySound(SOUNDKIT.IG_SPELLBOOK_OPEN);
		EncounterJournal_DisplayEncounter(self.encounterID);
	end
end

function EncounterJournal_SetTooltip(link)
	if (not link) then
		return;
	end

	GameTooltip:SetAnchorType("ANCHOR_RIGHT");
	GameTooltip:SetHyperlink(link);
	GameTooltip_ShowCompareItem();
end

function EncounterJournal_SetFlagIcon(texture, index)
	local iconSize = 32;
	local columns = 256/iconSize;
	local rows = 64/iconSize;
	local l = mod(index, columns) / columns;
	local r = l + (1/columns);
	local t = floor(index/columns) / rows;
	local b = t + (1/rows);
	texture:SetTexCoord(l,r,t,b);
end

function EncounterJournal_Refresh(self)
	EncounterJournal_LootUpdate();

	if EncounterJournal.encounterID then
		EncounterJournal_DisplayEncounter(EncounterJournal.encounterID, true)
	elseif EncounterJournal.instanceID then
		EncounterJournal_DisplayInstance(EncounterJournal.instanceID, true);
	end
end

function EncounterJournal_OpenJournalLink(tag, jtype, id, difficultyID)
	jtype = tonumber(jtype);
	id = tonumber(id);
	difficultyID = tonumber(difficultyID);
	local instanceID, encounterID, sectionID, tierIndex = EJ_HandleLinkPath(jtype, id);
	EncounterJournal_OpenJournal(difficultyID, instanceID, encounterID, sectionID, nil, nil, tierIndex);
end

function EncounterJournal_OpenJournal(difficultyID, instanceID, encounterID, sectionID, creatureID, itemID, tierIndex)
	ShowUIPanel(EncounterJournal);
	if instanceID then
		EJ_NavBar_Reset(EncounterJournal.navBar);
		EncounterJournal_DisplayInstance(instanceID);

		if difficultyID then
			EJ_SetDifficulty(difficultyID);
		end

		if encounterID then
			if sectionID then
				if (EncounterJournal_CheckForOverview(sectionID)) then
					EncounterJournal.encounter.overviewFrame.linkSection = sectionID;
				else
					local sectionPath = {EJ_GetSectionPath(sectionID)};
					for _, id in pairs(sectionPath) do
						EJ_section_openTable[id] = true;
					end
				end
			end
			EncounterJournal_DisplayEncounter(encounterID);
		end
		if sectionID then
			if (EncounterJournal_CheckForOverview(sectionID) or not EncounterJournal_SearchForOverview(instanceID)) then
				EncounterJournal.encounter.info.overviewTab:Click();
			else
				EncounterJournal.encounter.info.bossTab:Click();
			end
		elseif itemID then
			EncounterJournal.encounter.info.lootTab:Click();
		end
	elseif tierIndex then
		EncounterJournal_TierDropDown_Select(EncounterJournal, tierIndex+1);
	else
		EncounterJournal_ListInstances()
	end
end

function EncounterJournal_SelectDifficulty(self, value)
	EJ_SetDifficulty(value);
	EncounterJournal_ResetHeaders();
	EncounterJournal.encounter.info.difficulty:SetText(GetEJDifficultyString(value));
end

function EncounterJournal_DifficultyInit(self, level)
	local currDifficulty = EJ_GetDifficulty();
	local info = UIDropDownMenu_CreateInfo();
	for i, difficultyID in ipairs(EJ_DIFFICULTIES) do
		if EJ_IsValidInstanceDifficulty(difficultyID) then
			info.func = EncounterJournal_SelectDifficulty;
			info.text = GetEJDifficultyString(difficultyID);
			info.arg1 = difficultyID;
			info.checked = currDifficulty == difficultyID;
			UIDropDownMenu_AddButton(info);
		end
	end
	EncounterJournal.encounter.info.difficulty:SetText(GetEJDifficultyString(currDifficulty));
end

function EJ_HideInstances(index)
	if ( not index ) then
		index = 1;
	end

	local scrollChild = EncounterJournal.instanceSelect.scroll.child;
	local instanceButton = scrollChild["instance"..index];
	while instanceButton do
		instanceButton:Hide();
		index = index + 1;
		instanceButton = scrollChild["instance"..index];
	end
end

function EJ_ContentTab_OnClick(self)
	if self:GetName() == "EncounterJournalInstanceSelectRaidTab" then
		EJ_SetShowRaid(true)
		EJ_ContentTab_Select(2);
	else
		EJ_SetShowRaid(false);
		EJ_ContentTab_Select(1);
	end
end

function EJ_ContentTab_Select(id)
	local instanceSelect = EncounterJournal.instanceSelect;
	local instanceTabs = {
		EncounterJournal.instanceSelect.dungeonsTab,
		EncounterJournal.instanceSelect.raidsTab
	};

	local unSelectedTab = math.abs(id - 2) + 1;

	instanceTabs[unSelectedTab]:Enable();
	instanceTabs[unSelectedTab]:GetFontString():SetTextColor(HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
	instanceTabs[unSelectedTab].selectedGlow:Hide();

	-- Setup background
	local tierData = GetEJTierData(EJ_GetCurrentTier());

	--instanceTabs[id]:Disable();
	instanceTabs[id]:GetFontString():SetTextColor(NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b);
	instanceTabs[id].selectedGlow:SetVertexColor(tierData.r, tierData.g, tierData.b);
	instanceTabs[id].selectedGlow:Show();

	instanceSelect.bg:SetAtlas(tierData.backgroundAtlas, true);

	EncounterJournal.selectedTab = id;
	EncounterJournal.encounter:Hide();
	EncounterJournal.instanceSelect:Show();
	
	instanceSelect.scroll:Show();
	EncounterJournal_ListInstances();
	EncounterJournal_EnableTierDropDown();
end

function EJTierDropDown_OnLoad(self)
	UIDropDownMenu_Initialize(self, EJTierDropDown_Initialize, "MENU");
end

function EJTierDropDown_Initialize(self, level)
	local info = UIDropDownMenu_CreateInfo();
	local numTiers = EJ_GetNumTiers();
	local currTier = EJ_GetCurrentTier();

	for i=1,numTiers do
		info.text = EJ_GetTierInfo(i);
		info.func = EncounterJournal_TierDropDown_Select
		info.checked = i == currTier;
		info.arg1 = i;
		UIDropDownMenu_AddButton(info, level)
	end
end

function EncounterJournal_TierDropDown_Select(_, tier)
	EJ_SelectTier(tier);
	local instanceSelect = EncounterJournal.instanceSelect;
	instanceSelect.dungeonsTab.grayBox:Hide();
	instanceSelect.raidsTab.grayBox:Hide();

	local tierData = GetEJTierData(tier);
	instanceSelect.bg:SetAtlas(tierData.backgroundAtlas, true);
	instanceSelect.raidsTab.selectedGlow:SetVertexColor(tierData.r, tierData.g, tierData.b);
	instanceSelect.dungeonsTab.selectedGlow:SetVertexColor(tierData.r, tierData.g, tierData.b);

	--EncounterJournal_CheckAndDisplayLootTab();

	UIDropDownMenu_SetText(instanceSelect.tierDropDown, EJ_GetTierInfo(EJ_GetCurrentTier()));

	EncounterJournal_ListInstances();
end

local CLASS_DROPDOWN = 1;

----------------------------------------
--------------Nav Bar Func--------------
----------------------------------------
function EJNAV_RefreshInstance()
	EncounterJournal_DisplayInstance(EncounterJournal.instanceID, true);
end

function EJNAV_SelectInstance(self, index, EJ_NavBar)
	local instanceID = EJ_GetInstanceByIndex(index, EJ_InstanceIsRaid());

	--Clear any previous selection.
	EJ_NavBar_Reset(EJ_NavBar);

	EncounterJournal_DisplayInstance(instanceID);
end

function EJNAV_GetInstanceList(self)
	local list = { };
	local _, name = EJ_GetInstanceByIndex(1, EJ_InstanceIsRaid());
	while name do
		local entry = { text = name, id = #list + 1, func = EJNAV_SelectInstance };
		tinsert(list, entry);
		_, name = EJ_GetInstanceByIndex(#list + 1, EJ_InstanceIsRaid());
	end
	return list;
end

function EJNAV_RefreshEncounter()
	EncounterJournal_DisplayInstance(EncounterJournal.encounterID);
end

function EJNAV_SelectEncounter(self, index, EJ_NavBar)
	local bossID = EJ_GetEncounterInfoByIndex(index).EncounterID;
	EJ_GetEncounterInfo(bossID);
	EncounterJournal_DisplayEncounter(bossID);
end

function EJNAV_GetEncounterList(self)
	local list = { };
	local name = EJ_GetEncounterInfoByIndex(1).Name;
	while name do
		local entry = { text = name, id = #list + 1, func = EJNAV_SelectEncounter };
		tinsert(list, entry);
		local n = EJ_GetEncounterInfoByIndex(#list + 1);
		if n then 
			name = EJ_GetEncounterInfoByIndex(#list + 1).Name;
		else
			name = nil;
		end
	end
	return list;
end


local AdventureJournal_LeftTitleFonts = {
	"DestinyFontHuge",		-- 32pt font
	"QuestFont_Enormous",	-- 30pt font
	"QuestFont_Super_Huge",	-- 24pt font
};

local AdventureJournal_RightTitleFonts = {
	"QuestFont_Huge", 	-- 18pt font
	"Fancy16Font",		-- 16pt font
};

local AdventureJournal_RightDescriptionFonts = {
	"SystemFont_Med1",	-- 12pt font
	-- "SystemFont_Small", -- 10pt font
};

function EncounterJournalBossButton_UpdateDifficultyOverlay(self)
	if self.encounterID then
		local name, description, bossID, rootSectionID, link, journalInstanceID, dungeonEncounterID, mapID = EJ_GetEncounterInfo(self.encounterID);
		local difficultyID = EJ_GetDifficulty();
		local defeatedOnCurrentDifficulty = mapID and dungeonEncounterID and C_RaidLocks.IsEncounterComplete(mapID, dungeonEncounterID, difficultyID);
		local hasDefeatedBoss = defeatedOnCurrentDifficulty and IsEJDifficulty(difficultyID);
		self.DefeatedOverlay:SetShown(hasDefeatedBoss);
		if hasDefeatedBoss then
			local name = DifficultyUtil.GetDifficultyName(difficultyID);
			self.DefeatedOverlay.tooltipText = ENCOUNTER_JOURNAL_ENCOUNTER_STATUS_DEFEATED_TOOLTIP:format(name);
		end
	end
end

function EncounterJournalBossButton_OnClick(self)
	local _, desc, _, rootSectionID = EJ_GetEncounterInfo(self.encounterID);
	if ( not rootSectionID) then
		EncounterJournal_SetTab(EncounterJournal.encounter.info.lootTab:GetID());
	end
	EncounterJournal_DisplayEncounter(self.encounterID);
end

function EncounterJournalBossButtonDefeatedOverlay_OnEnter(self)
	if self.tooltipText then
		GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
		
		local wrap = true;
		GameTooltip_AddNormalLine(GameTooltip, self.tooltipText, wrap);
		GameTooltip:Show();
	end
end

EncounterJournalScrollBarOldMixin = {};

function EncounterJournalScrollBarOldMixin:OnLoad()
	--self.trackBG:SetVertexColor(ENCOUNTER_JOURNAL_SCROLL_BAR_BACKGROUND_COLOR:GetRGBA());
end

local addon = LibStub("AceAddon-3.0"):NewAddon("EncounterJournal");

-- handle minimap tooltip
local function GetTipAnchor(frame)
    local x, y = frame:GetCenter();
    if not x or not y then return 'TOPLEFT', 'BOTTOMLEFT' end
    local hhalf = (x > UIParent:GetWidth() * 2 / 3) and 'RIGHT' or (x < UIParent:GetWidth() / 3) and 'LEFT' or '';
    local vhalf = (y > UIParent:GetHeight() / 2) and 'TOP' or 'BOTTOM';
    return vhalf .. hhalf, frame, (vhalf == 'TOP' and 'BOTTOM' or 'TOP') .. hhalf;
end

local minimap = LibStub:GetLibrary('LibDataBroker-1.1'):NewDataObject("EncounterJournal", {
    type = 'data source',
    text = "Encounter Journal",
    icon = "Interface\\AddOns\\EncounterJournal\\Assets\\UI-EJ-PortraitIcon",
    OnClick = function(self, button)
        GameTooltip:Hide();
        _G["EncounterJournal"]:Show()
    end,
    OnEnter = function(self)
        GameTooltip:SetOwner(self, 'ANCHOR_NONE');
        GameTooltip:SetPoint(GetTipAnchor(self));
        GameTooltip:ClearLines();
        GameTooltip:AddLine("|cffccccccEncounter Journal|r");
        GameTooltip:AddLine("Click to open the Encounter Journal");
        GameTooltip:Show();
    end,
    OnLeave = function()
        GameTooltip:Hide();
    end,
})

local icon = LibStub('LibDBIcon-1.0');

function addon:OnInitialize()
	self.db = LibStub("AceDB-3.0"):New("EJ_Options", {
        profile = {
            minimap = {
                hide = false,
            },
        },
    })

	icon:Register("EncounterJournal", minimap, self.db.profile.minimap);
end