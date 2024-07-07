local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-LowerBlackrockSpire.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-LowerBlackrockSpire.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-LowerBlackrockSpire.blp";

instance:setAttributes(229, "Lower Blackrock Spire", EJ_Descriptions.Instances["LOWERBLACKROCKSPIRE"], 229, bgFile, btnFile, 0, loreFile, EJ_Data.Heroic);

local highlord_omokk = EJ_Data:CreateEncounter();
highlord_omokk:setAttributes("Highlord Omokk", "Omokk rules over the spire's ogres with an iron fist. Many underlings have challenged him to single combat in the hopes of seizing the highlord's title, but all have fallen without landing a solitary blow. This mysterious phenomenon has led to rumors that dark magic is protecting Omokk.", 0.386612, 0.590164, 229, 267, 1, 4523, 252, 4);
highlord_omokk:setLoot({}); 

local shadow_hunter_vosh_gajin = EJ_Data:CreateEncounter();
shadow_hunter_vosh_gajin:setAttributes("Shadow Hunter Vosh'gajin", "Vosh'gajin is renowned for her beauty--and psychotic tendencies--among the trolls. A master of the shadow hunter arts, she wields formidable hexes, curses, and healing magics.", 0.553279, 0.692623, 229, 268, 2, 4525, 251, 4);
shadow_hunter_vosh_gajin:setLoot({}); 

local war_master_voone = EJ_Data:CreateEncounter();
war_master_voone:setAttributes("War Master Voone", "During the Second War, Voone led small strike teams on daring missions into the heart of high elven territory. The cunning troll joined the false Horde because he wanted to be its chief strategist, not because he believed in Blackhand's ideology. Voone sees the splinter faction as an underdog, and he enjoys the satisfaction of overcoming insurmountable odds.", 0.52459, 0.545082, 229, 269, 3, 4527, 250, 4);
war_master_voone:setLoot({}); 

local mother_smolderweb = EJ_Data:CreateEncounter();
mother_smolderweb:setAttributes("Mother Smolderweb", "Centuries ago, the Dark Iron dwarves dug into the lair of Mother Smolderweb, releasing the massive arachnid into the spire's halls. Her brood has continued to swell in number since that time, so much so that even Blackhand's forces fear traveling through Smolderweb's domain.", 0.620736, 0.741415, 229, 270, 4, 4543, 251, 4);
mother_smolderweb:setLoot({}); 

local urok_doomhowl = EJ_Data:CreateEncounter();
urok_doomhowl:setAttributes("Urok Doomhowl", "Doomhowl is the true leader of the spire's ogres. This sinister figure has charmed his trusted aid, Highlord Omokk, with insidious magic to control Doomhowl's minions in his stead. He has gone to great lengths to keep up this charade, ruthlessly killing any ogres who challenge the highlord's rule.", 0.454918, 0.557377, 229, 271, 5, 4552, 253, 4);
urok_doomhowl:setLoot({}); 

local quartermaster_zigris = EJ_Data:CreateEncounter();
quartermaster_zigris:setAttributes("Quartermaster Zigris", "After the First War, the orc hunter Zigris became infamous for tracking down Stormwind refugees and slaughtering them like game. He loathes Blackrock Spire's claustrophobic halls, but he is certain a day will come when he'll hunt in the open air again.", 0.539617, 0.844263, 229, 272, 6, 4568, 254, 4);
quartermaster_zigris:setLoot({}); 

local halycon = EJ_Data:CreateEncounter();
halycon:setAttributes("Halycon", "Halycon comes from a long line of great worgs bred for their ferocity and loyalty. Over the years, the den mother has produced an astonishing number of savage offspring. Rumors have spread that she is a demonic hound gifted to Rend Blackhand by a pit lord of the Burning Legion.", 0.379781, 0.840164, 229, 274, 7, 4572, 254, 4);
halycon:setLoot({}); 

local gizrul_the_slavener = EJ_Data:CreateEncounter();
gizrul_the_slavener:setAttributes("Gizrul the Slavener", "Very few of the Dark Horde have seen the reclusive and unpredictable Gizrul. The beast emerges from his shadowy den only when his mate, Halycon, calls to him. The two monstrous creatures have produced some of the largest--and most ferocious--worgs ever bred in orcish history.", 0.394808, 0.793032, 229, 273, 8, 4584, 254, 4);
gizrul_the_slavener:setLoot({}); 

local overlord_wyrmthalak = EJ_Data:CreateEncounter();
overlord_wyrmthalak:setAttributes("Overlord Wyrmthalak", "The black dragonspawn Wyrmthalak oversees the lower spire's forces as they prepare for their assault against the dwarves. He has no love for the false Horde or its brutish members, and he will sacrifice any number of Blackhand's minions to protect his master, Nefarian.", 0.575137, 0.60041, 229, 275, 9, 4587, 255, 4);
overlord_wyrmthalak:setLoot({}); 

EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), false);