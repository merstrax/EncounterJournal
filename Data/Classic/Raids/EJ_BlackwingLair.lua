local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-BlackwingLair.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-BlackwingLair.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-BlackwingLair.blp";

instance:setAttributes(742, "Blackwing Lair", EJ_Descriptions.Instances["BLACKWINGLAIR"], 287, bgFile, btnFile, 0, loreFile, DifficultyUtil.ID.RaidAscended);

local razorgore_the_untamed = EJ_Data:CreateEncounter();
razorgore_the_untamed:setAttributes("Razorgore the Untamed", "", 0.419285, 0.602438, 742, 610, 1, 0, 287, 8);
razorgore_the_untamed:setLoot({19337,19336,1506015,1506014,19370,19369,19334,19335,19397,19357,19405,2522462}); 
instance:addEncounter(razorgore_the_untamed); 

local vaelastrasz_the_corrupt = EJ_Data:CreateEncounter();
vaelastrasz_the_corrupt:setAttributes("Vaelastrasz the Corrupt", "", 0.332819, 0.275371, 742, 611, 2, 0, 287, 8);
vaelastrasz_the_corrupt:setLoot({19339,19340,19372,19371,19346,19348,19430,19403,19367,14000,2522463}); 
instance:addEncounter(vaelastrasz_the_corrupt); 

local broodlord_lashlayer = EJ_Data:CreateEncounter();
broodlord_lashlayer:setAttributes("Broodlord Lashlayer", "", 0.505751, 0.617476, 742, 612, 3, 0, 289, 8);
broodlord_lashlayer:setLoot({19342,19341,19345,19374,19373,19351,19350,19402,19365,19432,2522465}); 
instance:addEncounter(broodlord_lashlayer); 

local firemaw = EJ_Data:CreateEncounter();
firemaw:setAttributes("Firemaw", "", 0.464398, 0.429507, 742, 613, 4, 0, 289, 8);
firemaw:setLoot({19365,19355,19353,19343,19344,19398,19400,19399,19396,19401,19394,19402,19397,19395,2522464}); 
instance:addEncounter(firemaw); 

local ebonroc = EJ_Data:CreateEncounter();
ebonroc:setAttributes("Ebonroc", "", 0.34911, 0.209583, 742, 614, 5, 0, 289, 8);
ebonroc:setLoot({19345,19407,19405,19396,19394,19403,19397,19406,19395,19353,19355,19368,2522464}); 
instance:addEncounter(ebonroc); 

local flamegor = EJ_Data:CreateEncounter();
flamegor:setAttributes("Flamegor", "", 0.355376, 0.371237, 742, 615, 6, 0, 290, 8);
flamegor:setLoot({19430,19396,19433,19394,19397,19432,19395,19431,19353,19357,19355,19367,2522464}); 
instance:addEncounter(flamegor); 

local chromaggus = EJ_Data:CreateEncounter();
chromaggus:setAttributes("Chromaggus", "", 0.394223, 0.7265, 742, 616, 7, 0, 290, 8);
chromaggus:setLoot({19386,19388,19385,19391,19389,19390,19393,19392,19387,19347,19352,19349,19361,2522461}); 
instance:addEncounter(chromaggus); 

local nefarian = EJ_Data:CreateEncounter();
nefarian:setAttributes("Nefarian", "", 0.703746, 0.72462, 742, 617, 8, 0, 290, 8);
nefarian:setLoot({19378,19375,19381,19380,19377,19376,19382,19379,19364,19363,19360,19356,14001,2522450});
instance:addEncounter(nefarian); 

EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), true);