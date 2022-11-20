EJ_Data = {};

--setAttributes(name, desc, mapID, bgFile, btnFile, smBtnFile, loreFile, difficultyID)

local instNormal = 2;
local instPlus = 4;
local instRaid = 8;

EJ_Data.Vanilla = {};
EJ_Data.Vanilla.Dungeons = {};

EJ_Data.Vanilla.Dungeons["DEADMINES"] = createEncounterInstance(63);
EJ_Data.Vanilla.Dungeons["DEADMINES"]:setAttributes("Deadmines", EJ_Descriptions.Instances["DEADMINES"], 36, 522336, 522352, 136332, 526404, instNormal);

EJ_Data.Vanilla.Dungeons["SHADOWFANGKEEP"] = createEncounterInstance(64);
EJ_Data.Vanilla.Dungeons["SHADOWFANGKEEP"]:setAttributes("Shadowfang Keep", EJ_Descriptions.Instances["SHADOWFANGKEEP"], 33, 522342, 522358, 136357, 526410, instNormal);

EJ_Data.Vanilla.Dungeons["BLACKFATHOMDEEPS"] = createEncounterInstance(227);
EJ_Data.Vanilla.Dungeons["BLACKFATHOMDEEPS"]:setAttributes("Blackfathom Deeps", EJ_Descriptions.Instances["BLACKFATHOMDEEPS"], 48, 608156, 608195, 136325, 608234, instNormal);

EJ_Data.Vanilla.Dungeons["BLACKROCKDEPTHS"] = createEncounterInstance(228);
EJ_Data.Vanilla.Dungeons["BLACKROCKDEPTHS"]:setAttributes("Blackrock Depths", EJ_Descriptions.Instances["BLACKROCKDEPTHS"], 230, 608157, 608196, 136326, 608235, instPlus);

EJ_Data.Vanilla.Dungeons["RAGEFIRECHASM"] = createEncounterInstance(226);
EJ_Data.Vanilla.Dungeons["RAGEFIRECHASM"]:setAttributes("Ragefire Chasm", EJ_Descriptions.Instances["RAGEFIRECHASM"], 389, 608172, 608211, 136350, 608250, instNormal);

EJ_Data.Vanilla.Dungeons["LOWERBLACKROCKSPIRE"] = createEncounterInstance(229);
EJ_Data.Vanilla.Dungeons["LOWERBLACKROCKSPIRE"]:setAttributes("Lower Blackrock Spire", EJ_Descriptions.Instances["LOWERBLACKROCKSPIRE"], 229, 608158, 608197, 136327, 608236, instPlus);

EJ_Data.Vanilla.Dungeons["DIREMAUL"] = createEncounterInstance(230);
EJ_Data.Vanilla.Dungeons["DIREMAUL"]:setAttributes("Dire Maul", EJ_Descriptions.Instances["DIREMAUL"], 429, 608161, 608200, 136333, 608239, instPlus);

EJ_Data.Vanilla.Dungeons["GNOMERGAN"] = createEncounterInstance(231);
EJ_Data.Vanilla.Dungeons["GNOMERGAN"]:setAttributes("Gnomeregan", EJ_Descriptions.Instances["GNOMERGAN"], 90, 608163, 608202, 136336, 608241, instNormal);

EJ_Data.Vanilla.Dungeons["MARAUDON"] = createEncounterInstance(232);
EJ_Data.Vanilla.Dungeons["MARAUDON"]:setAttributes("Maraudon", EJ_Descriptions.Instances["MARAUDON"], 349, 608170, 608209, 136345, 608248, instNormal);

EJ_Data.Vanilla.Dungeons["RAZORFENDOWNS"] = createEncounterInstance(233);
EJ_Data.Vanilla.Dungeons["RAZORFENDOWNS"]:setAttributes("Razorfen Downs", EJ_Descriptions.Instances["RAZORFENDOWNS"], 129, 608173, 608212, 136352, 608251, instNormal);

EJ_Data.Vanilla.Dungeons["RAZORFENKRAUL"] = createEncounterInstance(234);
EJ_Data.Vanilla.Dungeons["RAZORFENKRAUL"]:setAttributes("Razorfen Kraul", EJ_Descriptions.Instances["RAZORFENKRAUL"], 47, 608174, 608213, 136353, 608252, instNormal);

EJ_Data.Vanilla.Dungeons["STRATHOLME"] = createEncounterInstance(236);
EJ_Data.Vanilla.Dungeons["STRATHOLME"]:setAttributes("Stratholme", EJ_Descriptions.Instances["STRATHOLME"], 329, 608177, 608216, 136359, 608255, instPlus);

EJ_Data.Vanilla.Dungeons["SUNKENTEMPLE"] = createEncounterInstance(237);
EJ_Data.Vanilla.Dungeons["SUNKENTEMPLE"]:setAttributes("The Temple of Atal'hakkar", EJ_Descriptions.Instances["SUNKENTEMPLE"], 109, 608178, 608217, 136360, 608256, instNormal);

EJ_Data.Vanilla.Dungeons["THESTOCKADES"] = createEncounterInstance(238);
EJ_Data.Vanilla.Dungeons["THESTOCKADES"]:setAttributes("The Stockade", EJ_Descriptions.Instances["THESTOCKADES"], 34, 608184, 608223, 136358, 608262, instNormal);

EJ_Data.Vanilla.Dungeons["WAILINGCAVERNS"] = createEncounterInstance(240);
EJ_Data.Vanilla.Dungeons["WAILINGCAVERNS"]:setAttributes("Wailing Caverns", EJ_Descriptions.Instances["WAILINGCAVERNS"], 43, 608190, 608229, 136364, 608313, instNormal);

EJ_Data.Vanilla.Dungeons["ZULFARRAK"] = createEncounterInstance(241);
EJ_Data.Vanilla.Dungeons["ZULFARRAK"]:setAttributes("Zul'Farrak", EJ_Descriptions.Instances["ZULFARRAK"], 209, 608191, 608230, 136368, 608267, instNormal);

EJ_Data.Vanilla.Dungeons["SCHOLOMANCE"] = createEncounterInstance(246);
EJ_Data.Vanilla.Dungeons["SCHOLOMANCE"]:setAttributes("Scholomance", EJ_Descriptions.Instances["SCHOLOMANCE"], 1007, 608176, 608215, 136355, 608254, instPlus);

EJ_Data.Vanilla.Dungeons["SCARLETMONASTERY"] = createEncounterInstance(235);
EJ_Data.Vanilla.Dungeons["SCARLETMONASTERY"]:setAttributes("Scarlet Monastery", EJ_Descriptions.Instances["SCARLETMONASTERY"], 189, 608175, 608214, 136354, 608253, instNormal);

EJ_Data.Vanilla.Dungeons["UPPERBLACKROCKSPIRE"] = createEncounterInstance(242);
EJ_Data.Vanilla.Dungeons["UPPERBLACKROCKSPIRE"]:setAttributes("Upper Blackrock Spire", EJ_Descriptions.Instances["UPPERBLACKROCKSPIRE"], 229, 608158, 608197, 136327, 608236, instPlus);

EJ_Data.Vanilla.Dungeons["ULDAMAN"] = createEncounterInstance(239);
EJ_Data.Vanilla.Dungeons["ULDAMAN"]:setAttributes("Uldaman", EJ_Descriptions.Instances["ULDAMAN"], 70, 608186, 608225, 136363, 608264, instNormal);

EJ_Data.Vanilla.Raids = {};