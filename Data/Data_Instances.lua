EJ_Data = {};

function EJ_Data:getInstanceTier(instanceID)
    if type(self.InstanceToTier) == "table" then
        return self.InstanceToTier[instanceID] or 1;
    end
end

function EJ_Data:addInstance(tier, instance_data, isRaid)
    if not self.Tiers then self.Tiers = {}; end
    if not self.InstanceToTier then self.InstanceToTier = {}; end
    if not self.Tiers[tier] then self.Tiers[tier] = { Dungeons = {}, Raids = {}}; end

    if isRaid then
        tinsert(self.Tiers[tier].Raids, instance_data);
    else
        tinsert(self.Tiers[tier].Dungeons, instance_data);
    end

    self.InstanceToTier[instance_data.MapID] = tier;
end

function EJ_Data:addEncounterToInstance(instanceID, encounter, isRaid)
    local tier = self:getInstanceTier(instanceID);

    if isRaid then
        for _, i in ipairs(self.Tiers[tier].Raids) do
            if i.ID == instanceID then
                i:addEncounter(encounter);
                return;
            end
        end
    else
        for _, i in ipairs(self.Tiers[tier].Dungeons) do
            if i.ID == instanceID then
                i:addEncounter(encounter);
                return;
            end
        end
    end
end

local instNormal = 2;
local instPlus = 4;
local instRaid = 8;

local CLASSIC = 1;
local TBC = 2;
local WLK = 3;

local instance = createEncounterInstance();

--setAttributes(id, name, desc, mapID, bgFile, btnFile, smBtnFile, loreFile, difficultyID)
instance:setAttributes(63, "Deadmines", EJ_Descriptions.Instances["DEADMINES"], 36, 522336, 522352, 136332, 526404, instNormal);
EJ_Data:addInstance(CLASSIC, tcopy(instance), false);

instance:setAttributes(64, "Shadowfang Keep", EJ_Descriptions.Instances["SHADOWFANGKEEP"], 33, 522342, 522358, 136357, 526410, instNormal);
EJ_Data:addInstance(CLASSIC, tcopy(instance), false);

instance:setAttributes(227, "Blackfathom Deeps", EJ_Descriptions.Instances["BLACKFATHOMDEEPS"], 48, 608156, 608195, 136325, 608234, instNormal);
EJ_Data:addInstance(CLASSIC, tcopy(instance), false);

instance:setAttributes(228, "Blackrock Depths", EJ_Descriptions.Instances["BLACKROCKDEPTHS"], 230, 608157, 608196, 136326, 608235, instPlus);
EJ_Data:addInstance(CLASSIC, tcopy(instance), false);

instance:setAttributes(226, "Ragefire Chasm", EJ_Descriptions.Instances["RAGEFIRECHASM"], 389, 608172, 608211, 136350, 608250, instNormal);
EJ_Data:addInstance(CLASSIC, tcopy(instance), false);

instance:setAttributes(229, "Lower Blackrock Spire", EJ_Descriptions.Instances["LOWERBLACKROCKSPIRE"], 229, 608158, 608197, 136327, 608236, instPlus);
EJ_Data:addInstance(CLASSIC, tcopy(instance), false);

instance:setAttributes(230, "Dire Maul", EJ_Descriptions.Instances["DIREMAUL"], 429, 608161, 608200, 136333, 608239, instPlus);
EJ_Data:addInstance(CLASSIC, tcopy(instance), false);

instance:setAttributes(231, "Gnomeregan", EJ_Descriptions.Instances["GNOMERGAN"], 90, 608163, 608202, 136336, 608241, instNormal);
EJ_Data:addInstance(CLASSIC, tcopy(instance), false);

instance:setAttributes(232, "Maraudon", EJ_Descriptions.Instances["MARAUDON"], 349, 608170, 608209, 136345, 608248, instNormal);
EJ_Data:addInstance(CLASSIC, tcopy(instance), false);

instance:setAttributes(233, "Razorfen Downs", EJ_Descriptions.Instances["RAZORFENDOWNS"], 129, 608173, 608212, 136352, 608251, instNormal);
EJ_Data:addInstance(CLASSIC, tcopy(instance), false);

instance:setAttributes(234, "Razorfen Kraul", EJ_Descriptions.Instances["RAZORFENKRAUL"], 47, 608174, 608213, 136353, 608252, instNormal);
EJ_Data:addInstance(CLASSIC, tcopy(instance), false);

instance:setAttributes(236, "Stratholme", EJ_Descriptions.Instances["STRATHOLME"], 329, 608177, 608216, 136359, 608255, instPlus);
EJ_Data:addInstance(CLASSIC, tcopy(instance), false);

instance:setAttributes(237, "The Temple of Atal'hakkar", EJ_Descriptions.Instances["SUNKENTEMPLE"], 109, 608178, 608217, 136360, 608256, instNormal);
EJ_Data:addInstance(CLASSIC, tcopy(instance), false);

instance:setAttributes(238, "The Stockade", EJ_Descriptions.Instances["THESTOCKADES"], 34, 608184, 608223, 136358, 608262, instNormal);
EJ_Data:addInstance(CLASSIC, tcopy(instance), false);

instance:setAttributes(240, "Wailing Caverns", EJ_Descriptions.Instances["WAILINGCAVERNS"], 43, 608190, 608229, 136364, 608313, instNormal);
EJ_Data:addInstance(CLASSIC, tcopy(instance), false);

instance:setAttributes(241, "Zul'Farrak", EJ_Descriptions.Instances["ZULFARRAK"], 209, 608191, 608230, 136368, 608267, instNormal);
EJ_Data:addInstance(CLASSIC, tcopy(instance), false);

instance:setAttributes(246, "Scholomance", EJ_Descriptions.Instances["SCHOLOMANCE"], 1007, 608176, 608215, 136355, 608254, instPlus);
EJ_Data:addInstance(CLASSIC, tcopy(instance), false);

instance:setAttributes(235, "Scarlet Monastery", EJ_Descriptions.Instances["SCARLETMONASTERY"], 189, 608175, 608214, 136354, 608253, instNormal);
EJ_Data:addInstance(CLASSIC, tcopy(instance), false);

instance:setAttributes(242, "Upper Blackrock Spire", EJ_Descriptions.Instances["UPPERBLACKROCKSPIRE"], 229, 608158, 608197, 136327, 608236, instPlus);
EJ_Data:addInstance(CLASSIC, tcopy(instance), false);

instance:setAttributes(239, "Uldaman", EJ_Descriptions.Instances["ULDAMAN"], 70, 608186, 608225, 136363, 608264, instNormal);
EJ_Data:addInstance(CLASSIC, tcopy(instance), false);