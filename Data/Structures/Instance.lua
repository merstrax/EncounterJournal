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

function instance:setAttributes(name, desc, mapID, bgFile, btnFile, smBtnFile, loreFile, difficultyID)
    self.Name = name or self.Name;
    self.Description = desc or self.Description;
    self.MapID = mapID or self.MapID;
    self.BackgroundFile = bgFile or self.BackgroundFile;
    self.ButtonFile = btnFile or self.ButtonFile;
    self.SmallButtonFile = smBtnFile or self.SmallButtonFile;
    self.LoreFile = loreFile or self.LoreFile;
    self.DifficultyID = difficultyID or self.DifficultyID;
end

function createEncounterInstance(id, name, desc)
    local newInstance = tcopy(instance);
    newInstance.ID = id;
    newInstance.Name = name or nil;
    newInstance.Description = desc or nil;
    return newInstance;
end

function createEncounterInstanceAttributes()
    return tcopy(instanceAttr);
end