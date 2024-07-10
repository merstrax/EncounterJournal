C_EncounterJournal = {
    TOTAL_TIERS = 3,
    SELECTED_TIER = 1,
    SELECTED_DIFFICULTY = 2,
    SELECTED_ENCOUNTER = nil,
    SELECTED_INSTANCE = 0,
    SELECTED_ENCOUNTER_TAB = 1,
    LOOT_FILTER = 0,
    SEARCH_TEXT = "",
    SHOW_RAID = false,
};

local COLOR = {
    [1] = "|cff999999", --Trash
    [2] = "|cffFFFFFF", --Common
    [3] = "|cff1eff00", --Uncommon
    [4] = "|cff0070dd", --Rare
    [5] = "|cff9F3FFF", --Epic
    [6] = "|cffFF8400", --Legendary
    [7] = "", --Artifact?
    [8] = "", --Heirloom?
    [9] = "", --idk? just in case?
    ERROR = "|cffff0000";
    DEFAULT = "|cffFFd200";
}

local SLOT_STRINGS = {
    ["INVTYPE_NON_EQUIP"] = "none",
    ["INVTYPE_HEAD"] = "Head",
    ["INVTYPE_NECK"] = "Neck",
    ["INVTYPE_SHOULDER"] = "Shoulder",
    ["INVTYPE_BODY"] = "Body",
    ["INVTYPE_CHEST"] = "Chest",
    ["INVTYPE_WAIST"] = "Waist",
    ["INVTYPE_LEGS"] = "Legs",
    ["INVTYPE_FEET"] = "Feet",
    ["INVTYPE_WRIST"] = "Wrist",
    ["INVTYPE_HAND"] = "Hand",
    ["INVTYPE_FINGER"] = "Ring",
    ["INVTYPE_TRINKET"] = "Trinket",
    ["INVTYPE_WEAPON"] = "Weapon",
    ["INVTYPE_SHIELD"] = "Shield",
    ["INVTYPE_RANGED"] = "Ranged",
    ["INVTYPE_CLOAK"] = "Cloak",
    ["INVTYPE_2HWEAPON"] = "Weapon",
    ["INVTYPE_BAG"] = "Bag",
    ["INVTYPE_TABARD"] = "Tabard",
    ["INVTYPE_ROBE"] = "Robe",
    ["INVTYPE_WEAPONMAINHAND"] = "Weapon",
    ["INVTYPE_WEAPONOFFHAND"] = "Weapon",
    ["INVTYPE_HOLDABLE"] = "Held in Off-Hand",
    ["INVTYPE_AMMO"] = "Ammo",
    ["INVTYPE_THROWN"] = "Thrown",
    ["INVTYPE_RANGEDRIGHT"] = "Wand",
    ["INVTYPE_QUIVER"] = "Quiver",
    ["INVTYPE_RELIC"] = "Relic"
};
--[[
Enum.ItemSlotFilterType = {};
Enum.ItemSlotFilterType.Head = 1;
Enum.ItemSlotFilterType.Neck = 2;
Enum.ItemSlotFilterType.Shoulder = 3;
Enum.ItemSlotFilterType.Cloak = 4;
Enum.ItemSlotFilterType.Chest = 5;
Enum.ItemSlotFilterType.Wrist = 6;
Enum.ItemSlotFilterType.Hand = 7;
Enum.ItemSlotFilterType.Waist = 8;
Enum.ItemSlotFilterType.Legs = 9;
Enum.ItemSlotFilterType.Feet = 10;
Enum.ItemSlotFilterType.MainHand = 11;
Enum.ItemSlotFilterType.OffHand = 12;
Enum.ItemSlotFilterType.Finger = 13;
Enum.ItemSlotFilterType.Trinket = 14;
Enum.ItemSlotFilterType.Other = 15;
]]
local ExpansionInfo = {
    [1] = {"Classic", ""},
    [2] = {"The Burning Crusade", ""},
    [3] = {"Wrath of the Lich King", ""}
}

C_EncounterJournal.tierInstanceCache = {};

C_EncounterJournal.instanceInfoCache = {};
C_EncounterJournal.instanceEncounterCache = {};
C_EncounterJournal.instanceLootCache = {};

