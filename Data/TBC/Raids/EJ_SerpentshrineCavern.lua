local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-CoilfangReservoir.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-CoilfangReservoir.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-CoilfangReservoir.blp";

instance:setAttributes(748, "Serpent Shrine Cavern", EJ_Descriptions.Instances["SERPENTSHRINECAVERN"], 564, bgFile, btnFile, loreFile, DifficultyUtil.ID.RaidAscended);

local hydross_the_unstable = EJ_Data:CreateEncounter();
hydross_the_unstable:setAttributes("Hydross the Unstable", "", 748, 623, 1, 8);
hydross_the_unstable:setLoot({30056,32516,30050,30055,30047,30054,30048,30053,30052,33055,30664,30629,30049,30051});
instance:addEncounter(hydross_the_unstable);

local the_lurker_below = EJ_Data:CreateEncounter();
the_lurker_below:setAttributes("The Lurker Below", "", 748, 624, 2, 8);
the_lurker_below:setLoot({30064,30067,30062,30060,30066,30065,30057,30059,30061,33054,30665,30063,30058});
instance:addEncounter(the_lurker_below);

local leotheras_the_blind = EJ_Data:CreateEncounter();
leotheras_the_blind:setAttributes("Leotheras the Blind", "", 748, 625, 3, 8);
leotheras_the_blind:setLoot({30092,30097,30091,30096,30627,30095,30240});
instance:addEncounter(leotheras_the_blind);

local fathom_lord_karathress = EJ_Data:CreateEncounter();
fathom_lord_karathress:setAttributes("Fathom-Lord Karathress", "", 748, 626, 4, 8);
fathom_lord_karathress:setLoot({30100,30101,30099,30663,30626,30090,30246});
instance:addEncounter(fathom_lord_karathress);

local morogrim_tidewalker = EJ_Data:CreateEncounter();
morogrim_tidewalker:setAttributes("Morogrim Tidewalker", "", 748, 627, 5, 8);
morogrim_tidewalker:setLoot({30098,30079,30075,30085,30068,30084,30081,30008,30083,33058,30720,30082,30080});
instance:addEncounter(morogrim_tidewalker);

local lady_vashj = EJ_Data:CreateEncounter();
lady_vashj:setAttributes("Lady Vashj", "", 748, 628, 6, 8);
lady_vashj:setLoot({30107,30111,30106,30104,30102,30112,30109,30110,30621,30103,30108,30105,30243});
instance:addEncounter(lady_vashj);

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.TBC, instance, EJ_Data.Raids, 4);