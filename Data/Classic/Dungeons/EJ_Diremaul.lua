local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-DireMaul.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-DireMaul.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-DireMaul.blp";

instance:setAttributes(230, "Dire Maul", EJ_Descriptions.Instances["DIREMAUL"], 429, bgFile, btnFile, 0, loreFile, DifficultyUtil.ID.DungeonMythic);

local zevrim_thornhoof = EJ_Data:CreateEncounter();
zevrim_thornhoof:setAttributes("Zevrim Thornhoof", "Desperate to show his worth to the Burning Legion, Zevrim Thornhoof told his masters he could enslave the formidable ancients who still roamed Dire Maul. When his own power proved insufficient, Thornhoof turned to other living creatures for additional energy, butchering them atop his sacrificial altar and harvesting their essence in their final, agonizing moments.", 0.575137, 0.743852, 230, 343, 1, 4655, 240, 4);
zevrim_thornhoof:setLoot({18319,18313,18323,18306,18308}); 
instance:addEncounter(); 

local hydrospawn = EJ_Data:CreateEncounter();
hydrospawn:setAttributes("Hydrospawn", "When the satyr Zevrim Thornhoof sought to control the elementals in Dire Maul, he focused on Hydrospawn, who calmly resided in the pool beneath his altar. As he performed his profane sacrificial rituals, the elemental grew agitated and restless, striking out at Thornhoof's demonic minions. As the years passed, Thornhoof used his victims' energies to whip Hydrospawn into unbridled fury, little by little binding its will to the satyr's commands.", 0.536885, 0.715164, 230, 344, 2, 5004, 240, 4);
hydrospawn:setLoot({18322,18317,18324,18307,18305}); 
instance:addEncounter(); 

local lethtendris = EJ_Data:CreateEncounter();
lethtendris:setAttributes("Lethtendris", "Dire Maul's warped energy drew Lethtendris from afar, giving her hope of satisfying her unbearable craving for arcane magic. Using the sinews and ligaments of sacrificial victims, she constructed a web to siphon the corrupt power out of the east wing. To her delight, she discovered that the device has the capacity to gather vast reserves of overwhelming strength, enough to destroy all of her enemies.", 0.438525, 0.481557, 230, 345, 3, 4994, 239, 4);
lethtendris:setLoot({18325,18311,18302}); 
instance:addEncounter(); 

local alzzin_the_wildshaper = EJ_Data:CreateEncounter();
alzzin_the_wildshaper:setAttributes("Alzzin the Wildshaper", "Alzzin the Wildshaper seeks nothing less than the total corruption of Feralas, but until he discovered the Shrine of Eldretharr in Dire Maul, he had little success. With the power of enslaved ancients at his command, Alzzin concentrated the vitality of the surrounding forest into his lair, allowing him to manipulate it at will.", 0.56694, 0.288934, 230, 346, 4, 4921, 240, 4);
alzzin_the_wildshaper:setLoot({18328,18327,18309,18318,18312,18326}); 
instance:addEncounter(); 

local tendris_warpwood = EJ_Data:CreateEncounter();
tendris_warpwood:setAttributes("Tendris Warpwood", "Tendris Warpwood was a staunch defender of Eldre'Thalas, his heart inexorably entwined with the fate of the city. When the Sundering shattered the land, his resolve never wavered, but as corruption seeped into the ruins over the next 10,000 years, so too did it infect the ancient's spirit.", 0.336066, 0.536885, 230, 350, 5, 4913, 236, 4);
tendris_warpwood:setLoot({18390,18393,18353,18352}); 
instance:addEncounter(); 

local illyanna_ravenoak = EJ_Data:CreateEncounter();
illyanna_ravenoak:setAttributes("Illyanna Ravenoak", "Illyanna Ravenoak, along with her faithful companion Ferra, was once Prince Tortheldrin's most valued hunter, until she refused to carry out her leader's order to execute her friends. As punishment, he killed Illyanna and her bear, but he used his demonic power to bind their spirits to their bodies, condemning them to remain in Dire Maul as undead protectors.", 0.203552, 0.77664, 230, 347, 6, 4906, 236, 4);
illyanna_ravenoak:setLoot({18386,18383,18349,18347}); 
instance:addEncounter(); 

local magister_kalendris = EJ_Data:CreateEncounter();
magister_kalendris:setAttributes("Magister Kalendris", "When Prince Tortheldrin demanded the slaughter of the majority of his subjects, his most loyal lieutenants were tasked with executing his will. Magister Kalendris murdered many unsuspecting Shen'dralar without hesitation, but one of the doomed elves mortally wounded him during a destructive battle. Despite his demise, Kalendris's spirit still roams Dire Maul as a defender of Tortheldrin's rule.", 0.338798, 0.45082, 230, 348, 7, 4836, 237, 4);
magister_kalendris:setLoot({18374,18397,18371,18350,18351}); 
instance:addEncounter(); 

local immol_thar = EJ_Data:CreateEncounter();
immol_thar:setAttributes("Immol'thar", "In a desperate bid to restore the power and immortality they lost when the Well of Eternity was destroyed, the Shen'dralar summoned a demon into the western wing of Dire Maul and captured him within a force field, allowing them to use the void terror's energy for their own spells. Unable to fight back or even move for nearly 10,000 years, Immol'thar could only watch and wait for the day he might break free and rend the flesh of his captors.", 0.349727, 0.57582, 230, 349, 8, 4822, 238, 4);
immol_thar:setLoot({18389,18385,18377,18391,18394,18379,18384,18381,18370,18372}); 
instance:addEncounter(); 

