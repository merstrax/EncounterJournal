local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-RazorfenKraul.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-RazorfenKraul.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-RazorfenKraul.blp";

instance:setAttributes(234, "Razorfen Kraul", EJ_Descriptions.Instances["RAZORFENKRAUL"], 47, bgFile, btnFile, 0, loreFile, DifficultyUtil.ID.DungeonNormal);

local roogug = EJ_Data:CreateEncounter();
roogug:setAttributes("Roogug", "Quilboar society regards the reading of stones and crystals as the highest form of shamanism. Roogug served the Quilboar people for many years, quietly honing his divinative arts. He now serves the Quilboar as the overseer of all geomancers and has amassed a powerful array of crystals with which to dispose of weaker foes. It is only a matter of time before these mystics overrun the Southern Barrens.", 0.872328, 0.410829, 234, 438, 2, 8667, 301, 4);
roogug:setLoot({}); 
instance:addEncounter(roogug); 

local hunter_bonetusk = EJ_Data:CreateEncounter();
hunter_bonetusk:setAttributes("Hunter Bonetusk", "If a hunter's accomplishments are measured by the trophies they return with, Bonetusk would be regarded as one of the best. His cunning aim and animalistic instincts brought his hunting and tracking abilities to new heights, and only the strong stand a chance to survive against this veteran hunter.", 0.807336, 0.51718, 234, 1656, 1, 8646, 301, 4);
hunter_bonetusk:setLoot({}); 
instance:addEncounter(hunter_bonetusk); 

local warlord_ramtusk = EJ_Data:CreateEncounter();
warlord_ramtusk:setAttributes("Warlord Ramtusk", "The commander of the Razorfen military forces, Warlord Ramtusk is a massive aging Quilboar whose thick hide bears the scars of many battles with centaur, harpies, orcs, and even tauren. In his later years, Ramtusk has embraced the company of Quilboar spirit leaders; Aggem Thorncurse and Death Speaker Jargba guide his thoughts from the spirit realm.", 0.574939, 0.305955, 234, 1659, 3, 8660, 301, 4);
warlord_ramtusk:setLoot({}); 
instance:addEncounter(warlord_ramtusk); 

local groyat_the_blind_hunter = EJ_Data:CreateEncounter();
groyat_the_blind_hunter:setAttributes("Groyat, the Blind Hunter", "After years of seclusion, a monstrous creature from deep inside the dark grotto emerged. This gargantuan bat continually feeds on the boar once named Agathelos the Raging, whose dark power was once fueled by continual consumption of bat guano.", 0.0893967, 0.548399, 234, 1660, 4, 8671, 301, 4);
groyat_the_blind_hunter:setLoot({}); 
instance:addEncounter(groyat_the_blind_hunter); 

local charlga_razorflank = EJ_Data:CreateEncounter();
charlga_razorflank:setAttributes("Charlga Razorflank", "The leader (or \"crone\") of the Razorfen tribes is Charlga Razorflank, a quilboar whose experimental and powerful Geomancy practices are second to none. Her meteoric rise to power and the rapidly increasing violence between quilboar tribesmen can only lead to one thing: war.", 0.219597, 0.311669, 234, 1661, 5, 8682, 301, 4);
charlga_razorflank:setLoot({});
instance:addEncounter(charlga_razorflank); 

EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), false);