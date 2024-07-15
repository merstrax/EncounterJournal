local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-TheStockade.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-TheStockade.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-TheStockade.blp";

instance:setAttributes(238, "The Stockade", EJ_Descriptions.Instances["THESTOCKADES"], 34, bgFile, btnFile, loreFile, DifficultyUtil.ID.DungeonNormal);

local bruegal_ironknuckle = EJ_Data:CreateEncounter();
bruegal_ironknuckle:setAttributes("Bruegal Ironknuckle", "", 238, 1146, 1, 2);
bruegal_ironknuckle:setLoot({}); 
instance:addEncounter(bruegal_ironknuckle); 

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.CLASSIC, instance, false);