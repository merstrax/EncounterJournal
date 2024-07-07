local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-BlackrockDepths.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-BlackrockDepths.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-BlackrockDepths.blp";

--id, name, desc, mapID, bgFile, btnFile, smBtnFile, loreFile, difficultyID
instance:setAttributes(228, "Blackrock Depths", EJ_Descriptions.Instances["BLACKROCKDEPTHS"], 230, bgFile, btnFile, 0, loreFile, EJ_Data.Heroic);

--name, desc, mapX, mapY, instanceID, encounterID, orderIndex, rootSectionID, mapID, difficultyID
local high_interrogator_gerstahn = EJ_Data:CreateEncounter();
high_interrogator_gerstahn:setAttributes("High Interrogator Gerstahn", "The Twilight's Hammer cultist Gerstahn has always indulged in life's finer things: exotic foods, fine clothes, and gem-encrusted torture tools. Day and night, her prisoners' bloodcurdling cries echo throughout the Dark Iron clan's infamous Detention Block. Gerstahn proudly calls this horrific noise her symphony of screams, and she is always eager to add another voice to the chorus.", 0.474044, 0.922131, 228, 227, 1, 4630, 242, 4);
high_interrogator_gerstahn:setLoot({35, 2508, 2512});
high_interrogator_gerstahn:addSection(EJ_Data:CreateSection("Mana Burn", "High Interrogator Gerstahn inflicts Shadow damage to a player and drains a portion of their mana.", 2, 0, 136170, 0, 64, -1), 1, nil);
high_interrogator_gerstahn:addSection(EJ_Data:CreateSection("Psychic Scream", "High Interrogator Gerstahn causes all players within $13704a1 yards to run in fear for $13704d.", 2, 0, 136184, 0, 128, -1), 2, nil);
instance:addEncounter(high_interrogator_gerstahn);

local lord_roccor = EJ_Data:CreateEncounter();
lord_roccor:setAttributes("Lord Roccor", "Lord Roccor loathes the scheming and backstabbing of his fellow fire elementals. To avoid serving alongside his kind in the Molten Core, the mighty being purposefully angered the Firelord. Roccor's risky gambit paid off: he was expelled from the core and forced to guard Blackrock Depths in isolation.", 0.556011, 0.670082, 228, 228, 2, 4472, 242, 4);
lord_roccor:setLoot({}); 
instance:addEncounter(lord_roccor);

local houndmaster_grebmar = EJ_Data:CreateEncounter();
houndmaster_grebmar:setAttributes("Houndmaster Grebmar", "Grebmar Fleabeard's hounds are the only family he's ever known. Long ago, the orphaned dwarf began breeding canines to serve as companions and guard dogs. When the houndmaster isn't patrolling Blackrock Depths with his loyal beasts, he often treats them to the Grim Guzzler's finest Dark Iron ale.", 0.535002, 0.573466, 228, 229, 3, 4626, 242, 4);
houndmaster_grebmar:setLoot({}); 
instance:addEncounter(houndmaster_grebmar);

local ring_of_law = EJ_Data:CreateEncounter();
ring_of_law:setAttributes("Ring of Law", "There is only one punishment for crimes committed against the Dark Iron dwarves: death. Ancient tradition calls for the guilty to pay the blood price in the Ring of the Law by battling savage creatures gathered from across Azeroth. To date, it is unknown if anyone has ever survived this brutal crucible.", 0.497785, 0.645796, 228, 230, 4, 4547, 242, 4);
ring_of_law:setLoot({}); 
instance:addEncounter(ring_of_law);

local pyromancer_loregrain = EJ_Data:CreateEncounter();
pyromancer_loregrain:setAttributes("Pyromancer Loregrain", "Once a respected member of the Earthen Ring, Loregrain joined the Twilight's Hammer cult for reasons that remain a mystery to his former allies. He eventually journeyed to Blackrock Depths, where he took a sudden interest in the famed Dark Iron architect Franclorn Forgewright. The purpose of his current obsession is unclear, but Loregrain remains loyal to his cult and an enemy of all who oppose it.", 0.54918, 0.94877, 228, 231, 5, 4496, 243, 4);
pyromancer_loregrain:setLoot({}); 
instance:addEncounter(pyromancer_loregrain);

