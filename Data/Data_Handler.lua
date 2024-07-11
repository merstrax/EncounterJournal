EJ_Data = {};

EJ_Data.CLASSIC = 1;
EJ_Data.TBC = 2;
EJ_Data.WLK = 3;

EJ_Data.Normal = 1;
EJ_Data.Heroic = 2;
EJ_Data.Raid = 3;

EJ_Data.Tiers = {
    [EJ_Data.CLASSIC] = {
        Dungeons = {},
        Raids = {},
    },
    [EJ_Data.TBC] = {
        Dungeons = {},
        Raids = {},
    },
    [EJ_Data.WLK] = {
        Dungeons = {},
        Raids = {},
    }, 
};

EJ_Data.InstanceToTier = {};

EJ_Data.Icons = {
    Tank = 1, -- 0
    DPS = 2, -- 1
    Healer = 3, -- 2
    Heroic = 4, -- 4
    Fatal = 5,
    Important = 6,
    Interruptable = 7,
    Magic = 8,
    Curse = 9,
    Poison = 10,
    Disease = 11,
    Adds = 12,
    Mythic = 13,
    Bleed = 14
}

EJ_Data.IconFlags = {
    Tank = 1, -- 0
    DPS = 2, -- 1
    Healer = 4, -- 2
    Heroic = 8, -- 4
    Fatal = 16,
    Important = 32,
    Interruptable = 64,
    Magic = 128,
    Curse = 256,
    Poison = 512,
    Disease = 1024,
    Adds = 2048,
    Mythic = 4096,
    Bleed = 8192,
    Ascended = 16384
}

function EJ_Data:getInstanceList(tier, isRaid)
    if isRaid then
        return self.Tiers[tier].Raids;
    end

    return self.Tiers[tier].Dungeons;
end

function EJ_Data:getEncounterList(instanceID)
    local tier, isRaid = unpack(self:getInstanceTier(instanceID));

    if(isRaid) then
        return self.Tiers[tier].Raids[instanceID].Encounters;
    end

    return self.Tiers[tier].Dungeons[instanceID].Encounters;
end

function EJ_Data:getInstanceTier(instanceID)
    if type(self.InstanceToTier) == "table" then
        return self.InstanceToTier[instanceID];
    end
end

function EJ_Data:addInstance(tier, instance_data, isRaid)
    if isRaid then
        self.Tiers[tier].Raids[instance_data.ID] = instance_data;
    else
        self.Tiers[tier].Dungeons[instance_data.ID] = instance_data;
    end

    self.InstanceToTier[instance_data.ID] = {tier, isRaid};
end

------------------------------
--Instance Utility functions--
------------------------------
local instance = {
    ID = nil;
    Name = nil;
    Description = nil;

    MapID = nil;

    BackgroundFile = nil;
    ButtonFile = nil;
    SmallButtonFile = nil;
    LoreFile = nil;

    DifficultyID = nil;

    Encounters = {};
};

--Returns Index where Encounter was added or nil
function instance:addEncounter(encounter)
    if encounter and encounter.isEncounter then
        tinsert(self.Encounters, encounter);
        return #self.Encounters;
    end
    return nil;
end

function instance:setAttributes(id, name, desc, mapID, bgFile, btnFile, loreFile, difficultyID)
    self.ID = id or self.ID;
    self.Name = name or self.Name;
    self.Description = desc or self.Description;
    self.MapID = mapID or self.MapID;
    self.BackgroundFile = bgFile or self.BackgroundFile;
    self.ButtonFile = btnFile or self.ButtonFile;
    self.SmallButtonFile = smBtnFile or self.SmallButtonFile;
    self.LoreFile = loreFile or self.LoreFile;
    self.DifficultyID = difficultyID or self.DifficultyID;
end

function EJ_Data:CreateInstance()
    return tcopy(instance);
end

-------------------------------
--Encounter Utility functions--
-------------------------------
local encounter = {
    Name = nil;
    Description = nil;

    MapID = 0;
    MapX = 0;
    MapY = 0;

    InstanceID = nil;
    EncounterID = nil;
    OrderIndex = nil;

    RootSectionID = nil;
    DifficultyID = nil;

    Loot = {};
    SectionCount = 0;

    isEncounter = true;
};

local section = {
    Title = ""; 
    Desc = ""; 
    Index = 1; 
    ParentSection = nil; 
    FirstChildSection = nil;
    NextSiblingSection = nil; 
    Type = 0; 
    --IconCreatureDisplayInfoID = 0; 
    --UiModelSceneID = 0; 
    SpellID = 0; 
    IconFileDataID = 0; 
    Flags = 0; 
    IconFlags = 0; 
    DifficultyMask = 0;
}


function encounter:setLoot(lootTable)
    self.Loot = lootTable;
end

function encounter:addLoot(itemID)
    tinsert(self.Loot, itemID);
end

function encounter:getLootCount()
    return #self.Loot
end

function encounter:addSection(section, parent)
    if (parent) then
        local sibling = nil;
        if(not parent.FirstChildSection) then
            parent.FirstChildSection = section;
        else
            sibling = parent.FirstChildSection
            while(sibling.NextSiblingSection) do
                sibling = sibling.NextSiblingSection;
            end
            sibling.NextSiblingSection = section;
        end
        
        section.ParentSection = parent;
        --section.Index = index;
    else
        --self.SectionCount = self.SectionCount + 1;
        --if index == nil then
            --index = self.SectionCount;
        --end
        if(not self.RootSectionID) then
            self.RootSectionID = section;
        else
            sibling = self.RootSectionID;
            while(sibling.NextSiblingSection) do
                sibling = sibling.NextSiblingSection;
            end
            sibling.NextSiblingSection = section;
        end
        --section.Index = index;
    end
end

function encounter:setAttributes(name, desc, instanceID, encounterID, orderIndex, difficultyID)
    self.Name = name or self.Name;
    self.Description = desc or self.Description;
    self.InstanceID = instanceID or self.InstanceID;
    self.EncounterID = encounterID or self.EncounterID;
    self.OrderIndex = orderIndex or self.OrderIndex;
    self.DifficultyID = difficultyID or self.DifficultyID;
end


function EJ_Data:CreateEncounter()
    return tcopy(encounter)
end

function EJ_Data:CreateSection(title, desc, spellID, iconFlags, difficulty)
    local _section = tcopy(section);

    _section.Title = title;
    _section.Desc = desc;
    _section.SpellID = spellID;
    _section.IconFlags = iconFlags;
    _section.DifficultyMask = difficulty;

    return _section;
end