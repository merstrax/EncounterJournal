local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-Stratholme.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-Stratholme.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-Stratholme.blp";

instance:setAttributes(236, "Stratholme", EJ_Descriptions.Instances["STRATHOLME"], 329, bgFile, btnFile, loreFile, DifficultyUtil.ID.DungeonMythic);

local skul = EJ_Data:CreateEncounter();
skul:setAttributes("Skul", "", 236, 32901, 1, 4);
skul:setLoot({13395,13394,13396});
instance:addEncounter(skul);

local hearthsinger_forresten = EJ_Data:CreateEncounter();
hearthsinger_forresten:setAttributes("Hearthsinger Forresten", "The Culling of Stratholme claimed the lives of innumerable people whose only crime was being in the doomed city. A traveling singer and piccolo player named Forresten was one such victim. He continues to wander the city in death, unable to accept his tragic fate.", 236, 32902, 2, 4);
hearthsinger_forresten:setLoot({13378,13383,13384,13379,16682});
instance:addEncounter(hearthsinger_forresten);

local the_unforgiven = EJ_Data:CreateEncounter();
the_unforgiven:setAttributes("The Unforgiven", "Lylia was a blade of righteousness among her people. After Arthas commanded his forces to purge the city, her sanity was ripped apart from seeing countless innocents die by her hand. She fell on her sword to escape the madness around her, and she now exists as a spectral being forever denied absolution for her heinous acts.", 236, 32903, 3, 4);
the_unforgiven:setLoot({13409,13404,13405,13408,16717});
instance:addEncounter(the_unforgiven);

local timmy_the_cruel = EJ_Data:CreateEncounter();
timmy_the_cruel:setAttributes("Timmy the Cruel", "Timmison was infamous for his savagery on the field of battle. Some speculate his sadism stemmed from the ceaseless bullying he endured as a child. Now reborn as a Scourge monstrosity, his mind shattered, he is tormented by those memories, causing him to answer to the name he once loathed: Timmy.", 236, 32904, 4, 4);
timmy_the_cruel:setLoot({13403,13402,13400,13401,16724});
instance:addEncounter(timmy_the_cruel);

local cannon_master_willey = EJ_Data:CreateEncounter();
cannon_master_willey:setAttributes("Cannon Master Willey", "", 236, 32905, 5, 4);
cannon_master_willey:setLoot({22405,22407,18721,13381,22403,13382,22404,22406,13380,16708});
instance:addEncounter(cannon_master_willey);

local archivist_galford = EJ_Data:CreateEncounter();
archivist_galford:setAttributes("Archivist Galford", "Galford once took great pride in caring for the Crusade's most valued documents. However, as he lay dying, he watched in horror as his precious tomes were burnt around him. Balnazzar used this painful memory to imbue his servant with the fiery power that ravaged Galford in life.", 236, 32906, 6, 4);
archivist_galford:setLoot({13386,18716,13387,13385,16692});
instance:addEncounter(archivist_galford);

local balnazzar = EJ_Data:CreateEncounter();
balnazzar:setAttributes("Balnazzar", "Balnazzar has never tasted true death, but he has suffered bitter defeat. After the Cataclysm rocked the world, he slaughtered the Scarlet Crusaders in Stratholme and transformed them into the undead creatures they once hated. The dreadlord now plots his machinations for vengeance upon Azeroth.", 236, 32907, 7, 4);
balnazzar:setLoot({18720,13369,13358,13359,18718,12103,13360,13348,18717,16725});
instance:addEncounter(balnazzar);

local magistrate_barthilas = EJ_Data:CreateEncounter();
magistrate_barthilas:setAttributes("Magistrate Barthilas", "Barthilas was among those innocents purged by Arthas and his forces during the Culling of Stratholme. The Lich King eventually raised the former magistrate from the grave and commanded the hulking undead monstrosity to guard his ruined home.", 236, 32908, 8, 4);
magistrate_barthilas:setLoot({13376,18727,18726,18722,23198,18725});
instance:addEncounter(magistrate_barthilas);

local stonespine = EJ_Data:CreateEncounter();
stonespine:setAttributes("Stonespine", "", 236, 32909, 9, 4);
stonespine:setLoot({13397,13954,13399});
instance:addEncounter(stonespine);

local nerub_enkan = EJ_Data:CreateEncounter();
nerub_enkan:setAttributes("Nerub'enkan", "Nerub'enkan was a fearsome warrior during the War of the Spider. Ultimately, she succumbed to her wounds and was raised into undeath as an obedient minion of the Scourge. Now the nerubian guards a ziggurat in Stratholme as fiercely as she defended her home in life.", 236, 32910, 10, 4);
nerub_enkan:setLoot({18740,18739,13529,18738,16675});
instance:addEncounter(nerub_enkan);

local maleki_the_pallid = EJ_Data:CreateEncounter();
maleki_the_pallid:setAttributes("Maleki the Pallid", "Maleki was among the first to join the Cult of the Damned, showing tremendous aptitude in harnessing the chill of the grave. Driven by an insatiable desire for power, the mage fervently hones his skills in dark magic to prepare for when he will be remade as a lich.", 236, 32911, 11, 4);
maleki_the_pallid:setLoot({18734,18735,13524,18737,16691});
instance:addEncounter(maleki_the_pallid);

local baroness_anastari = EJ_Data:CreateEncounter();
baroness_anastari:setAttributes("Baroness Anastari", "While she lived, Anastari took what she wanted, no matter the cost. Death has done little to change that. Her soul ripped from her body, Anastari became a banshee, and she has abandoned her love of material trinkets in favor of possessions of a far more sinister kind.", 236, 32912, 12, 4);
baroness_anastari:setLoot({18730,18728,13534,18729,16704});
instance:addEncounter(baroness_anastari);

local ramstein_the_gorger = EJ_Data:CreateEncounter();
ramstein_the_gorger:setAttributes("Ramstein the Gorger", "Ramstein is one of the Scourge's most infamous abominations, a horror stitched together from numerous corpses and empowered by a ceaseless hunger. This monster committed unspeakable atrocities on countless innocent souls when Scourge forces overran Stratholme.", 236, 32913, 13, 4);
ramstein_the_gorger:setLoot({13374,18723,13373,13515,13372,13375,16737});
instance:addEncounter(ramstein_the_gorger);

local baron_rivendare = EJ_Data:CreateEncounter();
baron_rivendare:setAttributes("Baron Rivendare", "", 236, 32914, 14, 4);
baron_rivendare:setLoot({13505,13335,13340,22412,13346,22409,13344,22410,22411,13345,13368,13361,13349,22408,16687,16699,16694,16709,16719,16668,16678,16732,16728});
instance:addEncounter(baron_rivendare);

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.CLASSIC, instance, EJ_Data.Dungeons, 18);