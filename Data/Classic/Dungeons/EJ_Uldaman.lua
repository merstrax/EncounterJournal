local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-Uldaman.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-Uldaman.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-Uldaman.blp";

instance:setAttributes(239, "Uldaman", EJ_Descriptions.Instances["ULDAMAN"], 70, bgFile, btnFile, 0, loreFile, EJ_Data.Normal);

local obsidian_sentinel = EJ_Data:CreateEncounter();
obsidian_sentinel:setAttributes("Obsidian Sentinel", "The Obsidian Sentinel was responsible for guarding Uldaman's secrets until it was corrupted by an unknown force. Originally crafted from the same stone as the halls of Uldaman itself, this keeper has had the majority of its body replaced with dark glass capable of reflecting spells. Whatever was responsible for the Obsidian Sentinel's transformation must be incredibly potent, for it is not easy to alter the enchanted stone of a titan construct.", 0.289425, 0.597403, 239, 1887, 4, 6448, 230, 4);
obsidian_sentinel:setLoot({}); 

local revelosh = EJ_Data:CreateEncounter();
revelosh:setAttributes("Revelosh", "Some luminaries in Ironforge's prestigious Explorers' League have theorized an ancestral link between their people and the troggs, and pointed towards the troggs' hoarding of titan artifacts as a reflection of the dwarves' own reverence for such wondrous devices. If that is true, the trogg known as Revelosh can be considered the trogg equivalent of an archaeologist, although any historically minded adventurers who encounter him would be more inclined to call him a thief.", 0.534153, 0.72541, 239, 547, 1, 4820, 230, 2);
revelosh:setLoot({}); 

local the_lost_dwarves = EJ_Data:CreateEncounter();
the_lost_dwarves:setAttributes("The Lost Dwarves", "Seeking fame and, more importantly, fortune, the three brothers Eric, Olaf, and Baelog took on a contract from the Explorers' League to delve deep into the halls of Uldaman and clear a path for a group of researchers. For these three dwarves, however, \"clearing a path\" unfortunately entailed \"getting hopelessly lost in an ancient labyrinth.\" Proud dwarves to the end, they fight to prevent the secrets of Uldaman and the Explorers' League from falling into the hands of the Horde.", 0.584699, 0.920082, 239, 548, 2, 4869, 230, 2);
the_lost_dwarves:setLoot({}); 

local ironaya = EJ_Data:CreateEncounter();
ironaya:setAttributes("Ironaya", "The titans did not construct the Uldaman complex directly, but utilized various servants to create its megalithic halls. The Pantheon entrusted the watcher Ironaya with overseeing the construction and maintenance of Uldaman, but as time passed, the once awe-inspiring vault fell to ruin. Within the map chamber, Ironaya has spent millennia in a form of stasis, analyzing the original master plan drawn up by Khaz'goroth and attempting to find a way to restore the complex to its original functionality.", 0.372951, 0.739754, 239, 549, 3, 4876, 230, 2);
ironaya:setLoot({}); 

local ancient_stone_keeper = EJ_Data:CreateEncounter();
ancient_stone_keeper:setAttributes("Ancient Stone Keeper", "One of many golems that staffed and operated the great titan vault, the Ancient Stone Keeper was part of a small group that served as an intermediary between the watchers left in control of the facility and their many servants. With the corruption of the Obsidian Sentinel, the Ancient Stone Keeper is the last of its kind, performing its duty by protecting the secrets of the titans as best it can until its inevitable shutdown.", 0.47541, 0.440574, 239, 551, 5, 4879, 230, 2);
ancient_stone_keeper:setLoot({}); 

local galgann_firehammer = EJ_Data:CreateEncounter();
galgann_firehammer:setAttributes("Galgann Firehammer", "Reacting to the discovery of Uldaman by Bronzebeard dwarves, the Dark Iron clan mounted an invasion of the vault to stop their ancestral foes from accessing the powerful artifacts within. Galgann Firehammer, a senator from Shadowforge City, was sent to oversee the continued excavation of Uldaman so that the emperor may harness the artifacts' destructive potential against the Dark Irons' enemies.", 0.26776, 0.327869, 239, 552, 6, 4880, 230, 2);
galgann_firehammer:setLoot({}); 

local grimlok = EJ_Data:CreateEncounter();
grimlok:setAttributes("Grimlok", "In trogg society, the biggest, strongest, and most vicious trogg often becomes chieftain through displays of power. Grimlok is a comparative genius in that he has maintained control of the Stonevault troggs through intimidation and what might be considered crude psychological warfare. Having trained a deadly basilisk, Grimlok uses the threat of petrification by his beast to keep any would-be usurpers in line.", 0.219945, 0.256148, 239, 553, 7, 4886, 230, 2);
grimlok:setLoot({}); 

local archaedas = EJ_Data:CreateEncounter();
archaedas:setAttributes("Archaedas", "Deep within Uldaman is a chamber containing one of the greatest treasures of the titans, created by Norgannon himself. However, thus far no explorers have managed to gain access to the relic, for any attempt at doing so activates the great watcher Archaedas, an immense guardian who easily dispatches treasure seekers through his powerful attacks and a veritable army of servants. Crafted from some of the oldest, strongest stone taken from Uldaman's depths, Archaedas is a foe as formidable as he is ancient.", 0.553279, 0.504098, 239, 554, 8, 4894, 231, 2);
archaedas:setLoot({}); 

EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), false);