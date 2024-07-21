local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-GruulsLair.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-GruulsLair.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-GruulsLair.blp";

instance:setAttributes(746, "Gruul's Lair", EJ_Descriptions.Instances["GRUULSLAIR"], 564, bgFile, btnFile, loreFile, DifficultyUtil.ID.RaidAscended);

local high_king_maulgar = EJ_Data:CreateEncounter();
high_king_maulgar:setAttributes("High King Maulgar", "", 746, 649, 1, 8);
high_king_maulgar:setLoot({28797,28799,28796,28801,28795,28800,29764});
instance:addEncounter(high_king_maulgar);

local gruul_the_dragonkiller = EJ_Data:CreateEncounter();
gruul_the_dragonkiller:setAttributes("Gruul the Dragonkiller", "", 746, 650, 2, 8);
gruul_the_dragonkiller:setLoot({28804,28803,28828,28827,28810,28824,28822,28823,28830,31750,29767,28802,28794,28825,28826});
instance:addEncounter(gruul_the_dragonkiller);

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.TBC, instance, EJ_Data.Raids, 3);