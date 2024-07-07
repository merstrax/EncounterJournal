local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-Scholomance.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-Scholomance.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-Scholomance.blp";

instance:setAttributes(246, "Scholomance", EJ_Descriptions.Instances["SCHOLOMANCE"], 1007, bgFile, btnFile, 0, loreFile, EJ_Data.Heroic);

local instructor_chillheart = EJ_Data:CreateEncounter();
instructor_chillheart:setAttributes("Instructor Chillheart", "Course: Introduction to the Dark Arts Instructor Chillheart journeyed from Northrend to teach aspiring necromancers discipline, harshly punishing those who disappoint her. She commands the icy chill of the north and masterfully uses Scholomance's libraries to deadly effect.", 0.652879, 0.604144, 246, 1426, 1, 5524, 476, 4);
instructor_chillheart:setLoot({}); 
instance:addEncounter(instructor_chillheart); 

local houndmaster_braun = EJ_Data:CreateEncounter();
houndmaster_braun:setAttributes("Houndmaster Braun", "The quickest and surest way to detect the undead is by the scent of rot they carry, and even the most veteran soldier cannot match the olfactory sense of a hound. Houndmaster Braun has bred and trained a savage pack of canines to aid the crusaders in hunting down their foes--living and undead.", 0.548038, 0.288227, 311, 1422, 1, 5606, 431, 4);
houndmaster_braun:setLoot({}); 
instance:addEncounter(houndmaster_braun); 

local jandice_barov = EJ_Data:CreateEncounter();
jandice_barov:setAttributes("Jandice Barov", "Course: Advanced Illusions Barov's spirit lurked in the recesses of Scholomance for years, but now she has taken a more active role in educating the next generation of magi. Her vast knowledge of illusions has made her both a valued educator and a dangerous opponent to anyone foolish enough to draw her ire.", 0.599743, 0.1831, 246, 1427, 2, 5532, 477, 4);
jandice_barov:setLoot({}); 
instance:addEncounter(jandice_barov); 

local rattlegore = EJ_Data:CreateEncounter();
rattlegore:setAttributes("Rattlegore", "Course: Reanimation 101 Rattlegore was thought to have been destroyed in Andorhal, but Gandling immediately began preparations to reanimate the clattering terror so he could guard against intruders. The Darkmaster sought to make Rattlegore more ferocious than ever, imbuing him with an insatiable desire to harvest raw materials from his enemies.", 0.484438, 0.26184, 246, 1428, 3, 5552, 477, 4);
rattlegore:setLoot({}); 
instance:addEncounter(rattlegore); 

local lilian_voss = EJ_Data:CreateEncounter();
lilian_voss:setAttributes("Lilian Voss", "Course: Reeducation The undead Lilian Voss strangled her father--a high priest of the Scarlet Crusade--for treachery, and then started a rampage that eventually led her into the shadowy corridors of Scholomance. Rather than destroy the intruder, Darkmaster Gandling graciously decided to show Voss how to embrace her grim fate. The anger and runeblades she had once directed at the school are now turned toward Gandling's enemies.", 0.518268, 0.470907, 246, 1429, 4, 5558, 477, 4);
lilian_voss:setLoot({}); 
instance:addEncounter(lilian_voss); 

local darkmaster_gandling = EJ_Data:CreateEncounter();
darkmaster_gandling:setAttributes("Darkmaster Gandling", "Course: Advanced Studies The recent defeat in Andorhal has put Darkmaster Gandling in the foulest of moods. More than ever, all students of Scholomance are advised to impress him at every turn. Pupils who dissatisfy the headmaster will be removed from class to perform lab work... or become lab work.", 0.501091, 0.326169, 246, 1430, 5, 5795, 479, 4);
darkmaster_gandling:setLoot({}); 
instance:addEncounter(darkmaster_gandling); 

EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), false);