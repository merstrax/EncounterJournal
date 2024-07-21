C_EncounterJournal = {
    TOTAL_TIERS = 3,
    SELECTED_TIER = 1,
    SELECTED_DIFFICULTY = 2,
    SELECTED_ENCOUNTER = nil,
    SELECTED_INSTANCE = nil,
    SELECTED_ENCOUNTER_TAB = 1,
    LOOT_FILTER = 0,
    SEARCH_TEXT = "",
    SHOW_RAID = false,
};

C_EncounterJournal.LootInfo = {
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
C_EncounterJournal.IconList = {};
C_EncounterJournal.SectionInfo = {};

C_EncounterJournal.AL_Difficulty = {
    [DifficultyUtil.ID.DungeonNormal] = 2,
    [DifficultyUtil.ID.DungeonHeroic] = 3,
    [DifficultyUtil.ID.DungeonMythic] = 4,
	[DifficultyUtil.ID.RaidNormal] = 2,
	[DifficultyUtil.ID.RaidHeroic] = 3,
	[DifficultyUtil.ID.RaidMythic] = 4,
	[DifficultyUtil.ID.RaidAscended] = 5,
}

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

local ExpansionInfo = {
    [1] = {"Classic", ""},
    [2] = {"The Burning Crusade", ""},
    [3] = {"Wrath of the Lich King", ""}
}

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
    local iconList = C_EncounterJournal.IconList;
    wipe(iconList);

    local counter = 0;
    local flags = 0;
    if sectionID then
        flags = sectionID.IconFlags;
        while(flags > 0 and #iconList < 4) do
            if(bit.band(flags, 1) == 1) then
                tinsert(iconList, counter);
            end
            counter = counter + 1;
            flags = bit.rshift(flags, 1);
        end
    end
    return iconList;
    --return sectionID.IconFlags;
end

local function GetFilteredByDifficulty(difficultyMask)
    if difficultyMask <= 0 then return false end

    if bit.band(difficultyMask, DifficultyUtil.Mask[C_EncounterJournal.SELECTED_DIFFICULTY]) > 0 then
        return false;
    end

    return true;
end

--C_EncounterJournal.GetSectionInfo(sectionID) : info - Returns information about an entry in the Abilities section of the Encounter Journal.
function C_EncounterJournal.GetSectionInfo(sectionID)
    local _s = C_EncounterJournal.SectionInfo;

    if type(sectionID) == "table" then
        _s.spellID = sectionID.SpellID;
        _s.title = sectionID.Title;
        _s.description = sectionID.Desc;
        _s.headerType = sectionID.Type;
        _s.creatureDisplayID = 0;
        _s.uiModelSceneID = 0;
        _s.siblingSectionID = sectionID.NextSiblingSection;
        _s.firstChildSectionID = sectionID.FirstChildSection;
        _s.filteredByDifficulty = GetFilteredByDifficulty(sectionID.DifficultyMask);
        _s.link = sectionID.SpellLink;
        _s.abilityIcon = sectionID.SpellIcon;

        _s.startsOpen = false;

        return _s;
    end

    return nil;
end

--C_EncounterJournal.InstanceHasLoot([journalInstanceID]) : hasLoot - Returns whether an instance has a loot table in the journal.
function C_EncounterJournal.InstanceHasLoot(journalInstanceID)
    journalInstanceID = journalInstanceID or C_EncounterJournal.SELECTED_INSTANCE;
    return (#EJ_Data.Instances[C_EncounterJournal.SELECTED_INSTANCE].Loot > 0);
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
    local info = C_EncounterJournal.LootInfo;
    local itemID = 0;
    wipe(info);
    if not index then return info end

    if encounterIndex then
        if index <= #EJ_Data.Encounters[encounterIndex].Loot then
            info.itemID = EJ_Data.Encounters[encounterIndex].Loot[index];
            if(EJ_Data.AL_LOADED) then
                local AL_DIFF = C_EncounterJournal.AL_Difficulty[C_EncounterJournal.SELECTED_DIFFICULTY];
                if(ItemIDsDatabase[info.itemID]) then
                    info.itemID = ItemIDsDatabase[info.itemID][AL_DIFF] or info.itemID;
                end
            end
            local item = GetItemInfo(info.itemID);
            if not item then
                item = Item:CreateFromID(info.itemID);
                itemID = info.itemID;
                item:ContinueOnLoad(function() EncounterJournal_LootCallback(itemID) end);
            else
                local itemName, itemLink, itemQuality, _, _, _, itemSubType, _, itemEquipLoc, itemIcon = GetItemInfo(info.itemID);
                info.name = COLOR[itemQuality + 1]..itemName..COLOR.DEFAULT;
                info.itemQuality = itemQuality;
                info.icon = itemIcon;
                info.slot = SLOT_STRINGS[itemEquipLoc];
                info.armorType = itemSubType
                info.link = itemLink;
            end
        end
    else
        if index <= #EJ_Data.Instances[C_EncounterJournal.SELECTED_INSTANCE].Loot then
            info.itemID = EJ_Data.Instances[C_EncounterJournal.SELECTED_INSTANCE].Loot[index];
            if(EJ_Data.AL_LOADED) then
                local AL_DIFF = C_EncounterJournal.AL_Difficulty[C_EncounterJournal.SELECTED_DIFFICULTY];
                if(ItemIDsDatabase[info.itemID]) then
                    info.itemID = ItemIDsDatabase[info.itemID][AL_DIFF] or info.itemID;
                end
            end
            local item = GetItemInfo(info.itemID);
            if not item then
                item = Item:CreateFromID(info.itemID);
                itemID = info.itemID;
                item:ContinueOnLoad(function() EncounterJournal_LootCallback(itemID) end);
            else
                local itemName, itemLink, itemQuality, _, _, _, itemSubType, _, itemEquipLoc, itemIcon = GetItemInfo(info.itemID);
                info.name = COLOR[itemQuality + 1]..itemName..COLOR.DEFAULT;
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
function EJ_GetCreatureInfo(index, encounterID)
    encounterID = encounterID or EJ_Data.Instances[C_EncounterJournal.SELECTED_INSTANCE].Encounters[index].EncounterID;
    --return id, name, description, iconImage, displayInfo, uiModelSceneID
    local name = EJ_Data.Encounters[encounterID].Name;
    local description = EJ_Data.Encounters[encounterID].Description;
    local iconImage = EJ_Data.Encounters[encounterID].FileData;
    local displayInfo = EJ_Data.DisplayIDs[name];
    
    return encounterID, name, description, iconImage, displayInfo, 9;
end


--EJ_GetCurrentTier() - Returns the currently active encounter journal tier index.
function EJ_GetCurrentTier()
    return C_EncounterJournal.SELECTED_TIER;
end

--EJ_GetDifficulty() - Returns the currently viewed difficulty in the journal.
function EJ_GetDifficulty()
    return C_EncounterJournal.SELECTED_DIFFICULTY;
end

local function EJ_BuildJournalLink(journalType, journalID, difficulty, name)
    local _link = "|cff66bbff|Hjournal:"..tostring(journalType)..":"..tostring(journalID)..":"..tostring(difficulty).."|h["..name.."]|h|r";
    return _link;
end

--EJ_GetEncounterInfo(encounterID) - Returns encounter info from the journal.
function EJ_GetEncounterInfo(encounterID)
    if not encounterID then return nil end
    if (EJ_Data.Encounters[encounterID]) then
        info = EJ_Data.Encounters[encounterID];
        return info.Name, info.Description, info.EncounterID, 
                    info.RootSectionID, EJ_BuildJournalLink(EJ_TYPES.Encounter, info.EncounterID, 2, info.Name), 
                        info.InstanceID, info.EncounterID, select(8, EJ_GetInstanceInfo(info.InstanceID))
    end
end

--EJ_GetEncounterInfoByIndex(index [, journalInstanceID]) - idem
function EJ_GetEncounterInfoByIndex(index, journalInstanceID)
    journalInstanceID = journalInstanceID or C_EncounterJournal.SELECTED_INSTANCE;
    if not index or not journalInstanceID then return nil end;
    return EJ_Data.Instances[C_EncounterJournal.SELECTED_INSTANCE].Encounters[index];
end

--EJ_GetInstanceInfo([journalInstanceID]) - Returns instance info for the Encounter Journal.
function EJ_GetInstanceInfo(journalInstanceID)
    journalInstanceID = journalInstanceID or C_EncounterJournal.SELECTED_INSTANCE;
    if not journalInstanceID or journalInstanceID == 0 then return nil end;

    local info = EJ_Data.Instances[journalInstanceID];
    return info.ID, info.Name, info.Description, info.BackgroundFile, info.LoreFile, info.ButtonFile, EJ_BuildJournalLink(EJ_TYPES.Instance, info.ID, 0, info.Name), info.DifficultyID, info.MapID;
end

--EJ_GetInstanceByIndex(index, isRaid) - Returns instance info for the Encounter Journal.
function EJ_GetInstanceByIndex(index, isRaid)
    if not index then return nil end

    if isRaid then
        if(EJ_Data.Tiers[C_EncounterJournal.SELECTED_TIER][EJ_Data.Raids][index]) then
            return EJ_GetInstanceInfo(EJ_Data.Tiers[C_EncounterJournal.SELECTED_TIER][EJ_Data.Raids][index].ID);
        end
    else
        if(EJ_Data.Tiers[C_EncounterJournal.SELECTED_TIER][EJ_Data.Dungeons][index]) then
            return EJ_GetInstanceInfo(EJ_Data.Tiers[C_EncounterJournal.SELECTED_TIER][EJ_Data.Dungeons][index].ID);
        end
    end

    return nil;
end

--EJ_GetInstanceForMap(mapID) - Returns any corresponding instance ID for a UiMapID.
function EJ_GetInstanceForMap(mapID)
    return 0;
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
    return  0;
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

    local info = select(8, EJ_GetInstanceInfo());
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
end

--EJ_SelectInstance(journalInstanceID) - Selects an instance for the Encounter Journal API state.
function EJ_SelectInstance(journalInstanceID)
    C_EncounterJournal.SELECTED_ENCOUNTER = nil;
    C_EncounterJournal.SELECTED_INSTANCE = journalInstanceID;
    if(C_EncounterJournal.SELECTED_INSTANCE) then
        EJ_IsValidInstanceDifficulty(C_EncounterJournal.SELECTED_DIFFICULTY);
    end
end

--EJ_SelectTier(index) - Selects a tier for the Encounter Journal API state.
function EJ_SelectTier(index)
    index = index or Enum.EnounterTiers.Classic;
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
function EJ_GetNumLoot()
    if C_EncounterJournal.SELECTED_ENCOUNTER then
        if(EJ_Data.Encounters[C_EncounterJournal.SELECTED_ENCOUNTER]) then
            return #EJ_Data.Encounters[C_EncounterJournal.SELECTED_ENCOUNTER].Loot;
        end
    end

    if C_EncounterJournal.SELECTED_INSTANCE then
        return #EJ_Data.Instances[C_EncounterJournal.SELECTED_INSTANCE].Loot;
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