local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-Scholomance.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-Scholomance.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-Scholomance.blp";

instance:setAttributes(246, "Scholomance", EJ_Descriptions.Instances["SCHOLOMANCE"], 1007, bgFile, btnFile, loreFile, DifficultyUtil.ID.DungeonMythic);

local kirtonos_the_herald = EJ_Data:CreateEncounter();
kirtonos_the_herald:setAttributes("Kirtonos the Herald", "", 246, 1426, 1, 4);
kirtonos_the_herald:setLoot({13956,13957,13969,13967,13955,13960,14024,13983,16734}); 
instance:addEncounter(kirtonos_the_herald); 

local jandice_barov = EJ_Data:CreateEncounter();
jandice_barov:setAttributes("Jandice Barov", "Course: Advanced Illusions Barov's spirit lurked in the recesses of Scholomance for years, but now she has taken a more active role in educating the next generation of magi. Her vast knowledge of illusions has made her both a valued educator and a dangerous opponent to anyone foolish enough to draw her ire.", 246, 1427, 2, 4);
jandice_barov:setLoot({18689,14543,14545,14548,18690,14541,22394,13725,13523,16701}); 
instance:addEncounter(jandice_barov); 

local rattlegore = EJ_Data:CreateEncounter();
rattlegore:setAttributes("Rattlegore", "Course: Reanimation 101 Rattlegore was thought to have been destroyed in Andorhal, but Gandling immediately began preparations to reanimate the clattering terror so he could guard against intruders. The Darkmaster sought to make Rattlegore more ferocious than ever, imbuing him with an insatiable desire to harvest raw materials from his enemies.", 246, 1428, 3, 4);
rattlegore:setLoot({14538,14539,18686,14537,14531,14528,13873,16711,18782,12726}); 
instance:addEncounter(rattlegore); 

local death_knight_darkreaver = EJ_Data:CreateEncounter();
death_knight_darkreaver:setAttributes("Death Knight Darkreaver", "", 246, 14260, 4, 4);
death_knight_darkreaver:setLoot({18760,18758,18759,18761,18749}); 
instance:addEncounter(death_knight_darkreaver);

local ras_frostwhisper = EJ_Data:CreateEncounter();
ras_frostwhisper:setAttributes("Ras Frostwhisper", "", 246, 14261, 5, 4);
ras_frostwhisper:setLoot({13314,14340,18693,14503,14502,18694,14522,14525,18695,13952,14487,18696,16689}); 
instance:addEncounter(ras_frostwhisper);

local kormok = EJ_Data:CreateEncounter();
kormok:setAttributes("Kormok", "", 246, 1429, 6, 4);
kormok:setLoot({22303,22326,22331,22332,22333}); 
instance:addEncounter(kormok);

local instructor_malicia = EJ_Data:CreateEncounter();
instructor_malicia:setAttributes("Instructor Malicia", "", 246, 14262, 7, 4);
instructor_malicia:setLoot({16710,18681,14633,14626,14629,14631,14632,14637,14640,14636,14638,18682,14641,14611,14615,14614,14612,14616,14624,14622,14620,14623,14621,18684,23201,23200,18683,18680}); 
instance:addEncounter(instructor_malicia);

local doctor_theolen_krastinov = EJ_Data:CreateEncounter();
doctor_theolen_krastinov:setAttributes("Doctor Theolen Krastinov", "", 246, 14263, 8, 4);
doctor_theolen_krastinov:setLoot({16684,18681,14633,14626,14629,14631,14632,14637,14640,14636,14638,18682,14641,14611,14615,14614,14612,14616,14624,14622,14620,14623,14621,18684,23201,23200,18683,18680}); 
instance:addEncounter(doctor_theolen_krastinov);

local lorekeeper_polkelt = EJ_Data:CreateEncounter();
lorekeeper_polkelt:setAttributes("Lorekeeper Polkelt", "", 246, 14264, 9, 4);
lorekeeper_polkelt:setLoot({16705,18681,14633,14626,14629,14631,14632,14637,14640,14636,14638,18682,14641,14611,14615,14614,14612,14616,14624,14622,14620,14623,14621,18684,23201,23200,18683,18680}); 
instance:addEncounter(lorekeeper_polkelt);

local the_ravenian = EJ_Data:CreateEncounter();
the_ravenian:setAttributes("The Ravenian", "", 246, 14265, 10, 4);
the_ravenian:setLoot({16716,18681,14633,14626,14629,14631,14632,14637,14640,14636,14638,18682,14641,14611,14615,14614,14612,14616,14624,14622,14620,14623,14621,18684,23201,23200,18683,18680}); 
instance:addEncounter(the_ravenian);

local lord_alexei_barov = EJ_Data:CreateEncounter();
lord_alexei_barov:setAttributes("Lord Alexei Barov", "", 246, 14266, 11, 4);
lord_alexei_barov:setLoot({16722,18681,14633,14626,14629,14631,14632,14637,14640,14636,14638,18682,14641,14611,14615,14614,14612,14616,14624,14622,14620,14623,14621,18684,23201,23200,18683,18680}); 
instance:addEncounter(lord_alexei_barov);

local lady_illucia_barov = EJ_Data:CreateEncounter();
lady_illucia_barov:setAttributes("Lady Illucia Barov", "", 246, 14267, 12, 4);
lady_illucia_barov:setLoot({18681,14633,14626,14629,14631,14632,14637,14640,14636,14638,18682,14641,14611,14615,14614,14612,14616,14624,14622,14620,14623,14621,18684,23201,23200,18683,18680}); 
instance:addEncounter(lady_illucia_barov);

local darkmaster_gandling = EJ_Data:CreateEncounter();
darkmaster_gandling:setAttributes("Darkmaster Gandling", "Course: Advanced Studies The recent defeat in Andorhal has put Darkmaster Gandling in the foulest of moods. More than ever, all students of Scholomance are advised to impress him at every turn. Pupils who dissatisfy the headmaster will be removed from class to perform lab work... or become lab work.", 246, 1430, 13, 4);
darkmaster_gandling:setLoot({13937,13944,13398,13950,13951,22433,13964,13953,13938,16698,16686,16693,16707,16720,16677,16667,16731,16727}); 
instance:addEncounter(darkmaster_gandling); 

EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), false);