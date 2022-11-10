C_EncounterJournal = {
    TOTAL_TIERS = 3,
    SELECTED_TIER = 1,
    SELECTED_DIFFICULTY = 0,
    SELECTED_ENCOUNTER = 0,
    SELECTED_INSTANCE = 0,
    SELECTED_ENCOUNTER_TAB = 0,
    LOOT_FILTER = 0,
    SEARCH_TEXT = "",
    SHOW_RAID = false,
};

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

local ExpansionInfo = {
    [1] = {"Classic", ""},
    [2] = {"The Burning Crusade", ""},
    [3] = {"Wrath of the Lich King", ""}
}

local instancedb = EJ_InstanceDB;
local tierinstancedb = EJ_TierInstanceDB;
local e_tierinstance = Enum.EJTierInstanceStruct;

local encounterdb = EJ_EncounterDB;
local sectiondb = EJ_EncounterSectionDB;

local creaturedb = EJ_CreatureDB;
local e_creature = Enum.EJCreatureStruct;

local itemdb = EJ_ItemDB;
local e_item = Enum.EJItemStruct;

local filedata = EJ_FileData;

C_EncounterJournal.tierInstanceCache = {};

C_EncounterJournal.instanceInfoCache = {};
C_EncounterJournal.instanceEncounterCache = {};
C_EncounterJournal.instanceLootCache = {};

C_EncounterJournal.encounterInfoCache = {};
C_EncounterJournal.encounterLootCache = {};

local function EJ_BuildJournalLink(journalType, journalID, difficulty, name)
    local _link = "|cff66bbff|Hjournal:"..tostring(journalType)..":"..tostring(journalID)..":"..tostring(difficulty).."|h["..name.."]|h|r";
    return _link;
end

local function EJ_BuildTierInstanceCache(index)
    C_EncounterJournal.tierInstanceCache[index] = {};
    C_EncounterJournal.tierInstanceCache[index][1] = {};
    C_EncounterJournal.tierInstanceCache[index][2] = {};

    for _, v in pairs(EJ_TierInstanceDB) do
        if v[Enum.EJTierInstanceStruct.TierID] == index then
            if v[Enum.EJTierInstanceStruct.OrderIndex] == 0 then
                table.insert(C_EncounterJournal.tierInstanceCache[index][1], v);
            else
                table.insert(C_EncounterJournal.tierInstanceCache[index][2], v);
            end
        end
    end

    table.sort(C_EncounterJournal.tierInstanceCache[index][2], function(k1, k2) return k1[Enum.EJTierInstanceStruct.OrderIndex] < k2[Enum.EJTierInstanceStruct.OrderIndex] end);
end

local function EJ_CacheEncounterInfo(encounterInfo)
    if C_EncounterJournal.encounterInfoCache[encounterInfo.ID] then return encounterInfo.ID end

    C_EncounterJournal.encounterInfoCache[encounterInfo.ID] = {
        encounterInfo.Name, encounterInfo.Description, encounterInfo.ID, 
        encounterInfo.RootSectionID, EJ_BuildJournalLink(EJ_TYPES.Encounter, encounterInfo.ID, 0, encounterInfo.Name), 
        encounterInfo.JournalInstanceID, encounterInfo.DungeonEncounterID, select(10, EJ_GetInstanceInfo(encounterInfo.JournalInstanceID)),
    };
    return encounterInfo.ID;
end

local function EJ_BuildInstanceLootCache(journalInstanceID)
    C_EncounterJournal.instanceLootCache[journalInstanceID] = {};
    
    for _, v in ipairs(C_EncounterJournal.instanceEncounterCache[journalInstanceID]) do
        for _, i in ipairs(EJ_ItemsDB) do
            if i[2] == v.InfoCacheID then
                tinsert(C_EncounterJournal.instanceLootCache[journalInstanceID], i);
            end
        end
    end
end

local function EJ_BuildInstanceEncounterCache(journalInstanceID)
    C_EncounterJournal.instanceEncounterCache[journalInstanceID] = {};
    for _, v in ipairs(EJ_EncounterDB) do
        if v.JournalInstanceID == journalInstanceID then
            tinsert(C_EncounterJournal.instanceEncounterCache[journalInstanceID], {OrderIndex = v.OrderIndex, InfoCacheID = EJ_CacheEncounterInfo(v)});
        end
    end

    table.sort(C_EncounterJournal.instanceEncounterCache[journalInstanceID], function(k1, k2) return k1.OrderIndex < k2.OrderIndex end)
    EJ_BuildInstanceLootCache(journalInstanceID);
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
end

