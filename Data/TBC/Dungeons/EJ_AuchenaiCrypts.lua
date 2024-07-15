local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-Auchindoun.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-Auchindoun.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-Auchindoun.blp";

instance:setAttributes(247, "Auchenai Crypts", EJ_Descriptions.Instances["AUCHENAICRYPTS"], 564, bgFile, btnFile, loreFile, DifficultyUtil.ID.DungeonMythic);

local shirrak_the_dead_watcher = EJ_Data:CreateEncounter();
shirrak_the_dead_watcher:setAttributes("Shirrak the Dead Watcher", "Shirrak was constructed by Exarch Maladaar to guard over the fallen draenei spirits who wander the Auchenai Crypts. A necrotic mass of eyes, teeth, and tentacles, this undead construct absorbs arcane energy with hungry abandon, and will not suffer the living to pass.", 247, 1890, 1, 4);
shirrak_the_dead_watcher:setLoot({}); 
instance:addEncounter(shirrak_the_dead_watcher); 

local exarch_maladaar = EJ_Data:CreateEncounter();
exarch_maladaar:setAttributes("Exarch Maladaar", "The sole living remnant of the glory that once strode the halls of Auchenai, Maladaar has been driven mad by the loss of everyone and everything he ever loved. His lunatic dedication to the preservation of their memory has driven him to a mastery of the dark arts.", 247, 1889, 2, 4);
exarch_maladaar:setLoot({});
instance:addEncounter(exarch_maladaar); 

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.TBC, instance, false);