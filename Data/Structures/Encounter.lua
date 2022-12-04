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

    isEncounter = true;
};


function encounter:setLoot(lootTable)
    self.Loot = lootTable;
end

function encounter:addLoot(itemID)
    tinsert(self.Loot, itemID);
end

function encounter:getLootCount()
    return #self.Loot
end

function encounter:addSection(section)
    tinsert(self.Sections, section)
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

    if self.InstanceID then
        EJ_Data:addEncounterToInstance(self.InstanceID, self, self.DifficultyID > 4);
    end
end


function createEncounter()
    return tcopy(encounter)
end

