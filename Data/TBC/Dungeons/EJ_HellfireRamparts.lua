local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-HellfireCitadel.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-HellfireCitadel.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-HellfireCitadel.blp";

instance:setAttributes(248, "Hellfire Ramparts", EJ_Descriptions.Instances["HELLFIRERAMPARTS"], 564, bgFile, btnFile, loreFile, DifficultyUtil.ID.DungeonMythic);

local watchkeeper_gargolmar = EJ_Data:CreateEncounter();
watchkeeper_gargolmar:setAttributes("Watchkeeper Gargolmar", "Reviled amongst the denizens of Outland, Gargolmar is known to eat the hearts of those he catches near the Hellfire Citadel whether they were trying to enter or not. Charged by Kargath Bladefist himself with the defense of the ramparts, Watchkeeper Gargolmar is unflinching in his duty.", 248, 1893, 1, 4);
watchkeeper_gargolmar:setLoot({}); 
instance:addEncounter(watchkeeper_gargolmar); 

local omor_the_unscarred = EJ_Data:CreateEncounter();
omor_the_unscarred:setAttributes("Omor the Unscarred", "Omor the Unscarred was a disciple of Hakkar the Houndmaster, and took charge of the legendary warrior's remaining felhounds  after his master's defeat during the War of the Ancients. Since that time, Omor has never been defeated in single combat.  The venerable demon is Illidan's envoy to the fel orcs of Hellfire Citadel.", 248, 1891, 2, 4);
omor_the_unscarred:setLoot({}); 
instance:addEncounter(omor_the_unscarred); 

local vazruden_the_herald = EJ_Data:CreateEncounter();
vazruden_the_herald:setAttributes("Vazruden the Herald", "Vazruden guards the vital line of supplies, messages, and forces flowing between Hellfire Citidel and the Black Temple.  Astride his magnificent nether drake Nazan, Vazruden presents an unstoppable aerial force of fire, claws, and shrieking terror.", 248, 1892, 3, 4);
vazruden_the_herald:setLoot({}); 
instance:addEncounter(vazruden_the_herald); 

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.TBC, instance, false);