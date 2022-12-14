
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

local EJ_TIER_INDEX_SHADOWLANDS = 9;

AJ_MAX_NUM_SUGGESTIONS = 3;

LE_EXPANSION_CLASSIC = 1;
LE_EXPANSION_BURNING_CRUSADE = 2;
LE_EXPANSION_WRATH_OF_THE_LICH_KING = 3;

Enum.EncounterJournalTypes = {};
Enum.EncounterJournalTypes.Instance = 0;
Enum.EncounterJournalTypes.Encounter = 1;
Enum.EncounterJournalTypes.Section = 3;
EJ_TYPES = Enum.EncounterJournalTypes;

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
	DifficultyUtil.ID.DungeonTimewalker,
	DifficultyUtil.ID.RaidNormal,
	DifficultyUtil.ID.RaidHeroic,
	DifficultyUtil.ID.RaidMythic,
	DifficultyUtil.ID.RaidAscended,
	DifficultyUtil.ID.RaidTimewalker,
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
	[4] = { backgroundAtlas = "UI-EJ-Cataclysm", r = 1.0, g = 0.4, b = 0.0 },
	[5] = { backgroundAtlas = "UI-EJ-MistsofPandaria", r = 0.0, g = 0.6, b = 0.2 },
	[6] = { backgroundAtlas = "UI-EJ-WarlordsofDraenor", r = 0.82, g = 0.55, b = 0.1 },
	[7] = { backgroundAtlas = "UI-EJ-Legion", r = 0.0, g = 0.6, b = 0.2 },
	[8] = { backgroundAtlas = "UI-EJ-BattleforAzeroth", r = 0.8, g = 0.4, b = 0.0 },
	[9] = { backgroundAtlas = "UI-EJ-Shadowlands", r = 0.278, g = 0.471, b = .937 },
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

ExpansionEnumToEJTierDataTableId = {
	[LE_EXPANSION_CLASSIC] = Enum.EnounterTiers.Classic,
	[LE_EXPANSION_BURNING_CRUSADE] = Enum.EnounterTiers.TBC,
	[LE_EXPANSION_WRATH_OF_THE_LICH_KING] = Enum.EnounterTiers.WLK,
}

function GetEJTierDataTableID(expansion)
	local data = ExpansionEnumToEJTierDataTableId[expansion];
	if data then
		return data;
	end

	return ExpansionEnumToEJTierDataTableId[LE_EXPANSION_CLASSIC];
end

--[[
local SlotFilterToSlotName = {
	[Enum.ItemSlotFilterType.Head] = INVTYPE_HEAD,
	[Enum.ItemSlotFilterType.Neck] = INVTYPE_NECK,
	[Enum.ItemSlotFilterType.Shoulder] = INVTYPE_SHOULDER,
	[Enum.ItemSlotFilterType.Cloak] = INVTYPE_CLOAK,
	[Enum.ItemSlotFilterType.Chest] = INVTYPE_CHEST,
	[Enum.ItemSlotFilterType.Wrist] = INVTYPE_WRIST,
	[Enum.ItemSlotFilterType.Hand] = INVTYPE_HAND,
	[Enum.ItemSlotFilterType.Waist] = INVTYPE_WAIST,
	[Enum.ItemSlotFilterType.Legs] = INVTYPE_LEGS,
	[Enum.ItemSlotFilterType.Feet] = INVTYPE_FEET,
	[Enum.ItemSlotFilterType.MainHand] = INVTYPE_WEAPONMAINHAND,
	[Enum.ItemSlotFilterType.OffHand] = INVTYPE_WEAPONOFFHAND,
	[Enum.ItemSlotFilterType.Finger] = INVTYPE_FINGER,
	[Enum.ItemSlotFilterType.Trinket] = INVTYPE_TRINKET,
	[Enum.ItemSlotFilterType.Other] = EJ_LOOT_SLOT_FILTER_OTHER,
}
]]

