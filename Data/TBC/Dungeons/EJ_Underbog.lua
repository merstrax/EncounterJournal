local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-CoilfangReservoir.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-CoilfangReservoir.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-CoilfangReservoir.blp";

instance:setAttributes(262, "The Underbog", EJ_Descriptions.Instances["THEUNDERBOG"], 564, bgFile, btnFile, loreFile, DifficultyUtil.ID.DungeonMythic);
instance.hasLootHeroic = true;

local hungarfen = EJ_Data:CreateEncounter();
hungarfen:setAttributes("Hungarfen", "Unlike his ally, Quagmirran, the great fungal giant Hungarfen has thus far eluded enslavement by the naga. Nonetheless, he remains aggressive to all outsiders who tread into the deepest caverns of Zangarmarsh. Oblivious to the naga's machinations in other parts of the region, Hungarfen spends much of his time tending the Underspore, an ancient plant said to be his most prized possession.", 262, 1946, 1, 4);
hungarfen:setLoot({24450,24452,24451,24413,27631});
hungarfen:setLoot({27746,27745,27743,27748,27744,27747}, true);
instance:addEncounter(hungarfen);

local ghaz_an = EJ_Data:CreateEncounter();
ghaz_an:setAttributes("Ghaz'an", "Historians have long disagreed about whether the immense hydras of Azeroth and Outland share a common ancestor. What is clear, however, is that these ruthless creatures have existed on both realms since ancient times. Ghaz'an is one of the most infamous and fearsome hydras on Outland. Under the control of Lady Vashj, this ravenous fiend has stormed the lower reaches of Zangarmarsh to terrorize the region's denizens.", 262, 1945, 2, 4);
ghaz_an:setLoot({24459,24458,24460,24462,24461});
ghaz_an:setLoot({27760,27759,27755,27758,27761,27757}, true);
instance:addEncounter(ghaz_an);

local swamplord_musel_ek = EJ_Data:CreateEncounter();
swamplord_musel_ek:setAttributes("Swamplord Musel'ek", "To be one of the Broken is to be an outcast. This truth weighs heavy on Swamplord Musel'ek. Although he is a member of the Murkblood Broken, he prefers to roam the caverns beneath Zangarmarsh alone. During one of these recent wanderings, he used his mastery over beasts to enthrall Windcaller Claw, a druid who had been exploring the area in the form of a ferocious bear. Musel'ek has forced Claw to act as a loyal companion who will not judge him for the twisted being he has become.", 262, 1947, 3, 4);
swamplord_musel_ek:setLoot({24454,24455,24457,24456,24453});
swamplord_musel_ek:setLoot({27764,27763,27765,27766,27762,27767}, true);
instance:addEncounter(swamplord_musel_ek);

local the_black_stalker = EJ_Data:CreateEncounter();
the_black_stalker:setAttributes("The Black Stalker", "The marsh walkers of Outland are towering creatures that prowl the wilds, feasting on any lesser creatures they come across. The sporelings of Zangarmarsh tell tales concerning one of these predators, a particularly ruthless beast known as the Black Stalker. Broodmother to all marsh walkers, it is said she emerges from her lair deep in the Underbog only to satisfy her hunger for delicious sporelings.", 262, 1948, 4, 4);
the_black_stalker:setLoot({24481,24466,24465,24463,24464});
the_black_stalker:setLoot({29265,30541,32081,29350,27781,27768,27938,27773,27779,27780,27896,27770,27907,27771,27769,27772}, true);
instance:addEncounter(the_black_stalker);

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.TBC, instance, EJ_Data.Dungeons);