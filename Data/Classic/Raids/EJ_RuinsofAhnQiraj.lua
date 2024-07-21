local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-RuinsofAhnQiraj.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-RuinsofAhnQiraj.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-RuinsofAhnQiraj.blp";

instance:setAttributes(743, "Ruins of Ahn'Qiraj", EJ_Descriptions.Instances["RUINSOFAHNQIRAJ"], 247, bgFile, btnFile, loreFile, DifficultyUtil.ID.RaidAscended);

local kurinnaxx = EJ_Data:CreateEncounter();
kurinnaxx:setAttributes("Kurinnaxx", "", 743, 718, 1, 8);
kurinnaxx:setLoot({21499,21498,21500,21501,21502,21503,1506051});
instance:addEncounter(kurinnaxx);

local general_rajaxx = EJ_Data:CreateEncounter();
general_rajaxx:setAttributes("General Rajaxx", "", 743, 719, 2, 8);
general_rajaxx:setLoot({21493,21492,21496,21494,21497,21495,21810,21809,21806,1506051});
instance:addEncounter(general_rajaxx);

local moam = EJ_Data:CreateEncounter();
moam:setAttributes("Moam", "", 743, 720, 3, 8);
moam:setLoot({21472,21467,21479,21471,21470,21468,21455,21474,21469,21476,21475,21477,21473,1506053});
instance:addEncounter(moam);

local buru_the_gorger = EJ_Data:CreateEncounter();
buru_the_gorger:setAttributes("Buru the Gorger", "", 743, 721, 4, 8);
buru_the_gorger:setLoot({21487,21486,21485,21489,21491,21490,21488,1506052});
instance:addEncounter(buru_the_gorger);

local ayamiss_the_hunter = EJ_Data:CreateEncounter();
ayamiss_the_hunter:setAttributes("Ayamiss the Hunter", "", 743, 722, 5, 8);
ayamiss_the_hunter:setLoot({21479,21466,21478,21484,21480,21482,21481,21483,1506052});
instance:addEncounter(ayamiss_the_hunter);

local ossirian_the_unscarred = EJ_Data:CreateEncounter();
ossirian_the_unscarred:setAttributes("Ossirian the Unscarred", "", 743, 723, 6, 8);
ossirian_the_unscarred:setLoot({21456,21464,21462,21461,21458,21454,21463,21460,21453, 21457,21715,21459,21452,1506053});
instance:addEncounter(ossirian_the_unscarred);

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.CLASSIC, instance, EJ_Data.Raids, 5);