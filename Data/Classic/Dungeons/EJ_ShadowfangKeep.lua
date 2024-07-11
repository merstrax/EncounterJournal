local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-ShadowfangKeep.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-ShadowfangKeep.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-ShadowfangKeep.blp";

instance:setAttributes(64, "Shadowfang Keep", EJ_Descriptions.Instances["SHADOWFANGKEEP"], 33, bgFile, btnFile, loreFile, DifficultyUtil.ID.DungeonNormal);

local rethilgore = EJ_Data:CreateEncounter();
rethilgore:setAttributes("Rethilgore", "", 64, 1069, 1, 2);
rethilgore:setLoot({5254}); 
instance:addEncounter(rethilgore);

local razorclaw_the_butcher = EJ_Data:CreateEncounter();
razorclaw_the_butcher:setAttributes("Razorclaw the Butcher", "", 64, 64001, 2, 2);
razorclaw_the_butcher:setLoot({6226,6633,1292}); 
instance:addEncounter(razorclaw_the_butcher);

local baron_silverlaine = EJ_Data:CreateEncounter();
baron_silverlaine:setAttributes("Baron Silverlaine", "", 64, 1070, 3, 2);
baron_silverlaine:setLoot({6321,6323}); 
instance:addEncounter(baron_silverlaine); 

local commander_springvale = EJ_Data:CreateEncounter();
commander_springvale:setAttributes("Commander Springvale", "", 64, 1071, 4, 2);
commander_springvale:setLoot({3191,6320}); 
instance:addEncounter(commander_springvale); 

local odo_the_blindwatcher = EJ_Data:CreateEncounter();
odo_the_blindwatcher:setAttributes("Odo the Blindwatcher", "", 64, 1073, 5, 2);
odo_the_blindwatcher:setLoot({6319,6318}); 
instance:addEncounter(odo_the_blindwatcher);

local fenrus_the_devourer = EJ_Data:CreateEncounter();
fenrus_the_devourer:setAttributes("Fenrus the Devourer", "", 64, 64002, 6, 2);
fenrus_the_devourer:setLoot({6340,3230}); 
instance:addEncounter(fenrus_the_devourer);

local wolf_master_nandos = EJ_Data:CreateEncounter();
wolf_master_nandos:setAttributes("Wolf Master Nandos", "", 64, 64003, 7, 2);
wolf_master_nandos:setLoot({6314,3748}); 
instance:addEncounter(wolf_master_nandos);

local archmage_arugal = EJ_Data:CreateEncounter();
archmage_arugal:setAttributes("Archmage Arugal", "", 64, 1072, 8, 2);
archmage_arugal:setLoot({6324,6392,6220});
instance:addEncounter(archmage_arugal); 

EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), false);