--C_EncounterJournal.GetSectionInfo(sectionID) : info - Returns information about an entry in the Abilities section of the Encounter Journal.
function C_EncounterJournal.GetSectionInfo(sectionID)
    local _s = {};

    if EJ_EncounterSectionDB[sectionID] then

        _s.spellID = EJ_EncounterSectionDB[sectionID].SpellID;
        _s.title = EJ_EncounterSectionDB[sectionID].Title;
        _s.description = EJ_EncounterSectionDB[sectionID].Desc;
        _s.headerType = EJ_EncounterSectionDB[sectionID].Type;
        _s.abilityIcon = EJ_EncounterSectionDB[sectionID].IconFileDataID;
        _s.creatureDisplayID = EJ_EncounterSectionDB[sectionID].IconCreatureDisplayInfoID;
        _s.uiModelSceneID = EJ_EncounterSectionDB[sectionID].UiModelSceneID;
        _s.siblingSectionID = EJ_EncounterSectionDB[sectionID].NextSiblingSectionID;
        _s.firstChildSectionID = EJ_EncounterSectionDB[sectionID].FirstChildSectionID;
        _s.filteredByDifficulty = false;
        _s.link = "";
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
    elseif C_EncounterJournal.instanceLootCache[journalInstanceID] == nil then
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
function EJ_GetCreatureInfo(index, encounterID)
    local MAX_INDEX = 9;

    index = math.min(MAX_INDEX, index);
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

    return info[e_creature.ID], info[e_creature.Name], info[e_creature.Description], info[e_creature.DisplayInfoID], EJ_FileData[info[e_creature.FileDataID]], info[e_creature.UiModelSceneID]
end

--EJ_GetCurrentTier() - Returns the currently active encounter journal tier index.
function EJ_GetCurrentTier()
    return C_EncounterJournal.SELECTED_TIER;
end

--EJ_GetDifficulty() - Returns the currently viewed difficulty in the journal.
function EJ_GetDifficulty()
    return DifficultyUtil.ID.DungeonNormal;
end