local lord_incendius = EJ_Data:CreateEncounter();
lord_incendius:setAttributes("Lord Incendius", "Baron Geddon taught Incendius to harness his destructive powers, but the baron never expected his protege to grow so lethally efficient. Increasingly wary that Incendius might usurp him, Geddon sent the blazing elemental out of the Molten Core to guard the Dark Iron dwarves' fabled Black Anvil.", 0.564208, 0.311475, 228, 232, 6, 4476, 242, 4);
lord_incendius:setLoot({}); 
instance:addEncounter(lord_incendius);

local warder_stilgiss = EJ_Data:CreateEncounter();
warder_stilgiss:setAttributes("Warder Stilgiss", "After years of dedication to Emperor Thaurissan, the cunning mage Stilgiss was entrusted with protecting his clan's coffers in the Black Vault. The loyal dwarf's close friend Houndmaster Grebmar celebrated the occasion by gifting one of his vicious dogs--Verek--to Stilgiss. The mage has put the beast to good use, keeping it at his side to scare off the vault's would-be thieves.", 0.602459, 0.659836, 228, 233, 7, 4386, 243, 4);
warder_stilgiss:setLoot({}); 
instance:addEncounter(warder_stilgiss);

local fineous_darkvire = EJ_Data:CreateEncounter();
fineous_darkvire:setAttributes("Fineous Darkvire", "Chief Architect Fineous Darkvire earned his title by passing off the ideas of more gifted masons as his own. His arrogance and scheming have drawn the ire of his predecessor, Franclorn Forgewright, from beyond the grave. The ghost of the late chief architect seeks to reclaim his incredibly powerful hammer--Ironfel--from Darkvire before it can be used for ill.", 0.635246, 0.211066, 228, 234, 8, 4538, 242, 4);
fineous_darkvire:setLoot({}); 
instance:addEncounter(fineous_darkvire);

local bael_gar = EJ_Data:CreateEncounter();
bael_gar:setAttributes("Bael'Gar", "The monstrous molten giant Bael'Gar lumbers across the Dark Iron Highway, a stunning feat of dwarven engineering carved into Blackrock Depths. Ragnaros pulled the giant from the heart of the Firelands to guard a massive sealed door at one end of the highway. According to legend, only the Firelord and the Dark Iron clan's highest-ranking members know what lies beyond the mysterious gate.", 0.251366, 0.534836, 228, 235, 9, 4532, 242, 4);
bael_gar:setLoot({}); 
instance:addEncounter(bael_gar);

local general_angerforge = EJ_Data:CreateEncounter();
general_angerforge:setAttributes("General Angerforge", "Through a lifetime of study, General Angerforge has become an expert on dwarven military history and tactics. He recently incurred Emperor Dagran Thaurissan's fury by writing a scathing treatise on his clan's failures in past conflicts. This political blunder aside, Angerforge is a Dark Iron to his core. He will bleed--and die, if necessary--to protect his people and his emperor.", 0.363388, 0.82377, 228, 236, 10, 4508, 243, 4);
general_angerforge:setLoot({}); 
instance:addEncounter(general_angerforge);

local golem_lord_argelmach = EJ_Data:CreateEncounter();
golem_lord_argelmach:setAttributes("Golem Lord Argelmach", "Argelmach's lifelong obsession with immortality drove him to forge enchanted constructs in his own image. Rumor has it that he has also dabbled in some form of black magic that would allow the golem lord's new creations to act as vessels for his spirit should his flesh-and-blood body be destroyed.", 0.364754, 0.651639, 228, 237, 11, 4501, 243, 4);
golem_lord_argelmach:setLoot({}); 
instance:addEncounter(golem_lord_argelmach);

