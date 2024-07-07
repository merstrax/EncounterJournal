local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-Naxxramas.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-Naxxramas.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-Naxxramas.blp";

instance:setAttributes(754, "Naxxramas", EJ_Descriptions.Instances["NAXXRAMAS"], 163, bgFile, btnFile, 0, loreFile, EJ_Data.Raid);

anub_rekhan = createEncounter();
anub_rekhan:setAttributes("Anub'Rekhan", "", 0.306925, 0.469885, 754, 1107, 0, 0, 163, 8);
anub_rekhan:setLoot({}); 

grand_widow_faerlina = createEncounter();
grand_widow_faerlina:setAttributes("Grand Widow Faerlina", "", 0.441725, 0.360899, 754, 1110, 1, 0, 163, 8);
grand_widow_faerlina:setLoot({}); 

maexxna = createEncounter();
maexxna:setAttributes("Maexxna", "", 0.686466, 0.152964, 754, 1116, 2, 0, 163, 8);
maexxna:setLoot({}); 

noth_the_plaguebringer = createEncounter();
noth_the_plaguebringer:setAttributes("Noth the Plaguebringer", "", 0.346122, 0.564531, 754, 1117, 3, 0, 165, 8);
noth_the_plaguebringer:setLoot({}); 

heigan_the_unclean = createEncounter();
heigan_the_unclean:setAttributes("Heigan the Unclean", "", 0.498172, 0.456978, 754, 1112, 4, 0, 165, 8);
heigan_the_unclean:setLoot({}); 

loatheb = createEncounter();
loatheb:setAttributes("Loatheb", "", 0.760165, 0.283523, 754, 1115, 5, 0, 165, 8);
loatheb:setLoot({}); 

instructor_razuvious = createEncounter();
instructor_razuvious:setAttributes("Instructor Razuvious", "", 0.427469, 0.459909, 754, 1113, 6, 0, 164, 8);
instructor_razuvious:setLoot({}); 

gothik_the_harvester = createEncounter();
gothik_the_harvester:setAttributes("Gothik the Harvester", "", 0.675078, 0.596142, 754, 1109, 7, 0, 164, 8);
gothik_the_harvester:setLoot({}); 

the_four_horsemen = createEncounter();
the_four_horsemen:setAttributes("The Four Horsemen", "", 0.301273, 0.768225, 754, 1121, 8, 0, 164, 8);
the_four_horsemen:setLoot({}); 

patchwerk = createEncounter();
patchwerk:setAttributes("Patchwerk", "Patchwerk want to play!", 0.541192, 0.416887, 754, 1118, 9, 0, 162, 8);
patchwerk:setLoot({}); 

grobbulus = createEncounter();
grobbulus:setAttributes("Grobbulus", "", 0.615762, 0.531547, 754, 1111, 10, 0, 162, 8);
grobbulus:setLoot({}); 

gluth = createEncounter();
gluth:setAttributes("Gluth", "", 0.462924, 0.438272, 754, 1108, 11, 0, 162, 8);
gluth:setLoot({}); 

thaddius = createEncounter();
thaddius:setAttributes("Thaddius", "", 0.265857, 0.145792, 754, 1120, 12, 0, 162, 8);
thaddius:setLoot({}); 

sapphiron = createEncounter();
sapphiron:setAttributes("Sapphiron", "", 0.565133, 0.675014, 754, 1119, 13, 0, 167, 8);
sapphiron:setLoot({}); 

kel_thuzad = createEncounter();
kel_thuzad:setAttributes("Kel'Thuzad", "", 0.365324, 0.223293, 754, 1114, 14, 0, 167, 8);
kel_thuzad:setLoot({});

EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), true);