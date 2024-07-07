local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-MoltenCore.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-MoltenCore.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-MoltenCore.blp";

instance:setAttributes(741, "Molten Core", EJ_Descriptions.Instances["MOLTENCORE"], 232, bgFile, btnFile, 0, loreFile, DifficultyUtil.ID.RaidAscended);

local lucifron = EJ_Data:CreateEncounter();
lucifron:setAttributes("Lucifron", "", 0.658633, 0.374995, 741, 663, 1, 0, 232, 8);
lucifron:setLoot({}); 
instance:addEncounter(lucifron); 

local magmadar = EJ_Data:CreateEncounter();
magmadar:setAttributes("Magmadar", "", 0.694339, 0.236793, 741, 664, 2, 0, 232, 8);
magmadar:setLoot({}); 
instance:addEncounter(magmadar); 

local gehennas = EJ_Data:CreateEncounter();
gehennas:setAttributes("Gehennas", "", 0.330876, 0.485334, 741, 665, 3, 0, 232, 8);
gehennas:setLoot({}); 
instance:addEncounter(gehennas); 

local garr = EJ_Data:CreateEncounter();
garr:setAttributes("Garr", "", 0.315094, 0.689623, 741, 666, 4, 0, 232, 8);
garr:setLoot({}); 
instance:addEncounter(garr); 

local shazzrah = EJ_Data:CreateEncounter();
shazzrah:setAttributes("Shazzrah", "", 0.558406, 0.852617, 741, 667, 5, 0, 232, 8);
shazzrah:setLoot({}); 
instance:addEncounter(shazzrah); 

local baron_geddon = EJ_Data:CreateEncounter();
baron_geddon:setAttributes("Baron Geddon", "", 0.523926, 0.77632, 741, 668, 6, 0, 232, 8);
baron_geddon:setLoot({}); 
instance:addEncounter(baron_geddon); 

local sulfuron_harbinger = EJ_Data:CreateEncounter();
sulfuron_harbinger:setAttributes("Sulfuron Harbinger", "", 0.828302, 0.825472, 741, 669, 7, 0, 232, 8);
sulfuron_harbinger:setLoot({}); 
instance:addEncounter(sulfuron_harbinger); 

local golemagg_the_incinerator = EJ_Data:CreateEncounter();
golemagg_the_incinerator:setAttributes("Golemagg the Incinerator", "", 0.68868, 0.576416, 741, 670, 8, 0, 232, 8);
golemagg_the_incinerator:setLoot({}); 
instance:addEncounter(golemagg_the_incinerator); 

local majordomo_executus = EJ_Data:CreateEncounter();
majordomo_executus:setAttributes("Majordomo Executus", "", 0.84151, 0.652831, 741, 671, 9, 0, 232, 8);
majordomo_executus:setLoot({}); 
instance:addEncounter(majordomo_executus); 

local ragnaros = EJ_Data:CreateEncounter();
ragnaros:setAttributes("Ragnaros", "", 0.562265, 0.533963, 741, 672, 10, 0, 232, 8);
ragnaros:setLoot({});
instance:addEncounter(ragnaros); 

EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), true);