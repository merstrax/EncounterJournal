local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-ScarletMonastery.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-ScarletMonastery.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-ScarletMonastery.blp";

instance:setAttributes(235, "Scarlet Monastery", EJ_Descriptions.Instances["SCARLETMONASTERY"], 189, bgFile, btnFile, loreFile, DifficultyUtil.ID.DungeonNormal);

local interrogator_vishas = EJ_Data:CreateEncounter();
interrogator_vishas:setAttributes("Interrogator Vishas", "", 311, 23501, 1, 4);
interrogator_vishas:setLoot({}); 
instance:addEncounter(interrogator_vishas);

local bloodmage_thalnos = EJ_Data:CreateEncounter();
bloodmage_thalnos:setAttributes("Bloodmage Thalnos", "", 311, 23502, 2, 4);
bloodmage_thalnos:setLoot({}); 
instance:addEncounter(bloodmage_thalnos);

local houndmaster_loksey = EJ_Data:CreateEncounter();
houndmaster_loksey:setAttributes("Houndmaster Loksey", "", 311, 23503, 3, 4);
houndmaster_loksey:setLoot({}); 
instance:addEncounter(houndmaster_loksey);

local arcanist_doan = EJ_Data:CreateEncounter();
arcanist_doan:setAttributes("Arcanist Doan", "", 311, 23504, 4, 4);
arcanist_doan:setLoot({}); 
instance:addEncounter(arcanist_doan);

EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), false);