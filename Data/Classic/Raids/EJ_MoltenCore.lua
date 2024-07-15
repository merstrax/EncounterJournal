local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-MoltenCore.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-MoltenCore.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-MoltenCore.blp";

instance:setAttributes(741, "Molten Core", EJ_Descriptions.Instances["MOLTENCORE"], 232, bgFile, btnFile, loreFile, DifficultyUtil.ID.RaidAscended);

----------------------
-------Lucifron-------
----------------------
local lucifron = EJ_Data:CreateEncounter();
lucifron:setAttributes("Lucifron", "", 741, 663, 1, 8);
lucifron:setLoot({18872,19145,19146,18875,18870,18861,17109,18879,19147,18878,17077,2522362});

--Phase 1 Section
local lucifron_phase_1 = EJ_Data:CreateSection("Phase 1", "", 0, 0, -1);
lucifron:addSection(lucifron_phase_1, nil)
lucifron:addSection(EJ_Data:CreateSection("Test 1", "Test 1", 0, 0, -1), lucifron_phase_1);
lucifron:addSection(EJ_Data:CreateSection(GetSpellLink(72133), "Spell Link Test", 72133, EJ_Data.IconFlags.Magic, -1), lucifron_phase_1);
lucifron:addSection(EJ_Data:CreateSection("Heroic", "This should only show up when Heroic is selected", 0, EJ_Data.IconFlags.Heroic, DifficultyUtil.Mask[DifficultyUtil.ID.RaidHeroic]), lucifron_phase_1);
lucifron:addSection(EJ_Data:CreateSection("Mythic or Higher", "This should only show up when Mythic or higher is selected", 0, EJ_Data.IconFlags.Mythic, DifficultyUtil.OrHigher(DifficultyUtil.ID.RaidMythic)), lucifron_phase_1);
lucifron:addSection(EJ_Data:CreateSection("Ascended", "This should only show up when Ascended is selected", 0, EJ_Data.IconFlags.Ascended, DifficultyUtil.Mask[DifficultyUtil.ID.RaidAscended]), lucifron_phase_1);

--Phase 2 Section
local lucifron_phase_2 = EJ_Data:CreateSection("Phase 2", "Test description with subsections", 0, 0, -1);
lucifron:addSection(lucifron_phase_2, nil)
--Tank Section
local lucifron_phase_2_tank = EJ_Data:CreateSection("Tank", "", 0, EJ_Data.IconFlags.Tank, -1);
lucifron:addSection(lucifron_phase_2_tank, lucifron_phase_2);
lucifron:addSection(EJ_Data:CreateSection("Fatal", "This is a fatal subsection", 0, EJ_Data.IconFlags.Fatal, -1), lucifron_phase_2_tank);
lucifron:addSection(EJ_Data:CreateSection("Bleed", "This is a bleed subsection", 0, EJ_Data.IconFlags.Bleed, -1), lucifron_phase_2_tank);
lucifron:addSection(EJ_Data:CreateSection("Adds", "This is an adds subsection", 0, EJ_Data.IconFlags.Adds, -1), lucifron_phase_2_tank);
--DPS Section
local lucifron_phase_2_dps = EJ_Data:CreateSection("DPS", "", 0, EJ_Data.IconFlags.DPS, -1);
lucifron:addSection(lucifron_phase_2_dps, lucifron_phase_2);
lucifron:addSection(EJ_Data:CreateSection("Important", "This is an important subsection", 0, EJ_Data.IconFlags.Important, -1), lucifron_phase_2_dps);
lucifron:addSection(EJ_Data:CreateSection("Interruptable", "This is an interruptable subsection", 0, EJ_Data.IconFlags.Interruptable, -1), lucifron_phase_2_dps);
--Healer Section
local lucifron_phase_2_heals = EJ_Data:CreateSection("Healer", "", 0, EJ_Data.IconFlags.Healer, -1);
lucifron:addSection(lucifron_phase_2_heals, lucifron_phase_2);
lucifron:addSection(EJ_Data:CreateSection("Curse", "This is a curse subsection", 0, EJ_Data.IconFlags.Curse, -1), lucifron_phase_2_heals);
lucifron:addSection(EJ_Data:CreateSection("Poison", "This is a poison subsection", 0, EJ_Data.IconFlags.Poison, -1), lucifron_phase_2_heals);
lucifron:addSection(EJ_Data:CreateSection("Disease", "This is a disease subsection", 0, EJ_Data.IconFlags.Disease, -1), lucifron_phase_2_heals);

