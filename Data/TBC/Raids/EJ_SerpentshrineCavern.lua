local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-CoilfangReservoir.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-CoilfangReservoir.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-CoilfangReservoir.blp";

instance:setAttributes(748, "Serpent Shrine Cavern", EJ_Descriptions.Instances["SERPENTSHRINECAVERN"], 564, bgFile, btnFile, loreFile, DifficultyUtil.ID.RaidAscended);

local hydross_the_unstable = EJ_Data:CreateEncounter();
hydross_the_unstable:setAttributes("Hydross the Unstable", "", 748, 623, 1, 8);
hydross_the_unstable:setLoot({});
instance:addEncounter(hydross_the_unstable);

local the_lurker_below = EJ_Data:CreateEncounter();
the_lurker_below:setAttributes("The Lurker Below", "", 748, 624, 2, 8);
the_lurker_below:setLoot({});
instance:addEncounter(the_lurker_below);

local leotheras_the_blind = EJ_Data:CreateEncounter();
leotheras_the_blind:setAttributes("Leotheras the Blind", "", 748, 625, 3, 8);
leotheras_the_blind:setLoot({});
instance:addEncounter(leotheras_the_blind);

local fathom_lord_karathress = EJ_Data:CreateEncounter();
fathom_lord_karathress:setAttributes("Fathom-Lord Karathress", "", 748, 626, 4, 8);
fathom_lord_karathress:setLoot({});
instance:addEncounter(fathom_lord_karathress);

local morogrim_tidewalker = EJ_Data:CreateEncounter();
morogrim_tidewalker:setAttributes("Morogrim Tidewalker", "", 748, 627, 5, 8);
morogrim_tidewalker:setLoot({});
instance:addEncounter(morogrim_tidewalker);

local lady_vashj = EJ_Data:CreateEncounter();
lady_vashj:setAttributes("Lady Vashj", "", 748, 628, 6, 8);
lady_vashj:setLoot({});
instance:addEncounter(lady_vashj);

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.TBC, instance, EJ_Data.Raids, 4);