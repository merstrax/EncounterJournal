local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-Naxxramas.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-Naxxramas.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-Naxxramas.blp";

instance:setAttributes(754, "Naxxramas", EJ_Descriptions.Instances["NAXXRAMAS"], 163, bgFile, btnFile, loreFile, DifficultyUtil.ID.RaidAscended);

local anub_rekhan = EJ_Data:CreateEncounter();
anub_rekhan:setAttributes("Anub'Rekhan", "", 754, 1107, 0, 8);
anub_rekhan:setLoot({}); 
instance:addEncounter(anub_rekhan); 

local grand_widow_faerlina = EJ_Data:CreateEncounter();
grand_widow_faerlina:setAttributes("Grand Widow Faerlina", "", 754, 1110, 1, 8);
grand_widow_faerlina:setLoot({}); 
instance:addEncounter(grand_widow_faerlina); 

local maexxna = EJ_Data:CreateEncounter();
maexxna:setAttributes("Maexxna", "", 754, 1116, 2, 8);
maexxna:setLoot({}); 
instance:addEncounter(maexxna); 

local noth_the_plaguebringer = EJ_Data:CreateEncounter();
noth_the_plaguebringer:setAttributes("Noth the Plaguebringer", "", 754, 1117, 3, 8);
noth_the_plaguebringer:setLoot({}); 
instance:addEncounter(noth_the_plaguebringer); 

local heigan_the_unclean = EJ_Data:CreateEncounter();
heigan_the_unclean:setAttributes("Heigan the Unclean", "", 754, 1112, 4, 8);
heigan_the_unclean:setLoot({}); 
instance:addEncounter(heigan_the_unclean); 

local loatheb = EJ_Data:CreateEncounter();
loatheb:setAttributes("Loatheb", "", 754, 1115, 5, 8);
loatheb:setLoot({}); 
instance:addEncounter(loatheb); 

local instructor_razuvious = EJ_Data:CreateEncounter();
instructor_razuvious:setAttributes("Instructor Razuvious", "", 754, 1113, 6, 8);
instructor_razuvious:setLoot({}); 
instance:addEncounter(instructor_razuvious); 

local gothik_the_harvester = EJ_Data:CreateEncounter();
gothik_the_harvester:setAttributes("Gothik the Harvester", "", 754, 1109, 7, 8);
gothik_the_harvester:setLoot({}); 
instance:addEncounter(gothik_the_harvester); 

local the_four_horsemen = EJ_Data:CreateEncounter();
the_four_horsemen:setAttributes("The Four Horsemen", "", 754, 1121, 8, 8);
the_four_horsemen:setLoot({}); 
instance:addEncounter(the_four_horsemen); 

local patchwerk = EJ_Data:CreateEncounter();
patchwerk:setAttributes("Patchwerk", "Patchwerk want to play!", 754, 1118, 9, 8);
patchwerk:setLoot({}); 
instance:addEncounter(patchwerk); 

local grobbulus = EJ_Data:CreateEncounter();
grobbulus:setAttributes("Grobbulus", "", 754, 1111, 10, 8);
grobbulus:setLoot({}); 
instance:addEncounter(grobbulus); 

local gluth = EJ_Data:CreateEncounter();
gluth:setAttributes("Gluth", "", 754, 1108, 11, 8);
gluth:setLoot({}); 
instance:addEncounter(gluth); 

local thaddius = EJ_Data:CreateEncounter();
thaddius:setAttributes("Thaddius", "", 754, 1120, 12, 8);
thaddius:setLoot({}); 
instance:addEncounter(thaddius); 

local sapphiron = EJ_Data:CreateEncounter();
sapphiron:setAttributes("Sapphiron", "", 754, 1119, 13, 8);
sapphiron:setLoot({}); 
instance:addEncounter(sapphiron); 

local kel_thuzad = EJ_Data:CreateEncounter();
kel_thuzad:setAttributes("Kel'Thuzad", "", 754, 1114, 14, 8);
kel_thuzad:setLoot({});
instance:addEncounter(kel_thuzad); 

EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), true);