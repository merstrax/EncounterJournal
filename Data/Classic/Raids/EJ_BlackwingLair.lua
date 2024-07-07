local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-BlackwingLair.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-BlackwingLair.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-BlackwingLair.blp";

instance:setAttributes(742, "Blackwing Lair", EJ_Descriptions.Instances["BLACKWINGLAIR"], 287, bgFile, btnFile, 0, loreFile, DifficultyUtil.ID.RaidAscended);

local razorgore_the_untamed = EJ_Data:CreateEncounter();
razorgore_the_untamed:setAttributes("Razorgore the Untamed", "", 0.419285, 0.602438, 742, 610, 1, 0, 287, 8);
razorgore_the_untamed:setLoot({}); 
instance:addEncounter(razorgore_the_untamed); 

local vaelastrasz_the_corrupt = EJ_Data:CreateEncounter();
vaelastrasz_the_corrupt:setAttributes("Vaelastrasz the Corrupt", "", 0.332819, 0.275371, 742, 611, 2, 0, 287, 8);
vaelastrasz_the_corrupt:setLoot({}); 
instance:addEncounter(vaelastrasz_the_corrupt); 

local broodlord_lashlayer = EJ_Data:CreateEncounter();
broodlord_lashlayer:setAttributes("Broodlord Lashlayer", "", 0.505751, 0.617476, 742, 612, 3, 0, 289, 8);
broodlord_lashlayer:setLoot({}); 
instance:addEncounter(broodlord_lashlayer); 

local firemaw = EJ_Data:CreateEncounter();
firemaw:setAttributes("Firemaw", "", 0.464398, 0.429507, 742, 613, 4, 0, 289, 8);
firemaw:setLoot({}); 
instance:addEncounter(firemaw); 

local ebonroc = EJ_Data:CreateEncounter();
ebonroc:setAttributes("Ebonroc", "", 0.34911, 0.209583, 742, 614, 5, 0, 289, 8);
ebonroc:setLoot({}); 
instance:addEncounter(ebonroc); 

local flamegor = EJ_Data:CreateEncounter();
flamegor:setAttributes("Flamegor", "", 0.355376, 0.371237, 742, 615, 6, 0, 290, 8);
flamegor:setLoot({}); 
instance:addEncounter(flamegor); 

local chromaggus = EJ_Data:CreateEncounter();
chromaggus:setAttributes("Chromaggus", "", 0.394223, 0.7265, 742, 616, 7, 0, 290, 8);
chromaggus:setLoot({}); 
instance:addEncounter(chromaggus); 

local nefarian = EJ_Data:CreateEncounter();
nefarian:setAttributes("Nefarian", "", 0.703746, 0.72462, 742, 617, 8, 0, 290, 8);
nefarian:setLoot({});
instance:addEncounter(nefarian); 

EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), true);