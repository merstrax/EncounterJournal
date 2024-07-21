local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-MoltenCore.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-MoltenCore.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-MoltenCore.blp";

instance:setAttributes(741, "Molten Core", EJ_Descriptions.Instances["MOLTENCORE"], 232, bgFile, btnFile, loreFile, DifficultyUtil.ID.RaidAscended);

local diffID = DifficultyUtil.ID;
local diffMask = DifficultyUtil.Mask;
local iconFlags = EJ_Data.IconFlags;

----------------------
-------Lucifron-------
----------------------
local lucifron = EJ_Data:CreateEncounter();
lucifron:setAttributes("Lucifron", "", 741, 663, 1, 8);
lucifron:setLoot({18872,19145,19146,18875,18870,18861,17109,18879,19147,18878,17077,2522362});

lucifron:addSection(EJ_Data:CreateSection("Impending Doom", "", 19702, iconFlags.Magic, -1), nil);
lucifron:addSection(EJ_Data:CreateSection("Lucifron's Curse", "", 19703, iconFlags.Curse, -1), nil);
lucifron:addSection(EJ_Data:CreateSection("Shadow Shock", "", 19460, 0, -1), nil);

local lucifron_flamewaker = EJ_Data:CreateSection("Flamewaker Protector", "", 0, iconFlags.Adds, -1);
lucifron:addSection(lucifron_flamewaker, nil);
lucifron:addSection(EJ_Data:CreateSection("Cleave", "", 20605, 0, -1), lucifron_flamewaker);
lucifron:addSection(EJ_Data:CreateSection("Dominate Mind", "", 20604, iconFlags.Magic, -1), lucifron_flamewaker);

instance:addEncounter(lucifron);

----------------------
-------Magmadar-------
----------------------
local magmadar = EJ_Data:CreateEncounter();
magmadar:setAttributes("Magmadar", "", 741, 664, 2, 8);
magmadar:setLoot({19136,18823,18829,19144,19143,18861,18824,17065,18821,18820,19142,18203,18822,17073,17069,2522359});

magmadar:addSection(EJ_Data:CreateSection("Frenzy", "", 19451, iconFlags.Interruptable, -1), nil);
magmadar:addSection(EJ_Data:CreateSection("Lava Breath", "", 19272, 0, -1), nil);
magmadar:addSection(EJ_Data:CreateSection("Magma Spit", "", 19450, 0, -1), nil);
magmadar:addSection(EJ_Data:CreateSection("Panic", "", 19408, 0, -1), nil);
magmadar:addSection(EJ_Data:CreateSection("Lava Bomb", "", 19411, 0, -1), nil);

instance:addEncounter(magmadar);

----------------------
-------Gehennas-------
----------------------
local gehennas = EJ_Data:CreateEncounter();
gehennas:setAttributes("Gehennas", "[TODO] Implement Ascension specific mechanics", 741, 665, 3, 8);
gehennas:setLoot({19145,18872,19146,18875,18870,18861,18879,19147,18878,17077,2522364});

gehennas:addSection(EJ_Data:CreateSection("Rain of Fire", "", 19717, 0, -1), nil);
gehennas:addSection(EJ_Data:CreateSection("Gehennas's Curse", "", 19716, iconFlags.Curse, -1), nil);
gehennas:addSection(EJ_Data:CreateSection("Shadow Bolt", "", 19728, 0, -1), nil);

local gehennas_flamewaker = EJ_Data:CreateSection("Flamewaker", "", 0, iconFlags.Adds, -1);
gehennas:addSection(gehennas_flamewaker, nil);
gehennas:addSection(EJ_Data:CreateSection("Fist of Ragnaros", "", 20277, iconFlags.Important, -1), gehennas_flamewaker);

instance:addEncounter(gehennas);

----------------------
-------  Garr  -------
----------------------
local garr = EJ_Data:CreateEncounter();
garr:setAttributes("Garr", "[TODO] Implement Ascension specific mechanics", 741, 666, 4, 8);
garr:setLoot({19136,18823,18829,19144,19143,18861,18824,18821,18820,19142,17071,18832,18822,17105,17066,2522360,18564});

garr:addSection(EJ_Data:CreateSection("Antimagic Pulse", "", 19492, 0, -1), nil);
garr:addSection(EJ_Data:CreateSection("Magma Shackles", "", 19496, 0, -1), nil);

