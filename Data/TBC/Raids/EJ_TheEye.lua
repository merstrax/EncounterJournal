local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-TempestKeep.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-TempestKeep.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-TempestKeep.blp";

instance:setAttributes(749, "Tempest Keep: The Eye", EJ_Descriptions.Instances["THEEYE"], 564, bgFile, btnFile, loreFile, DifficultyUtil.ID.RaidAscended);

local al_ar = EJ_Data:CreateEncounter();
al_ar:setAttributes("Al'ar", "", 749, 730, 0, 8);
al_ar:setLoot({29925,29918,29947,29921,29922,29920,30448,30447,29923,32944,29948,29924,29949});
instance:addEncounter(al_ar);

local void_reaver = EJ_Data:CreateEncounter();
void_reaver:setAttributes("Void Reaver", "", 749, 731, 1, 8);
void_reaver:setLoot({29986,29984,29985,29983,32515,30619,30450,30249});
instance:addEncounter(void_reaver);

local high_astromancer_solarian = EJ_Data:CreateEncounter();
high_astromancer_solarian:setAttributes("High Astromancer Solarian", "", 749, 732, 2, 8);
high_astromancer_solarian:setLoot({29977,29972,29966,29976,29951,29965,29950,32267,30446,30449,29962,29981,29982});
instance:addEncounter(high_astromancer_solarian);

local kael_thas_sunstrider = EJ_Data:CreateEncounter();
kael_thas_sunstrider:setAttributes("Kael'thas Sunstrider", "", 749, 733, 3, 8);
kael_thas_sunstrider:setLoot({29992,29989,29994,29990,29987,29995,29991,29998,29997,29993,29996,29988,30237,32405,30018,30017,30007,30015});
instance:addEncounter(kael_thas_sunstrider);

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.TBC, instance, EJ_Data.Raids, 5);