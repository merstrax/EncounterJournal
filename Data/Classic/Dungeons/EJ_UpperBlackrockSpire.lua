local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-UpperBlackrockSpire.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-UpperBlackrockSpire.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-UpperBlackrockSpire.blp";

instance:setAttributes(242, "Upper Blackrock Spire", EJ_Descriptions.Instances["UPPERBLACKROCKSPIRE"], 229, bgFile, btnFile, loreFile, DifficultyUtil.ID.DungeonMythic);

local pyroguard_emberseer = EJ_Data:CreateEncounter();
pyroguard_emberseer:setAttributes("Pyroguard Emberseer", "", 242, 2420, 1, 4);
pyroguard_emberseer:setLoot({12905,12927,12929,12926,17322,21988,16672});
instance:addEncounter(pyroguard_emberseer);

local solakar_flamewreath = EJ_Data:CreateEncounter();
solakar_flamewreath:setAttributes("Solakar Flamewreath", "", 242, 2421, 2, 4);
solakar_flamewreath:setLoot({12609,12589,12603,12606,18657,18638,16695});
instance:addEncounter(solakar_flamewreath);

local goraluk_anvilcrack = EJ_Data:CreateEncounter();
goraluk_anvilcrack:setAttributes("Goraluk Anvilcrack", "", 242, 2422, 3, 4);
goraluk_anvilcrack:setLoot({18047,13502,13498,18048,12837,12794,12834,12790});
instance:addEncounter(goraluk_anvilcrack);

local warchief_rend_blackhand = EJ_Data:CreateEncounter();
warchief_rend_blackhand:setAttributes("Warchief Rend Blackhand", "", 242, 2423, 4, 4);
warchief_rend_blackhand:setLoot({12590,22247,18102,12587,12588,18104,12936,12935,18103,16733,12940,12939,12583});
instance:addEncounter(warchief_rend_blackhand);

local gyth = EJ_Data:CreateEncounter();
gyth:setAttributes("Gyth", "", 242, 2424, 5, 4);
gyth:setLoot({12871,12945,12903,12895,22225,12960,12953,12952,13522,16669});
instance:addEncounter(gyth);

local the_beast = EJ_Data:CreateEncounter();
the_beast:setAttributes("The Beast", "", 242, 2425, 6, 4);
the_beast:setLoot({12731,12752,12757,12756,12967,12968,12965,22311,12966,12963,12964,12709,12969,16729});
instance:addEncounter(the_beast);

local lord_valthalak = EJ_Data:CreateEncounter();
lord_valthalak:setAttributes("Lord Valthalak", "", 242, 2426, 7, 4);
lord_valthalak:setLoot({22337,22302,22342,22343,22340,22339,22335,22336});
instance:addEncounter(lord_valthalak);

local general_drakkisath = EJ_Data:CreateEncounter();
general_drakkisath:setAttributes("General Drakkisath", "", 242, 2427, 8, 4);
general_drakkisath:setLoot({12592,22269,22267,13142,13141,13098,22268,22253,12602,16688,16700,16690,16706,16721,16674,16666,16730,16726});
instance:addEncounter(general_drakkisath);

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.CLASSIC, instance, EJ_Data.Dungeons, 16);