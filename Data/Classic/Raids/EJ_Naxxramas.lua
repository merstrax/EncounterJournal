local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-Naxxramas.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-Naxxramas.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-Naxxramas.blp";

instance:setAttributes(754, "Naxxramas", EJ_Descriptions.Instances["NAXXRAMAS"], 163, bgFile, btnFile, loreFile, DifficultyUtil.ID.RaidAscended);

local anub_rekhan = EJ_Data:CreateEncounter();
anub_rekhan:setAttributes("Anub'Rekhan", "", 754, 1107, 0, 8);
anub_rekhan:setLoot({22938, 22936, 22937, 22939, 22935,22355}); 
instance:addEncounter(anub_rekhan); 

local grand_widow_faerlina = EJ_Data:CreateEncounter();
grand_widow_faerlina:setAttributes("Grand Widow Faerlina", "", 754, 1110, 1, 8);
grand_widow_faerlina:setLoot({22941,22940,22806,22942,22943,22355}); 
instance:addEncounter(grand_widow_faerlina); 

local maexxna = EJ_Data:CreateEncounter();
maexxna:setAttributes("Maexxna", "", 754, 1116, 2, 8);
maexxna:setLoot({23220,22804,22807,22947,22954,22357}); 
instance:addEncounter(maexxna); 

local noth_the_plaguebringer = EJ_Data:CreateEncounter();
noth_the_plaguebringer:setAttributes("Noth the Plaguebringer", "", 754, 1117, 3, 8);
noth_the_plaguebringer:setLoot({23030,22816,23005,23006,23029,23031,23028,22356});
instance:addEncounter(noth_the_plaguebringer); 

local heigan_the_unclean = EJ_Data:CreateEncounter();
heigan_the_unclean:setAttributes("Heigan the Unclean", "", 754, 1112, 4, 8);
heigan_the_unclean:setLoot({23035,23033,23019,23068,23036,22356}); 
instance:addEncounter(heigan_the_unclean); 

local loatheb = EJ_Data:CreateEncounter();
loatheb:setAttributes("Loatheb", "", 754, 1115, 5, 8);
loatheb:setLoot({23039,22800,23037,23038,23042,22352});
instance:addEncounter(loatheb); 

local instructor_razuvious = EJ_Data:CreateEncounter();
instructor_razuvious:setAttributes("Instructor Razuvious", "", 754, 1113, 6, 8);
instructor_razuvious:setLoot({23017,23219,23014,23009,23004,23018,22358}); 
instance:addEncounter(instructor_razuvious); 

local gothik_the_harvester = EJ_Data:CreateEncounter();
gothik_the_harvester:setAttributes("Gothik the Harvester", "", 754, 1109, 7, 8);
gothik_the_harvester:setLoot({23032,23021,23020,23073,23023,22358});
instance:addEncounter(gothik_the_harvester); 

local the_four_horsemen = EJ_Data:CreateEncounter();
the_four_horsemen:setAttributes("The Four Horsemen", "", 754, 1121, 8, 8);
the_four_horsemen:setLoot({23071,22809,22691,22811,23025,23027,22349}); 
instance:addEncounter(the_four_horsemen); 

local patchwerk = EJ_Data:CreateEncounter();
patchwerk:setAttributes("Patchwerk", "Patchwerk want to play!", 754, 1118, 9, 8);
patchwerk:setLoot({22960,22815,22820,22818,22961,22354}); 
instance:addEncounter(patchwerk); 

local grobbulus = EJ_Data:CreateEncounter();
grobbulus:setAttributes("Grobbulus", "", 754, 1111, 10, 8);
grobbulus:setLoot({22968,22967,22803,22988,22810,22354}); 
instance:addEncounter(grobbulus); 

local gluth = EJ_Data:CreateEncounter();
gluth:setAttributes("Gluth", "", 754, 1108, 11, 8);
gluth:setLoot({22983,22813,23075,22994,22981,22354,22355,22356,22358,22726}); 
instance:addEncounter(gluth); 

local thaddius = EJ_Data:CreateEncounter();
thaddius:setAttributes("Thaddius", "", 754, 1120, 12, 8);
thaddius:setLoot({23070,23000,22808,22801,23001,22353});
instance:addEncounter(thaddius); 

local sapphiron = EJ_Data:CreateEncounter();
sapphiron:setAttributes("Sapphiron", "", 754, 1119, 13, 8);
sapphiron:setLoot({23050,23045,23072,23043,23242,23049,23048,23040,23047,23046,23041,19761,23545,23547,23549,23548});
instance:addEncounter(sapphiron); 

local kel_thuzad = EJ_Data:CreateEncounter();
kel_thuzad:setAttributes("Kel'Thuzad", "", 754, 1114, 14, 8);
kel_thuzad:setLoot({22802,23054,23577,23056,22798,22799,22821,22812,22819,23057,23053,22520,23207,23206,1510496});
instance:addEncounter(kel_thuzad); 

EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), true);