C_EncounterJournal.encounterInfoCache = {};
C_EncounterJournal.encounterLootCache = {};

local function EJ_BuildJournalLink(journalType, journalID, difficulty, name)
    local _link = "";--"|cff66bbff|Hjournal:"..tostring(journalType)..":"..tostring(journalID)..":"..tostring(difficulty).."|h["..name.."]|h|r";
    return _link;
end

local function EJ_BuildTierInstanceCache(index)
    C_EncounterJournal.tierInstanceCache[index] = {};
    C_EncounterJournal.tierInstanceCache[index][1] = {};
    C_EncounterJournal.tierInstanceCache[index][2] = {};

    for _, v in pairs(EJ_Data.Tiers[index].Dungeons) do
        table.insert(C_EncounterJournal.tierInstanceCache[index][1], v);
        
    end

    for _, v in pairs(EJ_Data.Tiers[index].Raids) do
        table.insert(C_EncounterJournal.tierInstanceCache[index][2], v);
    end

    --table.sort(C_EncounterJournal.tierInstanceCache[index][2], function(k1, k2) return k1.OrderIndex < k2.OrderIndex end);
end

local function EJ_CacheEncounterInfo(encounterInfo)
    if not encounterInfo then return end
    if C_EncounterJournal.encounterInfoCache[encounterInfo.EncounterID] then return encounterInfo.EncounterID end

    C_EncounterJournal.encounterInfoCache[encounterInfo.EncounterID] = {
        encounterInfo.Name, encounterInfo.Description, encounterInfo.ID, 
        encounterInfo.RootSectionID, EJ_BuildJournalLink(EJ_TYPES.Encounter, encounterInfo.EncounterID, 0, encounterInfo.Name), 
        encounterInfo.InstanceID, encounterInfo.EncounterID, select(10, EJ_GetInstanceInfo(encounterInfo.InstanceID)),
    };
    return encounterInfo.ID;
end

local function EJ_BuildInstanceEncounterCache(journalInstanceID)
    if not journalInstanceID then return end
    C_EncounterJournal.instanceEncounterCache[journalInstanceID] = {};

    for _, v in ipairs(EJ_Data:getEncounterList(journalInstanceID)) do
        tinsert(C_EncounterJournal.instanceEncounterCache[journalInstanceID], {OrderIndex = v.OrderIndex, InfoCache = v});
    end

    table.sort(C_EncounterJournal.instanceEncounterCache[journalInstanceID], function(k1, k2) return k1.OrderIndex < k2.OrderIndex end)
end

local function EJ_BuildInstanceLootCache(journalInstanceID)
    if not journalInstanceID or journalInstanceID == 0 then return end
    C_EncounterJournal.instanceLootCache[journalInstanceID] = {};
    
    if not C_EncounterJournal.instanceEncounterCache[journalInstanceID] then EJ_BuildInstanceEncounterCache(journalInstanceID) end;
    for _, v in ipairs(EJ_Data:getEncounterList(journalInstanceID)) do
        if v.Loot then
            for _, i in ipairs(v.Loot) do
                if(not tContains(C_EncounterJournal.instanceLootCache[journalInstanceID], i)) then
                    tinsert(C_EncounterJournal.instanceLootCache[journalInstanceID], i);
                end
            end
        end
    end
end

local function EJ_BuildEncounterLootCache(encounterID)
    if not encounterID then return end;
    C_EncounterJournal.encounterLootCache[encounterID] = {};
    for _, v in ipairs(EJ_Data:getEncounterList(C_EncounterJournal.SELECTED_INSTANCE)) do
        if v.EncounterID == encounterID and v.Loot then
            C_EncounterJournal.encounterLootCache[encounterID] = v.Loot;
        end
    end
end

function EJ_SetShowRaid(showRaid)
    C_EncounterJournal.SHOW_RAID = showRaid;
end

function EJ_ShouldShowRaid()
    return C_EncounterJournal.SHOW_RAID
end

