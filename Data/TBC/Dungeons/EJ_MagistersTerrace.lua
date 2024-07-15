local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-MagistersTerrace.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-MagistersTerrace.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-MagistersTerrace.blp";

instance:setAttributes(249, "Magisters' Terrace", EJ_Descriptions.Instances["MAGISTERSTERRACE"], 564, bgFile, btnFile, loreFile, DifficultyUtil.ID.DungeonMythic);

local selin_fireheart = EJ_Data:CreateEncounter();
selin_fireheart:setAttributes("Selin Fireheart", "Once a respected captain of Kael'Thas Sunstrider's personal guard, Selin Fireheart has maintained an unswervingly fierce loyalty to his lord while losing his sanity. Selin has been seduced by the demonic energies of the crystals which surround his chamber, and cannot stop from reveling in their vile power. He will slay any who dare approach the Magister's Terrace and will drink the magic, life, and blood from their dead bodies.", 249, 1897, 1, 4);
selin_fireheart:setLoot({}); 
instance:addEncounter(selin_fireheart); 

local vexallus = EJ_Data:CreateEncounter();
vexallus:setAttributes("Vexallus", "An arcane elemental of unimaginable power, Vexallus was summoned to the Magister's Terrace by a trio of blood elves who were slain by the force of his arrival. The magical energy in the surrounding crystals resonates within Vexallus, and his being is in a constant state of explosive chaotic flux.", 249, 1898, 2, 4);
vexallus:setLoot({}); 
instance:addEncounter(vexallus); 

local priestess_delrissa = EJ_Data:CreateEncounter();
priestess_delrissa:setAttributes("Priestess Delrissa", "Delrissa is a shivarra priestess acting under the demon lord Kil'jaeden. It is Delrissa who revived Kael'thas Sunstrider after he was heavily wounded in an attack on Tempest Keep, and she has stayed in the blood elf lord's presence ever since. The priestess has a militant circle of loyal acolytes who serve her and will defend her at all cost.", 249, 1895, 3, 4);
priestess_delrissa:setLoot({}); 
instance:addEncounter(priestess_delrissa); 

local kael_thas_sunstrider = EJ_Data:CreateEncounter();
kael_thas_sunstrider:setAttributes("Kael'thas Sunstrider", "Once a true champion to the blood elf people, and a defender of the race's ancient heritage, Kael'thas Sunstrider has fallen prey to the dark influences of the demon Kil'jaeden while sojourning in Outland. At the bidding of his new master, the wayward prince returned to Azeroth and seized the Sunwell, hoping to use the fount as a means to open a doorway for the demon to this new and verdant world. Kael'thas is a brilliant tactician, a powerful warrior, and his veins burn with limitless fel magic.", 249, 1894, 4, 4);
kael_thas_sunstrider:setLoot({}); 
instance:addEncounter(kael_thas_sunstrider); 

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.TBC, instance, false);