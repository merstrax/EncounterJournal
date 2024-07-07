local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-MoltenCore.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-MoltenCore.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-MoltenCore.blp";

instance:setAttributes(741, "Molten Core", EJ_Descriptions.Instances["MOLTENCORE"], 232, bgFile, btnFile, 0, loreFile, EJ_Data.Raid);

lucifron = createEncounter();
lucifron:setAttributes("Lucifron", "", 0.658633, 0.374995, 741, 663, 1, 0, 232, 8);
lucifron:setLoot({}); 

magmadar = createEncounter();
magmadar:setAttributes("Magmadar", "", 0.694339, 0.236793, 741, 664, 2, 0, 232, 8);
magmadar:setLoot({}); 

gehennas = createEncounter();
gehennas:setAttributes("Gehennas", "", 0.330876, 0.485334, 741, 665, 3, 0, 232, 8);
gehennas:setLoot({}); 

garr = createEncounter();
garr:setAttributes("Garr", "", 0.315094, 0.689623, 741, 666, 4, 0, 232, 8);
garr:setLoot({}); 

shazzrah = createEncounter();
shazzrah:setAttributes("Shazzrah", "", 0.558406, 0.852617, 741, 667, 5, 0, 232, 8);
shazzrah:setLoot({}); 

baron_geddon = createEncounter();
baron_geddon:setAttributes("Baron Geddon", "", 0.523926, 0.77632, 741, 668, 6, 0, 232, 8);
baron_geddon:setLoot({}); 

sulfuron_harbinger = createEncounter();
sulfuron_harbinger:setAttributes("Sulfuron Harbinger", "", 0.828302, 0.825472, 741, 669, 7, 0, 232, 8);
sulfuron_harbinger:setLoot({}); 

golemagg_the_incinerator = createEncounter();
golemagg_the_incinerator:setAttributes("Golemagg the Incinerator", "", 0.68868, 0.576416, 741, 670, 8, 0, 232, 8);
golemagg_the_incinerator:setLoot({}); 

majordomo_executus = createEncounter();
majordomo_executus:setAttributes("Majordomo Executus", "", 0.84151, 0.652831, 741, 671, 9, 0, 232, 8);
majordomo_executus:setLoot({}); 

ragnaros = createEncounter();
ragnaros:setAttributes("Ragnaros", "", 0.562265, 0.533963, 741, 672, 10, 0, 232, 8);
ragnaros:setLoot({});

EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), true);