instance:addEncounter(lucifron); 

----------------------
-------Magmadar-------
----------------------
local magmadar = EJ_Data:CreateEncounter();
magmadar:setAttributes("Magmadar", "", 741, 664, 2, 8);
magmadar:setLoot({19136,18823,18829,19144,19143,18861,18824,17065,18821,18820,19142,18203,18822,17073,17069,2522359}); 
instance:addEncounter(magmadar); 

----------------------
-------Gehennas-------
----------------------
local gehennas = EJ_Data:CreateEncounter();
gehennas:setAttributes("Gehennas", "", 741, 665, 3, 8);
gehennas:setLoot({19145,18872,19146,18875,18870,18861,18879,19147,18878,17077,2522364}); 
instance:addEncounter(gehennas); 

----------------------
-------  Garr  -------
----------------------
local garr = EJ_Data:CreateEncounter();
garr:setAttributes("Garr", "", 741, 666, 4, 8);
garr:setLoot({19136,18823,18829,19144,19143,18861,18824,18821,18820,19142,17071,18832,18822,17105,17066,2522360,18564}); 
instance:addEncounter(garr); 

----------------------
-------Shazzrah-------
----------------------
local shazzrah = EJ_Data:CreateEncounter();
shazzrah:setAttributes("Shazzrah", "", 741, 667, 5, 8);
shazzrah:setLoot({19145,18872,19146,18875,18870,18861,18879,19147,18878,17077,2522363}); 
instance:addEncounter(shazzrah); 

----------------------
-----Baron Geddon-----
----------------------
local baron_geddon = EJ_Data:CreateEncounter();
baron_geddon:setAttributes("Baron Geddon", "", 741, 668, 6, 8);
baron_geddon:setLoot({19136,18823,18829,19144,19143,18861,18824,17110,18821,18820,19142,18822,2522361,18563}); 
instance:addEncounter(baron_geddon); 

----------------------
--Sulfuron Harbinger--
----------------------
local sulfuron_harbinger = EJ_Data:CreateEncounter();
sulfuron_harbinger:setAttributes("Sulfuron Harbinger", "", 741, 669, 7, 8);
sulfuron_harbinger:setLoot({19145,18872,19146,18875,18870,18861,18879,19147,18878,17074,17077,2522365}); 
instance:addEncounter(sulfuron_harbinger); 

----------------------
-------Golemagg-------
----------------------
local golemagg_the_incinerator = EJ_Data:CreateEncounter();
golemagg_the_incinerator:setAttributes("Golemagg the Incinerator", "", 741, 670, 8, 8);
golemagg_the_incinerator:setLoot({19136,18823,18829,19144,19143,18861,18824,18821,18820,19142,17103,18822,18842,17072,2522350,17203}); 
instance:addEncounter(golemagg_the_incinerator); 

----------------------
--Majordomo Executus--
----------------------
local majordomo_executus = EJ_Data:CreateEncounter();
majordomo_executus:setAttributes("Majordomo Executus", "", 741, 671, 9, 8);
majordomo_executus:setLoot({18811,18808,18809,19139,18810,18812,18806,19140,18805,18803,18715,18713,18608,18609}); --Add T2 Wrist to Table
instance:addEncounter(majordomo_executus); 

----------------------
-------Ragnaros-------
----------------------
local ragnaros = EJ_Data:CreateEncounter();
ragnaros:setAttributes("Ragnaros", "", 741, 672, 10, 8);
ragnaros:setLoot({17102,17107,18817,19137,18814,19138,17063,17082,18815,18816,17076,17104,17106,17083,2522459});
instance:addEncounter(ragnaros); 

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.CLASSIC, instance, true);