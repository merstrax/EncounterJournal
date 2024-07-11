local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-OnyxiasLair.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-Onyxia.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-OnxyiasLair.blp";

instance:setAttributes(760, "Onyxia's Lair", EJ_Descriptions.Instances["ONYXIA"], 248, bgFile, btnFile, loreFile, DifficultyUtil.ID.RaidAscended);

local onyxia = EJ_Data:CreateEncounter();
onyxia:setAttributes("Onyxia", "", 760, 1084, 0, 8);
onyxia:setLoot({17078,18205,18813,17064,17067,17075,17068,18215,18216,18211,17084,18212,2522460});
instance:addEncounter(onyxia); 

EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), true);