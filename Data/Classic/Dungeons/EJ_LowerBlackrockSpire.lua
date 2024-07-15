local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-BlackrockSpire.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-BlackrockSpire.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-BlackrockSpire.blp";

instance:setAttributes(229, "Lower Blackrock Spire", EJ_Descriptions.Instances["LOWERBLACKROCKSPIRE"], 229, bgFile, btnFile, loreFile, DifficultyUtil.ID.DungeonMythic);

local highlord_omokk = EJ_Data:CreateEncounter();
highlord_omokk:setAttributes("Highlord Omokk", "Omokk rules over the spire's ogres with an iron fist. Many underlings have challenged him to single combat in the hopes of seizing the highlord's title, but all have fallen without landing a solitary blow. This mysterious phenomenon has led to rumors that dark magic is protecting Omokk.", 229, 267, 1, 4);
highlord_omokk:setLoot({13170,13169,13168,13166,13167,16670});
instance:addEncounter(highlord_omokk);

local shadow_hunter_vosh_gajin = EJ_Data:CreateEncounter();
shadow_hunter_vosh_gajin:setAttributes("Shadow Hunter Vosh'gajin", "Vosh'gajin is renowned for her beauty--and psychotic tendencies--among the trolls. A master of the shadow hunter arts, she wields formidable hexes, curses, and healing magics.", 229, 268, 2, 4);
shadow_hunter_vosh_gajin:setLoot({12626,13257,13255,12651,12653,16712});
instance:addEncounter(shadow_hunter_vosh_gajin); 

local war_master_voone = EJ_Data:CreateEncounter();
war_master_voone:setAttributes("War Master Voone", "During the Second War, Voone led small strike teams on daring missions into the heart of high elven territory. The cunning troll joined the false Horde because he wanted to be its chief strategist, not because he believed in Blackhand's ideology. Voone sees the splinter faction as an underdog, and he enjoys the satisfaction of overcoming insurmountable odds.", 229, 269, 3, 4);
war_master_voone:setLoot({22231,13179,13177,12582,28972,16676});
instance:addEncounter(war_master_voone); 

local mother_smolderweb = EJ_Data:CreateEncounter();
mother_smolderweb:setAttributes("Mother Smolderweb", "Centuries ago, the Dark Iron dwarves dug into the lair of Mother Smolderweb, releasing the massive arachnid into the spire's halls. Her brood has continued to swell in number since that time, so much so that even Blackhand's forces fear traveling through Smolderweb's domain.", 229, 270, 4, 4);
mother_smolderweb:setLoot({13244,13213,13183,16715}); 
instance:addEncounter(mother_smolderweb); 

--Crystal Fang

local urok_doomhowl = EJ_Data:CreateEncounter();
urok_doomhowl:setAttributes("Urok Doomhowl", "Doomhowl is the true leader of the spire's ogres. This sinister figure has charmed his trusted aid, Highlord Omokk, with insidious magic to control Doomhowl's minions in his stead. He has gone to great lengths to keep up this charade, ruthlessly killing any ogres who challenge the highlord's rule.", 229, 271, 5, 4);
urok_doomhowl:setLoot({13258,22232,13259,13178,15867});
instance:addEncounter(urok_doomhowl); 

local quartermaster_zigris = EJ_Data:CreateEncounter();
quartermaster_zigris:setAttributes("Quartermaster Zigris", "After the First War, the orc hunter Zigris became infamous for tracking down Stormwind refugees and slaughtering them like game. He loathes Blackrock Spire's claustrophobic halls, but he is certain a day will come when he'll hunt in the open air again.", 229, 272, 6, 4);
quartermaster_zigris:setLoot({13253,13252});
instance:addEncounter(quartermaster_zigris); 

local halycon = EJ_Data:CreateEncounter();
halycon:setAttributes("Halycon", "Halycon comes from a long line of great worgs bred for their ferocity and loyalty. Over the years, the den mother has produced an astonishing number of savage offspring. Rumors have spread that she is a demonic hound gifted to Rend Blackhand by a pit lord of the Burning Legion.", 229, 274, 7, 4);
halycon:setLoot({22313,13210,13211,13212}); 
instance:addEncounter(halycon); 

local gizrul_the_slavener = EJ_Data:CreateEncounter();
gizrul_the_slavener:setAttributes("Gizrul the Slavener", "Very few of the Dark Horde have seen the reclusive and unpredictable Gizrul. The beast emerges from his shadowy den only when his mate, Halycon, calls to him. The two monstrous creatures have produced some of the largest--and most ferocious--worgs ever bred in orcish history.", 229, 273, 8, 4);
gizrul_the_slavener:setLoot({13206,13208,13205,16718}); 
instance:addEncounter(gizrul_the_slavener); 

local overlord_wyrmthalak = EJ_Data:CreateEncounter();
overlord_wyrmthalak:setAttributes("Overlord Wyrmthalak", "The black dragonspawn Wyrmthalak oversees the lower spire's forces as they prepare for their assault against the dwarves. He has no love for the false Horde or its brutish members, and he will sacrifice any number of Blackhand's minions to protect his master, Nefarian.", 229, 275, 9, 4);
overlord_wyrmthalak:setLoot({13143,13162,13164,22321,13163,13148,13161,16679});
instance:addEncounter(overlord_wyrmthalak); 

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.CLASSIC, instance, false);