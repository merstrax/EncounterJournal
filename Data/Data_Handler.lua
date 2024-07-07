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

function EJ_Data:getInstanceList(tier, isRaid)
    if isRaid then
        return self.Tiers[tier].Raids;
    end

    return self.Tiers[tier].Dungeons;
end

function EJ_Data:getEncounterList(instanceID)
    local tierData = self:getInstanceTier(instanceID)

    if(tierData[2]) then
        return self.Tiers[tierData[1]].Raids[instanceID].Encounters;
    end

    return self.Tiers[tierData[1]].Dungeons[instanceID].Encounters;
end

function EJ_Data:getInstanceTier(instanceID)
    if type(self.InstanceToTier) == "table" then
        return self.InstanceToTier[instanceID] or {1, false};
    end
end

function EJ_Data:addInstance(tier, instance_data, isRaid)
    if isRaid then
        self.Tiers[tier].Raids[instance_data.ID] = instance_data;
    else
        self.Tiers[tier].Dungeons[instance_data.ID] = instance_data;
    end

    self.InstanceToTier[instance_data.MapID] = {tier, isRaid};
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

function instance:setAttributes(id, name, desc, mapID, bgFile, btnFile, smBtnFile, loreFile, difficultyID)
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

    MapID = nil;
    MapX = nil;
    MapY = nil;

    InstanceID = nil;
    EncounterID = nil;
    OrderIndex = nil;

    RootSectionID = nil;
    
    DifficultyID = nil;

    Loot = {};

    Sections = {};
    SectionCount = 0;

    isEncounter = true;
};

local section = {
    Title = ""; 
    Desc = ""; 
    Index = 1; 
    ParentSection = nil; 
    ChildSection = {};
    ChildCount = 0; 
    --NextSiblingSectionID = 4631; 
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

function encounter:addSection(section, index, parent)
    if (parent and index) then
        parent.ChildSection[index] = section;
        section.ParentSection = parent;
        section.Index = index;
    else
        self.SectionCount = self.SectionCount + 1;
        if index == nil then
            index = self.SectionCount;
        end
        self.Sections[index] = section;
        section.ParentSection = self.Sections;
        section.Index = index;
    end
end

function encounter:setAttributes(name, desc, mapX, mapY, instanceID, encounterID, orderIndex, rootSectionID, mapID, difficultyID)
    self.Name = name or self.Name;
    self.Description = desc or self.Description;
    self.MapX = mapX or self.MapX;
    self.MapY = mapY or self.MapY;
    self.InstanceID = instanceID or self.InstanceID;
    self.EncounterID = encounterID or self.EncounterID;
    self.OrderIndex = orderIndex or self.OrderIndex;
    self.RootSectionID = rootSectionID or self.RootSectionID;
    self.MapID = mapID or self.MapID;
    self.DifficultyID = difficultyID or self.DifficultyID;
end


function EJ_Data:CreateEncounter()
    return tcopy(encounter)
end

function EJ_Data:CreateSection(title, desc, sectionType, spellID, iconID, flags, iconFlags, difficulty)
    local _section = tcopy(section);
    _section.Title = title;
    _section.Desc = desc;
    _section.Type = sectionType;
    _section.SpellID = spellID;
    _section.IconFileDataID = iconID;
    _section.Flags = flags;
    _section.IconFlags = iconFlags;
    _section.DifficultyMask = difficulty;

    return _section;
end


local _instance = EJ_Data:CreateInstance();
--setAttributes(id, name, desc, mapID, bgFile, btnFile, smBtnFile, loreFile, difficultyID)
_instance:setAttributes(63, "Deadmines", EJ_Descriptions.Instances["DEADMINES"], 36, 522336, 522352, 136332, 526404, EJ_Data.Normal);
EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(_instance), false);

_instance:setAttributes(64, "Shadowfang Keep", EJ_Descriptions.Instances["SHADOWFANGKEEP"], 33, 522342, 522358, 136357, 526410, EJ_Data.Normal);
EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(_instance), false);