local hurley_blackbreath = EJ_Data:CreateEncounter();
hurley_blackbreath:setAttributes("Hurley Blackbreath", "To say Blackbreath is a regular at the Grim Guzzler would be something of an understatement. In over a decade, the mischievous drunkard has left the tavern only once to steal a top-secret recipe for Thunderbrew Lager. Blackbreath has occasionally sobered up enough to make the concoction himself, and he claims it grants unimaginable strength and courage.", 0.505668, 0.704778, 228, 238, 12, 4494, 243, 4);
hurley_blackbreath:setLoot({}); 
instance:addEncounter(hurley_blackbreath);

local phalanx = EJ_Data:CreateEncounter();
phalanx:setAttributes("Phalanx", "Until recently, drunken brawls raged within the Grim Guzzler on an almost daily basis. Barkeep Plugger Spazzring has reduced the frequency of these scuffles with Phalanx, a mighty golem bouncer programmed to maintain order in the tavern and eliminate raucous patrons with extreme force.", 0.458206, 0.564745, 228, 239, 13, 4504, 243, 4);
phalanx:setLoot({}); 
instance:addEncounter(phalanx);

local plugger_spazzring = EJ_Data:CreateEncounter();
plugger_spazzring:setAttributes("Plugger Spazzring", "They say that at the Grim Guzzler everyone knows your name. This sense of camaraderie is due to the hard work of Spazzring, a leper gnome who sought a new life in Blackrock Depths after the fall of Gnomeregan. Despite his history of dabbling with evil as a warlock, he takes pride in his job as the tavern's barkeep, making sure that his patrons' mugs never run dry.", 0.47722, 0.657122, 228, 241, 15, 4485, 243, 4);
plugger_spazzring:setLoot({}); 
instance:addEncounter(plugger_spazzring);

local ambassador_flamelash = EJ_Data:CreateEncounter();
ambassador_flamelash:setAttributes("Ambassador Flamelash", "For his unwavering service to Ragnaros, Flamelash ascended to the rank of ambassador to the Dark Iron clan. This depraved being initially despised his dwarven allies, but he has come to respect their penchant for destruction. As a show of solidarity, Flamelash guards the Chamber of Enchantment, a sacred location used by the dwarves to empower their weaponry.", 0.538251, 0.485656, 228, 242, 16, 4482, 243, 4);
ambassador_flamelash:setLoot({}); 
instance:addEncounter(ambassador_flamelash);

local the_seven = EJ_Data:CreateEncounter();
the_seven:setAttributes("The Seven", "Centuries ago, sorcerer-thane Thaurissan and seven of his most powerful Dark Iron allies accidentally summoned Ragnaros into Azeroth and damned their entire clan to enslavement. Although the Seven perished during the ritual, their restless spirits still linger in Blackrock Depths, cursed to serve their elemental master and the current Dark Iron ruler.", 0.538251, 0.247951, 228, 243, 17, 4471, 243, 4);
the_seven:setLoot({}); 
instance:addEncounter(the_seven);

local magmus = EJ_Data:CreateEncounter();
magmus:setAttributes("Magmus", "Ambassador Flamelash charged the molten giant Magmus with guarding Emperor Dagran Thaurissan's throne room, but not even this act put the Dark Iron ruler's concerns to rest. Ever fearful of assassins, the emperor also granted Magmus control over a series of fire-breathing statues outside his royal chambers.", 0.796448, 0.118852, 228, 244, 18, 4480, 243, 4);
magmus:setLoot({}); 
instance:addEncounter(magmus);

local emperor_dagran_thaurissan = EJ_Data:CreateEncounter();
emperor_dagran_thaurissan:setAttributes("Emperor Dagran Thaurissan", "Emperor Dagran Thaurissan rules alongside Princess Moira of the rival Bronzebeard clan. Debate rages over whether the emperor ensorcelled his bride or she willingly joined him. Whatever the truth, Thaurissan's continued presence bodes ill for the future of his clan. So long as he lives, the Dark Irons will remain pawns of Ragnaros, and a dire threat to kingdoms throughout Azeroth.", 0.909836, 0.118852, 228, 245, 19, 4645, 243, 4);
emperor_dagran_thaurissan:setLoot({}); 
instance:addEncounter(emperor_dagran_thaurissan);

--Add instance to list
EJ_Data:addInstance(EJ_Data.CLASSIC, instance, false);