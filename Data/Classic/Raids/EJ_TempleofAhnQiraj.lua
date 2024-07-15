local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-TempleofAhnQiraj.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-TempleofAhnQiraj.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-TempleofAhnQiraj.blp";

instance:setAttributes(744, "Temple of Ahn'Qiraj", EJ_Descriptions.Instances["TEMPLEOFAHNQIRAJ"], 320, bgFile, btnFile, loreFile, DifficultyUtil.ID.RaidAscended);

local the_prophet_skeram = EJ_Data:CreateEncounter();
the_prophet_skeram:setAttributes("The Prophet Skeram", "", 744, 709, 0, 8);
the_prophet_skeram:setLoot({21701,21708,21698,21699,21705,21814,21704,21706,21702,21700,21707,21703,21128,20928}); 
instance:addEncounter(the_prophet_skeram); 

local battleguard_sartura = EJ_Data:CreateEncounter();
battleguard_sartura:setAttributes("Battleguard Sartura", "", 744, 711, 2, 8);
battleguard_sartura:setLoot({21671,21676,21648,21669,21672,21675,21668,21674,21667,21678,21670,21666,21673,20932}); 
instance:addEncounter(battleguard_sartura); 

local fankriss_the_unyielding = EJ_Data:CreateEncounter();
fankriss_the_unyielding:setAttributes("Fankriss the Unyielding", "", 744, 712, 3, 8);
fankriss_the_unyielding:setLoot({21627,21663,21665,21645,21651,21639,21652,21647,21664,22402,22396,21650,21635,20932}); 
instance:addEncounter(fankriss_the_unyielding); 

local princess_huhuran = EJ_Data:CreateEncounter();
princess_huhuran:setAttributes("Princess Huhuran", "", 744, 714, 5, 8);
princess_huhuran:setLoot({21619,21621,21617,21618,21694,21683,21680,21668,21603,21620,21616,20932,20931}); 
instance:addEncounter(princess_huhuran); 

local silithid_royalty = EJ_Data:CreateEncounter();
silithid_royalty:setAttributes("Silithid Royalty", "", 744, 710, 1, 8);
silithid_royalty:setLoot({21697,21694,21696,21693,21692,21695,21237,21232,21680,21603,21681,21685,21689,21691,21688,21690,21686,21682,21684,21683,21687,20928}); 
instance:addEncounter(silithid_royalty); 

local viscidus = EJ_Data:CreateEncounter();
viscidus:setAttributes("Viscidus", "", 744, 713, 4, 8);
viscidus:setLoot({21624,21626,21623,21691,21688,21682,21677,21625,22399,21622,20932,20931,20930,20928}); 
instance:addEncounter(viscidus); 

local the_twin_emperors = EJ_Data:CreateEncounter();
the_twin_emperors:setAttributes("The Twin Emperors", "", 744, 715, 6, 8);
the_twin_emperors:setLoot({21600,21602,21599,21598,21597,21601,20930});
instance:addEncounter(the_twin_emperors); 

local ouro = EJ_Data:CreateEncounter();
ouro:setAttributes("Ouro", "", 744, 716, 7, 8);
ouro:setLoot({21615,21611,23558,23570,23557,21610,21708,21645,21605,15029,20931}); 
instance:addEncounter(ouro); 

local c_thun = EJ_Data:CreateEncounter();
c_thun:setAttributes("C'Thun", "", 744, 717, 8, 8);
c_thun:setLoot({21583,22731,21585,22730,21582,21586,21581,22732,21596,21579,21126,21134,21839,20933});
instance:addEncounter(c_thun); 

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.CLASSIC, instance, true);