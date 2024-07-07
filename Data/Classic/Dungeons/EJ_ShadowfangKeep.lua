local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-ShadowfangKeep.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-ShadowfangKeep.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-ShadowfangKeep.blp";

instance:setAttributes(64, "Shadowfang Keep", EJ_Descriptions.Instances["SHADOWFANGKEEP"], 33, bgFile, btnFile, 0, loreFile, DifficultyUtil.ID.DungeonNormal);

local baron_ashbury = EJ_Data:CreateEncounter();
baron_ashbury:setAttributes("Baron Ashbury", "Slain by worgen and raised into undeath by the Forsaken, the traitor Baron Ashbury toys with his foes, keeping them alive so he can inflict maximum pain and suffering.", 0.66467136, 0.732036, 64, 1069, 1, 2107, 310, 2);
baron_ashbury:setLoot({}); 
instance:addEncounter(baron_ashbury); 

local baron_silverlaine = EJ_Data:CreateEncounter();
baron_silverlaine:setAttributes("Baron Silverlaine", "Baron Silverlaine was master of the keep before it fell to Arugal's worgen. Now his cursed spirit calls upon the very wolf-beasts that slaughtered him to punish further trespassers into his home.", 0.30439156, 0.7739521, 64, 1070, 2, 2118, 311, 2);
baron_silverlaine:setLoot({}); 
instance:addEncounter(baron_silverlaine); 

local commander_springvale = EJ_Data:CreateEncounter();
commander_springvale:setAttributes("Commander Springvale", "A loyal soldier, the ghost of Commander Springvale haunts the council room, using unholy strikes to avenge his lord, Baron Silverlaine.", 0.2804395, 0.5973054, 64, 1071, 3, 2137, 310, 2);
commander_springvale:setLoot({}); 
instance:addEncounter(commander_springvale); 

local lord_walden = EJ_Data:CreateEncounter();
lord_walden:setAttributes("Lord Walden", "Godfrey's right-hand man, the arrogant Lord Walden vowed to pay any price, including death, to serve his compatriot. Now among the undead, Walden intends to keep his word, attacking adversaries with ice and venom.", 0.5449104, 0.53742516, 64, 1073, 4, 2156, 313, 2);
lord_walden:setLoot({}); 
instance:addEncounter(lord_walden); 

local lord_godfrey = EJ_Data:CreateEncounter();
lord_godfrey:setAttributes("Lord Godfrey", "Drawing from his past as a Gilnean noble and Forsaken agent, the cunning and resourceful Lord Godfrey wields dual pistols and commands relentless flesh-eating ghouls.", 0.6846315, 0.3353293, 64, 1072, 5, 2164, 315, 2);
lord_godfrey:setLoot({}); 
instance:addEncounter(lord_godfrey); 

EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), false);