--Encounter Journal
--C_EncounterJournal.GetDungeonEntrancesForMap(uiMapID) : dungeonEntrances - Returns the instance entrances for a map.
function C_EncounterJournal.GetDungeonEntrancesForMap(uiMapID)
end

--C_EncounterJournal.GetEncountersOnMap(uiMapID) : encounters - Returns boss pin locations for an instance map.
function C_EncounterJournal.GetEncountersOnMap(uiMapID)
end

--C_EncounterJournal.GetSectionIconFlags(sectionID) : iconFlags - Returns the icon flags for a section, such as Magic Effect and Heroic Difficulty
function C_EncounterJournal.GetSectionIconFlags(sectionID)
    if sectionID then
        return sectionID.IconFlags;
    end
    return 0;
end

--C_EncounterJournal.GetSectionInfo(sectionID) : info - Returns information about an entry in the Abilities section of the Encounter Journal.
function C_EncounterJournal.GetSectionInfo(sectionID)
    local _s = {};

    if type(sectionID) == "table" then
        _s.spellID = sectionID.SpellID;
        _s.title = sectionID.Title;
        _s.description = sectionID.Desc;
        _s.headerType = sectionID.Type;
        _s.creatureDisplayID = 0;
        _s.uiModelSceneID = 0;
        _s.siblingSectionID = sectionID.NextSiblingSection;
        _s.firstChildSectionID = sectionID.FirstChildSection;
        _s.filteredByDifficulty = false;

        if(sectionID.SpellID ~= 0) then
            _s.link = GetSpellLink(sectionID.SpellID);
            _, _, _s.abilityIcon = GetSpellInfo(sectionID.SpellID);
        else
            _s.abilityIcon = nil;
            _s.link = 0;
        end

        _s.startsOpen = false;

        return _s;
    end

    return nil;
end

