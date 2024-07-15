local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-ZulFarrak.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-ZulFarrak.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-ZulFarrak.blp";

instance:setAttributes(241, "Zul'Farrak", EJ_Descriptions.Instances["ZULFARRAK"], 209, bgFile, btnFile, loreFile, DifficultyUtil.ID.DungeonNormal);

local gahz_rilla = EJ_Data:CreateEncounter();
gahz_rilla:setAttributes("Gahz'rilla", "Legend has it that Gahz'rilla was an adored pet of the Old Gods, or even a demigod in her own right. Whatever the truth is, the Sandfury trolls have worshiped this monstrous hydra for thousands of years. Ever wary of the beast's icy wrath, the trolls will only rouse Gahz'rilla when they have plentiful sacrifices to sate the ravenous creature's appetite.", 241, 594, 2, 2);
gahz_rilla:setLoot({9469,9467}); 
instance:addEncounter(gahz_rilla); 

local antu_sul = EJ_Data:CreateEncounter();
antu_sul:setAttributes("Antu'sul", "Antu'sul prefers his sul'lithuz basilisks strong and ruthless. He treats these scaled beasts like family, and he is known to strike down anyone--even fellow trolls--who harm his precious children. Rather than give his opponents a proper burial, Antu'sul allows the basilisks to feast on whoever dares cross him.", 241, 595, 3, 2);
antu_sul:setLoot({9640,9641,9639,9379}); 
instance:addEncounter(antu_sul); 

local witch_doctor_zum_rah = EJ_Data:CreateEncounter();
witch_doctor_zum_rah:setAttributes("Witch Doctor Zum'rah", "The powerful loa Bwonsamdi watches over the spirits of the Darkspear trolls, but many of the Sandfury tribe's fallen members are offered no such protection after death. These tortured spirits obey Zum'rah, a cruel witch doctor who uses his dark magic to force the city's dead into unending service.", 241, 597, 5, 2);
witch_doctor_zum_rah:setLoot({18083,18082}); 
instance:addEncounter(witch_doctor_zum_rah); 

local shadowpriest_sezz_ziz = EJ_Data:CreateEncounter();
shadowpriest_sezz_ziz:setAttributes("Shadowpriest Sezz'ziz", "", 241, 598, 6, 2);
shadowpriest_sezz_ziz:setLoot({9470,9473,9474,9475}); 
instance:addEncounter(shadowpriest_sezz_ziz); 

local chief_ukorz_sandscalp = EJ_Data:CreateEncounter();
chief_ukorz_sandscalp:setAttributes("Chief Ukorz Sandscalp", "Chief Ukorz Sandscalp is obsessed with restoring his tribe to its former glory. He was raised on stories of a time when trolls lorded over their ancient lands without interference from goblins, gnomes, pirates, ogres, and other foreign interlopers. Sandscalp has called on his trusted comrade Ruuzlu to help him begin a new chapter in Sandfury history in the only way their tribe knows how: with swift and blinding violence.", 241, 600, 8, 2);
chief_ukorz_sandscalp:setLoot({9479,9476,9478,9477,11086}); 
instance:addEncounter(chief_ukorz_sandscalp); 

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.CLASSIC, instance, false);