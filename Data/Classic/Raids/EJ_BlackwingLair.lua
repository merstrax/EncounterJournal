local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-BlackwingLair.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-BlackwingLair.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-BlackwingLair.blp";

instance:setAttributes(742, "Blackwing Lair", EJ_Descriptions.Instances["BLACKWINGLAIR"], 287, bgFile, btnFile, 0, loreFile, EJ_Data.Raid);

razorgore_the_untamed = createEncounter();
razorgore_the_untamed:setAttributes("Razorgore the Untamed", "", 0.419285, 0.602438, 742, 610, 1, 0, 287, 8);
razorgore_the_untamed:setLoot({}); 

vaelastrasz_the_corrupt = createEncounter();
vaelastrasz_the_corrupt:setAttributes("Vaelastrasz the Corrupt", "", 0.332819, 0.275371, 742, 611, 2, 0, 287, 8);
vaelastrasz_the_corrupt:setLoot({}); 

broodlord_lashlayer = createEncounter();
broodlord_lashlayer:setAttributes("Broodlord Lashlayer", "", 0.505751, 0.617476, 742, 612, 3, 0, 289, 8);
broodlord_lashlayer:setLoot({}); 

firemaw = createEncounter();
firemaw:setAttributes("Firemaw", "", 0.464398, 0.429507, 742, 613, 4, 0, 289, 8);
firemaw:setLoot({}); 

ebonroc = createEncounter();
ebonroc:setAttributes("Ebonroc", "", 0.34911, 0.209583, 742, 614, 5, 0, 289, 8);
ebonroc:setLoot({}); 

flamegor = createEncounter();
flamegor:setAttributes("Flamegor", "", 0.355376, 0.371237, 742, 615, 6, 0, 290, 8);
flamegor:setLoot({}); 

chromaggus = createEncounter();
chromaggus:setAttributes("Chromaggus", "", 0.394223, 0.7265, 742, 616, 7, 0, 290, 8);
chromaggus:setLoot({}); 

nefarian = createEncounter();
nefarian:setAttributes("Nefarian", "", 0.703746, 0.72462, 742, 617, 8, 0, 290, 8);
nefarian:setLoot({});

EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), true);