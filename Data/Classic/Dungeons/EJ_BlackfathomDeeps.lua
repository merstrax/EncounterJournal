local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-BlackfathomDeeps.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-BlackfathomDeeps.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-BlackfathomDeeps.blp";

instance:setAttributes(227, "Blackfathom Deeps", EJ_Descriptions.Instances["BLACKFATHOMDEEPS"], 48, bgFile, btnFile, 0, loreFile, EJ_Data.Normal);

local ghamoo_ra = EJ_Data:CreateEncounter();
ghamoo_ra:setAttributes("Ghamoo-Ra", "When the Twilight's Hammer cult arrived, its followers roused and imprisoned one of the last peaceful creatures living in Elune's temple. The cult delighted in tormenting the giant turtle for years, flaying its mind and body until it succumbed to madness. Naming the beast Ghamoo-Ra, the cultists attempt to control its savagery in order to protect their lair.", 0.333333, 0.60687, 227, 1667, 1, 9472, 221, 2);
ghamoo_ra:setLoot({});
instance:addEncounter(ghamoo_ra); 

local domina = EJ_Data:CreateEncounter();
domina:setAttributes("Domina", "When Lady Sarevess failed to provide magical protection, Domina sacrificed the naga to empower her own dark ritual. Unlike her predecessor, Domina, Mistress of the Dark, has no fear of Aku'mai and hand feeds the beast countless innocents in order to curry favor with the Old Gods.", 0.11194, 0.389552, 227, 1668, 2, 9476, 221, 2);
domina:setLoot({});
instance:addEncounter(domina); 

local twilight_lord_bathiel = EJ_Data:CreateEncounter();
twilight_lord_bathiel:setAttributes("Twilight Lord Bathiel", "The Twilight's Hammer do not tolerate failure, so the first command Twilight Lord Bathiel gave once he assumed control of Blackfathom Deeps was to throw Lord Kelris into the hungry maw of Aku'mai.  Now, this elemental ascendant commits the depths of his unfathomable power to raising the beast of the Old Gods and covering the world in black.", 0.52388, 0.808209, 227, 1671, 7, 9507, 222, 2);
twilight_lord_bathiel:setLoot({});
instance:addEncounter(twilight_lord_bathiel); 

local aku_mai = EJ_Data:CreateEncounter();
aku_mai:setAttributes("Aku'mai", "Aku'mai, an ancient evil, carries within him a small measure of the Old Gods' power. This three-headed hydra is greatly feared for his mindless savagery and insatiable hunger for living flesh, but the Twilight's Hammer worships him as a divine sign that the Old Gods will soon return.", 0.855224, 0.864179, 227, 1672, 8, 9442, 222, 2);
aku_mai:setLoot({}); 
instance:addEncounter(aku_mai); 

local guardian_of_the_deep = EJ_Data:CreateEncounter();
guardian_of_the_deep:setAttributes("Guardian of the Deep", "Underneath the cursed Moonshrine Ruins, ancient creatures battle for territory. Old Serra'kis was driven from the ruins by The Guardian of the Deep who was seeking new spawning grounds. Now, the Guardian watches over thousands of eggs until they can hatch, and spread throughout the waterways of Azeroth.", 0.586567, 0.308955, 227, 1676, 5, 9502, 223, 2);
guardian_of_the_deep:setLoot({});
instance:addEncounter(guardian_of_the_deep); 

local executioner_gore = EJ_Data:CreateEncounter();
executioner_gore:setAttributes("Executioner Gore", "As Aku'mai's power grows, the need for more sacrifices increases. Dragging screaming innocents to their deaths is Executioner Gore's specialty, and the Twilight's Hammer has been making great use of his services.", 0, 0, 227, 1670, 6, 9515, 319, 4);
executioner_gore:setLoot({}); 
instance:addEncounter(executioner_gore); 

local thruk = EJ_Data:CreateEncounter();
thruk:setAttributes("Thruk", "Thruk brings many valuable qualities to the Twilight's Hammer, but intelligence is not among them. Convinced that slaying the Guardian of the Deep will reveal vast hoards of gold, Thruk's diminutive mind has no room to focus on anything else and he will fillet the flesh of anyone who breaks his concentration.", 0, 0, 227, 1675, 4, 9518, 319, 4);
thruk:setLoot({});
instance:addEncounter(thruk); 

EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), false);