local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-GruulsLair.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-GruulsLair.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-GruulsLair.blp";

instance:setAttributes(746, "Gruul's Lair", EJ_Descriptions.Instances["GRUULSLAIR"], 564, bgFile, btnFile, loreFile, DifficultyUtil.ID.RaidAscended);

local high_king_maulgar = EJ_Data:CreateEncounter();
high_king_maulgar:setAttributes("High King Maulgar", "", 746, 649, 1, 8);
high_king_maulgar:setLoot({}); 
instance:addEncounter(high_king_maulgar);

local gruul_the_dragonkiller = EJ_Data:CreateEncounter();
gruul_the_dragonkiller:setAttributes("Gruul the Dragonkiller", "", 746, 650, 2, 8);
gruul_the_dragonkiller:setLoot({}); 
instance:addEncounter(gruul_the_dragonkiller);

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.TBC, instance, true, 3);