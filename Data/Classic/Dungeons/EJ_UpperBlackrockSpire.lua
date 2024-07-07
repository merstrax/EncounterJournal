local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-UpperBlackrockSpire.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-UpperBlackrockSpire.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-UpperBlackrockSpire.blp";

instance:setAttributes(242, "Upper Blackrock Spire", EJ_Descriptions.Instances["UPPERBLACKROCKSPIRE"], 229, bgFile, btnFile, 0, loreFile, EJ_Data.Heroic);
EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), false);