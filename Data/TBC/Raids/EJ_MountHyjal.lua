local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-CavernsOfTime.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-CavernsOfTime.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-CavernsOfTime.blp";

instance:setAttributes(750, "Battle for Mount Hyjal", EJ_Descriptions.Instances["BATTLEFORMOUNTHYJAL"], 564, bgFile, btnFile, loreFile, DifficultyUtil.ID.RaidAscended);

local rage_winterchill = EJ_Data:CreateEncounter();
rage_winterchill:setAttributes("Rage Winterchill", "", 750, 618, 0, 8);
rage_winterchill:setLoot({30871,30870,30863,30868,30864,30869,30873,30866,30862,30861,32459,30865,30872,30891,30914});
instance:addEncounter(rage_winterchill);

local anetheron = EJ_Data:CreateEncounter();
anetheron:setAttributes("Anetheron", "", 750, 619, 1, 8);
anetheron:setLoot({30884,30888,30885,30879,30886,30887,30880,30878,30874,30881,30883,30882,30916,30919});
instance:addEncounter(anetheron);

local kaz_rogal = EJ_Data:CreateEncounter();
kaz_rogal:setAttributes("Kaz'rogal", "", 750, 620, 2, 8);
kaz_rogal:setLoot({30889,30893,30894,30895,30898,30900,30915,30918,31092});
instance:addEncounter(kaz_rogal);

local azgalor = EJ_Data:CreateEncounter();
azgalor:setAttributes("Azgalor", "", 750, 621, 3, 8);
azgalor:setLoot({30892,30896,30897,30899,30901,30917,31098});
instance:addEncounter(azgalor);

local archimonde = EJ_Data:CreateEncounter();
archimonde:setAttributes("Archimonde", "", 750, 622, 4, 8);
archimonde:setLoot({30913,30912,30905,30907,30904,30903,30911,30910,30902,30908,30909,30906,31097,450009});
instance:addEncounter(archimonde);

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.TBC, instance, EJ_Data.Raids, 7);