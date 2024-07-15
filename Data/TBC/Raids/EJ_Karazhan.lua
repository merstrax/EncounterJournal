local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-Karazhan.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-Karazhan.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-Karazhan.blp";

instance:setAttributes(745, "Karazhan", EJ_Descriptions.Instances["KARAZHAN"], 564, bgFile, btnFile, loreFile, DifficultyUtil.ID.RaidAscended);

local attumen_the_huntsman = EJ_Data:CreateEncounter();
attumen_the_huntsman:setAttributes("Attumen the Huntsman", "", 745, 652, 1, 8);
attumen_the_huntsman:setLoot({}); 
instance:addEncounter(attumen_the_huntsman);

local moroes = EJ_Data:CreateEncounter();
moroes:setAttributes("Moroes", "", 745, 653, 2, 8);
moroes:setLoot({}); 
instance:addEncounter(moroes);

local maiden_of_virtue = EJ_Data:CreateEncounter();
maiden_of_virtue:setAttributes("Maiden of Virtue", "", 745, 654, 3, 8);
maiden_of_virtue:setLoot({}); 
instance:addEncounter(maiden_of_virtue);

local opera_hall = EJ_Data:CreateEncounter();
opera_hall:setAttributes("Opera Hall", "", 745, 655, 4, 8);
opera_hall:setLoot({}); 
instance:addEncounter(opera_hall);

local the_curator = EJ_Data:CreateEncounter();
the_curator:setAttributes("The Curator", "", 745, 656, 6, 8);
the_curator:setLoot({}); 
instance:addEncounter(the_curator);

local shade_of_aran = EJ_Data:CreateEncounter();
shade_of_aran:setAttributes("Shade of Aran", "", 745, 658, 7, 8);
shade_of_aran:setLoot({}); 
instance:addEncounter(shade_of_aran);

local terestian_illhoof = EJ_Data:CreateEncounter();
terestian_illhoof:setAttributes("Terestian Illhoof", "",745, 657, 8, 8);
terestian_illhoof:setLoot({}); 
instance:addEncounter(terestian_illhoof);

local netherspite = EJ_Data:CreateEncounter();
netherspite:setAttributes("Netherspite", "", 745, 659, 9, 8);
netherspite:setLoot({}); 
instance:addEncounter(netherspite);

local chess_event = EJ_Data:CreateEncounter();
chess_event:setAttributes("Chess Event", "", 745, 660, 10, 8);
chess_event:setLoot({}); 
instance:addEncounter(chess_event);

local prince_malchezaar = EJ_Data:CreateEncounter();
prince_malchezaar:setAttributes("Prince Malchezaar", "", 745, 661, 11, 8);
prince_malchezaar:setLoot({});
instance:addEncounter(prince_malchezaar);

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.TBC, instance, true);