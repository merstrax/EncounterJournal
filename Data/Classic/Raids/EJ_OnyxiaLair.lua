local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-OnyxiasLair.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-Onyxia.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-OnxyiasLair.blp";

local diffID = DifficultyUtil.ID;
local diffMask = DifficultyUtil.Mask;
local iconFlags = EJ_Data.IconFlags;

instance:setAttributes(760, "Onyxia's Lair", EJ_Descriptions.Instances["ONYXIA"], 248, bgFile, btnFile, loreFile, DifficultyUtil.ID.RaidAscended);

local onyxia = EJ_Data:CreateEncounter();
onyxia:setAttributes("Onyxia", "", 760, 1084, 0, 8);
onyxia:setLoot({17078,18205,18813,17064,17067,17075,17068,18215,18216,18211,17084,18212,2522460});

local onyxia_phase_1 = EJ_Data:CreateSection("Phase 1", "Duration: 100% - 65% Health\n", 0, 0, -1);
onyxia:addSection(onyxia_phase_1, nil);
onyxia:addSection(EJ_Data:CreateSection("Tail Sweep", "", 15847, iconFlags.Important, -1), onyxia_phase_1);
onyxia:addSection(EJ_Data:CreateSection("Wing Buffet", "", 18500, iconFlags.Important + iconFlags.Tank, -1), onyxia_phase_1);
onyxia:addSection(EJ_Data:CreateSection("Flame Breath", "", 18435, 0, -1), onyxia_phase_1);

local onyxia_phase_2 = EJ_Data:CreateSection("Phase 2", "Duration: 65% - 40% Health\n", 0, 0, -1);
onyxia:addSection(onyxia_phase_2, nil);
onyxia:addSection(EJ_Data:CreateSection("Fireball", "", 15847, 0, -1), onyxia_phase_2);
onyxia:addSection(EJ_Data:CreateSection("Deep Breath", "Onyxia will pick a location and cast a deadly breath of fire across the room from that location.", 0, iconFlags.Fatal, -1), onyxia_phase_2);
onyxia:addSection(EJ_Data:CreateSection("[Phase 2 Add]", "These will occasionally spawn and attack the raid. When killed they will drop a spear that can be picked up and used to attack Onyxia.", 0, iconFlags.Adds, -1), onyxia_phase_2);

local onyxia_phase_3 = EJ_Data:CreateSection("Phase 3", "Duration: 40% - 0% Health\nUses the same abilities as Phase 1 in addition to below.", 0, 0, -1);
onyxia:addSection(onyxia_phase_3, nil);
onyxia:addSection(EJ_Data:CreateSection("Bellowing Roar", "Onyxia will let out a Bellowing Roar fearing everyone in the raid.", 0, 0, -1), onyxia_phase_3);
onyxia:addSection(EJ_Data:CreateSection("Onyxian Whelp", "These will occasionally spawn and attack the raid.", 0, iconFlags.Adds, -1), onyxia_phase_3);

instance:addEncounter(onyxia); 

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.CLASSIC, instance, true, 3);