local garr_firesworn = EJ_Data:CreateSection("Firesworn", "", 0, iconFlags.Tank + iconFlags.Adds, -1);
garr:addSection(garr_firesworn, nil);
garr:addSection(EJ_Data:CreateSection("Seperation Anxiety", "Garr's adds will deal 300% additional damage if tanked too far away from Garr.", 23492, iconFlags.Important, -1), garr_firesworn);
garr:addSection(EJ_Data:CreateSection("Immolate", "", 20294, iconFlags.Magic, -1), garr_firesworn);
garr:addSection(EJ_Data:CreateSection("Eruption", "On death, Firesworns will explode, dealing massive Fire damage and knocking players back.", 19497, 0, -1), garr_firesworn);

instance:addEncounter(garr);

----------------------
-------Shazzrah-------
----------------------
local shazzrah = EJ_Data:CreateEncounter();
shazzrah:setAttributes("Shazzrah", "[TODO] Implement Ascension specific mechanics", 741, 667, 5, 8);
shazzrah:setLoot({19145,18872,19146,18875,18870,18861,18879,19147,18878,17077,2522363});

shazzrah:addSection(EJ_Data:CreateSection("Arcane Explosion", "", 19712, 0, -1), nil);
shazzrah:addSection(EJ_Data:CreateSection("Shazzrah's Curse", "", 19713, iconFlags.Curse, -1), nil);
shazzrah:addSection(EJ_Data:CreateSection("Blink", "", 28391, 0, -1), nil);
shazzrah:addSection(EJ_Data:CreateSection("Counterspell", "", 19715, iconFlags.Important, -1), nil);
shazzrah:addSection(EJ_Data:CreateSection("Deaden Magic", "", 19714, iconFlags.Interruptable + iconFlags.Magic, -1), nil);

instance:addEncounter(shazzrah);

----------------------
-----Baron Geddon-----
----------------------
local baron_geddon = EJ_Data:CreateEncounter();
baron_geddon:setAttributes("Baron Geddon", "", 741, 668, 6, 8);
baron_geddon:setLoot({19136,18823,18829,19144,19143,18861,18824,17110,18821,18820,19142,18822,2522361,18563});

baron_geddon:addSection(EJ_Data:CreateSection("Ignite Mana", "", 19659, iconFlags.Magic, -1), nil);
baron_geddon:addSection(EJ_Data:CreateSection("Inferno", "", 19695, 0, -1), nil);
baron_geddon:addSection(EJ_Data:CreateSection("Living Bomb", "", 20475, 0, -1), nil);
baron_geddon:addSection(EJ_Data:CreateSection("Armageddon", "When near death, Geddon creates an armageddon, exploding after 8 seconds and dealing lethal Fire damage to the entire raid.", 20478, iconFlags.Fatal, -1), nil);

instance:addEncounter(baron_geddon);

----------------------
--Sulfuron Harbinger--
----------------------
local sulfuron_harbinger = EJ_Data:CreateEncounter();
sulfuron_harbinger:setAttributes("Sulfuron Harbinger", "", 741, 669, 7, 8);
sulfuron_harbinger:setLoot({19145,18872,19146,18875,18870,18861,18879,19147,18878,17074,17077,2522365});

sulfuron_harbinger:addSection(EJ_Data:CreateSection("Hand of Ragnaros", "", 19780, iconFlags.Important, -1), nil);
sulfuron_harbinger:addSection(EJ_Data:CreateSection("Inspire", "", 19779, 0, -1), nil);

local sulfuron_harbinger_flamewaker = EJ_Data:CreateSection("Flamewaker Priest", "", 0, iconFlags.Adds, -1);
sulfuron_harbinger:addSection(sulfuron_harbinger_flamewaker, nil);
sulfuron_harbinger:addSection(EJ_Data:CreateSection("Dark Mending", "", 19775, iconFlags.Important + iconFlags.Interruptable, -1), sulfuron_harbinger_flamewaker);
sulfuron_harbinger:addSection(EJ_Data:CreateSection("Dark Strike", "", 19777, 0, -1), sulfuron_harbinger_flamewaker);
sulfuron_harbinger:addSection(EJ_Data:CreateSection("Immolate", "", 20294, iconFlags.Magic, -1), sulfuron_harbinger_flamewaker);
sulfuron_harbinger:addSection(EJ_Data:CreateSection("Shadow Word: Pain", "", 19776, iconFlags.Magic, -1), sulfuron_harbinger_flamewaker);

instance:addEncounter(sulfuron_harbinger);