_instance:setAttributes(227, "Blackfathom Deeps", EJ_Descriptions.Instances["BLACKFATHOMDEEPS"], 48, 608156, 608195, 136325, 608234, EJ_Data.Normal);
EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(_instance), false);

_instance:setAttributes(226, "Ragefire Chasm", EJ_Descriptions.Instances["RAGEFIRECHASM"], 389, 608172, 608211, 136350, 608250, EJ_Data.Normal);
EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(_instance), false);

_instance:setAttributes(229, "Lower Blackrock Spire", EJ_Descriptions.Instances["LOWERBLACKROCKSPIRE"], 229, 608158, 608197, 136327, 608236, EJ_Data.Heroic);
EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(_instance), false);

_instance:setAttributes(230, "Dire Maul", EJ_Descriptions.Instances["DIREMAUL"], 429, 608161, 608200, 136333, 608239, EJ_Data.Heroic);
EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(_instance), false);

_instance:setAttributes(231, "Gnomeregan", EJ_Descriptions.Instances["GNOMERGAN"], 90, 608163, 608202, 136336, 608241, EJ_Data.Normal);
EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(_instance), false);

_instance:setAttributes(232, "Maraudon", EJ_Descriptions.Instances["MARAUDON"], 349, 608170, 608209, 136345, 608248, EJ_Data.Normal);
EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(_instance), false);

_instance:setAttributes(233, "Razorfen Downs", EJ_Descriptions.Instances["RAZORFENDOWNS"], 129, 608173, 608212, 136352, 608251, EJ_Data.Normal);
EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(_instance), false);

_instance:setAttributes(234, "Razorfen Kraul", EJ_Descriptions.Instances["RAZORFENKRAUL"], 47, 608174, 608213, 136353, 608252, EJ_Data.Normal);
EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(_instance), false);

_instance:setAttributes(236, "Stratholme", EJ_Descriptions.Instances["STRATHOLME"], 329, 608177, 608216, 136359, 608255, EJ_Data.Heroic);
EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(_instance), false);

_instance:setAttributes(237, "The Temple of Atal'hakkar", EJ_Descriptions.Instances["SUNKENTEMPLE"], 109, 608178, 608217, 136360, 608256, EJ_Data.Normal);
EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(_instance), false);

_instance:setAttributes(238, "The Stockade", EJ_Descriptions.Instances["THESTOCKADES"], 34, 608184, 608223, 136358, 608262, EJ_Data.Normal);
EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(_instance), false);

_instance:setAttributes(240, "Wailing Caverns", EJ_Descriptions.Instances["WAILINGCAVERNS"], 43, 608190, 608229, 136364, 608313, EJ_Data.Normal);
EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(_instance), false);

_instance:setAttributes(241, "Zul'Farrak", EJ_Descriptions.Instances["ZULFARRAK"], 209, 608191, 608230, 136368, 608267, EJ_Data.Normal);
EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(_instance), false);

_instance:setAttributes(246, "Scholomance", EJ_Descriptions.Instances["SCHOLOMANCE"], 1007, 608176, 608215, 136355, 608254, EJ_Data.Heroic);
EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(_instance), false);

_instance:setAttributes(235, "Scarlet Monastery", EJ_Descriptions.Instances["SCARLETMONASTERY"], 189, 608175, 608214, 136354, 608253, EJ_Data.Normal);
EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(_instance), false);

_instance:setAttributes(242, "Upper Blackrock Spire", EJ_Descriptions.Instances["UPPERBLACKROCKSPIRE"], 229, 608158, 608197, 136327, 608236, EJ_Data.Heroic);
EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(_instance), false);

_instance:setAttributes(239, "Uldaman", EJ_Descriptions.Instances["ULDAMAN"], 70, 608186, 608225, 136363, 608264, EJ_Data.Normal);
EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(_instance), false);

_instance:setAttributes(239, "Molten Core", EJ_Descriptions.Instances["MOLTENCORE"], 70, 608186, 608225, 136363, 608264, EJ_Data.Normal);
EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(_instance), true);