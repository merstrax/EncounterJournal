local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-Onyxia.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-Onyxia.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-Onyxia.blp";

instance:setAttributes(760, "Onyxia's Lair", EJ_Descriptions.Instances["ONYXIA"], 248, bgFile, btnFile, 0, loreFile, EJ_Data.Raid);

local onyxia = EJ_Data:CreateEncounter();
onyxia:setAttributes("Onyxia", "", 0.67237, 0.309886, 760, 1084, 0, 0, 248, 8);
onyxia:setLoot({}); 
instance:addEncounter(onyxia); 

EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), true);