----------------------
-------Golemagg-------
----------------------
local golemagg_the_incinerator = EJ_Data:CreateEncounter();
golemagg_the_incinerator:setAttributes("Golemagg the Incinerator", "", 741, 670, 8, 8);
golemagg_the_incinerator:setLoot({19136,18823,18829,19144,19143,18861,18824,18821,18820,19142,17103,18822,18842,17072,2522350,17203});

golemagg_the_incinerator:addSection(EJ_Data:CreateSection("Magma Splash", "", 13880, iconFlags.Tank, -1), nil);
golemagg_the_incinerator:addSection(EJ_Data:CreateSection("Pyroblast", "", 20228, 0, -1), nil);
golemagg_the_incinerator:addSection(EJ_Data:CreateSection("Earthquake", "", 19798, 0, -1), nil);

local golemagg_core_rager = EJ_Data:CreateSection("Core Rager", "Golemagg is accompanied by two Core Ragers. Their abilities can be a bit dangerous, but as they cannot die while Golemagg is alive, they can be ignored while Golemagg stands, but they will need to be killed after Golemagg dies for the encounter to be completed.", 0, iconFlags.Adds, -1);
golemagg_the_incinerator:addSection(golemagg_core_rager, nil);
golemagg_the_incinerator:addSection(EJ_Data:CreateSection("Golemagg's Trust", "Golemagg's Core Ragers will deal increased damage and have 50% increased attack speed if tanked too close to Golemagg.", 20553, iconFlags.Important + iconFlags.Tank, -1), golemagg_core_rager);
golemagg_the_incinerator:addSection(EJ_Data:CreateSection("Mangle", "", 19820, 0, -1), golemagg_core_rager);

instance:addEncounter(golemagg_the_incinerator);

----------------------
--Majordomo Executus--
----------------------
local majordomo_executus = EJ_Data:CreateEncounter();
majordomo_executus:setAttributes("Majordomo Executus", "", 741, 671, 9, 8);
majordomo_executus:setLoot({18811,18808,18809,19139,18810,18812,18806,19140,18805,18803,18715,18713,18608,18609});--Add T2 Wrist to Table

majordomo_executus:addSection(EJ_Data:CreateSection("Aegis of Ragnaros", "", 20620, 0, -1), nil);
majordomo_executus:addSection(EJ_Data:CreateSection("Damage Shield", "", 21075, 0, -1), nil);
majordomo_executus:addSection(EJ_Data:CreateSection("Magic Reflection", "", 20619, iconFlags.Important, -1), nil);
majordomo_executus:addSection(EJ_Data:CreateSection("Teleport", "", 20618, 0, -1), nil);

local majordomo_elite = EJ_Data:CreateSection("Flamewaker Elite", "", 0, iconFlags.Adds, -1);
majordomo_executus:addSection(majordomo_elite, nil);
majordomo_executus:addSection(EJ_Data:CreateSection("Fireball", "", 20420, 0, -1), majordomo_elite);
majordomo_executus:addSection(EJ_Data:CreateSection("Fire Blast", "", 20229, 0, -1), majordomo_elite);

local majordomo_healer = EJ_Data:CreateSection("Flamewaker Healer", "", 0, iconFlags.Adds, -1);
majordomo_executus:addSection(majordomo_healer, nil);
majordomo_executus:addSection(EJ_Data:CreateSection("Shadow Bolt", "", 21077, 0, -1), majordomo_healer);
majordomo_executus:addSection(EJ_Data:CreateSection("Shadow Shock", "", 20603, 0, -1), majordomo_healer);

instance:addEncounter(majordomo_executus);

----------------------
-------Ragnaros-------
----------------------
local ragnaros = EJ_Data:CreateEncounter();
ragnaros:setAttributes("Ragnaros", "[TODO] Implement Ascension specific mechanics", 741, 672, 10, 8);
ragnaros:setLoot({17102,17107,18817,19137,18814,19138,17063,17082,18815,18816,17076,17104,17106,17083,2522459});

ragnaros:addSection(EJ_Data:CreateSection("Wrath of Ragnaros", "", 20566, 0, -1), nil);
ragnaros:addSection(EJ_Data:CreateSection("Lava Burst", "", 21158, 0, -1), nil);
ragnaros:addSection(EJ_Data:CreateSection("Submerge", "When Ragnaros submerges he will summon Sons of Flame. (TODO: Ascension mechanic description)", 0, iconFlags.Adds, -1), nil);

instance:addEncounter(ragnaros);

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.CLASSIC, instance, EJ_Data.Raids, 2);