local prince_tortheldrin = EJ_Data:CreateEncounter();
prince_tortheldrin:setAttributes("Prince Tortheldrin", "After the Well of Eternity's destruction, Prince Tortheldrin maintained control over the surviving Shen'dralar by imprisoning a demon in the ruins of Eldre'Thalas and letting his subjects siphon its strength. The exposure to demonic power twisted Tortheldrin's mind, and when the creature faltered, the prince ordered the deaths of many of his vassals so only he and his most fanatical followers would be left to enjoy the corrupt energy.", 0.622951, 0.231557, 230, 361, 9, 4752, 238, 4);
prince_tortheldrin:setLoot({18382,18373,18375,18378,18380,18395}); 
instance:addEncounter(); 

local guard_mol_dar = EJ_Data:CreateEncounter();
guard_mol_dar:setAttributes("Guard Mol'dar", "Mol'dar is a zealously loyal guard from the Gordok ogres. He is convinced King Gordok gifted him with a pair of enchanted gauntlets that have enabled him to become his people's arm wrestling champion for six years running. In truth, King Gordok threw the powerful armor away; Mol'dar simply found it first.", 0.695355, 0.760246, 230, 362, 10, 4740, 235, 4);
guard_mol_dar:setLoot({18496,18497,18494,18493,18498,18268,18450,18451,18458,18459,18464,18462,18463,18460}); 
instance:addEncounter(guard_mol_dar); 

local stomper_kreeg = EJ_Data:CreateEncounter();
stomper_kreeg:setAttributes("Stomper Kreeg", "On more than one occasion, skulking assassins have met their doom after accidentally disturbing Kreeg's ale mug. Though he's often passed out drunk on duty, nothing rouses the ogre into a berserker fury faster than the sound of his precious drink splattering on the stone floor.", 0.612022, 0.692623, 230, 363, 11, 4734, 235, 4);
stomper_kreeg:setLoot({18425,18269,18284}); 
instance:addEncounter(stomper_kreeg); 

local guard_fengus = EJ_Data:CreateEncounter();
guard_fengus:setAttributes("Guard Fengus", "Ever since Cho'Rush the Observer told him he was destined to meet a mate while on duty, Fengus has spent almost every waking moment patrolling Gordok territory.", 0.494536, 0.780738, 230, 364, 12, 4725, 235, 4);
guard_fengus:setLoot({18450,18451,18458,18459,18464,18462,18463,18460}); 
instance:addEncounter(guard_fengus); 

local guard_slip_kik = EJ_Data:CreateEncounter();
guard_slip_kik:setAttributes("Guard Slip'kik", "Some might think Slip'kik is merely cautious, but he's also lazy. Rather than challenge King Gordok directly, Slip'kik tinkers with traps and old, broken magical devices, hoping to eventually deliver a coup de grace without an ounce of risk or a drop of sweat.", 0.266393, 0.571721, 230, 365, 13, 4716, 235, 4);
guard_slip_kik:setLoot({18496,18497,18494,18493,18498,18450,18451,18458,18459,18464,18462,18463,18460}); 
instance:addEncounter(guard_slip_kik); 

local captain_kromcrush = EJ_Data:CreateEncounter();
captain_kromcrush:setAttributes("Captain Kromcrush", "Even among ogres, Captain Kromcrush is infamous for his hair-trigger rage toward anyone who dares to insult him or King Gordok. He crushes dissent ruthlessly, but he has still less patience for those who continue to spread the rumor of his torrid affair with a gnoll long ago.", 0.318306, 0.506148, 230, 366, 14, 4705, 235, 4);
captain_kromcrush:setLoot({18507,18505,18503,18502}); 
instance:addEncounter(captain_kromcrush); 

local cho_rush_the_observer = EJ_Data:CreateEncounter();
cho_rush_the_observer:setAttributes("Cho'Rush the Observer", "Cho'Rush doesn't usually take sides, but when Ulrok was rising to power, it was clear there was nobody who could challenge him. The king quickly appointed Cho'Rush as his chief advisor, believing that his twin heads would make him twice as resourceful as the average ogre.", 0.319542, 0.303693, 230, 367, 15, 4673, 235, 4);
cho_rush_the_observer:setLoot({18490,18484,18485,18483}); 
instance:addEncounter(cho_rush_the_observer); 

local king_gordok = EJ_Data:CreateEncounter();
king_gordok:setAttributes("King Gordok", "To rule the Gordok ogres, one must simply proclaim oneself king... and then destroy all who might disagree. King Gordok--then merely known as Ulrok--solidified his power by convincing a dozen of his people's strongest warriors to challenge the king at the same time. The wild melee left most of the contestants dead or wounded, and Ulrok's blade easily cut down the survivors and the battle-weary king. To this day, Gordok ogres speak in hushed tones about the \"Day of Da Blood.\"", 0.319544, 0.229482, 230, 368, 16, 4666, 235, 4);
king_gordok:setLoot({18526,18525,18527,18524,18521,18522,18523,18520});
instance:addEncounter(king_gordok); 

EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), false);