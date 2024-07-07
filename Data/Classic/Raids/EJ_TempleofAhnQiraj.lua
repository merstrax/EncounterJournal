local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-TempleofAhnQiraj.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-TempleofAhnQiraj.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-TempleofAhnQiraj.blp";

instance:setAttributes(744, "Temple of Ahn'Qiraj", EJ_Descriptions.Instances["TEMPLEOFAHNQIRAJ"], 320, bgFile, btnFile, 0, loreFile, EJ_Data.Raid);

the_prophet_skeram = createEncounter();
the_prophet_skeram:setAttributes("The Prophet Skeram", "", 0.457866, 0.522049, 744, 709, 0, 0, 320, 8);
the_prophet_skeram:setLoot({}); 

battleguard_sartura = createEncounter();
battleguard_sartura:setAttributes("Battleguard Sartura", "", 0.445559, 0.335896, 744, 711, 2, 0, 319, 8);
battleguard_sartura:setLoot({}); 

fankriss_the_unyielding = createEncounter();
fankriss_the_unyielding:setAttributes("Fankriss the Unyielding", "", 0.622995, 0.218973, 744, 712, 3, 0, 319, 8);
fankriss_the_unyielding:setLoot({}); 

princess_huhuran = createEncounter();
princess_huhuran:setAttributes("Princess Huhuran", "", 0.435303, 0.503588, 744, 714, 5, 0, 319, 8);
princess_huhuran:setLoot({}); 

silithid_royalty = createEncounter();
silithid_royalty:setAttributes("Silithid Royalty", "", 0.284533, 0.497434, 744, 710, 1, 0, 319, 8);
silithid_royalty:setLoot({}); 

viscidus = createEncounter();
viscidus:setAttributes("Viscidus", "", 0.721456, 0.178973, 744, 713, 4, 0, 319, 8);
viscidus:setLoot({}); 

the_twin_emperors = createEncounter();
the_twin_emperors:setAttributes("The Twin Emperors", "", 0.606584, 0.697434, 744, 715, 6, 0, 319, 8);
the_twin_emperors:setLoot({}); 

ouro = createEncounter();
ouro:setAttributes("Ouro", "", 0.301969, 0.818972, 744, 716, 7, 0, 319, 8);
ouro:setLoot({}); 

c_thun = createEncounter();
c_thun:setAttributes("C'Thun", "", 0.570687, 0.625126, 744, 717, 8, 0, 321, 8);
c_thun:setLoot({}); 

EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), true);