--C_EncounterJournal.InstanceHasLoot([journalInstanceID]) : hasLoot - Returns whether an instance has a loot table in the journal.
function C_EncounterJournal.InstanceHasLoot(journalInstanceID)
    journalInstanceID = journalInstanceID or C_EncounterJournal.SELECTED_INSTANCE
    if C_EncounterJournal.instanceEncounterCache[journalInstanceID] == nil then
        EJ_BuildInstanceEncounterCache(journalInstanceID);
    end

    if C_EncounterJournal.instanceLootCache[journalInstanceID] == nil then
        EJ_BuildInstanceLootCache(journalInstanceID)
    end

    return (#C_EncounterJournal.instanceLootCache[journalInstanceID] > 0);
end

--C_EncounterJournal.IsEncounterComplete(journalEncounterID) : isEncounterComplete - Returns if a boss encounter has been completed.
function C_EncounterJournal.IsEncounterComplete(journalEncounterID)
    return false;
end

--C_EncounterJournal.SetPreviewMythicPlusLevel(level)
function C_EncounterJournal.SetPreviewMythicPlusLevel(level)
end

--C_EncounterJournal.SetPreviewPvpTier(tier)
function C_EncounterJournal.SetPreviewPvpTier(tier)
end

--Loot Journal
--
function C_EncounterJournal.GetLootInfo(id)
end

--
function C_EncounterJournal.GetLootInfoByIndex(index, encounterIndex)
    encounterIndex = encounterIndex or C_EncounterJournal.SELECTED_ENCOUNTER;

    local info = {};

    info = {
        itemID = 0;
        encounterId = C_EncounterJournal.SELECTED_ENCOUNTER;
        name = nil;
        itemQuality = "";
        filterType = "";
        icon = "";
        slot = "";
        armorType = "";
        link = "";
    }

    if not index then return info end

    if encounterIndex then
        if not C_EncounterJournal.encounterLootCache[encounterIndex] then EJ_BuildEncounterLootCache(encounterIndex) end;
        if index <= #C_EncounterJournal.encounterLootCache[encounterIndex] then
            info.itemID = C_EncounterJournal.encounterLootCache[encounterIndex][index];
            local item = Item:CreateFromID(info.itemID);
            local name = item:GetInfo();
            if not name then
                item:ContinueOnLoad(function() EncounterJournal_LootCallback(info.itemID) end);
            else
                local itemName, itemLink, itemQuality, _, _, _, itemSubType, _, itemEquipLoc, itemIcon = item:GetInfo();
                info.name = COLOR[itemQuality + 1]..itemName..COLOR.DEFAULT;
                info.itemQuality = itemQuality;
                info.icon = itemIcon;
                info.slot = SLOT_STRINGS[itemEquipLoc];
                info.armorType = itemSubType
                info.link = itemLink;
            end
        end
    else
        if index <= #C_EncounterJournal.instanceLootCache[C_EncounterJournal.SELECTED_INSTANCE] then
            info.itemID = C_EncounterJournal.instanceLootCache[C_EncounterJournal.SELECTED_INSTANCE][index];
            local item = Item:CreateFromID(info.itemID);
            local name = item:GetInfo();
            if not name then
                item:ContinueOnLoad(function() EncounterJournal_LootCallback(info.itemID) end);
            else
                local itemName, itemLink, itemQuality, _, _, _, itemSubType, _, itemEquipLoc, itemIcon = item:GetInfo();
                info.name = COLOR[itemQuality + 1]..itemName;
                info.itemQuality = itemQuality;
                info.icon = itemIcon;
                info.slot = SLOT_STRINGS[itemEquipLoc];
                info.armorType = itemSubType
                info.link = itemLink;
            end
        end
    end

    return info;
end

--
function C_EncounterJournal.GetSlotFilter()
    return C_EncounterJournal.LOOT_FILTER;
end

--
function C_EncounterJournal.ResetSlotFilter()
    C_EncounterJournal.LOOT_FILTER = 0;
end

--
function C_EncounterJournal.SetSlotFilter(filterSlot)
    C_EncounterJournal.LOOT_FILTER = filterSlot;
end

--C_RaidLocks.IsEncounterComplete(mapID, encounterID [, difficultyID]) : encounterIsComplete

--EJ_ClearSearch() - Clears the encounter journal search results.
function EJ_ClearSearch()
end

--EJ_EndSearch() - Ends any active encounter journal search.
function EJ_EndSearch()
end

--EJ_GetContentTuningID() - Returns the currently selected content tuning ID for BFA instances.
function EJ_GetContentTuningID()
    return 0; --TODO retrieve correct versions of items based on this number
end

--EJ_GetCreatureInfo(index [, encounterID]) - Returns encounter boss info.
--[[
function EJ_GetCreatureInfo(index, encounterID)
    local MAX_INDEX = 9;
    index = math.min(MAX_INDEX, index or 1);
    encounterID = encounterID or C_EncounterJournal.SELECTED_ENCOUNTER

    local info = {0, "", "", 0, 0, 0, 0, 0};
    local foundFirst, foundExact = false, false;
    local firstFound = {};

    for _, v in ipairs(EJ_CreatureDB) do
        if v[e_creature.EncounterID] == encounterID then
            foundFirst = true;
            firstFound = v; 
            if v[e_creature.OrderIndex] == index then
                foundExact = true;
                info = v;
                break;
            end
        end
    end

    if not foundExact and foundFirst then
        info = firstFound;
    end

    return info[e_creature.ID], info[e_creature.Name], info[e_creature.Description], info[e_creature.DisplayInfoID], EJ_FileData[info[e_creature.FileDataID]\], info[e_creature.UiModelSceneID]
end]]


--EJ_GetCurrentTier() - Returns the currently active encounter journal tier index.
function EJ_GetCurrentTier()
    return C_EncounterJournal.SELECTED_TIER;
end

--EJ_GetDifficulty() - Returns the currently viewed difficulty in the journal.
function EJ_GetDifficulty()
    return C_EncounterJournal.SELECTED_DIFFICULTY;
end

--EJ_GetEncounterInfo(encounterID) - Returns encounter info from the journal.
function EJ_GetEncounterInfo(encounterID)
    if not encounterID then return nil end

    if C_EncounterJournal.encounterInfoCache[encounterID] then return C_EncounterJournal.encounterInfoCache[encounterID] end

    C_EncounterJournal.encounterInfoCache[encounterID] = {"", "", 0, 0, "", 0, 0, 0};
    for _, v in pairs(EJ_Data:getEncounterList(C_EncounterJournal.SELECTED_INSTANCE)) do
        if (v.EncounterID == encounterID) then
            info = v;
            C_EncounterJournal.encounterInfoCache[encounterID] = 
            {
                v.Name, v.Description, v.EncounterID, 
                v.RootSectionID, EJ_BuildJournalLink(EJ_TYPES.Encounter, v.ID, 0, v.Name), 
                v.InstanceID, v.EncounterID, select(10, EJ_GetInstanceInfo(v.InstanceID))
            };
            break;
        end
    end

    return C_EncounterJournal.encounterInfoCache[encounterID][1], C_EncounterJournal.encounterInfoCache[encounterID][2], 
            C_EncounterJournal.encounterInfoCache[encounterID][3], C_EncounterJournal.encounterInfoCache[encounterID][4], 
            C_EncounterJournal.encounterInfoCache[encounterID][5], C_EncounterJournal.encounterInfoCache[encounterID][6], 
            C_EncounterJournal.encounterInfoCache[encounterID][7], C_EncounterJournal.encounterInfoCache[encounterID][8];
end

--EJ_GetEncounterInfoByIndex(index [, journalInstanceID]) - idem
function EJ_GetEncounterInfoByIndex(index, journalInstanceID)
    journalInstanceID = journalInstanceID or C_EncounterJournal.SELECTED_INSTANCE;

    if not index or not journalInstanceID then return nil end;

    if (C_EncounterJournal.instanceEncounterCache[journalInstanceID] == nil) then
        EJ_BuildInstanceEncounterCache(journalInstanceID)
    end
    
    --if(C_EncounterJournal.instanceEncounterCache[journalInstanceID][index]) then
        return EJ_Data:getEncounterList(C_EncounterJournal.SELECTED_INSTANCE)[index];
    --end
end

--EJ_GetInstanceForMap(mapID) - Returns any corresponding instance ID for a UiMapID.
function EJ_GetInstanceForMap(mapID)
    return 0;
end

--EJ_GetInstanceInfo([journalInstanceID]) - Returns instance info for the Encounter Journal.
function EJ_GetInstanceInfo(journalInstanceID)
    journalInstanceID = journalInstanceID or C_EncounterJournal.SELECTED_INSTANCE;

    if not journalInstanceID or journalInstanceID == 0 then return nil end;

    if(EJ_Data.Tiers[C_EncounterJournal.SELECTED_TIER]) then
        if(C_EncounterJournal.SHOW_RAID) then
            local info = EJ_Data.Tiers[C_EncounterJournal.SELECTED_TIER].Raids[journalInstanceID];
            return info.ID, info.Name, info.Description, info.BackgroundFile, info.ButtonFile, info.LoreFile, info.SmallButtonFile, 0, EJ_BuildJournalLink(EJ_TYPES.Instance, info.ID, 0, info.Name), info.DifficultyID, info.MapID;
        else
            local info = EJ_Data.Tiers[C_EncounterJournal.SELECTED_TIER].Dungeons[journalInstanceID];
            return info.ID, info.Name, info.Description, info.BackgroundFile, info.ButtonFile, info.LoreFile, info.SmallButtonFile, 0, EJ_BuildJournalLink(EJ_TYPES.Instance, info.ID, 0, info.Name), info.DifficultyID, info.MapID;
        end
    end
end

--EJ_GetInstanceByIndex(index, isRaid) - Returns instance info for the Encounter Journal.
function EJ_GetInstanceByIndex(index, isRaid)
    if not index then return nil end
    if not C_EncounterJournal.tierInstanceCache[C_EncounterJournal.SELECTED_TIER] then
        EJ_BuildTierInstanceCache(C_EncounterJournal.SELECTED_TIER);
    end

    if isRaid then
        if(C_EncounterJournal.tierInstanceCache[C_EncounterJournal.SELECTED_TIER][2][index]) then
            return EJ_GetInstanceInfo(C_EncounterJournal.tierInstanceCache[C_EncounterJournal.SELECTED_TIER][2][index].ID);
        end
    else
        if(C_EncounterJournal.tierInstanceCache[C_EncounterJournal.SELECTED_TIER][1][index]) then
            return EJ_GetInstanceInfo(C_EncounterJournal.tierInstanceCache[C_EncounterJournal.SELECTED_TIER][1][index].ID);
        end
    end

    return nil;
end

--EJ_GetMapEncounter(mapID, index [, fromJournal]) - Returns boss pin locations on instance maps.
function EJ_GetMapEncounter(mapID, index , fromJournal)
end 

--EJ_GetNumEncountersForLootByIndex(index) - Returns the amount of encounters that drop the same loot item.
function EJ_GetNumEncountersForLootByIndex(index)
    return 0; 
end  

--EJ_GetNumSearchResults() - Returns the number of search results for the Encounter Journal.
function EJ_GetNumSearchResults()
    return 0; 
end

--EJ_GetNumTiers() - Returns the number of valid encounter journal tier indices.
function EJ_GetNumTiers() 
    return C_EncounterJournal.TOTAL_TIERS;
end

--EJ_GetSearchProgress() - Returns the search bar's progress ratio.
function EJ_GetSearchProgress()
    local _c, _t = 1, 1;
    return  _c / _t;
end

--EJ_GetSearchResult(index) - Returns search results for the Encounter Journal.
function EJ_GetSearchResult(index)
    return nil; 
end

--EJ_GetSearchSize() - Returns the amount of Encounter Journal objects to search through.
function EJ_GetSearchSize()
    return 0; 
end

--EJ_GetSectionPath(sectionID) - Returns the parent Section ID if available.
function EJ_GetSectionPath(sectionID)
    return 0; 
end

--EJ_GetTierInfo(index) - Get some information about the encounter journal tier for index.
function EJ_GetTierInfo(index)
    --index = index or 1;
    index = math.min(3, math.max(index or 1, 1));
    return ExpansionInfo[index][1], ExpansionInfo[index][2];
end

--EJ_HandleLinkPath(jtype, id) - Returns the supplementary instance and encounter ID for an encounter or section ID.
function EJ_HandleLinkPath(jtype, id) 
end

--EJ_InstanceIsRaid() - Returns whether the selected instance is a raid.
function EJ_InstanceIsRaid()
    return C_EncounterJournal.SHOW_RAID;
end

--EJ_IsSearchFinished() - Returns whether the current search has finished.
function EJ_IsSearchFinished()
    return EJ_GetSearchProgress() == 1.0; 
end

--EJ_IsValidInstanceDifficulty(difficultyID) - Returns whether the difficultyID is valid for use in the journal.
function EJ_IsValidInstanceDifficulty(difficultyID)
    if not difficultyID then return false end

    local info = select(10, EJ_GetInstanceInfo());
    if info == DifficultyUtil.ID.DungeonNormal and difficultyID == DifficultyUtil.ID.DungeonNormal then return true end;
    
    if(info == DifficultyUtil.ID.DungeonMythic and (difficultyID == DifficultyUtil.ID.DungeonNormal or difficultyID == DifficultyUtil.ID.DungeonHeroic or difficultyID == DifficultyUtil.ID.DungeonMythic)) then
        return true;
    end

    if(info == DifficultyUtil.ID.RaidAscended and 
    (difficultyID == DifficultyUtil.ID.RaidNormal or difficultyID == DifficultyUtil.ID.RaidHeroic 
    or difficultyID == DifficultyUtil.ID.RaidMythic or difficultyID == DifficultyUtil.ID.RaidAscended)) then
        return true;
    end

    if(info == DifficultyUtil.ID.RaidAscended) then
        C_EncounterJournal.SELECTED_DIFFICULTY = DifficultyUtil.ID.RaidNormal;
    else
        C_EncounterJournal.SELECTED_DIFFICULTY = DifficultyUtil.ID.DungeonNormal;
    end  
    return false;
end

--EJ_SelectEncounter(encounterID) - Selects an encounter for the Encounter Journal API state.
function EJ_SelectEncounter(encounterID)
    C_EncounterJournal.SELECTED_ENCOUNTER = encounterID;
    if not C_EncounterJournal.SELECTED_ENCOUNTER then return end
    if not C_EncounterJournal.encounterLootCache[C_EncounterJournal.SELECTED_ENCOUNTER] then EJ_BuildEncounterLootCache(C_EncounterJournal.SELECTED_ENCOUNTER) end 
end

--EJ_SelectInstance(journalInstanceID) - Selects an instance for the Encounter Journal API state.
function EJ_SelectInstance(journalInstanceID)
    C_EncounterJournal.SELECTED_ENCOUNTER = nil;
    C_EncounterJournal.SELECTED_INSTANCE = journalInstanceID;
    if not C_EncounterJournal.SELECTED_INSTANCE then return end
    if not C_EncounterJournal.instanceEncounterCache[C_EncounterJournal.SELECTED_INSTANCE] then EJ_BuildInstanceEncounterCache(C_EncounterJournal.SELECTED_INSTANCE) end
    if not C_EncounterJournal.instanceLootCache[C_EncounterJournal.SELECTED_INSTANCE] then EJ_BuildInstanceLootCache(C_EncounterJournal.SELECTED_INSTANCE) end 

    EJ_IsValidInstanceDifficulty(C_EncounterJournal.SELECTED_DIFFICULTY);
end

--EJ_SelectTier(index) - Selects a tier for the Encounter Journal API state.
function EJ_SelectTier(index)
    index = index or Enum.EnounterTiers.Classic;
    
    if C_EncounterJournal.tierInstanceCache[index] == nil then
        EJ_BuildTierInstanceCache(index);
    end

    C_EncounterJournal.SELECTED_TIER = index;
end

--EJ_SetDifficulty(difficultyID) - Sets the encounter difficulty shown in the Encounter Journal.
function EJ_SetDifficulty(difficultyID)
    C_EncounterJournal.SELECTED_DIFFICULTY = difficultyID or DifficultyUtil.ID.DungeonNormal;
end

--EJ_SetSearch(text) - Starts a search in the journal.
function EJ_SetSearch(text)
    C_EncounterJournal.SEARCH_TEXT = text or "";
end

--GetJournalInfoForSpellConfirmation(spellID)
function GetJournalInfoForSpellConfirmation(spellID)
end

--SetPortraitTextureFromCreatureDisplayID(textureObject, creatureDisplayID)
function SetPortraitTextureFromCreatureDisplayID(textureObject, creatureDisplayID)
end

--EJ_GetInvTypeSortOrder(invType) - Returns the sort order for an inventory type.
function EJ_GetInvTypeSortOrder(invType)
end

--EJ_GetLootFilter() - Returns the currently used loot filter.
function EJ_GetLootFilter()
    return 0;
end

--EJ_GetNumLoot([typeID [, isEncounter]]) - Returns the amount of loot for the currently selected instance or encounter.
function EJ_GetNumLoot(typeID, isEncounter)
    isEncounter = isEncounter or true;

    if C_EncounterJournal.SELECTED_ENCOUNTER and isEncounter then
        if not C_EncounterJournal.encounterLootCache[C_EncounterJournal.SELECTED_ENCOUNTER] then EJ_BuildEncounterLootCache(C_EncounterJournal.SELECTED_ENCOUNTER) end
        return #C_EncounterJournal.encounterLootCache[C_EncounterJournal.SELECTED_ENCOUNTER];
    end

    typeID = typeID or C_EncounterJournal.SELECTED_INSTANCE;

    if not C_EncounterJournal.instanceLootCache[typeID] then EJ_BuildInstanceLootCache(typeID) end

    if type(C_EncounterJournal.instanceLootCache[typeID]) == "table" then
        return #C_EncounterJournal.instanceLootCache[typeID];
    end
end

--EJ_IsLootListOutOfDate() - Returns whether the loot list is out of date in relation to any filters when getting new loot data.
function EJ_IsLootListOutOfDate()
    return false;
end

--EJ_ResetLootFilter() - Clears any current loot filter in the journal.
function EJ_ResetLootFilter()
end

--EJ_SetLootFilter(classID, specID) - Sets the loot filter for a specialization.
function EJ_SetLootFilter(classID, spedID)
end