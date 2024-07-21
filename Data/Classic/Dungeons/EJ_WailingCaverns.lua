local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-WailingCaverns.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-WailingCaverns.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-WailingCaverns.blp";

instance:setAttributes(240, "Wailing Caverns", EJ_Descriptions.Instances["WAILINGCAVERNS"], 43, bgFile, btnFile, loreFile, DifficultyUtil.ID.DungeonNormal);

local lady_anacondra = EJ_Data:CreateEncounter();
lady_anacondra:setAttributes("Lady Anacondra", "Scarletleaf was the first to volunteer for Naralex's self-appointed mission to the Barrens. After her master's nightmare shattered her mind, the young acolyte cast aside her name, now envisioning a sinister reptilian future for Azeroth.", 240, 585, 1, 2);
lady_anacondra:setLoot({5404,10412,6446});
instance:addEncounter(lady_anacondra);

local lord_cobrahn = EJ_Data:CreateEncounter();
lord_cobrahn:setAttributes("Lord Cobrahn", "Jarlaxla's skill at harnessing animal forms earned him renown among the druids of the Cenarion Circle. However, the Wailing Caverns' corruption twisted his unique abilities. Now, Jarlaxla has perfected a deadly serpentine form, renaming himself Cobrahn to reflect his vicious newfound power.", 240, 586, 3, 2);
lord_cobrahn:setLoot({6465,10410,6460});
instance:addEncounter(lord_cobrahn);

local lord_pythas = EJ_Data:CreateEncounter();
lord_pythas:setAttributes("Lord Pythas", "A childhood friend of Naralex, the warrior Aryn was a quick study in druidism. Despite his training, the acolyte was defenseless against the corruption that would strip away his sanity. Aryn has taken on the name Pythas, combining his impressive melee prowess with his druidic arsenal to vanquish intruders.", 240, 588, 2, 2);
lord_pythas:setLoot({6473,6472});
instance:addEncounter(lord_pythas);

local kresh = EJ_Data:CreateEncounter();
kresh:setAttributes("Kresh", "An ancient resident of the Wailing Caverns, this giant turtle wanders the underground caves, his resilient mind unaffected by Naralex's relentless nightmares. Don't be fooled by his happy disposition;Kresh has thwarted many adventurers who longed to steal his massive shell.", 240, 587, 4, 2);
kresh:setLoot({13245,6447});
instance:addEncounter(kresh);

local skum = EJ_Data:CreateEncounter();
skum:setAttributes("Skum", "Skum first journeyed to the Wailing Caverns for relief from the Barrens' hostile environment. Like many of the caves' other inhabitants, he quickly succumbed to corruption. His veins now pulse with dark energies that have transformed him into a mighty and ruthless beast beyond redemption.", 240, 589, 5, 2);
skum:setLoot({6449,6448});
instance:addEncounter(skum);

local lord_serpentis = EJ_Data:CreateEncounter();
lord_serpentis:setAttributes("Lord Serpentis", "The Druids of the Fang's leader was once Naralex's finest student. His tragic downfall stemmed from his desire to become a shan'do, or \"honored teacher,\" like Naralex. As insanity took root, Serpentis rallied his brethren to his side and formed the Druids of the Fang.", 240, 590, 6, 2);
lord_serpentis:setLoot({5970,10411,6459,6469});
instance:addEncounter(lord_serpentis);

local verdan_the_everliving = EJ_Data:CreateEncounter();
verdan_the_everliving:setAttributes("Verdan the Everliving", "Little is known about this creature prior to Naralex's arrival at the Wailing Caverns. Thought to be the caves' original guardian, Verdan the Everliving could not escape the corruption that befell its home. Verdan is allied with the insane druids and maintains its vigil against those who trespass into its domain.", 240, 591, 7, 2);
verdan_the_everliving:setLoot({6629,6631,6630});
instance:addEncounter(verdan_the_everliving);

local mutanus_the_devourer = EJ_Data:CreateEncounter();
mutanus_the_devourer:setAttributes("Mutanus the Devourer", "From the darkest corners of Naralex's twisted mind, the corruption plaguing the Emerald Dream has manifested in the form of the druid's worst enemy: murlocs. The aberration known as Mutanus has come to the waking world to devour any who seek to liberate Naralex from the Nightmare's clutches.", 240, 592, 8, 2);
mutanus_the_devourer:setLoot({6461,6627,6463});
instance:addEncounter(mutanus_the_devourer);

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.CLASSIC, instance, EJ_Data.Dungeons, 2);