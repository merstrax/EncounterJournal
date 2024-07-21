local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-Deadmines.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-Deadmines.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-Deadmines.blp";

instance:setAttributes(63, "Deadmines", EJ_Descriptions.Instances["DEADMINES"], 36, bgFile, btnFile, loreFile, DifficultyUtil.ID.DungeonNormal);

local rhahkzor = EJ_Data:CreateEncounter();
rhahkzor:setAttributes("Rhahk'Zor", "", 63, 1064, 1, 2);
rhahkzor:setLoot({872,5187});
instance:addEncounter(rhahkzor);

local sneed = EJ_Data:CreateEncounter();
sneed:setAttributes("Sneed", "", 63, 1065, 2, 2);
sneed:setLoot({2169,1937,5195,5194});
instance:addEncounter(sneed);

local gilnid = EJ_Data:CreateEncounter();
gilnid:setAttributes("Gilnid","", 63, 1063, 3, 2);
gilnid:setLoot({5199,1156,10403,5200,5201});
instance:addEncounter(gilnid);

local mr_smite = EJ_Data:CreateEncounter();
mr_smite:setAttributes("Mr. Smite", "", 63, 1062, 4, 2);
mr_smite:setLoot({5192,5196,7230});
instance:addEncounter(mr_smite);

local cookie = EJ_Data:CreateEncounter();
cookie:setAttributes("Cookie", "", 63, 1060, 5, 2);
cookie:setLoot({5197,5198});
instance:addEncounter(cookie);

local edwin_vancleef = EJ_Data:CreateEncounter();
edwin_vancleef:setAttributes("Edwin VanCleef", "", 63, 1081, 6, 2);
edwin_vancleef:setLoot({5193,5202,10399,5191});
instance:addEncounter(edwin_vancleef);

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.CLASSIC, instance, EJ_Data.Dungeons , 3);