local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-MoltenCore.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-MoltenCore.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-MoltenCore.blp";

instance:setAttributes(741, "Molten Core", EJ_Descriptions.Instances["MOLTENCORE"], 232, bgFile, btnFile, 0, loreFile, DifficultyUtil.ID.RaidAscended);

local lucifron = EJ_Data:CreateEncounter();
lucifron:setAttributes("Lucifron", "", 0.658633, 0.374995, 741, 663, 1, 0, 232, 8);
lucifron:setLoot({18872,19145,19146,18875,18870,18861,17109,18879,19147,18878,17077,2522362});

local lucifron_phase_1 = EJ_Data:CreateSection("Phase 1", "", 0, 0, 0, 1, 3, -1);
lucifron:addSection(lucifron_phase_1, 1, nil)
lucifron:addSection(EJ_Data:CreateSection("Test 1", "Test 1", 2, 0, 0, 0, 64, -1), 1, lucifron_phase_1);
lucifron:addSection(EJ_Data:CreateSection(GetSpellLink(72133), "Spell Link Test", 2, 72133, 0, 0, 128, -1), 2, lucifron_phase_1);

instance:addEncounter(lucifron); 

local magmadar = EJ_Data:CreateEncounter();
magmadar:setAttributes("Magmadar", "", 0.694339, 0.236793, 741, 664, 2, 0, 232, 8);
magmadar:setLoot({19136,18823,18829,19144,19143,18861,18824,17065,18821,18820,19142,18203,18822,17073,17069,2522359}); 
instance:addEncounter(magmadar); 

local gehennas = EJ_Data:CreateEncounter();
gehennas:setAttributes("Gehennas", "", 0.330876, 0.485334, 741, 665, 3, 0, 232, 8);
gehennas:setLoot({19145,18872,19146,18875,18870,18861,18879,19147,18878,17077,2522364}); 
instance:addEncounter(gehennas); 

local garr = EJ_Data:CreateEncounter();
garr:setAttributes("Garr", "", 0.315094, 0.689623, 741, 666, 4, 0, 232, 8);
garr:setLoot({19136,18823,18829,19144,19143,18861,18824,18821,18820,19142,17071,18832,18822,17105,17066,2522360,18564}); 
instance:addEncounter(garr); 

local shazzrah = EJ_Data:CreateEncounter();
shazzrah:setAttributes("Shazzrah", "", 0.558406, 0.852617, 741, 667, 5, 0, 232, 8);
shazzrah:setLoot({19145,18872,19146,18875,18870,18861,18879,19147,18878,17077,2522363}); 
instance:addEncounter(shazzrah); 

local baron_geddon = EJ_Data:CreateEncounter();
baron_geddon:setAttributes("Baron Geddon", "", 0.523926, 0.77632, 741, 668, 6, 0, 232, 8);
baron_geddon:setLoot({19136,18823,18829,19144,19143,18861,18824,17110,18821,18820,19142,18822,2522361,18563}); 
instance:addEncounter(baron_geddon); 

local sulfuron_harbinger = EJ_Data:CreateEncounter();
sulfuron_harbinger:setAttributes("Sulfuron Harbinger", "", 0.828302, 0.825472, 741, 669, 7, 0, 232, 8);
sulfuron_harbinger:setLoot({19145,18872,19146,18875,18870,18861,18879,19147,18878,17074,17077,2522365}); 
instance:addEncounter(sulfuron_harbinger); 

local golemagg_the_incinerator = EJ_Data:CreateEncounter();
golemagg_the_incinerator:setAttributes("Golemagg the Incinerator", "", 0.68868, 0.576416, 741, 670, 8, 0, 232, 8);
golemagg_the_incinerator:setLoot({19136,18823,18829,19144,19143,18861,18824,18821,18820,19142,17103,18822,18842,17072,2522350,17203}); 
instance:addEncounter(golemagg_the_incinerator); 

local majordomo_executus = EJ_Data:CreateEncounter();
majordomo_executus:setAttributes("Majordomo Executus", "", 0.84151, 0.652831, 741, 671, 9, 0, 232, 8);
majordomo_executus:setLoot({18811,18808,18809,19139,18810,18812,18806,19140,18805,18803,18715,18713,18608,18609}); --Add T2 Wrist to Table
instance:addEncounter(majordomo_executus); 

local ragnaros = EJ_Data:CreateEncounter();
ragnaros:setAttributes("Ragnaros", "", 0.562265, 0.533963, 741, 672, 10, 0, 232, 8);
ragnaros:setLoot({17102,17107,18817,19137,18814,19138,17063,17082,18815,18816,17076,17104,17106,17083,2522459});
instance:addEncounter(ragnaros); 

EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), true);