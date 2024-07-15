local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-ScarletMonastery.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-ScarletMonastery.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-ScarletMonastery.blp";

instance:setAttributes(311, "Scarlet Monastery", EJ_Descriptions.Instances["SCARLETMONASTERY"], 189, bgFile, btnFile, loreFile, DifficultyUtil.ID.DungeonNormal);

local interrogator_vishas = EJ_Data:CreateEncounter();
interrogator_vishas:setAttributes("Interrogator Vishas", "", 311, 23501, 1, 4);
interrogator_vishas:setLoot({7683,7682}); 
instance:addEncounter(interrogator_vishas);

local bloodmage_thalnos = EJ_Data:CreateEncounter();
bloodmage_thalnos:setAttributes("Bloodmage Thalnos", "", 311, 23502, 2, 4);
bloodmage_thalnos:setLoot({7684,7685}); 
instance:addEncounter(bloodmage_thalnos);

local houndmaster_loksey = EJ_Data:CreateEncounter();
houndmaster_loksey:setAttributes("Houndmaster Loksey", "", 311, 23503, 3, 4);
houndmaster_loksey:setLoot({7756,7710,3456}); 
instance:addEncounter(houndmaster_loksey);

local arcanist_doan = EJ_Data:CreateEncounter();
arcanist_doan:setAttributes("Arcanist Doan", "", 311, 23504, 4, 4);
arcanist_doan:setLoot({34227,7712,7711,7714,7713,7146}); 
instance:addEncounter(arcanist_doan);

local herod = EJ_Data:CreateEncounter();
herod:setAttributes("Herod", "", 311, 23505, 5, 4);
herod:setLoot({7719,7718,10330,7717,23192}); 
instance:addEncounter(herod);

local scarlet_commander_mograine = EJ_Data:CreateEncounter();
scarlet_commander_mograine:setAttributes("Scarlet Commander Mograine", "", 311, 23506, 6, 4);
scarlet_commander_mograine:setLoot({7724,10330,7723,7726}); 
instance:addEncounter(scarlet_commander_mograine);

local high_inquisitor_whitemane = EJ_Data:CreateEncounter();
high_inquisitor_whitemane:setAttributes("High Inquisitor Whitemane", "", 311, 23507, 7, 4);
high_inquisitor_whitemane:setLoot({7720,7722,7721}); 
instance:addEncounter(high_inquisitor_whitemane);

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.CLASSIC, instance, false);