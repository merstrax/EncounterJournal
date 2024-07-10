local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-RagefireChasm.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-RagefireChasm.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-RagefireChasm.blp";

instance:setAttributes(226, "Ragefire Chasm", EJ_Descriptions.Instances["RAGEFIRECHASM"], 389, bgFile, btnFile, 0, loreFile, DifficultyUtil.ID.DungeonNormal);

local taragaman_the_hungerer = EJ_Data:CreateEncounter();
taragaman_the_hungerer:setAttributes("Taragaman the Hungerer", "", 0.69273, 0.650206, 226, 1443, 1, 5961, 213, 4);
taragaman_the_hungerer:setLoot({}); 
instance:addEncounter(taragaman_the_hungerer); 

local jergosh_the_invoker = EJ_Data:CreateEncounter();
jergosh_the_invoker:setAttributes("Jergosh the Invoker", "", 0.342936, 0.816872, 226, 1446, 2, 5967, 213, 4);
jergosh_the_invoker:setLoot({24150,14147,14151}); 
instance:addEncounter(jergosh_the_invoker); 

EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), false);