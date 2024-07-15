local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-Gnomeregan.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-Gnomeregan.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-Gnomeregan.blp";

instance:setAttributes(231, "Gnomeregan", EJ_Descriptions.Instances["GNOMERGAN"], 90, bgFile, btnFile, loreFile, DifficultyUtil.ID.DungeonNormal);

local crowd_pummeler_9_60 = EJ_Data:CreateEncounter();
crowd_pummeler_9_60:setAttributes("Crowd Pummeler 9-60", "In Gnomeregan's heyday, inventors would compete for status by pitting their creations against one another. The mekgineer Oglethorpe Obnoticus built an unbeatable robot, and this earned him respect in the high tinker's court. Sicco Thermaplugg stole Obnoticus's blueprints and then made a giant version of the machine. He set his forgery loose, and the horrific results drove the ruling council to banish the innocent Obnoticus. The Crowd Pummeler 9-60 is still one of Thermaplugg's favorite (stolen) inventions.", 231, 381, 4, 2);
crowd_pummeler_9_60:setLoot({9450,9449}); 
instance:addEncounter(crowd_pummeler_9_60); 

local grubbis = EJ_Data:CreateEncounter();
grubbis:setAttributes("Grubbis", "The radioactive gas that flooded the city was meant to anger the troggs and kill the gnomes, and Thermaplugg's plan was brutally effective. One trogg, however, reacted oddly to the substance: Grubbis grew. And grew. It was a side effect that Sicco had not anticipated, but he's never been one to waste valuable (and dangerous) resources. This giant trogg now patrols the tunnels of Gnomeregan. His loyal basilisk pet, Chomper, helps Grubbis sniff out gas leaks, tasty fungi, and even tastier intruders.", 231, 379, 1, 2);
grubbis:setLoot({9445}); 
instance:addEncounter(grubbis); 

local viscous_fallout = EJ_Data:CreateEncounter();
viscous_fallout:setAttributes("Viscous Fallout", "The formerly robust and elegantly complex waterways of Gnomeregan are now an irradiated mess filled with toxic slime. A lone water elemental who had dwelt in the gnomes' aquifer became trapped in the contamination, and the pollution corrupted its pure form. It currently wanders the halls of Gnomeregan in anger and agony, a liquid embodiment of the vile poison of Thermaplugg's betrayal.", 231, 378, 2, 2);
viscous_fallout:setLoot({9454,9453,9452}); 
instance:addEncounter(viscous_fallout); 

local electrocutioner_6000 = EJ_Data:CreateEncounter();
electrocutioner_6000:setAttributes("Electrocutioner 6000", "Mekgineer Thermaplugg is not a patient gnome. Rather than putting his inventions through a battery of tests to determine their safety and effectiveness, he rushes them into the field and moves on to the next project. The Electrocutioner 6000 was his first attempt at harnessing electricity as a weapon via a super-charged mechano-tank. Lieutenant Tom \"Sizzlepants\" Crankle, the only soldier to survive piloting the Electrocutioner, is now something of a hero among the leper gnomes.", 231, 380, 3, 2);
electrocutioner_6000:setLoot({9448,9447,9446}); 
instance:addEncounter(electrocutioner_6000); 

local mekgineer_thermaplugg = EJ_Data:CreateEncounter();
mekgineer_thermaplugg:setAttributes("Mekgineer Thermaplugg", "Murderer, traitor, and self-proclaimed king of the gnomes, the mekgineer Sicco Thermaplugg rules over the radioactive halls of Gnomeregan with a malfunctioning iron fist. His subjects are numerous, vicious, and insane enough to defend their crazed king against any intrusion from the upper world. It is Thermaplugg's madness that makes him so dangerous; he possesses the cunning to destroy everything around him, with no thought for his own life. There is a reason that even the monsters of Gnomeregan fear him.", 231, 382, 5, 2);
mekgineer_thermaplugg:setLoot({9492,9461,9459,9458}); 
instance:addEncounter(mekgineer_thermaplugg); 

instance:generateLootList()
EJ_Data:addInstance(EJ_Data.CLASSIC, instance, false);