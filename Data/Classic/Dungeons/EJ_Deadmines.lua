local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-Deadmines.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-Deadmines.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-Deadmines.blp";

instance:setAttributes(63, "Deadmines", EJ_Descriptions.Instances["DEADMINES"], 36, bgFile, btnFile, loreFile, DifficultyUtil.ID.DungeonNormal);

local glubtok = EJ_Data:CreateEncounter();
glubtok:setAttributes("Glubtok", "In a fit of rage, Glubtok unleashed his potent magical abilities and reduced his ogre mound to ash. Upon hearing of his destructive talents, the Defias hired the massive ogre mage to supervise their laborers as head foreman of the Deadmines.", 63, 1064, 1, 2);
glubtok:setLoot({}); 
instance:addEncounter(glubtok); 

local helix_gearbreaker = EJ_Data:CreateEncounter();
helix_gearbreaker:setAttributes("Helix Gearbreaker", "Formerly a craftsman in the Bilgewater Cartel, Helix was offered a sum eclipsing anything he would ever make as a nameless Horde engineer to ply his trade for the Defias Brotherhood. He was quick to accept the job and renounce his former loyalties... just as any resourceful goblin would.", 63, 1065, 2, 2);
helix_gearbreaker:setLoot({}); 
instance:addEncounter(helix_gearbreaker); 

local foe_reaper_5000 = EJ_Data:CreateEncounter();
foe_reaper_5000:setAttributes("Foe Reaper 5000", "Defias engineers have spent many long days perfecting a new harvester model based on the Foe Reaper 4000 unit. Once it is completed, the brotherhood believes this mechanized terror will be able to slice through Stormwind's armored soldiers like a scythe through wheat.", 63, 1063, 3, 2);
foe_reaper_5000:setLoot({}); 
instance:addEncounter(foe_reaper_5000); 

local admiral_ripsnarl = EJ_Data:CreateEncounter();
admiral_ripsnarl:setAttributes("Admiral Ripsnarl", "When James Harrington became afflicted by the worgen curse, he destroyed his loving family and maritime career in one chilling night of bloodlust. Taking on the name Ripsnarl, he fled into Westfall and later agreed to command the Defias Brotherhood's fearsome juggernaut.", 63, 1062, 4, 2);
admiral_ripsnarl:setLoot({}); 
instance:addEncounter(admiral_ripsnarl); 

local captain_cookie = EJ_Data:CreateEncounter();
captain_cookie:setAttributes("\"Captain\" Cookie", "Cookie proclaimed himself captain of the Defias Brotherhood's juggernaut following its previous commander's death. Although he still performs his official duties as chief cook, anyone who questions the validity of his captain title has been known to come down with a severe case of food poisoning.", 63, 1060, 5, 2);
captain_cookie:setLoot({}); 
instance:addEncounter(captain_cookie); 

local vanessa_vancleef = EJ_Data:CreateEncounter();
vanessa_vancleef:setAttributes("Vanessa VanCleef", "As a young girl, Vanessa witnessed the gruesome death of her father and former Defias Brotherhood leader, Edwin VanCleef. She has since taken up his mantle of leadership, plotting to exact vengeance on Stormwind from the dark corridors of the Defias's stronghold in the Deadmines.", 63, 1081, 6, 2);
vanessa_vancleef:setLoot({});
instance:addEncounter(vanessa_vancleef); 

EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), false);