local BOSS_LOOT_BUTTON_HEIGHT = 45;
local INSTANCE_LOOT_BUTTON_HEIGHT = 64;


function EncounterJournal_OnLoad(self)
	Mixin(self, "PortraitFrameMixin");
	EncounterJournalTitleText:SetText("Dungeon Journal");
	EncounterJournal:SetPortraitToAsset("Interface\\EncounterJournal\\UI-EJ-PortraitIcon");
	--self:RegisterEvent("EJ_LOOT_DATA_RECIEVED");
	self:RegisterEvent("EJ_DIFFICULTY_UPDATE");
	self:RegisterEvent("UNIT_PORTRAIT_UPDATE");
	self:RegisterEvent("PORTRAITS_UPDATED");
	--self:RegisterEvent("SEARCH_DB_LOADED");
	--self:RegisterEvent("UI_MODEL_SCENE_INFO_UPDATED");

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
	--EncounterJournal.encounter.info.lootScroll.update = EncounterJournal_LootUpdate;
	EncounterJournal.encounter.info.lootScroll.ScrollBar.stepSize = 30;
	--EncounterJournal.encounter.info.lootScroll.dynamic = EncounterJournal_LootCalcScroll;
	--HybridScrollFrame_CreateButtons(self.encounter.info.lootScroll, "EncounterItemTemplate", 0, 0);

	local homeData = {
		name = HOME,
		OnClick = function()
			EncounterJournal_ListInstances()
		end,
	}
	NavBar_Initialize(self.navBar, "NavButtonTemplate", homeData, self.navBar.home, self.navBar.overflow);
	--UIDropDownMenu_Initialize(self.encounter.info.lootScroll.lootFilter, EncounterJournal_InitLootFilter, "MENU");
	--UIDropDownMenu_Initialize(self.encounter.info.lootScroll.lootSlotFilter, EncounterJournal_InitLootSlotFilter, "MENU");

	-- initialize tabs
	local instanceSelect = EncounterJournal.instanceSelect;
	EncounterJournal.instanceSelect.scroll.ScrollBar.stepSize = 30;

	local tierName = EJ_GetTierInfo(EJ_GetCurrentTier());
	UIDropDownMenu_SetText(instanceSelect.tierDropDown, tierName);

	EncounterJournal.instanceSelect.Tabs = {
		instanceSelect.dungeonsTab,
		instanceSelect.raidssTab
	};

	-- check if tabs are active
	local dungeonInstanceID = EJ_GetInstanceByIndex(1, false);
	if( not dungeonInstanceID ) then
		instanceSelect.dungeonsTab.grayBox:Show();
	end
	local raidInstanceID = EJ_GetInstanceByIndex(1, true);
	if( not raidInstanceID ) then
		instanceSelect.raidsTab.grayBox:Show();
	end
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
	self:RegisterEvent("SPELL_TEXT_UPDATE");

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

	--EncounterJournal_CheckAndDisplayLootTab();

	-- Request raid locks to show the defeated overlay for bosses the player has killed this week.
	--RequestRaidInfo();
end

function EncounterJournal_CheckAndDisplayLootTab()
	
end

