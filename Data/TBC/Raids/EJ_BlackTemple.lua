local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-BlackTemple.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-BlackTemple.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-BlackTemple.blp";


instance:setAttributes(751, "Black Temple", EJ_Descriptions.Instances["BLACKTEMPLE"], 564, bgFile, btnFile, loreFile, DifficultyUtil.ID.RaidAscended);

EJ_Data:addInstance(EJ_Data.TBC, instance, true);