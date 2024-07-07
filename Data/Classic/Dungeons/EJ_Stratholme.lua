local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-Stratholme.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-Stratholme.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-Stratholme.blp";

instance:setAttributes(236, "Stratholme", EJ_Descriptions.Instances["STRATHOLME"], 329, bgFile, btnFile, 0, loreFile, EJ_Data.Heroic);

local hearthsinger_forresten = EJ_Data:CreateEncounter();
hearthsinger_forresten:setAttributes("Hearthsinger Forresten", "The Culling of Stratholme claimed the lives of innumerable people whose only crime was being in the doomed city. A traveling singer and piccolo player named Forresten was one such victim. He continues to wander the city in death, unable to accept his tragic fate.", 0.605191, 0.313524, 236, 473, 1, 4794, 317, 4);
hearthsinger_forresten:setLoot({}); 

local timmy_the_cruel = EJ_Data:CreateEncounter();
timmy_the_cruel:setAttributes("Timmy the Cruel", "Timmison was infamous for his savagery on the field of battle. Some speculate his sadism stemmed from the ceaseless bullying he endured as a child. Now reborn as a Scourge monstrosity, his mind shattered, he is tormented by those memories, causing him to answer to the name he once loathed: Timmy.", 0.499999, 0.178279, 236, 474, 2, 4799, 317, 4);
timmy_the_cruel:setLoot({}); 

local willey_hopebreaker = EJ_Data:CreateEncounter();
willey_hopebreaker:setAttributes("Willey Hopebreaker", "Balnazzar took great pleasure in leveraging the cannon master Willey's destructive capabilities in undeath, calling his prized minion by the name of Hopebreaker. The dreadlord relishes that he has twisted Willey and other Scarlet Crusaders--who so despised the undead in life--into his unwitting pawns.", 0.0478142, 0.506148, 236, 475, 4, 4807, 317, 4);
willey_hopebreaker:setLoot({}); 

local instructor_galford = EJ_Data:CreateEncounter();
instructor_galford:setAttributes("Instructor Galford", "Galford once took great pride in caring for the Crusade's most valued documents. However, as he lay dying, he watched in horror as his precious tomes were burnt around him. Balnazzar used this painful memory to imbue his servant with the fiery power that ravaged Galford in life.", 0.277323, 0.754099, 236, 477, 5, 4808, 317, 4);
instructor_galford:setLoot({}); 

local balnazzar = EJ_Data:CreateEncounter();
balnazzar:setAttributes("Balnazzar", "Balnazzar has never tasted true death, but he has suffered bitter defeat. After the Cataclysm rocked the world, he slaughtered the Scarlet Crusaders in Stratholme and transformed them into the undead creatures they once hated. The dreadlord now plots his machinations for vengeance upon Azeroth.", 0.204918, 0.821721, 236, 478, 6, 4828, 317, 4);
balnazzar:setLoot({}); 

local the_unforgiven = EJ_Data:CreateEncounter();
the_unforgiven:setAttributes("The Unforgiven", "Lylia was a blade of righteousness among her people. After Arthas commanded his forces to purge the city, her sanity was ripped apart from seeing countless innocents die by her hand. She fell on her sword to escape the madness around her, and she now exists as a spectral being forever denied absolution for her heinous acts.", 0.734973, 0.204918, 236, 472, 7, 4833, 317, 4);
the_unforgiven:setLoot({}); 

local baroness_anastari = EJ_Data:CreateEncounter();
baroness_anastari:setAttributes("Baroness Anastari", "While she lived, Anastari took what she wanted, no matter the cost. Death has done little to change that. Her soul ripped from her body, Anastari became a banshee, and she has abandoned her love of material trinkets in favor of possessions of a far more sinister kind.", 0.745902, 0.469262, 236, 479, 8, 4841, 318, 4);
baroness_anastari:setLoot({}); 

local nerub_enkan = EJ_Data:CreateEncounter();
nerub_enkan:setAttributes("Nerub'enkan", "Nerub'enkan was a fearsome warrior during the War of the Spider. Ultimately, she succumbed to her wounds and was raised into undeath as an obedient minion of the Scourge. Now the nerubian guards a ziggurat in Stratholme as fiercely as she defended her home in life.", 0.572404, 0.461065, 236, 480, 9, 4845, 318, 4);
nerub_enkan:setLoot({}); 

local maleki_the_pallid = EJ_Data:CreateEncounter();
maleki_the_pallid:setAttributes("Maleki the Pallid", "Maleki was among the first to join the Cult of the Damned, showing tremendous aptitude in harnessing the chill of the grave. Driven by an insatiable desire for power, the mage fervently hones his skills in dark magic to prepare for when he will be remade as a lich.", 0.674864, 0.227459, 236, 481, 10, 4851, 318, 4);
maleki_the_pallid:setLoot({});

local commander_malor = EJ_Data:CreateEncounter();
commander_malor:setAttributes("Commander Malor", "Malor and a handful of other courageous warriors risked everything to protect the Scarlet Bastion from being desecrated by the undead. Tragically, they failed. Balnazzar corrupted the fearless commander into one of his servants, transforming the zealot into a mockery of his former self.", 0.29932, 0.411874, 236, 476, 3, 6452, 317, 4);
commander_malor:setLoot({}); 

local magistrate_barthilas = EJ_Data:CreateEncounter();
magistrate_barthilas:setAttributes("Magistrate Barthilas", "Barthilas was among those innocents purged by Arthas and his forces during the Culling of Stratholme. The Lich King eventually raised the former magistrate from the grave and commanded the hulking undead monstrosity to guard his ruined home.", 0.56694, 0.161885, 236, 482, 11, 4855, 318, 4);
magistrate_barthilas:setLoot({}); 

local ramstein_the_gorger = EJ_Data:CreateEncounter();
ramstein_the_gorger:setAttributes("Ramstein the Gorger", "Ramstein is one of the Scourge's most infamous abominations, a horror stitched together from numerous corpses and empowered by a ceaseless hunger. This monster committed unspeakable atrocities on countless innocent souls when Scourge forces overran Stratholme.", 0.456284, 0.198771, 236, 483, 12, 4859, 318, 4);
ramstein_the_gorger:setLoot({}); 

local lord_aurius_rivendare = EJ_Data:CreateEncounter();
lord_aurius_rivendare:setAttributes("Lord Aurius Rivendare", "Aurius's fall from grace was precipitous. Failing to exact retribution from his corrupted father, Baron Rivendare, the former paladin was not granted peace in death. He was tragically reforged into an instrument of the Scourge, the evil he had once sworn to defeat.", 0.386612, 0.20082, 236, 484, 13, 4862, 318, 4);
lord_aurius_rivendare:setLoot({}); 

EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), false);