function EncounterJournal_OnHide(self)
	self:UnregisterEvent("SPELL_TEXT_UPDATE");
	
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
	if  event == "EJ_LOOT_DATA_RECIEVED" then
		local itemID = ...
		if itemID and not EJ_IsLootListOutOfDate() then
			EncounterJournal_LootCallback(itemID);

			--if EncounterJournal.searchResults:IsShown() then
				--EncounterJournal_SearchUpdate();
			--elseif EncounterJouranl_IsSearchPreviewShown() then
				--EncounterJournal_UpdateSearchPreview();
			--end
		else
			EncounterJournal_LootUpdate();
		end
	elseif event == "EJ_DIFFICULTY_UPDATE" then
		--fix the difficulty buttons
		EncounterJournal_UpdateDifficulty(...);
	elseif event == "UNIT_PORTRAIT_UPDATE" then
		local unit = ...;
		if not unit then
			EncounterJournal_UpdatePortraits();
		end
	elseif event == "PORTRAITS_UPDATED" then
		EncounterJournal_UpdatePortraits();
	elseif event == "SEARCH_DB_LOADED" then
		EncounterJournal_RestartSearchTracking();
	elseif event == "UI_MODEL_SCENE_INFO_UPDATED" then
		local forceUpdate = true;
		EncounterJournal_ShowCreatures(forceUpdate);
	elseif event == "SPELL_TEXT_UPDATE" then
		local spellID = ...;
		EncounterJournal_UpdateSpellText(self, spellID);
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
	NavBar_Reset(EncounterJournal.navBar);
	EncounterJournal.encounter:Hide();
	instanceSelect:Show();
	local showRaid = EJ_ShouldShowRaid();

	local scrollFrame = instanceSelect.scroll.child;
	local index = 1;
	local instanceID, name, description, _, buttonImage, _, _, _, link = EJ_GetInstanceByIndex(index, showRaid);

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
		instanceID, name, description, _, buttonImage, _, _, _, link = EJ_GetInstanceByIndex(index, showRaid);
	end

	EJ_HideInstances(index);

	--check if the other tab is empty
	local instanceText = EJ_GetInstanceByIndex(1, not showRaid);
	--No instances in the other tab
	if not instanceText then
		--disable the other tab.
		if ( showRaid ) then
			instanceSelect.dungeonsTab.grayBox:Show();
		else
			instanceSelect.raidsTab.grayBox:Show();
		end
	end
end

function EncounterJournalInstanceButton_OnClick(self)
	NavBar_Reset(EncounterJournal.navBar);
	EncounterJournal_DisplayInstance(EncounterJournal.instanceID);
end

local function EncounterJournal_SetupIconFlags(sectionID, infoHeaderButton)
	local iconFlag = C_EncounterJournal.GetSectionIconFlags(sectionID);
	local textRightAnchor;

	infoHeaderButton.icon1:Hide();
	infoHeaderButton.icon2:Hide();
	infoHeaderButton.icon3:Hide();
	infoHeaderButton.icon4:Hide();

	if iconFlag ~= 0 then
		textRightAnchor = infoHeaderButton.icon1;
		infoHeaderButton.icon1:Show();
		--infoHeaderButton.icon1.tooltipTitle = _G["ENCOUNTER_JOURNAL_SECTION_FLAG"..iconFlag];
		--infoHeaderButton.icon1.tooltipText = _G["ENCOUNTER_JOURNAL_SECTION_FLAG_DESCRIPTION"..iconFlag];
		EncounterJournal_SetFlagIcon(infoHeaderButton.icon1.icon, iconFlag);
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
	local shouldDisplayDifficulty = select(10, EJ_GetInstanceInfo()) ~= 2;

	-- As long as the current tab isn't the model tab, which always suppresses the difficulty, then update the shown state.
	local info = EncounterJournal.encounter.info;
	info.difficulty:Hide();
	info.difficulty:SetShown(shouldDisplayDifficulty and (info.tab ~= 4));

	UpdateDifficultyAnchoring(info.difficulty);
end