--EJ_GetEncounterInfo(encounterID) - Returns encounter info from the journal.
function EJ_GetEncounterInfo(encounterID)
    if C_EncounterJournal.encounterInfoCache[encounterID] then return C_EncounterJournal.encounterInfoCache[encounterID] end

    C_EncounterJournal.encounterInfoCache[encounterID] = {"", "", 0, 0, "", 0, 0, 0};
    for _, v in pairs(EJ_EncounterDB) do
        if (v.ID == encounterID) then
            info = v;
            C_EncounterJournal.encounterInfoCache[encounterID] = 
            {
                v.Name, v.Description, v.ID, 
                v.RootSectionID, EJ_BuildJournalLink(EJ_TYPES.Encounter, v.ID, 0, v.Name), 
                v.JournalInstanceID, v.DungeonEncounterID, select(10, EJ_GetInstanceInfo(v.JournalInstanceID))
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

    if (C_EncounterJournal.instanceEncounterCache[journalInstanceID] == nil) then
        EJ_BuildInstanceEncounterCache(journalInstanceID)
    end
    
    if(C_EncounterJournal.instanceEncounterCache[journalInstanceID][index]) then
        return EJ_GetEncounterInfo(C_EncounterJournal.instanceEncounterCache[journalInstanceID][index].InfoCacheID);
    end
end

--EJ_GetInstanceForMap(mapID) - Returns any corresponding instance ID for a UiMapID.
function EJ_GetInstanceForMap(mapID)
    return 0;
end

local InstanceID = 1;
local InstanceName = 2;
local InstanceDesc = 3;
local InstanceMapID = 4;
local InstanceBGID = 5;
local InstanceBtnID = 6;
local InstanceSmBtnID = 7;
local InstanceLoreID = 8;
local InstanceFlags = 9;
local InstanceAreaID = 10;

--EJ_GetInstanceInfo([journalInstanceID]) - Returns instance info for the Encounter Journal.
function EJ_GetInstanceInfo(journalInstanceID)
    journalInstanceID = journalInstanceID or C_EncounterJournal.SELECTED_INSTANCE;

    if(C_EncounterJournal.instanceInfoCache[journalInstanceID]) then
        local info = C_EncounterJournal.instanceInfoCache[journalInstanceID]; 
        return journalInstanceID, info[1], info[2], info[3], info[4],  info[5], info[6], info[7], info[8], info[9], info[10]  
    end;
    
    for _, v in ipairs(EJ_InstanceDB) do
        if(v[InstanceID] == journalInstanceID) then
            C_EncounterJournal.instanceInfoCache[journalInstanceID] = {v[InstanceName], v[InstanceDesc], EJ_FileData[v[InstanceBGID]], EJ_FileData[v[InstanceBtnID]], EJ_FileData[v[InstanceLoreID]], EJ_FileData[v[InstanceSmBtnID]], 0, EJ_BuildJournalLink(EJ_TYPES.Instance, v[InstanceID], 0, v[InstanceName]), false, v[InstanceMapID]}
            return v[InstanceID], v[InstanceName], v[InstanceDesc], EJ_FileData[v[InstanceBGID]], EJ_FileData[v[InstanceBtnID]], EJ_FileData[v[InstanceLoreID]], EJ_FileData[v[InstanceSmBtnID]], 0, EJ_BuildJournalLink(EJ_TYPES.Instance, v[InstanceID], 0, v[InstanceName]), false, v[InstanceMapID];
        end
    end

end

--EJ_GetInstanceByIndex(index, isRaid) - Returns instance info for the Encounter Journal.
function EJ_GetInstanceByIndex(index, isRaid)
    if not C_EncounterJournal.tierInstanceCache[C_EncounterJournal.SELECTED_TIER] then
        EJ_BuildTierInstanceCache(C_EncounterJournal.SELECTED_TIER);
    end

    if isRaid then
        if(C_EncounterJournal.tierInstanceCache[C_EncounterJournal.SELECTED_TIER][2][index]) then
            return EJ_GetInstanceInfo(C_EncounterJournal.tierInstanceCache[C_EncounterJournal.SELECTED_TIER][2][index][Enum.EJTierInstanceStruct.InstanceID]);
        end
    else
        if(C_EncounterJournal.tierInstanceCache[C_EncounterJournal.SELECTED_TIER][1][index]) then
            return EJ_GetInstanceInfo(C_EncounterJournal.tierInstanceCache[C_EncounterJournal.SELECTED_TIER][1][index][Enum.EJTierInstanceStruct.InstanceID]);
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
    if index < 1 then index = 1 end
    if index > 3 then index = 3 end
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
    if ((difficultyID == DifficultyUtil.ID.DungeonNormal) or (difficultyID == DifficultyUtil.ID.DungeonHeroic) or (difficultyID == DifficultyUtil.ID.DungeonMythic) 
        or (difficultyID == DifficultyUtil.ID.RaidNormal) or (difficultyID == DifficultyUtil.ID.RaidHeroic) or (difficultyID == DifficultyUtil.ID.RaidMythic) 
        or (difficultyID == DifficultyUtil.ID.RaidAscended)) 
    then 
        return true;
    else
        return false;
    end
end

--EJ_SelectEncounter(encounterID) - Selects an encounter for the Encounter Journal API state.
function EJ_SelectEncounter(encounterID)
    C_EncounterJournal.SELECTED_ENCOUNTER = encounterID; 
end

--EJ_SelectInstance(journalInstanceID) - Selects an instance for the Encounter Journal API state.
function EJ_SelectInstance(journalInstanceID)
    C_EncounterJournal.SELECTED_INSTANCE = journalInstanceID; 
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
    C_EncounterJournal.SELECTED_DIFFICULTY = difficultyID;
end

--EJ_SetSearch(text) - Starts a search in the journal.
function EJ_SetSearch(text)
    C_EncounterJournal.SEARCH_TEXT = text;
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

--EJ_GetNumLoot() - Returns the amount of loot for the currently selected instance or encounter.
function EJ_GetNumLoot()
    return 0;
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