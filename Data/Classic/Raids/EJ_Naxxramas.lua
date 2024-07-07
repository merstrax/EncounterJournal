local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-Naxxramas.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-Naxxramas.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-Naxxramas.blp";

instance:setAttributes(754, "Naxxramas", EJ_Descriptions.Instances["NAXXRAMAS"], 163, bgFile, btnFile, 0, loreFile, EJ_Data.Raid);

local anub_rekhan = EJ_Data:CreateEncounter();
anub_rekhan:setAttributes("Anub'Rekhan", "", 0.306925, 0.469885, 754, 1107, 0, 0, 163, 8);
anub_rekhan:setLoot({}); 
instance:addEncounter(anub_rekhan); 

local grand_widow_faerlina = EJ_Data:CreateEncounter();
grand_widow_faerlina:setAttributes("Grand Widow Faerlina", "", 0.441725, 0.360899, 754, 1110, 1, 0, 163, 8);
grand_widow_faerlina:setLoot({}); 
instance:addEncounter(grand_widow_faerlina); 

local maexxna = EJ_Data:CreateEncounter();
maexxna:setAttributes("Maexxna", "", 0.686466, 0.152964, 754, 1116, 2, 0, 163, 8);
maexxna:setLoot({}); 
instance:addEncounter(maexxna); 

local noth_the_plaguebringer = EJ_Data:CreateEncounter();
noth_the_plaguebringer:setAttributes("Noth the Plaguebringer", "", 0.346122, 0.564531, 754, 1117, 3, 0, 165, 8);
noth_the_plaguebringer:setLoot({}); 
instance:addEncounter(noth_the_plaguebringer); 

local heigan_the_unclean = EJ_Data:CreateEncounter();
heigan_the_unclean:setAttributes("Heigan the Unclean", "", 0.498172, 0.456978, 754, 1112, 4, 0, 165, 8);
heigan_the_unclean:setLoot({}); 
instance:addEncounter(heigan_the_unclean); 

local loatheb = EJ_Data:CreateEncounter();
loatheb:setAttributes("Loatheb", "", 0.760165, 0.283523, 754, 1115, 5, 0, 165, 8);
loatheb:setLoot({}); 
instance:addEncounter(loatheb); 

local instructor_razuvious = EJ_Data:CreateEncounter();
instructor_razuvious:setAttributes("Instructor Razuvious", "", 0.427469, 0.459909, 754, 1113, 6, 0, 164, 8);
instructor_razuvious:setLoot({}); 
instance:addEncounter(instructor_razuvious); 

local gothik_the_harvester = EJ_Data:CreateEncounter();
gothik_the_harvester:setAttributes("Gothik the Harvester", "", 0.675078, 0.596142, 754, 1109, 7, 0, 164, 8);
gothik_the_harvester:setLoot({}); 
instance:addEncounter(gothik_the_harvester); 

local the_four_horsemen = EJ_Data:CreateEncounter();
the_four_horsemen:setAttributes("The Four Horsemen", "", 0.301273, 0.768225, 754, 1121, 8, 0, 164, 8);
the_four_horsemen:setLoot({}); 
instance:addEncounter(the_four_horsemen); 

local patchwerk = EJ_Data:CreateEncounter();
patchwerk:setAttributes("Patchwerk", "Patchwerk want to play!", 0.541192, 0.416887, 754, 1118, 9, 0, 162, 8);
patchwerk:setLoot({}); 
instance:addEncounter(patchwerk); 

local grobbulus = EJ_Data:CreateEncounter();
grobbulus:setAttributes("Grobbulus", "", 0.615762, 0.531547, 754, 1111, 10, 0, 162, 8);
grobbulus:setLoot({}); 
instance:addEncounter(grobbulus); 

local gluth = EJ_Data:CreateEncounter();
gluth:setAttributes("Gluth", "", 0.462924, 0.438272, 754, 1108, 11, 0, 162, 8);
gluth:setLoot({}); 
instance:addEncounter(gluth); 

local thaddius = EJ_Data:CreateEncounter();
thaddius:setAttributes("Thaddius", "", 0.265857, 0.145792, 754, 1120, 12, 0, 162, 8);
thaddius:setLoot({}); 
instance:addEncounter(thaddius); 

local sapphiron = EJ_Data:CreateEncounter();
sapphiron:setAttributes("Sapphiron", "", 0.565133, 0.675014, 754, 1119, 13, 0, 167, 8);
sapphiron:setLoot({}); 
instance:addEncounter(sapphiron); 

local kel_thuzad = EJ_Data:CreateEncounter();
kel_thuzad:setAttributes("Kel'Thuzad", "", 0.365324, 0.223293, 754, 1114, 14, 0, 167, 8);
kel_thuzad:setLoot({});
instance:addEncounter(kel_thuzad); 

EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), true);