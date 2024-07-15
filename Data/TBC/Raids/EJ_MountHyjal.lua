local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-CavernsOfTime.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-CavernsOfTime.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-CavernsOfTime.blp";

instance:setAttributes(750, "Battle for Mount Hyjal", EJ_Descriptions.Instances["BATTLEFORMOUNTHYJAL"], 564, bgFile, btnFile, loreFile, DifficultyUtil.ID.RaidAscended);

local rage_winterchill = EJ_Data:CreateEncounter();
rage_winterchill:setAttributes("Rage Winterchill", "", 750, 618, 0, 8);
rage_winterchill:setLoot({}); 
instance:addEncounter(rage_winterchill);

local anetheron = EJ_Data:CreateEncounter();
anetheron:setAttributes("Anetheron", "", 750, 619, 1, 8);
anetheron:setLoot({}); 
instance:addEncounter(anetheron);

local kaz_rogal = EJ_Data:CreateEncounter();
kaz_rogal:setAttributes("Kaz'rogal", "", 750, 620, 2, 8);
kaz_rogal:setLoot({}); 
instance:addEncounter(kaz_rogal);

local azgalor = EJ_Data:CreateEncounter();
azgalor:setAttributes("Azgalor", "", 750, 621, 3, 8);
azgalor:setLoot({}); 
instance:addEncounter(azgalor);

local archimonde = EJ_Data:CreateEncounter();
archimonde:setAttributes("Archimonde", "", 750, 622, 4, 8);
archimonde:setLoot({});
instance:addEncounter(archimonde);

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.TBC, instance, true);