local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-CoilfangReservoir.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-CoilfangReservoir.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-CoilfangReservoir.blp";

instance:setAttributes(260, "The Slave Pens", EJ_Descriptions.Instances["THESLAVEPENS"], 564, bgFile, btnFile, loreFile, DifficultyUtil.ID.DungeonMythic);
instance.hasLootHeroic = true;

local mennu_the_betrayer = EJ_Data:CreateEncounter();
mennu_the_betrayer:setAttributes("Mennu the Betrayer", "Mennu is one of the Broken, draenei twisted and deformed by demonic energies unleashed by the orcs. When the naga invaded Zangarmarsh, many of these tragic beings desperately attempted to escape the region. Mennu, however, chose a different path to freedom. In exchange for his own life, he betrayed his fellow Broken to the serpentine invaders and agreed to lord over his kin as a slave driver.", 260, 1939, 1, 4);
mennu_the_betrayer:setLoot({24359,24357,24360,24356,24361});
mennu_the_betrayer:setLoot({27542,27545,27541,27546,27544,27543}, true);
instance:addEncounter(mennu_the_betrayer);

local rokmar_the_crackler = EJ_Data:CreateEncounter();
rokmar_the_crackler:setAttributes("Rokmar the Crackler", "Following Draenor's destruction, Rokmar fled into the depths of Zangarmarsh. The energies that had torn the world apart enveloped the behemoth, bolstering its strength and size at the price of constant agony. The naga were awed by Rokmar's ferocity when they first arrived in the region. Rather than kill the beast, they enslaved it and used the creature to subjugate much of Zangarmarsh's indigenous life.", 260, 1941, 2, 4);
rokmar_the_crackler:setLoot({24379,24376,24378,24380,24381});
rokmar_the_crackler:setLoot({27550,27547,28124,27549,27548,27551}, true);
instance:addEncounter(rokmar_the_crackler);

local quagmirran = EJ_Data:CreateEncounter();
quagmirran:setAttributes("Quagmirran", "Quagmirran was once a ruler of Zangarmarsh's immense fungal giants. He was captured by the naga while wandering the region's serpentine caverns and subjected to excruciating torture. Now this broken being serves his overlords without question, silencing all who oppose the will of Lady Vashj.", 260, 1940, 3, 4);
quagmirran:setLoot({24362,24365,24366,24363,24364});
quagmirran:setLoot({27796,27713,27742,27712,27800,28337,27672,27740,27683,27714,27673,27741,29242,30538,32078,29349}, true);
instance:addEncounter(quagmirran);

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.TBC, instance, EJ_Data.Dungeons);