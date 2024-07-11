local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-Maraudon.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-Maraudon.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-Maraudon.blp";

instance:setAttributes(232, "Maraudon", EJ_Descriptions.Instances["MARAUDON"], 349, bgFile, btnFile, loreFile, DifficultyUtil.ID.DungeonNormal);

local noxxion = EJ_Data:CreateEncounter();
noxxion:setAttributes("Noxxion", "Noxxion is a living embodiment of corruption. Theradras ordered her ally Lord Vyletongue to create this putrid elemental to be a powerful servant and a loyal pet to ease the princess's loneliness. Noxxion spreads its toxic essence into areas of Maraudon that have not yet withered under Theradras's malign influence.", 232, 422, 1, 2);
noxxion:setLoot({17746,17744,17745,17702}); 
instance:addEncounter(noxxion); 

local razorlash = EJ_Data:CreateEncounter();
razorlash:setAttributes("Razorlash", "Razorlash was made to accompany Noxxion through Maraudon. In time, this new creation became one of the princess's most cherished servants. Razorlash constantly wanders the caves alongside Noxxion, using thorny tendrils to shred any untainted plant life it can find.", 232, 423, 2, 2);
razorlash:setLoot({17750,17748,17749,17751}); 
instance:addEncounter(razorlash); 

local tinkerer_gizlock = EJ_Data:CreateEncounter();
tinkerer_gizlock:setAttributes("Tinkerer Gizlock", "Tinkerer Gizlock and five other gem hunters snuck into Maraudon to mine its highly prized crystals. Their plan went horribly wrong when satyrs slaughtered everyone in the party save for Gizlock. The goblin, trapped within the caves and driven to the brink of madness, sees himself as the subterranean region's new ruler.", 232, 427, 3, 2);
tinkerer_gizlock:setLoot({17719,17718,17717}); 
instance:addEncounter(tinkerer_gizlock); 

local lord_vyletongue = EJ_Data:CreateEncounter();
lord_vyletongue:setAttributes("Lord Vyletongue", "The satyr lord Vyletongue journeyed into Maraudon's depths after hearing of its corruption. Theradras was wary of the conniving demon at first, but Vyletongue proved his worth by creating an array of wretched minions, such as Noxxion and Razorlash, for the princess.", 232, 424, 4, 2);
lord_vyletongue:setLoot({1775,17754,17752}); 
instance:addEncounter(lord_vyletongue); 

local celebras_the_cursed = EJ_Data:CreateEncounter();
celebras_the_cursed:setAttributes("Celebras the Cursed", "Upon learning of his uncle's tragic fate, the noble Celebras swore to free Zaetar's spirit. Yet the keeper of the grove was not prepared for the horrors that awaited him in Maraudon's shadowy corridors. The dark energies permeating the area quickly overcame Celebras, filling his heart with uncontrollable rage.", 232, 425, 5, 2);
celebras_the_cursed:setLoot({17739,17740,17738}); 
instance:addEncounter(celebras_the_cursed); 

local landslide = EJ_Data:CreateEncounter();
landslide:setAttributes("Landslide", "For years, the ancient mountain giant known as Landslide cultivated brilliant crystal gardens in Maraudon, but Theradras enthralled the behemoth when she took up residence there. This once-stoic giant now lives only to serve his tyrannical new master.", 232, 426, 6, 2);
landslide:setLoot({17736,17734,17737,17943}); 
instance:addEncounter(landslide); 

local rotgrip = EJ_Data:CreateEncounter();
rotgrip:setAttributes("Rotgrip", "Rumor has it that Rotgrip has dwelled in Maraudon's subterranean waters for millennia. The famed dwarven hunter Hemet Nesingwary once proclaimed that the beast could not be found, and a number of amateur trackers accepted the challenge of seeking out the legendary creature. None of them ever returned.", 232, 428, 7, 2);
rotgrip:setLoot({17732,17728,17730}); 
instance:addEncounter(rotgrip); 

local princess_theradras = EJ_Data:CreateEncounter();
princess_theradras:setAttributes("Princess Theradras", "The earth elemental Theradras, Therazane the Stonemother's sole daughter, resides in Maraudon's inner sanctum. Influenced by the Old Gods, the princess transformed her home into a den of corruption and suffering. Some believe that her foul powers are tied to the spirit of her dead lover, Zaetar. If so, liberating the fallen keeper of the grove might be the only hope of cleansing Maraudon.", 232, 429, 8, 2);
princess_theradras:setLoot({17780,17715,17714,17711,17707,17713,17710});
instance:addEncounter(princess_theradras); 

EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), false);