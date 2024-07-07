local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-ScarletMonastery.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-ScarletMonastery.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-ScarletMonastery.blp";

instance:setAttributes(235, "Scarlet Monastery", EJ_Descriptions.Instances["SCARLETMONASTERY"], 189, bgFile, btnFile, 0, loreFile, DifficultyUtil.ID.DungeonNormal);
EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), false);