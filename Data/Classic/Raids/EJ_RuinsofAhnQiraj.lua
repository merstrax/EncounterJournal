local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-RuinsofAhnQiraj.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-RuinsofAhnQiraj.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-RuinsofAhnQiraj.blp";

instance:setAttributes(743, "Ruins of Ahn'Qiraj", EJ_Descriptions.Instances["RUINSOFAHNQIRAJ"], 247, bgFile, btnFile, 0, loreFile, EJ_Data.Raid);

local kurinnaxx = EJ_Data:CreateEncounter();
kurinnaxx:setAttributes("Kurinnaxx", "", 0.563507, 0.357434, 743, 718, 1, 0, 247, 8);
kurinnaxx:setLoot({}); 
instance:addEncounter(kurinnaxx); 

local general_rajaxx = EJ_Data:CreateEncounter();
general_rajaxx:setAttributes("General Rajaxx", "", 0.58402, 0.49128, 743, 719, 2, 0, 247, 8);
general_rajaxx:setLoot({}); 
instance:addEncounter(general_rajaxx); 

local moam = EJ_Data:CreateEncounter();
moam:setAttributes("Moam", "", 0.328635, 0.360511, 743, 720, 3, 0, 247, 8);
moam:setLoot({}); 
instance:addEncounter(moam); 

local buru_the_gorger = EJ_Data:CreateEncounter();
buru_the_gorger:setAttributes("Buru the Gorger", "", 0.697866, 0.620511, 743, 721, 4, 0, 247, 8);
buru_the_gorger:setLoot({}); 
instance:addEncounter(buru_the_gorger); 

local ayamiss_the_hunter = EJ_Data:CreateEncounter();
ayamiss_the_hunter:setAttributes("Ayamiss the Hunter", "", 0.616841, 0.905126, 743, 722, 5, 0, 247, 8);
ayamiss_the_hunter:setLoot({}); 
instance:addEncounter(ayamiss_the_hunter); 

local ossirian_the_unscarred = EJ_Data:CreateEncounter();
ossirian_the_unscarred:setAttributes("Ossirian the Unscarred", "", 0.429149, 0.695895, 743, 723, 6, 0, 247, 8);
ossirian_the_unscarred:setLoot({});
instance:addEncounter(ossirian_the_unscarred); 

EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), true);