local IconIndexByDifficulty = {
	[3] = 3, -- Heroic
	[4] = 12, -- Mythic
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
	EncounterJournal_LootUpdate();
	EncounterJournal_ClearDetails();

	local _, instanceName, description, bgImage, _, loreImage, buttonImage, dungeonAreaMapID = EJ_GetInstanceInfo();
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
	self.instance.mapButton:SetShown(dungeonAreaMapID and dungeonAreaMapID > 0);

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
	local name, description, bossID, rootSectionID, link = unpack(EJ_GetEncounterInfoByIndex(bossIndex));

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
		local _, _, _, _, bossImage = EJ_GetCreatureInfo(1, bossID);
		bossImage = bossImage or "Interface\\EncounterJournal\\UI-EJ-BOSS-Default";
		bossButton.creature:SetTexture(bossImage);
		bossButton:UnlockHighlight();
		
		--EncounterJournalBossButton_UpdateDifficultyOverlay(bossButton);
		
		if ( not hasBossAbilities ) then
			hasBossAbilities = rootSectionID > 0;
		end

		bossIndex = bossIndex + 1;
		local nextEncounter = EJ_GetEncounterInfoByIndex(bossIndex);
		if(nextEncounter) then
			name, description, bossID, rootSectionID, link = unpack(nextEncounter);
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
		self.info[EJ_Tabs[1].button].tooltip = OVERVIEW;
		self.info[EJ_Tabs[3].button]:Show();
		self.info[EJ_Tabs[4].button]:SetPoint("TOP", self.info[EJ_Tabs[3].button], "BOTTOM", 0, 2)
		self.info.overviewFound = true;
	else
		EJ_Tabs[1].frame = "detailsScroll";
		EJ_Tabs[3].frame = "overviewScroll"; -- flip these so detailsScroll won't get hidden, overview will never be shown here
		if ( hasBossAbilities ) then
			self.info[EJ_Tabs[1].button].tooltip = ABILITIES;
		else
			self.info[EJ_Tabs[1].button].tooltip = OVERVIEW;
		end
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
		NavBar_AddButton(EncounterJournal.navBar, buttonData);
	end
end

function EncounterJournal_DisplayEncounter(encounterID, noButton)
	local self = EncounterJournal.encounter;

	local ename, description, _, rootSectionID = unpack(EJ_GetEncounterInfo(encounterID));

	if (EncounterJournal.encounterID == encounterID) then
		--navbar is already set to the right button, don't add another
		noButton = true;
	elseif (EncounterJournal.encounterID) then
		--make sure the previous navbar button is the instance button
		NavBar_OpenTo(EncounterJournal.navBar, EncounterJournal.instanceID);
	end
	EncounterJournal.encounterID = encounterID;
	EJ_SelectEncounter(encounterID);
	EncounterJournal_LootUpdate();
	--need to clear details, but don't want to scroll to top of bosses list
	local bossListScrollValue = EncounterJournal.encounter.info.bossesScroll.ScrollBar:GetValue()
	EncounterJournal_ClearDetails();
	EncounterJournal.encounter.info.bossesScroll.ScrollBar:SetValue(bossListScrollValue);

	self.info.encounterTitle:SetText(ename);

	EncounterJournal_SetTabEnabled(EncounterJournal.encounter.info.overviewTab, rootSectionID);
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
	local name, description, bossID, rootSectionID, link = unpack(EJ_GetEncounterInfoByIndex(bossIndex));
	
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
		local _, _, _, _, bossImage = EJ_GetCreatureInfo(1, bossID);
		bossImage = bossImage or "Interface\\EncounterJournal\\UI-EJ-BOSS-Default";
		bossButton.creature:SetTexture(bossImage);

		if (encounterID == bossID) then
			bossButton:LockHighlight();
		else
			bossButton:UnlockHighlight();
		end

		bossIndex = bossIndex + 1;
		local nextEncounter = EJ_GetEncounterInfoByIndex(bossIndex);
		if(nextEncounter) then
			name, description, bossID, rootSectionID, link = unpack(nextEncounter);
		else
			bossID = nil;
		end
	end

	-- Setup Creatures
	local id, name, displayInfo, iconImage;
	for i=1,MAX_CREATURES_PER_ENCOUNTER do
		id, name, description, displayInfo, iconImage, uiModelSceneID = EJ_GetCreatureInfo(i);

		if id then
			local button = EncounterJournal_GetCreatureButton(i);
			SetPortraitTextureFromCreatureDisplayID(button.creature, displayInfo);
			button.name = name;
			button.id = id;
			button.description = description;
			button.displayInfo = displayInfo;
			button.uiModelSceneID = uiModelSceneID;
		end
	end

	--enable model and abilities tab
	EncounterJournal_SetTabEnabled(EncounterJournal.encounter.info.modelTab, true);
	EncounterJournal_SetTabEnabled(EncounterJournal.encounter.info.bossTab, true);

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
		NavBar_AddButton(EncounterJournal.navBar, buttonData);
	end
end

function EncounterJournal_DisplayCreature(self, forceUpdate)
	if EncounterJournal.encounter.info.shownCreatureButton then
		EncounterJournal.encounter.info.shownCreatureButton:Enable();
	end

	local modelScene = EncounterJournal.encounter.info.model;

	if self.displayInfo and (EncounterJournal.creatureDisplayID ~= self.displayInfo or forceUpdate) then
		modelScene:SetFromModelSceneID(self.uiModelSceneID, forceUpdate);

		local creature = modelScene:GetActorByTag("creature");
		if creature then
			creature:SetModelByCreatureDisplayID(self.displayInfo, forceUpdate);
		end

		EncounterJournal.creatureDisplayID = self.displayInfo;
	end

	modelScene.imageTitle:SetText(self.name);

	local isGMClient = IsGMClient();
	modelScene.modelName:SetShown(isGMClient);
	modelScene.modelDisplayId:SetShown(isGMClient);
	modelScene.modelNameLabel:SetShown(isGMClient);
	modelScene.modelDisplayIdLabel:SetShown(isGMClient);

	if (isGMClient) then
		local numActors = modelScene:GetNumActors();
		local actor = (numActors > 0) and modelScene:GetActorAtIndex(1);
		local displayID = actor and actor:GetModelFileID() or "";
		local name = actor and actor:GetModelPath() or "";

		modelScene.modelName:SetText(name);
		modelScene.modelDisplayId:SetText(displayID);

		if (modelScene.modelName:IsTruncated()) then
			local pos = string.find(name, "\\[^\\]*$");
			name = name:sub(1, pos - 1) .. "\\\n" .. name:sub(pos + 1);
			modelScene.modelName:SetText(name);
		end
	end

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
	for index, creatureButton in ipairs(EncounterJournal.encounter.info.creatureButtons) do
		if (creatureButton.displayInfo) then
			creatureButton:Show();
			if index == 1 then
				EncounterJournal_DisplayCreature(creatureButton, forceUpdate);
			end
		end
	end
end

function EncounterJournal_HideCreatures(clearDisplayInfo)
	for index, creatureButton in ipairs(EncounterJournal.encounter.info.creatureButtons) do
		creatureButton:Hide();

		if clearDisplayInfo then
			creatureButton.displayInfo = nil;
			creatureButton.uiModelSceneID = nil;
		end
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
		object:SetHeight(object.Text:GetContentHeight());
		EncounterJournal_CleanBullets(parent);
		return;
	end

	local desc = strtrim(string.match(description, "(.-)\$bullet;"));

	if (desc) then
		object.Text:SetText(desc);
		object.textString = desc;
		object:SetHeight(object.Text:GetContentHeight());
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
			if (bullet.Text:GetContentHeight() ~= 0) then
				bullet:SetHeight(bullet.Text:GetContentHeight());
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
				nextSectionID = sectionInfo and sectionInfo.firstChildSectionID;
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
						infoHeader.button.abilityIcon:SetTexture(EJ_FileData[sectionInfo.abilityIcon]);
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
						infoHeader.button.portrait.uiModelSceneID = sectionInfo.uiModelSceneID;
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
						overview.flashAnim:Play();
						overview:SetScript("OnUpdate", EncounterJournal_FocusSectionCallback);
					else
						overview.expanded = true;
							EncounterJournal_ToggleHeaders(overview);
						overview.flashAnim:Stop();
						overview:SetScript("OnUpdate", nil);
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
			EJ_section_openTable[self.myID] = self.expanded;
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

function EncounterJournal_FocusSection(sectionID)
	if (not EncounterJournal_CheckForOverview(sectionID)) then
		local usedHeaders = EncounterJournal.encounter.usedHeaders;
		for _, section in pairs(usedHeaders) do
			if section.myID == sectionID then
				section.cbCount = 0;
				section.flashAnim:Play();
				section:SetScript("OnUpdate", EncounterJournal_FocusSectionCallback);
			else
				section.flashAnim:Stop();
				section:SetScript("OnUpdate", nil);
			end
		end
	end
end

function EncounterJournal_FocusSectionCallback(self)
	if self.cbCount > 0 then
		local _, _, _, _, anchorY = self:GetPoint();
		local scrollFrame = self:GetParent():GetParent();
		if ( self.isOverview ) then
			-- +4 puts the scrollbar all the way at the bottom when going to the last section
			anchorY = scrollFrame:GetBottom() - self.descriptionBG:GetBottom() + 4;
		else
			anchorY = abs(anchorY);
			anchorY = anchorY - scrollFrame:GetHeight()/2;
		end
		scrollFrame.ScrollBar:SetValue(anchorY);
		self:SetScript("OnUpdate", nil);
	end
	self.cbCount = self.cbCount + 1;
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
		local itemName, _, quality = GetItemInfo(itemInfo.link);
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
	local itemIndex = 1
	local itemButton = _G["EncounterJournalEncounterFrameInfoLootItemButton"..itemIndex];
	while itemButton do
		if itemButton.itemID == itemID and itemButton:IsShown() then
			EncounterJournal_SetLootButton(item, item.index);
			break;
		end
		itemIndex = itemIndex + 1;
		itemButton = _G["EncounterJournalEncounterFrameInfoLootItemButton"..itemIndex];
	end
end

function EncounterJournal_LootUpdate()
	local scrollFrame = EncounterJournal.encounter.info.lootScroll;
	local numLoot = EJ_GetNumLoot();
	local buttonSize = BOSS_LOOT_BUTTON_HEIGHT;

	local itemIndex = 1
	local itemButton = _G["EncounterJournalEncounterFrameInfoItemButton"..itemIndex];
	while itemButton do
		itemButton:Hide();
		itemIndex = itemIndex + 1;
		itemButton = _G["EncounterJournalEncounterFrameInfoItemButton"..itemIndex];
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

	--local classID, specID = EJ_GetLootFilter();

	--if (specID == 0) then
		--local spec = GetSpecialization();
		--if (spec and classID == select(3, UnitClass("player"))) then
			--specID = GetSpecializationInfo(spec, nil, nil, nil, UnitSex("player"));
		--else
			--specID = -1;
		--end
	--end

	GameTooltip:SetAnchorType("ANCHOR_RIGHT");
	GameTooltip:SetHyperlink(link, classID, specID);
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
		NavBar_Reset(EncounterJournal.navBar);
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
			EncounterJournal_FocusSection(sectionID);
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

-- TODO: Fix for Level Squish
function EJSuggestTab_GetPlayerTierIndex()
	return Enum.EnounterTiers.Classic;
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

	instanceTabs[id]:Disable();
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

	if numTiers == 9 and (GetServerExpansionLevel() < LE_EXPANSION_SHADOWLANDS) then
		numTiers = numTiers - 1;
	end

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

function EncounterJournal_OnFilterChanged(self)
	CloseDropDownMenus(1);
	EncounterJournal_LootUpdate();
end

function EncounterJournal_SetClassAndSpecFilter(self, classID, specID)
	EJ_SetLootFilter(classID, specID);
	EncounterJournal_OnFilterChanged(self);
end

function EncounterJournal_RefreshSlotFilterText(self)
	--[[
	local text = ALL_INVENTORY_SLOTS;
	local slotFilter = C_EncounterJournal.GetSlotFilter();
	if slotFilter ~= Enum.ItemSlotFilterType.NoFilter then
		for _, filter in pairs(Enum.ItemSlotFilterType) do
			if ( filter == slotFilter ) then
				text = SlotFilterToSlotName[filter];
				break;
			end
		end
	end

	EncounterJournal.encounter.info.lootScroll.slotFilter:SetText(text);
	]]
end

function EncounterJournal_SetSlotFilter(self, slot)
	--[[
	C_EncounterJournal.SetSlotFilter(slot);
	EncounterJournal_RefreshSlotFilterText(self);
	EncounterJournal_OnFilterChanged(self);
	]]
end

function EncounterJournal_UpdateFilterString()
	--[[
	local name, _;
	local classID, specID = EJ_GetLootFilter();

	if (specID > 0) then
		_, name = GetSpecializationInfoByID(specID, UnitSex("player"))
	elseif (classID > 0) then
		local classInfo = C_CreatureInfo.GetClassInfo(classID);
		if classInfo then
			name = classInfo.className;
		end
	end

	if name then
		EncounterJournal.encounter.info.lootScroll.classClearFilter.text:SetText(string.format(EJ_CLASS_FILTER, name));
		EncounterJournal.encounter.info.lootScroll.classClearFilter:Show();
		EncounterJournal.encounter.info.lootScroll:SetHeight(360);
	else
		EncounterJournal.encounter.info.lootScroll.classClearFilter:Hide();
		EncounterJournal.encounter.info.lootScroll:SetHeight(382);
		
	end
	]]
end

local CLASS_DROPDOWN = 1;
function EncounterJournal_InitLootFilter(self, level)
	--[[
	local filterClassID, filterSpecID = EJ_GetLootFilter();
	local sex = UnitSex("player");
	local classDisplayName, classTag, classID;
	local info = UIDropDownMenu_CreateInfo();
	info.keepShownOnClick = nil;

	if (UIDROPDOWNMENU_MENU_VALUE == CLASS_DROPDOWN) then
		info.text = ALL_CLASSES;
		info.checked = (filterClassID == 0);
		info.arg1 = 0;
		info.arg2 = 0;
		info.func = EncounterJournal_SetClassAndSpecFilter;
		UIDropDownMenu_AddButton(info, level);

		local numClasses = GetNumClasses();
		for i = 1, numClasses do
			classDisplayName, classTag, classID = GetClassInfo(i);
			info.text = classDisplayName;
			info.checked = (filterClassID == classID);
			info.arg1 = classID;
			info.arg2 = 0;
			info.func = EncounterJournal_SetClassAndSpecFilter;
			UIDropDownMenu_AddButton(info, level);
		end
	end

	if (level == 1) then
		info.text = CLASS;
		info.func =  nil;
		info.notCheckable = true;
		info.hasArrow = true;
		info.value = CLASS_DROPDOWN;
		UIDropDownMenu_AddButton(info, level)

		if ( filterClassID > 0 ) then
			classID = filterClassID;

			local classInfo = C_CreatureInfo.GetClassInfo(filterClassID);
			if classInfo then
				classDisplayName = classInfo.className;
				classTag = classInfo.classFile;
			end
		else
			classDisplayName, classTag, classID = UnitClass("player");
		end
		info.text = classDisplayName;
		info.notCheckable = true;
		info.arg1 = nil;
		info.arg2 = nil;
		info.func =  nil;
		info.hasArrow = false;
		UIDropDownMenu_AddButton(info, level);

		info.notCheckable = nil;
		local numSpecs = GetNumSpecializationsForClassID(classID);
		for i = 1, numSpecs do
			local specID, specName = GetSpecializationInfoForClassID(classID, i, sex);
			info.leftPadding = 10;
			info.text = specName;
			info.checked = (filterSpecID == specID);
			info.arg1 = classID;
			info.arg2 = specID;
			info.func = EncounterJournal_SetClassAndSpecFilter;
			UIDropDownMenu_AddButton(info, level);
		end

		info.text = ALL_SPECS;
		info.leftPadding = 10;
		info.checked = (classID == filterClassID) and (filterSpecID == 0);
		info.arg1 = classID;
		info.arg2 = 0;
		info.func = EncounterJournal_SetClassAndSpecFilter;
		UIDropDownMenu_AddButton(info, level);
	end
	]]
end

function EncounterJournal_InitLootSlotFilter(self, level)
	--[[
	local slotFilter = C_EncounterJournal.GetSlotFilter();

	local info = UIDropDownMenu_CreateInfo();
	info.text = ALL_INVENTORY_SLOTS;
	info.checked = slotFilter == Enum.ItemSlotFilterType.NoFilter;
	info.arg1 = Enum.ItemSlotFilterType.NoFilter;
	info.func = EncounterJournal_SetSlotFilter;
	UIDropDownMenu_AddButton(info);

	C_EncounterJournal.ResetSlotFilter();
	local isLootSlotPresent = {};
	local numLoot = EJ_GetNumLoot();
	for i = 1, numLoot do
		local itemInfo = C_EncounterJournal.GetLootInfoByIndex(i);
		local filterType = itemInfo and itemInfo.filterType;
		if ( filterType ) then
			isLootSlotPresent[filterType] = true;
		end
	end
	C_EncounterJournal.SetSlotFilter(slotFilter);

	for _, filter in pairs(Enum.ItemSlotFilterType) do
		if ( (isLootSlotPresent[filter] or filter == slotFilter) and filter ~= Enum.ItemSlotFilterType.NoFilter ) then
			info.text = SlotFilterToSlotName[filter];
			info.checked = slotFilter == filter;
			info.arg1 = filter;
			UIDropDownMenu_AddButton(info);
		end
	end
	]]
end

----------------------------------------
--------------Nav Bar Func--------------
----------------------------------------
function EJNAV_RefreshInstance()
	EncounterJournal_DisplayInstance(EncounterJournal.instanceID, true);
end

function EJNAV_SelectInstance(self, index, navBar)
	local instanceID = EJ_GetInstanceByIndex(index, EJ_InstanceIsRaid());

	--Clear any previous selection.
	NavBar_Reset(navBar);

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

function EJNAV_SelectEncounter(self, index, navBar)
	local _, _, bossID = unpack(EJ_GetEncounterInfoByIndex(index));
	EncounterJournal_DisplayEncounter(bossID);
end

function EJNAV_GetEncounterList(self)
	local list = { };
	local name = unpack(EJ_GetEncounterInfoByIndex(1));
	while name do
		local entry = { text = name, id = #list + 1, func = EJNAV_SelectEncounter };
		tinsert(list, entry);
		local n = EJ_GetEncounterInfoByIndex(#list + 1);
		if n then 
			name = unpack(EJ_GetEncounterInfoByIndex(#list + 1));
		else
			name = nil;
		end
	end
	return list;
end


AdventureJournal_LeftTitleFonts = {
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

function EncounterJournalBossButton_OnShow(self)
	self:RegisterEvent("UPDATE_INSTANCE_INFO");
end

function EncounterJournalBossButton_OnHide(self)
	self:UnregisterEvent("UPDATE_INSTANCE_INFO");
end

function EncounterJournalBossButton_OnEvent(self, event)
	if event == "UPDATE_INSTANCE_INFO" then
		EncounterJournalBossButton_UpdateDifficultyOverlay(self)
	end
end

function EncounterJournalBossButton_OnClick(self)
	local _, _, _, rootSectionID = EJ_GetEncounterInfo(self.encounterID);
	if ( rootSectionID == 0 ) then
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