local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-Karazhan.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-Karazhan.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-Karazhan.blp";

instance:setAttributes(745, "Karazhan", EJ_Descriptions.Instances["KARAZHAN"], 564, bgFile, btnFile, loreFile, DifficultyUtil.ID.RaidAscended);

local attumen_the_huntsman = EJ_Data:CreateEncounter();
attumen_the_huntsman:setAttributes("Attumen the Huntsman", "", 745, 652, 1, 8);
attumen_the_huntsman:setLoot({28477,28507,28508,28453,28506,28503,28454,28502,28505,28509,28510,28504,30480});
instance:addEncounter(attumen_the_huntsman);

local moroes = EJ_Data:CreateEncounter();
moroes:setAttributes("Moroes", "", 745, 653, 2, 8);
moroes:setLoot({28529,28570,28565,28545,28567,28566,28569,28530,28528,28525,28568,28524});
instance:addEncounter(moroes);

local maiden_of_virtue = EJ_Data:CreateEncounter();
maiden_of_virtue:setAttributes("Maiden of Virtue", "", 745, 654, 3, 8);
maiden_of_virtue:setLoot({28511,28515,28517,28514,28521,28520,28519,28512,28518,28516,28523,28522,229739});
instance:addEncounter(maiden_of_virtue);

local opera_hall = EJ_Data:CreateEncounter();
opera_hall:setAttributes("Opera Hall", "", 745, 655, 4, 8);
opera_hall:setLoot({28586,28585,28587,28588,28578,28579,28572,28573,28582,28583,28584,28581,28594,28591,28589,28593,28590,28592});
instance:addEncounter(opera_hall);

local the_curator = EJ_Data:CreateEncounter();
the_curator:setAttributes("The Curator", "", 745, 656, 6, 8);
the_curator:setLoot({28612,28647,28631,28621,28649,28633,29758});
instance:addEncounter(the_curator);

local shade_of_aran = EJ_Data:CreateEncounter();
shade_of_aran:setAttributes("Shade of Aran", "", 745, 658, 7, 8);
shade_of_aran:setLoot({28672,28726,28670,28663,28669,28671,28666,23933,28674,28675,28727,28728,28673});
instance:addEncounter(shade_of_aran);

local terestian_illhoof = EJ_Data:CreateEncounter();
terestian_illhoof:setAttributes("Terestian Illhoof", "",745, 657, 8, 8);
terestian_illhoof:setLoot({28660,28653,28652,28654,28655,28656,28662,28661,28785,28657,28658,28659,229739});
instance:addEncounter(terestian_illhoof);

local netherspite = EJ_Data:CreateEncounter();
netherspite:setAttributes("Netherspite", "", 745, 659, 9, 8);
netherspite:setLoot({28744,28742,28732,28741,28735,28740,28743,28733,28731,28730,28734,28729,229739});
instance:addEncounter(netherspite);

local chess_event = EJ_Data:CreateEncounter();
chess_event:setAttributes("Chess Event", "", 745, 660, 10, 8);
chess_event:setLoot({28756,28755,28750,28752,28751,28746,28748,28747,28745,28753,28749,28754});
instance:addEncounter(chess_event);

local prince_malchezaar = EJ_Data:CreateEncounter();
prince_malchezaar:setAttributes("Prince Malchezaar", "", 745, 661, 11, 8);
prince_malchezaar:setLoot({28765,28766,28764,28762,28763,28757,28770,28768,28767,28773,28771,28772,29761,229739});
instance:addEncounter(prince_malchezaar);

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.TBC, instance, EJ_Data.Raids, 1);