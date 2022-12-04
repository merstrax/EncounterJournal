--Deadmines
--encounters.dm_glubtok = createEncounter();
--dm_glubtok:setAttributes("Glubtok", EJ_Descriptions.Encounters["GLUBTOK"], 0.3652697, 0.6122755, 63, 1064, 1, 2010, DifficultyUtil.ID.DungeonNormal);
--dm_glubtok:setLoot({});
--dm_glubtok:addSection({ Title = "Stage One: Fists of Flame and Frost", Desc = "", JournalEncounterID = 89, OrderIndex = 1, ParentSectionID = 0, FirstChildSectionID = 2011, NextSiblingSectionID = 2014, Type = 0, IconCreatureDisplayInfoID = 0, UiModelSceneID = 0, SpellID = 0, IconFileDataID = 0, Flags = 1, IconFlags = 0, DifficultyMask = -1})

--name, desc, mapX, mapY, instanceID, encounterID, orderIndex, rootSectionID, mapID, difficultyID

local encounters = {};

encounters.glubtok = createEncounter();
encounters.glubtok:setAttributes("Glubtok", "In a fit of rage, Glubtok unleashed his potent magical abilities and reduced his ogre mound to ash. Upon hearing of his destructive talents, the Defias hired the massive ogre mage to supervise their laborers as head foreman of the Deadmines.", 0.3652697, 0.6122755, 63, 1064, 1, 2010, 291, 2);
encounters.glubtok:setLoot({}); 

encounters.helix_gearbreaker = createEncounter();
encounters.helix_gearbreaker:setAttributes("Helix Gearbreaker", "Formerly a craftsman in the Bilgewater Cartel, Helix was offered a sum eclipsing anything he would ever make as a nameless Horde engineer to ply his trade for the Defias Brotherhood. He was quick to accept the job and renounce his former loyalties... just as any resourceful goblin would.", 0.50199604, 0.8682636, 63, 1065, 2, 2020, 291, 2);
encounters.helix_gearbreaker:setLoot({}); 

encounters.foe_reaper_5000 = createEncounter();
encounters.foe_reaper_5000:setAttributes("Foe Reaper 5000", "Defias engineers have spent many long days perfecting a new harvester model based on the Foe Reaper 4000 unit. Once it is completed, the brotherhood believes this mechanized terror will be able to slice through Stormwind's armored soldiers like a scythe through wheat.", 0.12475067, 0.75898206, 63, 1063, 3, 3448, 292, 2);
encounters.foe_reaper_5000:setLoot({}); 

encounters.admiral_ripsnarl = createEncounter();
encounters.admiral_ripsnarl:setAttributes("Admiral Ripsnarl", "When James Harrington became afflicted by the worgen curse, he destroyed his loving family and maritime career in one chilling night of bloodlust. Taking on the name Ripsnarl, he fled into Westfall and later agreed to command the Defias Brotherhood's fearsome juggernaut.", 0.60479087, 0.38772452, 63, 1062, 4, 2044, 292, 2);
encounters.admiral_ripsnarl:setLoot({}); 

encounters.captain_cookie = createEncounter();
encounters.captain_cookie:setAttributes("\"Captain\" Cookie", "Cookie proclaimed himself captain of the Defias Brotherhood's juggernaut following its previous commander's death. Although he still performs his official duties as chief cook, anyone who questions the validity of his captain title has been known to come down with a severe case of food poisoning.", 0.60479087, 0.4550898, 63, 1060, 5, 2055, 292, 2);
encounters.captain_cookie:setLoot({}); 

encounters.vanessa_vancleef = createEncounter();
encounters.vanessa_vancleef:setAttributes("Vanessa VanCleef", "As a young girl, Vanessa witnessed the gruesome death of her father and former Defias Brotherhood leader, Edwin VanCleef. She has since taken up his mantle of leadership, plotting to exact vengeance on Stormwind from the dark corridors of the Defias's stronghold in the Deadmines.", 0.6546913, 0.40269458, 63, 1081, 6, 2060, 292, 2);
encounters.vanessa_vancleef:setLoot({}); 

encounters.baron_ashbury = createEncounter();
encounters.baron_ashbury:setAttributes("Baron Ashbury", "Slain by worgen and raised into undeath by the Forsaken, the traitor Baron Ashbury toys with his foes, keeping them alive so he can inflict maximum pain and suffering.", 0.66467136, 0.732036, 64, 1069, 1, 2107, 310, 2);
encounters.baron_ashbury:setLoot({}); 

encounters.baron_silverlaine = createEncounter();
encounters.baron_silverlaine:setAttributes("Baron Silverlaine", "Baron Silverlaine was master of the keep before it fell to Arugal's worgen. Now his cursed spirit calls upon the very wolf-beasts that slaughtered him to punish further trespassers into his home.", 0.30439156, 0.7739521, 64, 1070, 2, 2118, 311, 2);
encounters.baron_silverlaine:setLoot({}); 

encounters.commander_springvale = createEncounter();
encounters.commander_springvale:setAttributes("Commander Springvale", "A loyal soldier, the ghost of Commander Springvale haunts the council room, using unholy strikes to avenge his lord, Baron Silverlaine.", 0.2804395, 0.5973054, 64, 1071, 3, 2137, 310, 2);
encounters.commander_springvale:setLoot({}); 

encounters.lord_walden = createEncounter();
encounters.lord_walden:setAttributes("Lord Walden", "Godfrey's right-hand man, the arrogant Lord Walden vowed to pay any price, including death, to serve his compatriot. Now among the undead, Walden intends to keep his word, attacking adversaries with ice and venom.", 0.5449104, 0.53742516, 64, 1073, 4, 2156, 313, 2);
encounters.lord_walden:setLoot({}); 

encounters.lord_godfrey = createEncounter();
encounters.lord_godfrey:setAttributes("Lord Godfrey", "Drawing from his past as a Gilnean noble and Forsaken agent, the cunning and resourceful Lord Godfrey wields dual pistols and commands relentless flesh-eating ghouls.", 0.6846315, 0.3353293, 64, 1072, 5, 2164, 315, 2);
encounters.lord_godfrey:setLoot({}); 

encounters.high_priest_venoxis = createEncounter();
encounters.high_priest_venoxis:setAttributes("High Priest Venoxis", "Originally sent to kill Hakkar, Venoxis became enslaved to the murderous entity before falling to Azeroth's heroes. Through the efforts of the Soulflayer's agents, Venoxis has been ripped from the spirit world and ordered to defend Zul'Gurub with his venomous serpentine minions.", 0.5099801, 0.53742516, 76, 1178, 1, 2787, 337, 8);
encounters.high_priest_venoxis:setLoot({}); 

encounters.bloodlord_mandokir = createEncounter();
encounters.bloodlord_mandokir:setAttributes("Bloodlord Mandokir", "The infamous Bloodlord Mandokir died a torturous death before Bloodscalp trolls desecrated his body years ago. Word has now spread that Mandokir walks the jungles of Stranglethorn yet again, using the corpse of the mighty Bloodscalp chieftain Gan'zulah as a host for his malevolent spirit.", 0.60479087, 0.7994013, 76, 1179, 2, 2610, 337, 8);
encounters.bloodlord_mandokir:setLoot({}); 

encounters.cache_of_madness_gri_lek = createEncounter();
encounters.cache_of_madness_gri_lek:setAttributes("Cache of Madness - Gri'lek", "Among the hateful spirits in the Cache of Madness are Gri'lek, a dire troll stripped of his regenerative abilities by the loa; Renataki, an infamous and sadistic warrior; Hazza'rah, a seer tormented by dire future visions; and Wushoolay, a mighty combatant bristling with the powers of the storms.", 0.599801, 0.462575, 76, 788, 3, 2504, 337, 8);
encounters.cache_of_madness_gri_lek:setLoot({}); 

encounters.cache_of_madness_hazza_rah = createEncounter();
encounters.cache_of_madness_hazza_rah:setAttributes("Cache of Madness - Hazza'rah", "Among the hateful spirits in the Cache of Madness are Gri'lek, a dire troll stripped of his regenerative abilities by the loa; Renataki, an infamous and sadistic warrior; Hazza'rah, a seer tormented by dire future visions; and Wushoolay, a mighty combatant bristling with the powers of the storms.", 0.6367, 0.462575, 76, 788, 4, 3508, 337, 8);
encounters.cache_of_madness_hazza_rah:setLoot({}); 

encounters.cache_of_madness_renataki = createEncounter();
encounters.cache_of_madness_renataki:setAttributes("Cache of Madness - Renataki", "Among the hateful spirits in the Cache of Madness are Gri'lek, a dire troll stripped of his regenerative abilities by the loa; Renataki, an infamous and sadistic warrior; Hazza'rah, a seer tormented by dire future visions; and Wushoolay, a mighty combatant bristling with the powers of the storms.", 0.599801, 0.51497, 76, 788, 5, 2501, 337, 8);
encounters.cache_of_madness_renataki:setLoot({}); 

encounters.cache_of_madness_wushoolay = createEncounter();
encounters.cache_of_madness_wushoolay:setAttributes("Cache of Madness - Wushoolay", "Among the hateful spirits in the Cache of Madness are Gri'lek, a dire troll stripped of his regenerative abilities by the loa; Renataki, an infamous and sadistic warrior; Hazza'rah, a seer tormented by dire future visions; and Wushoolay, a mighty combatant bristling with the powers of the storms.", 0.601905, 0.414711, 76, 788, 6, 2498, 337, 8);
encounters.cache_of_madness_wushoolay:setLoot({}); 

encounters.high_priestess_kilnara = createEncounter();
encounters.high_priestess_kilnara:setAttributes("High Priestess Kilnara", "When High Priestess Arlokk was killed, the panther loa Bethekk chose her sister, Kilnara, as her new mortal champion. Supporting the recent pact between the Gurubashi and Zandalar tribes, Kilnara has unleashed her savage panther minions on the region's unsuspecting denizens.", 0.48003995, 0.20059872, 76, 1180, 7, 2692, 337, 8);
encounters.high_priestess_kilnara:setLoot({}); 

encounters.zanzil = createEncounter();
encounters.zanzil:setAttributes("Zanzil", "Exiled from the Skullsplitter tribe for turning his fellow trolls into mindless slaves, Zanzil was recently offered a place among the Gurubashi by Jin'do the Godbreaker in exchange for bolstering Zul'Gurub's forces. It is well-known that his toxic elixirs can even rouse the dead from their graves.", 0.31733844, 0.24550891, 76, 1181, 8, 2508, 337, 8);
encounters.zanzil:setLoot({}); 

encounters.jin_do_the_godbreaker = createEncounter();
encounters.jin_do_the_godbreaker:setAttributes("Jin'do the Godbreaker", "After his defeat in Zul'Gurub, Jin'do's spirit was tormented by his failure to serve Hakkar's wishes. Jin'do recently found a way back into the world and enslaved the Soulflayer. Bristling with the dread god's terrible powers, Jin'do plans to restore the Gurubashi empire to its former glory.", 0.48502997, 0.39520955, 76, 1182, 9, 2899, 337, 8);
encounters.jin_do_the_godbreaker:setLoot({}); 

encounters.akil_zon = createEncounter();
encounters.akil_zon:setAttributes("Akil'zon", "As a former shaman of the Amani tribe, Akil'zon had a preternatural ability when working with the element of air. This talent caught the eye of Hex Lord Malacrass and made finding a host for the trolls' eagle god an easy task.", 0.35528967, 0.23053885, 77, 1189, 1, 2521, 333, 8);
encounters.akil_zon:setLoot({}); 

encounters.nalorakk = createEncounter();
encounters.nalorakk:setAttributes("Nalorakk", "Hex Lord Malacrass considered Nalorakk-renowned for both his fearsome rage and savage strength on the battlefield-the ideal vessel for the bear god's essence.", 0.40518978, 0.7739929, 77, 1190, 2, 2867, 333, 8);
encounters.nalorakk:setLoot({}); 

encounters.jan_alai = createEncounter();
encounters.jan_alai:setAttributes("Jan'alai", "Dragonhawks are deft predators that rend their foes with razor-sharp talons. This mindset and method of attack were also favored by one of the Amani tribe's highly skilled rogues, Jan'alai.", 0.55489045, 0.7095809, 77, 1191, 3, 2621, 333, 8);
encounters.jan_alai:setLoot({}); 

encounters.halazzi = createEncounter();
encounters.halazzi:setAttributes("Halazzi", "The lynxes of Azeroth are vicious hunters that shred their prey with fang and claw. Hex Lord Malacrass mused that it was only right to seal the essence of the lynx god within one of the tribe's greatest hunters.", 0.5848307, 0.23802388, 77, 1192, 4, 2804, 333, 8);
encounters.halazzi:setLoot({}); 

encounters.hex_lord_malacrass = createEncounter();
encounters.hex_lord_malacrass:setAttributes("Hex Lord Malacrass", "Rumored to be the most feared witch doctor of the Amani tribe in decades, Hex Lord Malacrass has done the unthinkable and sealed the essence of several mighty troll animal gods in their strongest champions... keeping the darkest one for himself.", 0.7145718, 0.5299401, 77, 1193, 5, 2706, 333, 8);
encounters.hex_lord_malacrass:setLoot({}); 

encounters.daakara = createEncounter();
encounters.daakara:setAttributes("Daakara", "To fill the power vacuum left from the death of their old warlord, Zul'jin, the remaining trolls of the Amani tribe chose their favored champion, Daakara the Invincible, to reclaim their lost glory.", 0.90419334, 0.5299401, 77, 1194, 6, 2875, 333, 8);
encounters.daakara:setLoot({}); 

encounters.ghamoo_ra = createEncounter();
encounters.ghamoo_ra:setAttributes("Ghamoo-Ra", "When the Twilight's Hammer cult arrived, its followers roused and imprisoned one of the last peaceful creatures living in Elune's temple. The cult delighted in tormenting the giant turtle for years, flaying its mind and body until it succumbed to madness. Naming the beast Ghamoo-Ra, the cultists attempt to control its savagery in order to protect their lair.", 0.333333, 0.60687, 227, 1667, 1, 9472, 221, 2);
encounters.ghamoo_ra:setLoot({}); 

encounters.high_interrogator_gerstahn = createEncounter();
encounters.high_interrogator_gerstahn:setAttributes("High Interrogator Gerstahn", "The Twilight's Hammer cultist Gerstahn has always indulged in life's finer things: exotic foods, fine clothes, and gem-encrusted torture tools. Day and night, her prisoners' bloodcurdling cries echo throughout the Dark Iron clan's infamous Detention Block. Gerstahn proudly calls this horrific noise her symphony of screams, and she is always eager to add another voice to the chorus.", 0.474044, 0.922131, 228, 227, 1, 4630, 242, 4);
encounters.high_interrogator_gerstahn:setLoot({}); 

encounters.lord_roccor = createEncounter();
encounters.lord_roccor:setAttributes("Lord Roccor", "Lord Roccor loathes the scheming and backstabbing of his fellow fire elementals. To avoid serving alongside his kind in the Molten Core, the mighty being purposefully angered the Firelord. Roccor's risky gambit paid off: he was expelled from the core and forced to guard Blackrock Depths in isolation.", 0.556011, 0.670082, 228, 228, 2, 4472, 242, 4);
encounters.lord_roccor:setLoot({}); 

encounters.houndmaster_grebmar = createEncounter();
encounters.houndmaster_grebmar:setAttributes("Houndmaster Grebmar", "Grebmar Fleabeard's hounds are the only family he's ever known. Long ago, the orphaned dwarf began breeding canines to serve as companions and guard dogs. When the houndmaster isn't patrolling Blackrock Depths with his loyal beasts, he often treats them to the Grim Guzzler's finest Dark Iron ale.", 0.535002, 0.573466, 228, 229, 3, 4626, 242, 4);
encounters.houndmaster_grebmar:setLoot({}); 

encounters.ring_of_law = createEncounter();
encounters.ring_of_law:setAttributes("Ring of Law", "There is only one punishment for crimes committed against the Dark Iron dwarves: death. Ancient tradition calls for the guilty to pay the blood price in the Ring of the Law by battling savage creatures gathered from across Azeroth. To date, it is unknown if anyone has ever survived this brutal crucible.", 0.497785, 0.645796, 228, 230, 4, 4547, 242, 4);
encounters.ring_of_law:setLoot({}); 

encounters.pyromancer_loregrain = createEncounter();
encounters.pyromancer_loregrain:setAttributes("Pyromancer Loregrain", "Once a respected member of the Earthen Ring, Loregrain joined the Twilight's Hammer cult for reasons that remain a mystery to his former allies. He eventually journeyed to Blackrock Depths, where he took a sudden interest in the famed Dark Iron architect Franclorn Forgewright. The purpose of his current obsession is unclear, but Loregrain remains loyal to his cult and an enemy of all who oppose it.", 0.54918, 0.94877, 228, 231, 5, 4496, 243, 4);
encounters.pyromancer_loregrain:setLoot({}); 

encounters.lord_incendius = createEncounter();
encounters.lord_incendius:setAttributes("Lord Incendius", "Baron Geddon taught Incendius to harness his destructive powers, but the baron never expected his protege to grow so lethally efficient. Increasingly wary that Incendius might usurp him, Geddon sent the blazing elemental out of the Molten Core to guard the Dark Iron dwarves' fabled Black Anvil.", 0.564208, 0.311475, 228, 232, 6, 4476, 242, 4);
encounters.lord_incendius:setLoot({}); 

encounters.warder_stilgiss = createEncounter();
encounters.warder_stilgiss:setAttributes("Warder Stilgiss", "After years of dedication to Emperor Thaurissan, the cunning mage Stilgiss was entrusted with protecting his clan's coffers in the Black Vault. The loyal dwarf's close friend Houndmaster Grebmar celebrated the occasion by gifting one of his vicious dogs--Verek--to Stilgiss. The mage has put the beast to good use, keeping it at his side to scare off the vault's would-be thieves.", 0.602459, 0.659836, 228, 233, 7, 4386, 243, 4);
encounters.warder_stilgiss:setLoot({}); 

encounters.fineous_darkvire = createEncounter();
encounters.fineous_darkvire:setAttributes("Fineous Darkvire", "Chief Architect Fineous Darkvire earned his title by passing off the ideas of more gifted masons as his own. His arrogance and scheming have drawn the ire of his predecessor, Franclorn Forgewright, from beyond the grave. The ghost of the late chief architect seeks to reclaim his incredibly powerful hammer--Ironfel--from Darkvire before it can be used for ill.", 0.635246, 0.211066, 228, 234, 8, 4538, 242, 4);
encounters.fineous_darkvire:setLoot({}); 

encounters.bael_gar = createEncounter();
encounters.bael_gar:setAttributes("Bael'Gar", "The monstrous molten giant Bael'Gar lumbers across the Dark Iron Highway, a stunning feat of dwarven engineering carved into Blackrock Depths. Ragnaros pulled the giant from the heart of the Firelands to guard a massive sealed door at one end of the highway. According to legend, only the Firelord and the Dark Iron clan's highest-ranking members know what lies beyond the mysterious gate.", 0.251366, 0.534836, 228, 235, 9, 4532, 242, 4);
encounters.bael_gar:setLoot({}); 

encounters.general_angerforge = createEncounter();
encounters.general_angerforge:setAttributes("General Angerforge", "Through a lifetime of study, General Angerforge has become an expert on dwarven military history and tactics. He recently incurred Emperor Dagran Thaurissan's fury by writing a scathing treatise on his clan's failures in past conflicts. This political blunder aside, Angerforge is a Dark Iron to his core. He will bleed--and die, if necessary--to protect his people and his emperor.", 0.363388, 0.82377, 228, 236, 10, 4508, 243, 4);
encounters.general_angerforge:setLoot({}); 

encounters.golem_lord_argelmach = createEncounter();
encounters.golem_lord_argelmach:setAttributes("Golem Lord Argelmach", "Argelmach's lifelong obsession with immortality drove him to forge enchanted constructs in his own image. Rumor has it that he has also dabbled in some form of black magic that would allow the golem lord's new creations to act as vessels for his spirit should his flesh-and-blood body be destroyed.", 0.364754, 0.651639, 228, 237, 11, 4501, 243, 4);
encounters.golem_lord_argelmach:setLoot({}); 

encounters.hurley_blackbreath = createEncounter();
encounters.hurley_blackbreath:setAttributes("Hurley Blackbreath", "To say Blackbreath is a regular at the Grim Guzzler would be something of an understatement. In over a decade, the mischievous drunkard has left the tavern only once to steal a top-secret recipe for Thunderbrew Lager. Blackbreath has occasionally sobered up enough to make the concoction himself, and he claims it grants unimaginable strength and courage.", 0.505668, 0.704778, 228, 238, 12, 4494, 243, 4);
encounters.hurley_blackbreath:setLoot({}); 

encounters.phalanx = createEncounter();
encounters.phalanx:setAttributes("Phalanx", "Until recently, drunken brawls raged within the Grim Guzzler on an almost daily basis. Barkeep Plugger Spazzring has reduced the frequency of these scuffles with Phalanx, a mighty golem bouncer programmed to maintain order in the tavern and eliminate raucous patrons with extreme force.", 0.458206, 0.564745, 228, 239, 13, 4504, 243, 4);
encounters.phalanx:setLoot({}); 

encounters.plugger_spazzring = createEncounter();
encounters.plugger_spazzring:setAttributes("Plugger Spazzring", "They say that at the Grim Guzzler everyone knows your name. This sense of camaraderie is due to the hard work of Spazzring, a leper gnome who sought a new life in Blackrock Depths after the fall of Gnomeregan. Despite his history of dabbling with evil as a warlock, he takes pride in his job as the tavern's barkeep, making sure that his patrons' mugs never run dry.", 0.47722, 0.657122, 228, 241, 15, 4485, 243, 4);
encounters.plugger_spazzring:setLoot({}); 

encounters.ambassador_flamelash = createEncounter();
encounters.ambassador_flamelash:setAttributes("Ambassador Flamelash", "For his unwavering service to Ragnaros, Flamelash ascended to the rank of ambassador to the Dark Iron clan. This depraved being initially despised his dwarven allies, but he has come to respect their penchant for destruction. As a show of solidarity, Flamelash guards the Chamber of Enchantment, a sacred location used by the dwarves to empower their weaponry.", 0.538251, 0.485656, 228, 242, 16, 4482, 243, 4);
encounters.ambassador_flamelash:setLoot({}); 

encounters.the_seven = createEncounter();
encounters.the_seven:setAttributes("The Seven", "Centuries ago, sorcerer-thane Thaurissan and seven of his most powerful Dark Iron allies accidentally summoned Ragnaros into Azeroth and damned their entire clan to enslavement. Although the Seven perished during the ritual, their restless spirits still linger in Blackrock Depths, cursed to serve their elemental master and the current Dark Iron ruler.", 0.538251, 0.247951, 228, 243, 17, 4471, 243, 4);
encounters.the_seven:setLoot({}); 

encounters.magmus = createEncounter();
encounters.magmus:setAttributes("Magmus", "Ambassador Flamelash charged the molten giant Magmus with guarding Emperor Dagran Thaurissan's throne room, but not even this act put the Dark Iron ruler's concerns to rest. Ever fearful of assassins, the emperor also granted Magmus control over a series of fire-breathing statues outside his royal chambers.", 0.796448, 0.118852, 228, 244, 18, 4480, 243, 4);
encounters.magmus:setLoot({}); 

encounters.emperor_dagran_thaurissan = createEncounter();
encounters.emperor_dagran_thaurissan:setAttributes("Emperor Dagran Thaurissan", "Emperor Dagran Thaurissan rules alongside Princess Moira of the rival Bronzebeard clan. Debate rages over whether the emperor ensorcelled his bride or she willingly joined him. Whatever the truth, Thaurissan's continued presence bodes ill for the future of his clan. So long as he lives, the Dark Irons will remain pawns of Ragnaros, and a dire threat to kingdoms throughout Azeroth.", 0.909836, 0.118852, 228, 245, 19, 4645, 243, 4);
encounters.emperor_dagran_thaurissan:setLoot({}); 

encounters.highlord_omokk = createEncounter();
encounters.highlord_omokk:setAttributes("Highlord Omokk", "Omokk rules over the spire's ogres with an iron fist. Many underlings have challenged him to single combat in the hopes of seizing the highlord's title, but all have fallen without landing a solitary blow. This mysterious phenomenon has led to rumors that dark magic is protecting Omokk.", 0.386612, 0.590164, 229, 267, 1, 4523, 252, 4);
encounters.highlord_omokk:setLoot({}); 

encounters.shadow_hunter_vosh_gajin = createEncounter();
encounters.shadow_hunter_vosh_gajin:setAttributes("Shadow Hunter Vosh'gajin", "Vosh'gajin is renowned for her beauty--and psychotic tendencies--among the trolls. A master of the shadow hunter arts, she wields formidable hexes, curses, and healing magics.", 0.553279, 0.692623, 229, 268, 2, 4525, 251, 4);
encounters.shadow_hunter_vosh_gajin:setLoot({}); 

encounters.war_master_voone = createEncounter();
encounters.war_master_voone:setAttributes("War Master Voone", "During the Second War, Voone led small strike teams on daring missions into the heart of high elven territory. The cunning troll joined the false Horde because he wanted to be its chief strategist, not because he believed in Blackhand's ideology. Voone sees the splinter faction as an underdog, and he enjoys the satisfaction of overcoming insurmountable odds.", 0.52459, 0.545082, 229, 269, 3, 4527, 250, 4);
encounters.war_master_voone:setLoot({}); 

encounters.mother_smolderweb = createEncounter();
encounters.mother_smolderweb:setAttributes("Mother Smolderweb", "Centuries ago, the Dark Iron dwarves dug into the lair of Mother Smolderweb, releasing the massive arachnid into the spire's halls. Her brood has continued to swell in number since that time, so much so that even Blackhand's forces fear traveling through Smolderweb's domain.", 0.620736, 0.741415, 229, 270, 4, 4543, 251, 4);
encounters.mother_smolderweb:setLoot({}); 

encounters.urok_doomhowl = createEncounter();
encounters.urok_doomhowl:setAttributes("Urok Doomhowl", "Doomhowl is the true leader of the spire's ogres. This sinister figure has charmed his trusted aid, Highlord Omokk, with insidious magic to control Doomhowl's minions in his stead. He has gone to great lengths to keep up this charade, ruthlessly killing any ogres who challenge the highlord's rule.", 0.454918, 0.557377, 229, 271, 5, 4552, 253, 4);
encounters.urok_doomhowl:setLoot({}); 

encounters.quartermaster_zigris = createEncounter();
encounters.quartermaster_zigris:setAttributes("Quartermaster Zigris", "After the First War, the orc hunter Zigris became infamous for tracking down Stormwind refugees and slaughtering them like game. He loathes Blackrock Spire's claustrophobic halls, but he is certain a day will come when he'll hunt in the open air again.", 0.539617, 0.844263, 229, 272, 6, 4568, 254, 4);
encounters.quartermaster_zigris:setLoot({}); 

encounters.halycon = createEncounter();
encounters.halycon:setAttributes("Halycon", "Halycon comes from a long line of great worgs bred for their ferocity and loyalty. Over the years, the den mother has produced an astonishing number of savage offspring. Rumors have spread that she is a demonic hound gifted to Rend Blackhand by a pit lord of the Burning Legion.", 0.379781, 0.840164, 229, 274, 7, 4572, 254, 4);
encounters.halycon:setLoot({}); 

encounters.gizrul_the_slavener = createEncounter();
encounters.gizrul_the_slavener:setAttributes("Gizrul the Slavener", "Very few of the Dark Horde have seen the reclusive and unpredictable Gizrul. The beast emerges from his shadowy den only when his mate, Halycon, calls to him. The two monstrous creatures have produced some of the largest--and most ferocious--worgs ever bred in orcish history.", 0.394808, 0.793032, 229, 273, 8, 4584, 254, 4);
encounters.gizrul_the_slavener:setLoot({}); 

encounters.overlord_wyrmthalak = createEncounter();
encounters.overlord_wyrmthalak:setAttributes("Overlord Wyrmthalak", "The black dragonspawn Wyrmthalak oversees the lower spire's forces as they prepare for their assault against the dwarves. He has no love for the false Horde or its brutish members, and he will sacrifice any number of Blackhand's minions to protect his master, Nefarian.", 0.575137, 0.60041, 229, 275, 9, 4587, 255, 4);
encounters.overlord_wyrmthalak:setLoot({}); 

encounters.zevrim_thornhoof = createEncounter();
encounters.zevrim_thornhoof:setAttributes("Zevrim Thornhoof", "Desperate to show his worth to the Burning Legion, Zevrim Thornhoof told his masters he could enslave the formidable ancients who still roamed Dire Maul. When his own power proved insufficient, Thornhoof turned to other living creatures for additional energy, butchering them atop his sacrificial altar and harvesting their essence in their final, agonizing moments.", 0.575137, 0.743852, 230, 343, 1, 4655, 240, 4);
encounters.zevrim_thornhoof:setLoot({}); 

encounters.hydrospawn = createEncounter();
encounters.hydrospawn:setAttributes("Hydrospawn", "When the satyr Zevrim Thornhoof sought to control the elementals in Dire Maul, he focused on Hydrospawn, who calmly resided in the pool beneath his altar. As he performed his profane sacrificial rituals, the elemental grew agitated and restless, striking out at Thornhoof's demonic minions. As the years passed, Thornhoof used his victims' energies to whip Hydrospawn into unbridled fury, little by little binding its will to the satyr's commands.", 0.536885, 0.715164, 230, 344, 2, 5004, 240, 4);
encounters.hydrospawn:setLoot({}); 

encounters.lethtendris = createEncounter();
encounters.lethtendris:setAttributes("Lethtendris", "Dire Maul's warped energy drew Lethtendris from afar, giving her hope of satisfying her unbearable craving for arcane magic. Using the sinews and ligaments of sacrificial victims, she constructed a web to siphon the corrupt power out of the east wing. To her delight, she discovered that the device has the capacity to gather vast reserves of overwhelming strength, enough to destroy all of her enemies.", 0.438525, 0.481557, 230, 345, 3, 4994, 239, 4);
encounters.lethtendris:setLoot({}); 

encounters.alzzin_the_wildshaper = createEncounter();
encounters.alzzin_the_wildshaper:setAttributes("Alzzin the Wildshaper", "Alzzin the Wildshaper seeks nothing less than the total corruption of Feralas, but until he discovered the Shrine of Eldretharr in Dire Maul, he had little success. With the power of enslaved ancients at his command, Alzzin concentrated the vitality of the surrounding forest into his lair, allowing him to manipulate it at will.", 0.56694, 0.288934, 230, 346, 4, 4921, 240, 4);
encounters.alzzin_the_wildshaper:setLoot({}); 

encounters.tendris_warpwood = createEncounter();
encounters.tendris_warpwood:setAttributes("Tendris Warpwood", "Tendris Warpwood was a staunch defender of Eldre'Thalas, his heart inexorably entwined with the fate of the city. When the Sundering shattered the land, his resolve never wavered, but as corruption seeped into the ruins over the next 10,000 years, so too did it infect the ancient's spirit.", 0.336066, 0.536885, 230, 350, 5, 4913, 236, 4);
encounters.tendris_warpwood:setLoot({}); 

encounters.illyanna_ravenoak = createEncounter();
encounters.illyanna_ravenoak:setAttributes("Illyanna Ravenoak", "Illyanna Ravenoak, along with her faithful companion Ferra, was once Prince Tortheldrin's most valued hunter, until she refused to carry out her leader's order to execute her friends. As punishment, he killed Illyanna and her bear, but he used his demonic power to bind their spirits to their bodies, condemning them to remain in Dire Maul as undead protectors.", 0.203552, 0.77664, 230, 347, 6, 4906, 236, 4);
encounters.illyanna_ravenoak:setLoot({}); 

encounters.magister_kalendris = createEncounter();
encounters.magister_kalendris:setAttributes("Magister Kalendris", "When Prince Tortheldrin demanded the slaughter of the majority of his subjects, his most loyal lieutenants were tasked with executing his will. Magister Kalendris murdered many unsuspecting Shen'dralar without hesitation, but one of the doomed elves mortally wounded him during a destructive battle. Despite his demise, Kalendris's spirit still roams Dire Maul as a defender of Tortheldrin's rule.", 0.338798, 0.45082, 230, 348, 7, 4836, 237, 4);
encounters.magister_kalendris:setLoot({}); 

encounters.immol_thar = createEncounter();
encounters.immol_thar:setAttributes("Immol'thar", "In a desperate bid to restore the power and immortality they lost when the Well of Eternity was destroyed, the Shen'dralar summoned a demon into the western wing of Dire Maul and captured him within a force field, allowing them to use the void terror's energy for their own spells. Unable to fight back or even move for nearly 10,000 years, Immol'thar could only watch and wait for the day he might break free and rend the flesh of his captors.", 0.349727, 0.57582, 230, 349, 8, 4822, 238, 4);
encounters.immol_thar:setLoot({}); 

encounters.prince_tortheldrin = createEncounter();
encounters.prince_tortheldrin:setAttributes("Prince Tortheldrin", "After the Well of Eternity's destruction, Prince Tortheldrin maintained control over the surviving Shen'dralar by imprisoning a demon in the ruins of Eldre'Thalas and letting his subjects siphon its strength. The exposure to demonic power twisted Tortheldrin's mind, and when the creature faltered, the prince ordered the deaths of many of his vassals so only he and his most fanatical followers would be left to enjoy the corrupt energy.", 0.622951, 0.231557, 230, 361, 9, 4752, 238, 4);
encounters.prince_tortheldrin:setLoot({}); 

encounters.guard_mol_dar = createEncounter();
encounters.guard_mol_dar:setAttributes("Guard Mol'dar", "Mol'dar is a zealously loyal guard from the Gordok ogres. He is convinced King Gordok gifted him with a pair of enchanted gauntlets that have enabled him to become his people's arm wrestling champion for six years running. In truth, King Gordok threw the powerful armor away; Mol'dar simply found it first.", 0.695355, 0.760246, 230, 362, 10, 4740, 235, 4);
encounters.guard_mol_dar:setLoot({}); 

encounters.stomper_kreeg = createEncounter();
encounters.stomper_kreeg:setAttributes("Stomper Kreeg", "On more than one occasion, skulking assassins have met their doom after accidentally disturbing Kreeg's ale mug. Though he's often passed out drunk on duty, nothing rouses the ogre into a berserker fury faster than the sound of his precious drink splattering on the stone floor.", 0.612022, 0.692623, 230, 363, 11, 4734, 235, 4);
encounters.stomper_kreeg:setLoot({}); 

encounters.guard_fengus = createEncounter();
encounters.guard_fengus:setAttributes("Guard Fengus", "Ever since Cho'Rush the Observer told him he was destined to meet a mate while on duty, Fengus has spent almost every waking moment patrolling Gordok territory.", 0.494536, 0.780738, 230, 364, 12, 4725, 235, 4);
encounters.guard_fengus:setLoot({}); 

encounters.guard_slip_kik = createEncounter();
encounters.guard_slip_kik:setAttributes("Guard Slip'kik", "Some might think Slip'kik is merely cautious, but he's also lazy. Rather than challenge King Gordok directly, Slip'kik tinkers with traps and old, broken magical devices, hoping to eventually deliver a coup de grace without an ounce of risk or a drop of sweat.", 0.266393, 0.571721, 230, 365, 13, 4716, 235, 4);
encounters.guard_slip_kik:setLoot({}); 

encounters.captain_kromcrush = createEncounter();
encounters.captain_kromcrush:setAttributes("Captain Kromcrush", "Even among ogres, Captain Kromcrush is infamous for his hair-trigger rage toward anyone who dares to insult him or King Gordok. He crushes dissent ruthlessly, but he has still less patience for those who continue to spread the rumor of his torrid affair with a gnoll long ago.", 0.318306, 0.506148, 230, 366, 14, 4705, 235, 4);
encounters.captain_kromcrush:setLoot({}); 

encounters.cho_rush_the_observer = createEncounter();
encounters.cho_rush_the_observer:setAttributes("Cho'Rush the Observer", "Cho'Rush doesn't usually take sides, but when Ulrok was rising to power, it was clear there was nobody who could challenge him. The king quickly appointed Cho'Rush as his chief advisor, believing that his twin heads would make him twice as resourceful as the average ogre.", 0.319542, 0.303693, 230, 367, 15, 4673, 235, 4);
encounters.cho_rush_the_observer:setLoot({}); 

encounters.king_gordok = createEncounter();
encounters.king_gordok:setAttributes("King Gordok", "To rule the Gordok ogres, one must simply proclaim oneself king... and then destroy all who might disagree. King Gordok--then merely known as Ulrok--solidified his power by convincing a dozen of his people's strongest warriors to challenge the king at the same time. The wild melee left most of the contestants dead or wounded, and Ulrok's blade easily cut down the survivors and the battle-weary king. To this day, Gordok ogres speak in hushed tones about the \"Day of Da Blood.\"", 0.319544, 0.229482, 230, 368, 16, 4666, 235, 4);
encounters.king_gordok:setLoot({}); 

encounters.crowd_pummeler_9_60 = createEncounter();
encounters.crowd_pummeler_9_60:setAttributes("Crowd Pummeler 9-60", "In Gnomeregan's heyday, inventors would compete for status by pitting their creations against one another. The mekgineer Oglethorpe Obnoticus built an unbeatable robot, and this earned him respect in the high tinker's court. Sicco Thermaplugg stole Obnoticus's blueprints and then made a giant version of the machine. He set his forgery loose, and the horrific results drove the ruling council to banish the innocent Obnoticus. The Crowd Pummeler 9-60 is still one of Thermaplugg's favorite (stolen) inventions.", 0.431694, 0.883197, 231, 381, 4, 4670, 228, 2);
encounters.crowd_pummeler_9_60:setLoot({}); 

encounters.grubbis = createEncounter();
encounters.grubbis:setAttributes("Grubbis", "The radioactive gas that flooded the city was meant to anger the troggs and kill the gnomes, and Thermaplugg's plan was brutally effective. One trogg, however, reacted oddly to the substance: Grubbis grew. And grew. It was a side effect that Sicco had not anticipated, but he's never been one to waste valuable (and dangerous) resources. This giant trogg now patrols the tunnels of Gnomeregan. His loyal basilisk pet, Chomper, helps Grubbis sniff out gas leaks, tasty fungi, and even tastier intruders.", 0.778688, 0.670082, 231, 379, 1, 4690, 226, 2);
encounters.grubbis:setLoot({}); 

encounters.viscous_fallout = createEncounter();
encounters.viscous_fallout:setAttributes("Viscous Fallout", "The formerly robust and elegantly complex waterways of Gnomeregan are now an irradiated mess filled with toxic slime. A lone water elemental who had dwelt in the gnomes' aquifer became trapped in the contamination, and the pollution corrupted its pure form. It currently wanders the halls of Gnomeregan in anger and agony, a liquid embodiment of the vile poison of Thermaplugg's betrayal.", 0.759563, 0.465164, 231, 378, 2, 4691, 227, 2);
encounters.viscous_fallout:setLoot({}); 

encounters.electrocutioner_6000 = createEncounter();
encounters.electrocutioner_6000:setAttributes("Electrocutioner 6000", "Mekgineer Thermaplugg is not a patient gnome. Rather than putting his inventions through a battery of tests to determine their safety and effectiveness, he rushes them into the field and moves on to the next project. The Electrocutioner 6000 was his first attempt at harnessing electricity as a weapon via a super-charged mechano-tank. Lieutenant Tom \"Sizzlepants\" Crankle, the only soldier to survive piloting the Electrocutioner, is now something of a hero among the leper gnomes.", 0.243169, 0.684426, 231, 380, 3, 4692, 227, 2);
encounters.electrocutioner_6000:setLoot({}); 

encounters.mekgineer_thermaplugg = createEncounter();
encounters.mekgineer_thermaplugg:setAttributes("Mekgineer Thermaplugg", "Murderer, traitor, and self-proclaimed king of the gnomes, the mekgineer Sicco Thermaplugg rules over the radioactive halls of Gnomeregan with a malfunctioning iron fist. His subjects are numerous, vicious, and insane enough to defend their crazed king against any intrusion from the upper world. It is Thermaplugg's madness that makes him so dangerous; he possesses the cunning to destroy everything around him, with no thought for his own life. There is a reason that even the monsters of Gnomeregan fear him.", 0.311475, 0.303279, 231, 382, 5, 4702, 229, 2);
encounters.mekgineer_thermaplugg:setLoot({}); 

encounters.noxxion = createEncounter();
encounters.noxxion:setAttributes("Noxxion", "Noxxion is a living embodiment of corruption. Theradras ordered her ally Lord Vyletongue to create this putrid elemental to be a powerful servant and a loyal pet to ease the princess's loneliness. Noxxion spreads its toxic essence into areas of Maraudon that have not yet withered under Theradras's malign influence.", 0.362022, 0.0983607, 232, 422, 1, 4709, 280, 2);
encounters.noxxion:setLoot({}); 

encounters.razorlash = createEncounter();
encounters.razorlash:setAttributes("Razorlash", "Razorlash was made to accompany Noxxion through Maraudon. In time, this new creation became one of the princess's most cherished servants. Razorlash constantly wanders the caves alongside Noxxion, using thorny tendrils to shred any untainted plant life it can find.", 0.166667, 0.344262, 232, 423, 2, 4713, 280, 2);
encounters.razorlash:setLoot({}); 

encounters.tinkerer_gizlock = createEncounter();
encounters.tinkerer_gizlock:setAttributes("Tinkerer Gizlock", "Tinkerer Gizlock and five other gem hunters snuck into Maraudon to mine its highly prized crystals. Their plan went horribly wrong when satyrs slaughtered everyone in the party save for Gizlock. The goblin, trapped within the caves and driven to the brink of madness, sees himself as the subterranean region's new ruler.", 0.509563, 0.530738, 232, 427, 3, 4721, 280, 2);
encounters.tinkerer_gizlock:setLoot({}); 

encounters.subjugator_kor_ul = createEncounter();
encounters.subjugator_kor_ul:setAttributes("Subjugator Kor'ul", "The Twilight Hammer commanded their powerful enforcer, Subjugator Kor'ul, to cleanse the caves of anything not under their control. Gelihast was first to fall under the crushing strength of Kor'ul, who then seized control of the cave dwelling murlocs. Kor'ul left Gelihast's twisted corpse on display as proof of his dominance and now uses the murlocs to hoard the possessions of those who perish in these caves.", 0.543284, 0.564179, 227, 1669, 3, 9480, 221, 2);
encounters.subjugator_kor_ul:setLoot({}); 

encounters.lord_vyletongue = createEncounter();
encounters.lord_vyletongue:setAttributes("Lord Vyletongue", "The satyr lord Vyletongue journeyed into Maraudon's depths after hearing of its corruption. Theradras was wary of the conniving demon at first, but Vyletongue proved his worth by creating an array of wretched minions, such as Noxxion and Razorlash, for the princess.", 0.378415, 0.704918, 232, 424, 4, 4730, 280, 2);
encounters.lord_vyletongue:setLoot({}); 

encounters.celebras_the_cursed = createEncounter();
encounters.celebras_the_cursed:setAttributes("Celebras the Cursed", "Upon learning of his uncle's tragic fate, the noble Celebras swore to free Zaetar's spirit. Yet the keeper of the grove was not prepared for the horrors that awaited him in Maraudon's shadowy corridors. The dark energies permeating the area quickly overcame Celebras, filling his heart with uncontrollable rage.", 0.245902, 0.143443, 232, 425, 5, 4745, 281, 2);
encounters.celebras_the_cursed:setLoot({}); 

encounters.landslide = createEncounter();
encounters.landslide:setAttributes("Landslide", "For years, the ancient mountain giant known as Landslide cultivated brilliant crystal gardens in Maraudon, but Theradras enthralled the behemoth when she took up residence there. This once-stoic giant now lives only to serve his tyrannical new master.", 0.40847, 0.487705, 232, 426, 6, 4749, 281, 2);
encounters.landslide:setLoot({}); 

encounters.rotgrip = createEncounter();
encounters.rotgrip:setAttributes("Rotgrip", "Rumor has it that Rotgrip has dwelled in Maraudon's subterranean waters for millennia. The famed dwarven hunter Hemet Nesingwary once proclaimed that the beast could not be found, and a number of amateur trackers accepted the challenge of seeking out the legendary creature. None of them ever returned.", 0.413934, 0.817623, 232, 428, 7, 4757, 281, 2);
encounters.rotgrip:setLoot({}); 

encounters.princess_theradras = createEncounter();
encounters.princess_theradras:setAttributes("Princess Theradras", "The earth elemental Theradras, Therazane the Stonemother's sole daughter, resides in Maraudon's inner sanctum. Influenced by the Old Gods, the princess transformed her home into a den of corruption and suffering. Some believe that her foul powers are tied to the spirit of her dead lover, Zaetar. If so, liberating the fallen keeper of the grove might be the only hope of cleansing Maraudon.", 0.258197, 0.788934, 232, 429, 8, 4759, 281, 2);
encounters.princess_theradras:setLoot({}); 

encounters.mordresh_fire_eye = createEncounter();
encounters.mordresh_fire_eye:setAttributes("Mordresh Fire Eye", "Through necromantic magic Death Speaker Blackthorn was able to rekindle the flames of Mordresh Fire Eye's soul, returning him to undeath. As a former shaman, Mordresh has exerted his twisted control over the elements.  He burns and scorches all those who threaten the Death Speaker's work.", 0.860656, 0.467213, 233, 1663, 2, 4767, 300, 2);
encounters.mordresh_fire_eye:setLoot({}); 

encounters.domina = createEncounter();
encounters.domina:setAttributes("Domina", "When Lady Sarevess failed to provide magical protection, Domina sacrificed the naga to empower her own dark ritual. Unlike her predecessor, Domina, Mistress of the Dark, has no fear of Aku'mai and hand feeds the beast countless innocents in order to curry favor with the Old Gods.", 0.11194, 0.389552, 227, 1668, 2, 9476, 221, 2);
encounters.domina:setLoot({}); 

encounters.twilight_lord_bathiel = createEncounter();
encounters.twilight_lord_bathiel:setAttributes("Twilight Lord Bathiel", "The Twilight's Hammer do not tolerate failure, so the first command Twilight Lord Bathiel gave once he assumed control of Blackfathom Deeps was to throw Lord Kelris into the hungry maw of Aku'mai.  Now, this elemental ascendant commits the depths of his unfathomable power to raising the beast of the Old Gods and covering the world in black.", 0.52388, 0.808209, 227, 1671, 7, 9507, 222, 2);
encounters.twilight_lord_bathiel:setLoot({}); 

encounters.hearthsinger_forresten = createEncounter();
encounters.hearthsinger_forresten:setAttributes("Hearthsinger Forresten", "The Culling of Stratholme claimed the lives of innumerable people whose only crime was being in the doomed city. A traveling singer and piccolo player named Forresten was one such victim. He continues to wander the city in death, unable to accept his tragic fate.", 0.605191, 0.313524, 236, 473, 1, 4794, 317, 4);
encounters.hearthsinger_forresten:setLoot({}); 

encounters.aku_mai = createEncounter();
encounters.aku_mai:setAttributes("Aku'mai", "Aku'mai, an ancient evil, carries within him a small measure of the Old Gods' power. This three-headed hydra is greatly feared for his mindless savagery and insatiable hunger for living flesh, but the Twilight's Hammer worships him as a divine sign that the Old Gods will soon return.", 0.855224, 0.864179, 227, 1672, 8, 9442, 222, 2);
encounters.aku_mai:setLoot({}); 

encounters.timmy_the_cruel = createEncounter();
encounters.timmy_the_cruel:setAttributes("Timmy the Cruel", "Timmison was infamous for his savagery on the field of battle. Some speculate his sadism stemmed from the ceaseless bullying he endured as a child. Now reborn as a Scourge monstrosity, his mind shattered, he is tormented by those memories, causing him to answer to the name he once loathed: Timmy.", 0.499999, 0.178279, 236, 474, 2, 4799, 317, 4);
encounters.timmy_the_cruel:setLoot({}); 

encounters.willey_hopebreaker = createEncounter();
encounters.willey_hopebreaker:setAttributes("Willey Hopebreaker", "Balnazzar took great pleasure in leveraging the cannon master Willey's destructive capabilities in undeath, calling his prized minion by the name of Hopebreaker. The dreadlord relishes that he has twisted Willey and other Scarlet Crusaders--who so despised the undead in life--into his unwitting pawns.", 0.0478142, 0.506148, 236, 475, 4, 4807, 317, 4);
encounters.willey_hopebreaker:setLoot({}); 

encounters.guardian_of_the_deep = createEncounter();
encounters.guardian_of_the_deep:setAttributes("Guardian of the Deep", "Underneath the cursed Moonshrine Ruins, ancient creatures battle for territory. Old Serra'kis was driven from the ruins by The Guardian of the Deep who was seeking new spawning grounds. Now, the Guardian watches over thousands of eggs until they can hatch, and spread throughout the waterways of Azeroth.", 0.586567, 0.308955, 227, 1676, 5, 9502, 223, 2);
encounters.guardian_of_the_deep:setLoot({}); 

encounters.instructor_galford = createEncounter();
encounters.instructor_galford:setAttributes("Instructor Galford", "Galford once took great pride in caring for the Crusade's most valued documents. However, as he lay dying, he watched in horror as his precious tomes were burnt around him. Balnazzar used this painful memory to imbue his servant with the fiery power that ravaged Galford in life.", 0.277323, 0.754099, 236, 477, 5, 4808, 317, 4);
encounters.instructor_galford:setLoot({}); 

encounters.balnazzar = createEncounter();
encounters.balnazzar:setAttributes("Balnazzar", "Balnazzar has never tasted true death, but he has suffered bitter defeat. After the Cataclysm rocked the world, he slaughtered the Scarlet Crusaders in Stratholme and transformed them into the undead creatures they once hated. The dreadlord now plots his machinations for vengeance upon Azeroth.", 0.204918, 0.821721, 236, 478, 6, 4828, 317, 4);
encounters.balnazzar:setLoot({}); 

encounters.the_unforgiven = createEncounter();
encounters.the_unforgiven:setAttributes("The Unforgiven", "Lylia was a blade of righteousness among her people. After Arthas commanded his forces to purge the city, her sanity was ripped apart from seeing countless innocents die by her hand. She fell on her sword to escape the madness around her, and she now exists as a spectral being forever denied absolution for her heinous acts.", 0.734973, 0.204918, 236, 472, 7, 4833, 317, 4);
encounters.the_unforgiven:setLoot({}); 

encounters.baroness_anastari = createEncounter();
encounters.baroness_anastari:setAttributes("Baroness Anastari", "While she lived, Anastari took what she wanted, no matter the cost. Death has done little to change that. Her soul ripped from her body, Anastari became a banshee, and she has abandoned her love of material trinkets in favor of possessions of a far more sinister kind.", 0.745902, 0.469262, 236, 479, 8, 4841, 318, 4);
encounters.baroness_anastari:setLoot({}); 

encounters.nerub_enkan = createEncounter();
encounters.nerub_enkan:setAttributes("Nerub'enkan", "Nerub'enkan was a fearsome warrior during the War of the Spider. Ultimately, she succumbed to her wounds and was raised into undeath as an obedient minion of the Scourge. Now the nerubian guards a ziggurat in Stratholme as fiercely as she defended her home in life.", 0.572404, 0.461065, 236, 480, 9, 4845, 318, 4);
encounters.nerub_enkan:setLoot({}); 

encounters.maleki_the_pallid = createEncounter();
encounters.maleki_the_pallid:setAttributes("Maleki the Pallid", "Maleki was among the first to join the Cult of the Damned, showing tremendous aptitude in harnessing the chill of the grave. Driven by an insatiable desire for power, the mage fervently hones his skills in dark magic to prepare for when he will be remade as a lich.", 0.674864, 0.227459, 236, 481, 10, 4851, 318, 4);
encounters.maleki_the_pallid:setLoot({}); 

encounters.magistrate_barthilas = createEncounter();
encounters.magistrate_barthilas:setAttributes("Magistrate Barthilas", "Barthilas was among those innocents purged by Arthas and his forces during the Culling of Stratholme. The Lich King eventually raised the former magistrate from the grave and commanded the hulking undead monstrosity to guard his ruined home.", 0.56694, 0.161885, 236, 482, 11, 4855, 318, 4);
encounters.magistrate_barthilas:setLoot({}); 

encounters.ramstein_the_gorger = createEncounter();
encounters.ramstein_the_gorger:setAttributes("Ramstein the Gorger", "Ramstein is one of the Scourge's most infamous abominations, a horror stitched together from numerous corpses and empowered by a ceaseless hunger. This monster committed unspeakable atrocities on countless innocent souls when Scourge forces overran Stratholme.", 0.456284, 0.198771, 236, 483, 12, 4859, 318, 4);
encounters.ramstein_the_gorger:setLoot({}); 

encounters.lord_aurius_rivendare = createEncounter();
encounters.lord_aurius_rivendare:setAttributes("Lord Aurius Rivendare", "Aurius's fall from grace was precipitous. Failing to exact retribution from his corrupted father, Baron Rivendare, the former paladin was not granted peace in death. He was tragically reforged into an instrument of the Scourge, the evil he had once sworn to defeat.", 0.386612, 0.20082, 236, 484, 13, 4862, 318, 4);
encounters.lord_aurius_rivendare:setLoot({}); 

encounters.avatar_of_hakkar = createEncounter();
encounters.avatar_of_hakkar:setAttributes("Avatar of Hakkar", "Hakkar was notorious for demanding sacrifices from his followers. Many millennia ago, he instructed the Atal'ai to bring forth his avatar, using blood ritually drained from living victims to feed him. The Atal'ai priests now seek to raise Hakkar's avatar with a modified version of this ritual, one that involves sacrificing green dragons. If the Atal'ai succeed, the re-emergence of Hakkar's avatar could spell doom for Azeroth.", 0.243169, 0.459016, 237, 492, 1, 4903, 220, 2);
encounters.avatar_of_hakkar:setLoot({}); 

encounters.jammal_an_the_prophet = createEncounter();
encounters.jammal_an_the_prophet:setAttributes("Jammal'an the Prophet", "Jammal'an is the current leader of the Atal'ai, the extremist sect of priests who fanatically worship Hakkar. While in deep meditation, Jammal'an received instructions on how to resurrect Hakkar by using the blood of his draconic foes, the green dragonflight. Jammal'an and his undead bodyguard Ogom the Wretched stand ready to oppose any who would prevent Hakkar's return, though the prophet's actions may unleash upon Azeroth an even more terrible force: the Emerald Nightmare.", 0.760929, 0.459016, 237, 488, 2, 4934, 220, 2);
encounters.jammal_an_the_prophet:setLoot({}); 

encounters.wardens_of_the_dream = createEncounter();
encounters.wardens_of_the_dream:setAttributes("Wardens of the Dream", "Four promising young drakes accompanied Eranikus into the Temple of Atal'Hakkar, eager to prove themselves by serving a great and powerful wyrm. One by one, they were captured and tainted by the Emerald Nightmare, and they now wander the halls of the Sunken Temple, lashing out at all who intrude upon their waking dream.", 0.499151, 0.870309, 237, 0, 3, 6114, 220, 2);
encounters.wardens_of_the_dream:setLoot({}); 

encounters.shade_of_eranikus = createEncounter();
encounters.shade_of_eranikus:setAttributes("Shade of Eranikus", "Eranikus, former consort to Ysera the Dreamer, was sent to guard the ruins of Atal'Hakkar and prevent Hakkar's emergence. Once within the temple, he and his retinue were corrupted by its dark forces, and he became a shade, pulled between the realms of the Emerald Dream and the physical plane. Despite his corruption, Eranikus may still call upon his powers as a green dragon to spew corrosive acid at his enemies or trap them in a deep slumber.", 0.670765, 0.877049, 237, 493, 7, 4950, 220, 2);
encounters.shade_of_eranikus:setLoot({}); 

encounters.hogger = createEncounter();
encounters.hogger:setAttributes("Hogger", "Convict #SC55: Hogger Charges: Too many to list here Imprisoning the Riverpaw leader has come at a high cost, including the partial blinding of the warden. Fearing that Hogger might escape, Thelwater has authorized the gnoll's termination with extreme prejudice.", 0.218579, 0.262295, 238, 1144, 1, 4811, 225, 2);
encounters.hogger:setLoot({}); 

encounters.lord_overheat = createEncounter();
encounters.lord_overheat:setAttributes("Lord Overheat", "Convict #NA: Lord Overheat Charges: Homicide (multiple counts) The natural disasters wrought by the Cataclysm caused elementals to erupt into the prison complex, slaughtering half of the inmates upon arrival. Removing these incensed threats is imperative to restoring order to the stockade.", 0.784153, 0.452869, 238, 1145, 2, 4814, 225, 2);
encounters.lord_overheat:setLoot({}); 

encounters.randolph_moloch = createEncounter();
encounters.randolph_moloch:setAttributes("Randolph Moloch", "Convict #AC317: Randolph Moloch Charges: Embezzlement, fraud, theft, and homicide Moloch has been identified as the ringleader of the prison revolt. Given his connections to the House of Nobles, however, the use of lethal force to subdue this convict is not authorized.", 0.497268, 0.221312, 238, 1146, 3, 4817, 225, 2);
encounters.randolph_moloch:setLoot({}); 

encounters.revelosh = createEncounter();
encounters.revelosh:setAttributes("Revelosh", "Some luminaries in Ironforge's prestigious Explorers' League have theorized an ancestral link between their people and the troggs, and pointed towards the troggs' hoarding of titan artifacts as a reflection of the dwarves' own reverence for such wondrous devices. If that is true, the trogg known as Revelosh can be considered the trogg equivalent of an archaeologist, although any historically minded adventurers who encounter him would be more inclined to call him a thief.", 0.534153, 0.72541, 239, 547, 1, 4820, 230, 2);
encounters.revelosh:setLoot({}); 

encounters.the_lost_dwarves = createEncounter();
encounters.the_lost_dwarves:setAttributes("The Lost Dwarves", "Seeking fame and, more importantly, fortune, the three brothers Eric, Olaf, and Baelog took on a contract from the Explorers' League to delve deep into the halls of Uldaman and clear a path for a group of researchers. For these three dwarves, however, \"clearing a path\" unfortunately entailed \"getting hopelessly lost in an ancient labyrinth.\" Proud dwarves to the end, they fight to prevent the secrets of Uldaman and the Explorers' League from falling into the hands of the Horde.", 0.584699, 0.920082, 239, 548, 2, 4869, 230, 2);
encounters.the_lost_dwarves:setLoot({}); 

encounters.ironaya = createEncounter();
encounters.ironaya:setAttributes("Ironaya", "The titans did not construct the Uldaman complex directly, but utilized various servants to create its megalithic halls. The Pantheon entrusted the watcher Ironaya with overseeing the construction and maintenance of Uldaman, but as time passed, the once awe-inspiring vault fell to ruin. Within the map chamber, Ironaya has spent millennia in a form of stasis, analyzing the original master plan drawn up by Khaz'goroth and attempting to find a way to restore the complex to its original functionality.", 0.372951, 0.739754, 239, 549, 3, 4876, 230, 2);
encounters.ironaya:setLoot({}); 

encounters.ancient_stone_keeper = createEncounter();
encounters.ancient_stone_keeper:setAttributes("Ancient Stone Keeper", "One of many golems that staffed and operated the great titan vault, the Ancient Stone Keeper was part of a small group that served as an intermediary between the watchers left in control of the facility and their many servants. With the corruption of the Obsidian Sentinel, the Ancient Stone Keeper is the last of its kind, performing its duty by protecting the secrets of the titans as best it can until its inevitable shutdown.", 0.47541, 0.440574, 239, 551, 5, 4879, 230, 2);
encounters.ancient_stone_keeper:setLoot({}); 

encounters.galgann_firehammer = createEncounter();
encounters.galgann_firehammer:setAttributes("Galgann Firehammer", "Reacting to the discovery of Uldaman by Bronzebeard dwarves, the Dark Iron clan mounted an invasion of the vault to stop their ancestral foes from accessing the powerful artifacts within. Galgann Firehammer, a senator from Shadowforge City, was sent to oversee the continued excavation of Uldaman so that the emperor may harness the artifacts' destructive potential against the Dark Irons' enemies.", 0.26776, 0.327869, 239, 552, 6, 4880, 230, 2);
encounters.galgann_firehammer:setLoot({}); 

encounters.grimlok = createEncounter();
encounters.grimlok:setAttributes("Grimlok", "In trogg society, the biggest, strongest, and most vicious trogg often becomes chieftain through displays of power. Grimlok is a comparative genius in that he has maintained control of the Stonevault troggs through intimidation and what might be considered crude psychological warfare. Having trained a deadly basilisk, Grimlok uses the threat of petrification by his beast to keep any would-be usurpers in line.", 0.219945, 0.256148, 239, 553, 7, 4886, 230, 2);
encounters.grimlok:setLoot({}); 

encounters.archaedas = createEncounter();
encounters.archaedas:setAttributes("Archaedas", "Deep within Uldaman is a chamber containing one of the greatest treasures of the titans, created by Norgannon himself. However, thus far no explorers have managed to gain access to the relic, for any attempt at doing so activates the great watcher Archaedas, an immense guardian who easily dispatches treasure seekers through his powerful attacks and a veritable army of servants. Crafted from some of the oldest, strongest stone taken from Uldaman's depths, Archaedas is a foe as formidable as he is ancient.", 0.553279, 0.504098, 239, 554, 8, 4894, 231, 2);
encounters.archaedas:setLoot({}); 

encounters.lady_anacondra = createEncounter();
encounters.lady_anacondra:setAttributes("Lady Anacondra", "Scarletleaf was the first to volunteer for Naralex's self-appointed mission to the Barrens. After her master's nightmare shattered her mind, the young acolyte cast aside her name, now envisioning a sinister reptilian future for Azeroth.", 0.306011, 0.430328, 240, 585, 1, 4954, 279, 2);
encounters.lady_anacondra:setLoot({}); 

encounters.lord_cobrahn = createEncounter();
encounters.lord_cobrahn:setAttributes("Lord Cobrahn", "Jarlaxla's skill at harnessing animal forms earned him renown among the druids of the Cenarion Circle. However, the Wailing Caverns' corruption twisted his unique abilities. Now, Jarlaxla has perfected a deadly serpentine form, renaming himself Cobrahn to reflect his vicious newfound power.", 0.166667, 0.567623, 240, 586, 3, 4958, 279, 2);
encounters.lord_cobrahn:setLoot({}); 

encounters.lord_pythas = createEncounter();
encounters.lord_pythas:setAttributes("Lord Pythas", "A childhood friend of Naralex, the warrior Aryn was a quick study in druidism. Despite his training, the acolyte was defenseless against the corruption that would strip away his sanity. Aryn has taken on the name Pythas, combining his impressive melee prowess with his druidic arsenal to vanquish intruders.", 0.191257, 0.395492, 240, 588, 2, 4965, 279, 2);
encounters.lord_pythas:setLoot({}); 

encounters.kresh = createEncounter();
encounters.kresh:setAttributes("Kresh", "An ancient resident of the Wailing Caverns, this giant turtle wanders the underground caves, his resilient mind unaffected by Naralex's relentless nightmares. Don't be fooled by his happy disposition; Kresh has thwarted many adventurers who longed to steal his massive shell.", 0.385246, 0.360656, 240, 587, 4, 4969, 279, 2);
encounters.kresh:setLoot({}); 

encounters.skum = createEncounter();
encounters.skum:setAttributes("Skum", "Skum first journeyed to the Wailing Caverns for relief from the Barrens' hostile environment. Like many of the caves' other inhabitants, he quickly succumbed to corruption. His veins now pulse with dark energies that have transformed him into a mighty and ruthless beast beyond redemption.", 0.622951, 0.743853, 240, 589, 5, 4970, 279, 2);
encounters.skum:setLoot({}); 

encounters.lord_serpentis = createEncounter();
encounters.lord_serpentis:setAttributes("Lord Serpentis", "The Druids of the Fang's leader was once Naralex's finest student. His tragic downfall stemmed from his desire to become a shan'do, or \"honored teacher,\" like Naralex. As insanity took root, Serpentis rallied his brethren to his side and formed the Druids of the Fang.", 0.61612, 0.538935, 240, 590, 6, 4971, 279, 2);
encounters.lord_serpentis:setLoot({}); 

encounters.verdan_the_everliving = createEncounter();
encounters.verdan_the_everliving:setAttributes("Verdan the Everliving", "Little is known about this creature prior to Naralex's arrival at the Wailing Caverns. Thought to be the caves' original guardian, Verdan the Everliving could not escape the corruption that befell its home. Verdan is allied with the insane druids and maintains its vigil against those who trespass into its domain.", 0.554645, 0.465164, 240, 591, 7, 4974, 279, 2);
encounters.verdan_the_everliving:setLoot({}); 

encounters.mutanus_the_devourer = createEncounter();
encounters.mutanus_the_devourer:setAttributes("Mutanus the Devourer", "From the darkest corners of Naralex's twisted mind, the corruption plaguing the Emerald Dream has manifested in the form of the druid's worst enemy: murlocs. The aberration known as Mutanus has come to the waking world to devour any who seek to liberate Naralex from the Nightmare's clutches.", 0.345628, 0.137295, 240, 592, 8, 4975, 279, 2);
encounters.mutanus_the_devourer:setLoot({}); 

encounters.gahz_rilla = createEncounter();
encounters.gahz_rilla:setAttributes("Gahz'rilla", "Legend has it that Gahz'rilla was an adored pet of the Old Gods, or even a demigod in her own right. Whatever the truth is, the Sandfury trolls have worshiped this monstrous hydra for thousands of years. Ever wary of the beast's icy wrath, the trolls will only rouse Gahz'rilla when they have plentiful sacrifices to sate the ravenous creature's appetite.", 0.280942, 0.382783, 241, 594, 2, 4981, 219, 2);
encounters.gahz_rilla:setLoot({}); 

encounters.antu_sul = createEncounter();
encounters.antu_sul:setAttributes("Antu'sul", "Antu'sul prefers his sul'lithuz basilisks strong and ruthless. He treats these scaled beasts like family, and he is known to strike down anyone--even fellow trolls--who harm his precious children. Rather than give his opponents a proper burial, Antu'sul allows the basilisks to feast on whoever dares cross him.", 0.646175, 0.276639, 241, 595, 3, 4986, 219, 2);
encounters.antu_sul:setLoot({}); 

encounters.theka_the_martyr = createEncounter();
encounters.theka_the_martyr:setAttributes("Theka the Martyr", "Long ago, the martyr Theka was slain in the brutal war between the qiraji and the trolls. Zul'Farrak still stands because of his brave sacrifice. Even in death he maintains a vigil over his beloved city, and it is said that the dozens of insectoid warriors who killed him were cursed to live as mindless scarabs, scuttling at the martyr's side.", 0.531421, 0.262295, 241, 596, 4, 5005, 219, 2);
encounters.theka_the_martyr:setLoot({}); 

encounters.witch_doctor_zum_rah = createEncounter();
encounters.witch_doctor_zum_rah:setAttributes("Witch Doctor Zum'rah", "The powerful loa Bwonsamdi watches over the spirits of the Darkspear trolls, but many of the Sandfury tribe's fallen members are offered no such protection after death. These tortured spirits obey Zum'rah, a cruel witch doctor who uses his dark magic to force the city's dead into unending service.", 0.442623, 0.17623, 241, 597, 5, 5011, 219, 2);
encounters.witch_doctor_zum_rah:setLoot({}); 

encounters.nekrum_sezz_ziz = createEncounter();
encounters.nekrum_sezz_ziz:setAttributes("Nekrum & Sezz'ziz", "Nekrum Gutchewer has mysteriously lived well past his natural life, but his decaying body remains strong enough to aid Sezz'ziz. Together, these two trolls have gathered sacrifices to the mythic beast Gahz'rilla, who slumbers at the city's heart. Many troll followers eagerly await the terrifying creature's awakening, and they will do anything to see the ritual through.", 0.296448, 0.17418, 241, 598, 6, 5019, 219, 2);
encounters.nekrum_sezz_ziz:setLoot({}); 

encounters.chief_ukorz_sandscalp = createEncounter();
encounters.chief_ukorz_sandscalp:setAttributes("Chief Ukorz Sandscalp", "Chief Ukorz Sandscalp is obsessed with restoring his tribe to its former glory. He was raised on stories of a time when trolls lorded over their ancient lands without interference from goblins, gnomes, pirates, ogres, and other foreign interlopers. Sandscalp has called on his trusted comrade Ruuzlu to help him begin a new chapter in Sandfury history in the only way their tribe knows how: with swift and blinding violence.", 0.422131, 0.329918, 241, 600, 8, 5025, 219, 2);
encounters.chief_ukorz_sandscalp:setLoot({}); 

encounters.shirrak_the_dead_watcher = createEncounter();
encounters.shirrak_the_dead_watcher:setAttributes("Shirrak the Dead Watcher", "Shirrak was constructed by Exarch Maladaar to guard over the fallen draenei spirits who wander the Auchenai Crypts. A necrotic mass of eyes, teeth, and tentacles, this undead construct absorbs arcane energy with hungry abandon, and will not suffer the living to pass.", 0.463115, 0.680327, 247, 1890, 1, 5038, 257, 4);
encounters.shirrak_the_dead_watcher:setLoot({}); 

encounters.exarch_maladaar = createEncounter();
encounters.exarch_maladaar:setAttributes("Exarch Maladaar", "The sole living remnant of the glory that once strode the halls of Auchenai, Maladaar has been driven mad by the loss of everyone and everything he ever loved. His lunatic dedication to the preservation of their memory has driven him to a mastery of the dark arts.", 0.739071, 0.508196, 247, 1889, 2, 5042, 257, 4);
encounters.exarch_maladaar:setLoot({}); 

encounters.watchkeeper_gargolmar = createEncounter();
encounters.watchkeeper_gargolmar:setAttributes("Watchkeeper Gargolmar", "Reviled amongst the denizens of Outland, Gargolmar is known to eat the hearts of those he catches near the Hellfire Citadel whether they were trying to enter or not. Charged by Kargath Bladefist himself with the defense of the ramparts, Watchkeeper Gargolmar is unflinching in his duty.", 0.729508, 0.313525, 248, 1893, 1, 5049, 347, 4);
encounters.watchkeeper_gargolmar:setLoot({}); 

encounters.omor_the_unscarred = createEncounter();
encounters.omor_the_unscarred:setAttributes("Omor the Unscarred", "Omor the Unscarred was a disciple of Hakkar the Houndmaster, and took charge of the legendary warrior's remaining felhounds  after his master's defeat during the War of the Ancients. Since that time, Omor has never been defeated in single combat.  The venerable demon is Illidan's envoy to the fel orcs of Hellfire Citadel.", 0.39071, 0.204918, 248, 1891, 2, 5057, 347, 4);
encounters.omor_the_unscarred:setLoot({}); 

encounters.vazruden_the_herald = createEncounter();
encounters.vazruden_the_herald:setAttributes("Vazruden the Herald", "Vazruden guards the vital line of supplies, messages, and forces flowing between Hellfire Citidel and the Black Temple.  Astride his magnificent nether drake Nazan, Vazruden presents an unstoppable aerial force of fire, claws, and shrieking terror.", 0.355191, 0.827869, 248, 1892, 3, 5064, 347, 4);
encounters.vazruden_the_herald:setLoot({}); 

encounters.selin_fireheart = createEncounter();
encounters.selin_fireheart:setAttributes("Selin Fireheart", "Once a respected captain of Kael'Thas Sunstrider's personal guard, Selin Fireheart has maintained an unswervingly fierce loyalty to his lord while losing his sanity. Selin has been seduced by the demonic energies of the crystals which surround his chamber, and cannot stop from reveling in their vile power. He will slay any who dare approach the Magister's Terrace and will drink the magic, life, and blood from their dead bodies.", 0.424864, 0.223361, 249, 1897, 1, 5078, 349, 4);
encounters.selin_fireheart:setLoot({}); 

encounters.vexallus = createEncounter();
encounters.vexallus:setAttributes("Vexallus", "An arcane elemental of unimaginable power, Vexallus was summoned to the Magister's Terrace by a trio of blood elves who were slain by the force of his arrival. The magical energy in the surrounding crystals resonates within Vexallus, and his being is in a constant state of explosive chaotic flux.", 0.8347, 0.264344, 249, 1898, 2, 5082, 349, 4);
encounters.vexallus:setLoot({}); 

encounters.priestess_delrissa = createEncounter();
encounters.priestess_delrissa:setAttributes("Priestess Delrissa", "Delrissa is a shivarra priestess acting under the demon lord Kil'jaeden. It is Delrissa who revived Kael'thas Sunstrider after he was heavily wounded in an attack on Tempest Keep, and she has stayed in the blood elf lord's presence ever since. The priestess has a militant circle of loyal acolytes who serve her and will defend her at all cost.", 0.397541, 0.557377, 249, 1895, 3, 5090, 348, 4);
encounters.priestess_delrissa:setLoot({}); 

encounters.kael_thas_sunstrider = createEncounter();
encounters.kael_thas_sunstrider:setAttributes("Kael'thas Sunstrider", "Once a true champion to the blood elf people, and a defender of the race's ancient heritage, Kael'thas Sunstrider has fallen prey to the dark influences of the demon Kil'jaeden while sojourning in Outland. At the bidding of his new master, the wayward prince returned to Azeroth and seized the Sunwell, hoping to use the fount as a means to open a doorway for the demon to this new and verdant world. Kael'thas is a brilliant tactician, a powerful warrior, and his veins burn with limitless fel magic.", 0.0860656, 0.502049, 249, 1894, 4, 5166, 348, 4);
encounters.kael_thas_sunstrider:setLoot({}); 

encounters.pandemonius = createEncounter();
encounters.pandemonius:setAttributes("Pandemonius", "This infamous Void Lord is also known as the Duke of Chaos, the Eater of Nations, and Worldslayer. Pandemonius was one of the commanders serving under Dimensius when the ethereal homeworld of K'aresh was destroyed. He was later bound by Nexus-Prince Shaffar and forced to continue sating his unending hunger in service to the ethereals.", 0.479508, 0.297131, 250, 1900, 1, 5188, 272, 4);
encounters.pandemonius:setLoot({}); 

encounters.tavarok = createEncounter();
encounters.tavarok:setAttributes("Tavarok", "Under the command of Kael'thas Sunstrider, Pathaleon the Calculator summoned a powerful colossus to gather the arcane energies flowing from beneath the Mana Tombs. Tavarok has unexpectedly been transformed by the unique emanations, losing the red-tinged corruption of Pathaleon's influence. The white colossus has gained his own free will and uses it to greedily consume all who would stand in his way.", 0.609289, 0.741804, 250, 1901, 2, 5191, 272, 4);
encounters.tavarok:setLoot({}); 

encounters.yor = createEncounter();
encounters.yor:setAttributes("Yor", "A \"gift\" from Illidan Stormrage to accompany Nexus-Prince Shaffar, Yor is a void hound of unlimited savagery and power.  The prince's advisors warned him that Illidan's demonic gift was most likely a ruse set to betray Shaffar once he had met his goals. The prince fed those advisors to Yor... but has since kept the hound in a stasis chamber, just in case.", 0.356557, 0.608607, 250, 250, 3, 5194, 272, 2);
encounters.yor:setLoot({}); 

encounters.nexus_prince_shaffar = createEncounter();
encounters.nexus_prince_shaffar:setAttributes("Nexus-Prince Shaffar", "Convinced that vast riches lay within the depths of the Mana Tombs, Nexus-Prince Shaffar has spent untold amounts of his own considerable fortune to move an army into the shadowed halls of this crumbling ruin, and to keep competing ethereals out. The prince's greed knows no bounds, and he has vowed to uncover the mysteries of the Mana Tombs or die trying.", 0.32377, 0.491803, 250, 1899, 4, 5196, 272, 4);
encounters.nexus_prince_shaffar:setLoot({}); 

encounters.lieutenant_drake = createEncounter();
encounters.lieutenant_drake:setAttributes("Lieutenant Drake", "Lieutenant Drake was an ambitious military man, with his eyes set upon the glory of command during the Second War. His ambition was only matched by his hatred for the green-skinned orcs who had slain so many of his companions, a hatred which took form in his cruel treatment of the prisoners in the internment camps of Durnholde Keep.", 0.754098, 0.661885, 251, 1905, 1, 5205, 274, 4);
encounters.lieutenant_drake:setLoot({}); 

encounters.captain_skarloc = createEncounter();
encounters.captain_skarloc:setAttributes("Captain Skarloc", "Fiercely loyal to Aedelas Blackmoore, Captain Skarloc rose through the ranks of the Durnholde military alongside his friend Aliden Perenolde.  When Aliden decided to take up operations in the Alterac Mountains, Skarloc stayed with his Lord and mentor. He became Aedelas's most trusted comrade and advisor, earning the title \"Blackmoore's Spear.\"", 0.691257, 0.696721, 251, 1907, 2, 5210, 274, 4);
encounters.captain_skarloc:setLoot({}); 

encounters.epoch_hunter = createEncounter();
encounters.epoch_hunter:setAttributes("Epoch Hunter", "The mysteriously-named Epoch Hunter is an assassin from the infinite dragonflight sent to alter the course of history by killing Thrall before he can escape from Durnholde. The shadowy drake has slain countless beings in service of his cause, but this will be his most important kill. He will summon every ounce of his strength, power, subtlety, and cunning to bring about the end of this timeline.", 0.508197, 0.319672, 251, 1906, 3, 5225, 274, 4);
encounters.epoch_hunter:setLoot({}); 

encounters.darkweaver_syth = createEncounter();
encounters.darkweaver_syth:setAttributes("Darkweaver Syth", "Darkweaver Syth is charged by the Talon King Ikiss to defend the Sethekk Halls while the renegade arakkoa search for their enigmatic god. A master of shadowy magic, this wizened trickster has learned how to bend the very elements to his sway.", 0.487705, 0.680328, 252, 1903, 1, 5230, 258, 4);
encounters.darkweaver_syth:setLoot({}); 

encounters.anzu = createEncounter();
encounters.anzu:setAttributes("Anzu", "A mysterious avian deity worshipped by some of the more savage arakkoa, Anzu is a being whose origins and powers are unlike any other member of Outland's fallen pantheon. The Naaru are silent regarding this malevolent creature, for Anzu's ways are hidden from even them.", 0.326503, 0.545082, 252, 1904, 2, 5248, 259, 2);
encounters.anzu:setLoot({}); 

encounters.talon_king_ikiss = createEncounter();
encounters.talon_king_ikiss:setAttributes("Talon King Ikiss", "Talon King Ikiss was the charismatic spiritual leader of the daring group of arakkoa which left their home in the Terokkar forest in search of a \"promised god.\" He had received dreams of this god as he slept, and knew that revelation lay within the crumbling halls of Auchindoun. Ikiss was driven insane by the visions, and now declares himself to be Terokk reborn, a divine hero from arakkoa myth.", 0.326503, 0.276639, 252, 1902, 3, 5256, 259, 4);
encounters.talon_king_ikiss:setLoot({}); 

encounters.ambassador_hellmaw = createEncounter();
encounters.ambassador_hellmaw:setAttributes("Ambassador Hellmaw", "A powerful demonic servant and acolyte of pain, Ambassador Hellmaw is dedicated to the art of death. He loves nothing more than the taste of a mortal's lifeblood tinged with horror and despair.  Hellmaw is bound by the fel orcs of the Shadow Labyrinth and fed a constant stream of prisoners, bolstering the demon to serve the black will of his masters.", 0.218579, 0.395492, 253, 1908, 1, 5261, 260, 4);
encounters.ambassador_hellmaw:setLoot({}); 

encounters.blackheart_the_inciter = createEncounter();
encounters.blackheart_the_inciter:setAttributes("Blackheart the Inciter", "When the orcish Horde first invaded Azeroth through the Dark Portal, two Shadow Council members instead turned their attentions to the ancient draenei burial grounds of Auchindoun. The unquiet spirits in the area proved to be excellent subjects for the warlock Blackheart to perfect his mind control abilities.", 0.26776, 0.704918, 253, 1909, 2, 5263, 260, 4);
encounters.blackheart_the_inciter:setLoot({}); 

encounters.grandmaster_vorpil = createEncounter();
encounters.grandmaster_vorpil:setAttributes("Grandmaster Vorpil", "In the early days of the Horde, Grandmaster Vorpil convinced the orc warlock Gul'dan to allow him to investigate the mysteries of Auchindoun, secretly desiring to harness the energy of the frighteningly powerful cosmic essences that permeated the area.", 0.531421, 0.540983, 253, 1911, 3, 5266, 260, 4);
encounters.grandmaster_vorpil:setLoot({}); 

encounters.murmur = createEncounter();
encounters.murmur:setAttributes("Murmur", "In the beginning\"... \"So far away\"... such phrases cannot begin to describe this elemental's origin. Its existence heralds pure destruction. Worlds shatter and the pieces scatter at its whim. Only the truly mad would think to summon it. Perhaps there is yet time to banish Murmur before it fully enters Outland.", 0.808743, 0.391393, 253, 1910, 4, 5272, 260, 4);
encounters.murmur:setLoot({}); 

encounters.zereketh_the_unbound = createEncounter();
encounters.zereketh_the_unbound:setAttributes("Zereketh the Unbound", "Most creatures from the Twisting Nether require constant directions from their masters, but a select few voidwraiths need no such orders. Zereketh stands at the entrance to Arcatraz, ready to slay all who would dare challenge him.", 0.592896, 0.243853, 254, 1916, 1, 5279, 269, 4);
encounters.zereketh_the_unbound:setLoot({}); 

encounters.dalliah_the_doomsayer = createEncounter();
encounters.dalliah_the_doomsayer:setAttributes("Dalliah the Doomsayer", "Before she was imprisoned by the naaru, Dalliah was one of the most vicious and aggressive warriors within the Burning Legion. Spending so much time as a cellmate to Wrath-Scryer Soccothrates did not improve her disposition either.", 0.363388, 0.782787, 254, 1913, 2, 5283, 270, 4);
encounters.dalliah_the_doomsayer:setLoot({}); 

encounters.wrath_scryer_soccothrates = createEncounter();
encounters.wrath_scryer_soccothrates:setAttributes("Wrath-Scryer Soccothrates", "Millennia ago, Soccothrates held a position of honor among the Wrathguards, standing at the side of the Burning Legion's top commanders. Confinement did not suit his considerable ego. Neither did his cellmate.", 0.199454, 0.786885, 254, 1915, 3, 5291, 270, 4);
encounters.wrath_scryer_soccothrates:setLoot({}); 

encounters.harbinger_skyriss = createEncounter();
encounters.harbinger_skyriss:setAttributes("Harbinger Skyriss", "The naaru believed the persuasive voice of Harbinger Skyriss was silenced when they contained him and forced him into a long, dreamless sleep. The unfortunate warden of Arcatraz learned the naaru were wrong. Skyriss had just enough energy to speak to Warden Mellichar in a still, small voice. Time took care of the rest.", 0.61612, 0.307377, 254, 1914, 4, 5298, 271, 4);
encounters.harbinger_skyriss:setLoot({}); 

encounters.chrono_lord_deja = createEncounter();
encounters.chrono_lord_deja:setAttributes("Chrono Lord Deja", "The Infinite Dragonflight tempted many drakonid with promises of power, but most found only servitude and despair. One of the few exceptions is Chrono Lord Deja, who gained influence within the flight through his raw power and cunning.", 0.45082, 0.620901, 255, 1920, 1, 5336, 273, 4);
encounters.chrono_lord_deja:setLoot({}); 

encounters.temporus = createEncounter();
encounters.temporus:setAttributes("Temporus", "Although relatively young, Temporus was instrumental in identifying many of the Infinite Dragonflight's prime targets.  As a reward, he was given the responsibility of destroying anyone who might attempt to interfere with the dragonflight's plans.", 0.54918, 0.618853, 255, 1921, 2, 5340, 273, 4);
encounters.temporus:setLoot({}); 

encounters.aeonus = createEncounter();
encounters.aeonus:setAttributes("Aeonus", "Powerful and wild, Aeonus was tasked by the Master of the Infinite Dragonflight to personally oversee the disruption of key moments in the true timeway.", 0.480874, 0.745902, 255, 1919, 3, 5344, 273, 4);
encounters.aeonus:setLoot({}); 

encounters.the_maker = createEncounter();
encounters.the_maker:setAttributes("The Maker", "All creatures who use the power of fel magic, willingly or otherwise, slowly take on the appearance of demons. The Maker accelerates their corruption and performs cruel experiments on any who attempt to resist.", 0.386612, 0.418033, 256, 1922, 1, 5356, 261, 4);
encounters.the_maker:setLoot({}); 

encounters.broggok = createEncounter();
encounters.broggok:setAttributes("Broggok", "Some creatures occasionally have second thoughts about their allegiance to their new, corrupt masters. Broggok ensures that any subversive notions among the fel orcs are permanently eradicated.", 0.43306, 0.219262, 256, 1924, 2, 5367, 261, 4);
encounters.broggok:setLoot({}); 

encounters.keli_dan_the_breaker = createEncounter();
encounters.keli_dan_the_breaker:setAttributes("Keli'dan the Breaker", "When Illidan overthrew the pit lord Magtheridon and took control of Outland, he had the demonic leader imprisoned beneath the Hellfire Citadel. Only the most stalwart among Illidan's forces could ever hope to keep him contained; the ruthless orc, Keli'dan, was the only possible choice.", 0.583333, 0.411885, 256, 1923, 3, 5382, 261, 4);
encounters.keli_dan_the_breaker:setLoot({}); 

encounters.commander_sarannis = createEncounter();
encounters.commander_sarannis:setAttributes("Commander Sarannis", "When the fallen blood elf leader, Kael'thas, seized control of the Tempest Keep, he immediately ordered Commander Sarannis to prepare defenses against whomever the naaru might send to reclaim the keep.", 0.442623, 0.233607, 257, 1925, 1, 5401, 266, 4);
encounters.commander_sarannis:setLoot({}); 

encounters.high_botanist_freywinn = createEncounter();
encounters.high_botanist_freywinn:setAttributes("High Botanist Freywinn", "Mere minutes after entering the Botanica, Freywinn began conducting reckless experiments in order to unlock the power hidden among the native plant life of Outland.", 0.241803, 0.227459, 257, 1926, 2, 5418, 266, 4);
encounters.high_botanist_freywinn:setLoot({}); 

encounters.thorngrin_the_tender = createEncounter();
encounters.thorngrin_the_tender:setAttributes("Thorngrin the Tender", "Experiments require resources. Thorngrin the Tender makes sure that Kael'thas's botanists have the power and essence they need to reveal the naaru's secrets, even if that means untold numbers of living creatures must be sacrificed to obtain it.", 0.0737704, 0.481557, 257, 1928, 3, 5460, 266, 4);
encounters.thorngrin_the_tender:setLoot({}); 

encounters.laj = createEncounter();
encounters.laj:setAttributes("Laj", "The naaru gathered samples of unusual wildlife from across Outland. Their safeguards were destroyed when the Botanica was invaded, leaving some of the most dangerous specimens free to roam.", 0.340164, 0.862706, 257, 1927, 4, 5463, 266, 4);
encounters.laj:setLoot({}); 

encounters.warp_splinter = createEncounter();
encounters.warp_splinter:setAttributes("Warp Splinter", "The night elves of Darnassus have asked for help in restoring an Ancient of the Arcane, who found itself trapped in Tempest Keep. Frightened by the recent attack by Kael'thas Sunstrider's forces, the Warp Splinter is unable to differentiate friend from foe and is liable to attack any who disturb it.", 0.342896, 0.368853, 257, 1929, 5, 5476, 266, 4);
encounters.warp_splinter:setLoot({}); 

encounters.mechano_lord_capacitus = createEncounter();
encounters.mechano_lord_capacitus:setAttributes("Mechano-Lord Capacitus", "It takes a tremendous amount of skill and precision to harvest the power of the naaru's manacells. These talents can easily be turned upon any intruders.", 0.513661, 0.315574, 258, 1932, 1, 5479, 267, 4);
encounters.mechano_lord_capacitus:setLoot({}); 

encounters.nethermancer_sepethrea = createEncounter();
encounters.nethermancer_sepethrea:setAttributes("Nethermancer Sepethrea", "Thanks to her skills at quickly summoning creatures to destroy any enemies, Sepethrea was chosen as an apprentice to Pathaleon the Calculator, the blood elf in charge of the Mechanar.", 0.478142, 0.202869, 258, 1930, 2, 5484, 268, 4);
encounters.nethermancer_sepethrea:setLoot({}); 

encounters.pathaleon_the_calculator = createEncounter();
encounters.pathaleon_the_calculator:setAttributes("Pathaleon the Calculator", "Following the Sunwell's defilement, the vainglorious arcanist Pathaleon saw an opportunity to gain renown by aiding Kael'thas in finding a cure for his race's addiction to magic. This single-minded quest led him to join the blood elf prince on Outland and oversee his disastrous experiments. Most recently, Pathaleon has begun harnessing the Tempest Keep's otherworldly technologies in pursuit of fame and power.", 0.271858, 0.610656, 258, 1931, 3, 5489, 268, 4);
encounters.pathaleon_the_calculator:setLoot({}); 

encounters.grand_warlock_nethekurse = createEncounter();
encounters.grand_warlock_nethekurse:setAttributes("Grand Warlock Nethekurse", "Nethekurse, once a shaman of the Shadowmoon clan, abandoned his reverence for the elements to master the art of wielding fel magic. The demonic energies at his command have left him a husk who finds delight only in torturing young fel orcs to test the limits of their mental and physical strength.", 0.333333, 0.620902, 259, 1936, 1, 5497, 246, 4);
encounters.grand_warlock_nethekurse:setLoot({}); 

encounters.warbringer_o_mrogg = createEncounter();
encounters.warbringer_o_mrogg:setAttributes("Warbringer O'mrogg", "The ruthless and cunning ogre O'mrogg is considered one of the Fel Horde's deadliest members. But this feared brute has a problem. The ogre's two heads have always struggled to agree on even the simplest matters. Two years ago, O'mrogg began a twelve-step plan to develop a synergy between his warring personalities. His heads have yet to decide on which step to start with.", 0.54235, 0.342213, 259, 1937, 3, 5893, 246, 4);
encounters.warbringer_o_mrogg:setLoot({}); 

encounters.warchief_kargath_bladefist = createEncounter();
encounters.warchief_kargath_bladefist:setAttributes("Warchief Kargath Bladefist", "Chieftain of the Shattered Hand clan and warchief of the Fel Horde, Kargath is one of the greatest orcish heroes in recent memory. Over the years, he has severed both of his hands and replaced them with weapons of war, a bloody ritual unique to his clan. The joy he derives from inflicting pain on both others and himself is legendary among the orcs. As the Fel Horde's tyrannical ruler, he has channeled his ruthlessness and ferocity into forging an unstoppable army within the iron walls of Hellfire Citadel.", 0.673497, 0.545082, 259, 1938, 4, 5898, 246, 4);
encounters.warchief_kargath_bladefist:setLoot({}); 

encounters.mennu_the_betrayer = createEncounter();
encounters.mennu_the_betrayer:setAttributes("Mennu the Betrayer", "Mennu is one of the Broken, draenei twisted and deformed by demonic energies unleashed by the orcs. When the naga invaded Zangarmarsh, many of these tragic beings desperately attempted to escape the region. Mennu, however, chose a different path to freedom. In exchange for his own life, he betrayed his fellow Broken to the serpentine invaders and agreed to lord over his kin as a slave driver.", 0.490437, 0.270492, 260, 1939, 1, 5902, 265, 4);
encounters.mennu_the_betrayer:setLoot({}); 

encounters.rokmar_the_crackler = createEncounter();
encounters.rokmar_the_crackler:setAttributes("Rokmar the Crackler", "Following Draenor's destruction, Rokmar fled into the depths of Zangarmarsh. The energies that had torn the world apart enveloped the behemoth, bolstering its strength and size at the price of constant agony. The naga were awed by Rokmar's ferocity when they first arrived in the region. Rather than kill the beast, they enslaved it and used the creature to subjugate much of Zangarmarsh's indigenous life.", 0.580601, 0.405738, 260, 1941, 2, 5907, 265, 4);
encounters.rokmar_the_crackler:setLoot({}); 

encounters.quagmirran = createEncounter();
encounters.quagmirran:setAttributes("Quagmirran", "Quagmirran was once a ruler of Zangarmarsh's immense fungal giants. He was captured by the naga while wandering the region's serpentine caverns and subjected to excruciating torture. Now this broken being serves his overlords without question, silencing all who oppose the will of Lady Vashj.", 0.821038, 0.768442, 260, 1940, 3, 5977, 265, 4);
encounters.quagmirran:setLoot({}); 

encounters.hydromancer_thespia = createEncounter();
encounters.hydromancer_thespia:setAttributes("Hydromancer Thespia", "At the height of the night elf empire, the Highborne Thespia delighted in art and music. Her love of these things vanished during the Great Sundering, when she and many of her kin were sucked into Azeroth's deeps and transformed into hateful naga. In the millennia that followed, Thespia remained a close confidant of her childhood friend, Lady Vashj. Without hesitation, she journeyed with her comrade to Zangarmarsh and vowed to oversee the naga's quest to drain the region's water supply.", 0.54235, 0.137295, 261, 1942, 1, 5982, 263, 4);
encounters.hydromancer_thespia:setLoot({}); 

encounters.mekgineer_steamrigger = createEncounter();
encounters.mekgineer_steamrigger:setAttributes("Mekgineer Steamrigger", "The irradiation of Gnomeregan transformed many of the city's survivors into leper gnomes. Among these victims was the brilliant Mekgineer Steamrigger. Although he escaped Gnomeregan and retained his intellect, whatever ethics and compassion he had once possessed were gone. He wandered Azeroth, selling his knowledge to a number of unscrupulous groups such as the Bloodsail Buccaneers. Recently, the naga hired Steamrigger to operate the intricate machinery in Zangarmarsh's Steamvault.", 0.34153, 0.819672, 261, 1943, 2, 5996, 263, 4);
encounters.mekgineer_steamrigger:setLoot({}); 

encounters.warlord_kalithresh = createEncounter();
encounters.warlord_kalithresh:setAttributes("Warlord Kalithresh", "Deep within the Steamvault, the naga have begun experimenting with a mysterious substance to strengthen their warriors and purge them of fear. Kalithresh was one of Lady Vashj's first servants to volunteer as a test subject for this dark elixir. As reward, he has been charged with guarding the expansive Steamvault and ensuring the region's arcane machinery operates without interruption.", 0.759563, 0.436475, 261, 1944, 3, 6001, 263, 4);
encounters.warlord_kalithresh:setLoot({}); 

encounters.hungarfen = createEncounter();
encounters.hungarfen:setAttributes("Hungarfen", "Unlike his ally, Quagmirran, the great fungal giant Hungarfen has thus far eluded enslavement by the naga. Nonetheless, he remains aggressive to all outsiders who tread into the deepest caverns of Zangarmarsh. Oblivious to the naga's machinations in other parts of the region, Hungarfen spends much of his time tending the Underspore, an ancient plant said to be his most prized possession.", 0.693989, 0.89959, 262, 1946, 1, 6006, 262, 4);
encounters.hungarfen:setLoot({}); 

encounters.ghaz_an = createEncounter();
encounters.ghaz_an:setAttributes("Ghaz'an", "Historians have long disagreed about whether the immense hydras of Azeroth and Outland share a common ancestor. What is clear, however, is that these ruthless creatures have existed on both realms since ancient times. Ghaz'an is one of the most infamous and fearsome hydras on Outland. Under the control of Lady Vashj, this ravenous fiend has stormed the lower reaches of Zangarmarsh to terrorize the region's denizens.", 0.786885, 0.288935, 262, 1945, 2, 6009, 262, 4);
encounters.ghaz_an:setLoot({}); 

encounters.swamplord_musel_ek = createEncounter();
encounters.swamplord_musel_ek:setAttributes("Swamplord Musel'ek", "To be one of the Broken is to be an outcast. This truth weighs heavy on Swamplord Musel'ek. Although he is a member of the Murkblood Broken, he prefers to roam the caverns beneath Zangarmarsh alone. During one of these recent wanderings, he used his mastery over beasts to enthrall Windcaller Claw, a druid who had been exploring the area in the form of a ferocious bear. Musel'ek has forced Claw to act as a loyal companion who will not judge him for the twisted being he has become.", 0.4153, 0.241803, 262, 1947, 3, 6013, 262, 4);
encounters.swamplord_musel_ek:setLoot({}); 

encounters.the_black_stalker = createEncounter();
encounters.the_black_stalker:setAttributes("The Black Stalker", "The marsh walkers of Outland are towering creatures that prowl the wilds, feasting on any lesser creatures they come across. The sporelings of Zangarmarsh tell tales concerning one of these predators, a particularly ruthless beast known as the Black Stalker. Broodmother to all marsh walkers, it is said she emerges from her lair deep in the Underbog only to satisfy her hunger for delicious sporelings.", 0.247268, 0.456967, 262, 1948, 4, 6036, 262, 4);
encounters.the_black_stalker:setLoot({}); 

encounters.elder_nadox = createEncounter();
encounters.elder_nadox:setAttributes("Elder Nadox", "Nadox was once a venerated nerubian leader who taught the ancient ways of his race to generations of broods. When the War of the Spider ravaged Azjol-Nerub, he was overcome by legions of undead. The Lich King reanimated his corpse and bled everything wise and noble from Nadox, forcing him to slaughter his students, friends, and all other nerubians who opposed the might of the Scourge.", 0.696721, 0.270492, 271, 1969, 1, 6041, 132, 4);
encounters.elder_nadox:setLoot({}); 

encounters.prince_taldaram = createEncounter();
encounters.prince_taldaram:setAttributes("Prince Taldaram", "After Kael'thas's failed assault against the Lich King, some of his greatest blood elf followers were slaughtered and raised into undeath as darkfallen. Prince Taldaram is one of these cunning and bloodthirsty vampiric beings. Always seeking to please the Lich King, he has entered the war-torn depths of Ahn'kahet in search of lost nerubian relics that can empower the Scourge's murderous ranks.", 0.631147, 0.495901, 271, 1966, 2, 6050, 132, 4);
encounters.prince_taldaram:setLoot({}); 

encounters.jedoga_shadowseeker = createEncounter();
encounters.jedoga_shadowseeker:setAttributes("Jedoga Shadowseeker", "Jedoga dreams of apocalypse. She is rumored to be one of the most fanatical adherents of the Twilight's Hammer. Under the guidance of the ruthless ogre mage Cho'gall, she learned to twist her shamanic powers to serve the Old Gods. Not long ago, Jedoga journeyed into the bowels of Ahn'kahet to prepare for the glorious day when Yogg-Saron will arise and envelop the lands of Azeroth in shadow.", 0.48224, 0.72541, 271, 1967, 3, 6055, 132, 4);
encounters.jedoga_shadowseeker:setLoot({}); 

encounters.amanitar = createEncounter();
encounters.amanitar:setAttributes("Amanitar", "For ages, fungi and other benign forms of life have thrived in Ahn'kahet's damp sun-starved caverns. Only recently has Yogg-Saron spread its oppressive will into this isolated ecosystem. The Old God used its immense corruptive powers to warp one of Ahn'kahet's native beasts into a monstrous creature known as Amanitar, an unthinking terror bristling with the destructive energies of its master.", 0.672131, 0.786885, 271, 1989, 4, 6060, 132, 2);
encounters.amanitar:setLoot({}); 

encounters.herald_volazj = createEncounter();
encounters.herald_volazj:setAttributes("Herald Volazj", "Amid the Scourge's invasion of Azjol-Nerub, many of the kingdom's denizens tunneled underground to escape the Lich King's minions. Yet some of them dug too deep, exposing the tendrils of Yogg-Saron. Roused by this disturbance, the entity has sent one of its most ancient warriors - Herald Volazj - to cull the beleaguered nerubians and annihilate anyone foolish enough to threaten the Old God.", 0.236339, 0.504098, 271, 1968, 5, 6067, 132, 4);
encounters.herald_volazj:setLoot({}); 

encounters.krik_thir_the_gatewatcher = createEncounter();
encounters.krik_thir_the_gatewatcher:setAttributes("Krik'thir the Gatewatcher", "The gates of Azjol-Nerub stood unchallenged for centuries until the arrival of the Lich King. In mockery of Krik'thir's inability to protect his home, the nerubian was raised into undeath and forced to protect the very gates he failed to guard successfully in life.", 0.501366, 0.45082, 272, 1971, 1, 6073, 159, 4);
encounters.krik_thir_the_gatewatcher:setLoot({}); 

encounters.hadronox = createEncounter();
encounters.hadronox:setAttributes("Hadronox", "During the fall of Azjol-Nerub, nerubian viziers released a single spider that would one day grow to challenge the unyielding forces of the Lich King. Hadronox was instilled with a desire to avenge the fallen and reclaim its home from any that dare threaten it.", 0.431694, 0.594262, 272, 1972, 2, 6351, 158, 4);
encounters.hadronox:setLoot({}); 

encounters.anub_arak = createEncounter();
encounters.anub_arak:setAttributes("Anub'arak", "The fates of Azjol-Nerub and Anub'arak have long been intertwined.  In life, he was the empire's king. In death, he was its conqueror. Charged by the Lich King to protect his old empire once more, the traitor king stands vigilant against any that threaten his kingdom.", 0.621585, 0.487705, 272, 1973, 3, 6355, 157, 4);
encounters.anub_arak:setLoot({}); 

encounters.trollgore = createEncounter();
encounters.trollgore:setAttributes("Trollgore", "The Drakkari were among the most vicious troll tribes and Trollgore was a paragon of the tribe's savagery. This hulking monstrosity discovered that his vaunted ferocity paled in comparison to the Lich King's and he now serves as a grisly warning to all that dare challenge Arthas' reign.", 0.565574, 0.182377, 273, 1974, 1, 6370, 160, 4);
encounters.trollgore:setLoot({}); 

encounters.novos_the_summoner = createEncounter();
encounters.novos_the_summoner:setAttributes("Novos the Summoner", "Novos was ever the opportunist and sought a means to rise above his mundane peers. The cultist carved his heart from his body and presented the still beating organ to his master seconds before his death. His initiative impressed his master who in turn remade him into a lich.", 0.702186, 0.479508, 273, 1976, 2, 6375, 160, 4);
encounters.novos_the_summoner:setLoot({}); 

encounters.king_dred = createEncounter();
encounters.king_dred:setAttributes("King Dred", "King Dred is a legend amongst the Drakkari. Stories tell of a troll hunting party locating a mighty beast that thrived in a habitat saturated with Scourge plague. The trolls tamed the devilsaur, believing that he alone held an antidote for the savage disease devastating their people.", 0.612022, 0.862705, 273, 1977, 3, 6390, 160, 4);
encounters.king_dred:setLoot({}); 

encounters.the_prophet_tharon_ja = createEncounter();
encounters.the_prophet_tharon_ja:setAttributes("The Prophet Tharon'ja", "Not even the stolen powers of a loa could stay death's hand as the Scourge marched on Drak'Tharon Keep. Tharon'ja now prophesies only triumph for his new master as legions of trolls are slaughtered before the Lich King.", 0.476776, 0.133197, 273, 1975, 4, 6396, 161, 4);
encounters.the_prophet_tharon_ja:setLoot({}); 

encounters.slad_ran = createEncounter();
encounters.slad_ran:setAttributes("Slad'ran", "Slad'ran took no pleasure in sacrificing the loa he had served all his life. As the powers of his god surged into him, the high prophet swore that the Scourge would suffer for the atrocities the Drakkari trolls were forced to commit.", 0.539617, 0.485656, 274, 1978, 1, 6411, 154, 4);
encounters.slad_ran:setLoot({}); 

encounters.drakkari_colossus = createEncounter();
encounters.drakkari_colossus:setAttributes("Drakkari Colossus", "The trolls' use of mojo in their voodoo magic has long been established, but the fusion of those magics into a golem was a revolutionary breakthrough. Their initial success led to the creation of numerous sentinels all spawned from their original creation: the colossus.", 0.465847, 0.655737, 274, 1983, 2, 6418, 154, 4);
encounters.drakkari_colossus:setLoot({}); 

encounters.moorabi = createEncounter();
encounters.moorabi:setAttributes("Moorabi", "The Drakkari sought to sacrifice Mam'toth for his powers, but instead the loa destroyed himself. Despite this act, Moorabi would not be denied his god-like powers. The high prophet drank of the loa's blood and will now stop at nothing to keep Zul'Drak firmly in troll hands.", 0.393442, 0.489754, 274, 1980, 3, 6980, 154, 4);
encounters.moorabi:setLoot({}); 

encounters.eck_the_ferocious = createEncounter();
encounters.eck_the_ferocious:setAttributes("Eck the Ferocious", "The Drakkari sealed their failed gorloc experiments away after numerous attempts to weaponize them. As the frost trolls battled the Scourge invading their beloved homeland, Eck and his minions awaited the moment their freedom was at hand.", 0.251366, 0.704918, 274, 1988, 4, 6664, 154, 2);
encounters.eck_the_ferocious:setLoot({}); 

encounters.gal_darah = createEncounter();
encounters.gal_darah:setAttributes("Gal'darah", "The Drakkari turned to their loa as the Scourge invaded the nation of Zul'Drak. The frost trolls did not come to the loa with implorations; they came with blades. As blood flowed from their murdered god, Akali, the high prophet Gal'darah and his betrayers claimed the loa's strength as their own.", 0.465847, 0.270492, 274, 1981, 5, 6989, 154, 4);
encounters.gal_darah:setLoot({}); 

encounters.general_bjarngrim = createEncounter();
encounters.general_bjarngrim:setAttributes("General Bjarngrim", "The iron forces of Loken are legion and their general, Bjarngrim, stands above them all. As the vanguard of Loken's Halls of Lightning, the iron commander ensures that any who trespass in his master's domain are terminated with extreme prejudice.", 0.435792, 0.372951, 275, 1987, 1, 7724, 138, 4);
encounters.general_bjarngrim:setLoot({}); 

encounters.volkhan = createEncounter();
encounters.volkhan:setAttributes("Volkhan", "Loken's powerful legions are a testament to the craftsmanship of his blacksmith, Volkhan. His work is never ending, ceaselessly creating soldiers to fight for the fallen keeper. Only when the blacksmith's creations stand atop the crumpled bodies of their enemies will his work be done.", 0.377049, 0.209017, 275, 1985, 2, 7042, 139, 4);
encounters.volkhan:setLoot({}); 

encounters.ionar = createEncounter();
encounters.ionar:setAttributes("Ionar", "Loken does not rely on his iron minions as his personal defenders. The fallen keeper relies upon lightning itself. Ionar and its cohorts were given sanctuary within the Halls of Lightning in exchange for their unquestioning loyalty and willingness to slaughter any who seek to confront their new master.", 0.614754, 0.77459, 275, 1984, 3, 7252, 139, 4);
encounters.ionar:setLoot({}); 

encounters.loken = createEncounter();
encounters.loken:setAttributes("Loken", "The prime designate of Azeroth was tasked to keep Yogg-Saron secure within its prison. None could have foreseen that the keeper entrusted to safeguard the world from the Old God's malevolence would be the one responsible for its undoing.", 0.189891, 0.522541, 275, 1986, 4, 7258, 139, 4);
encounters.loken:setLoot({}); 

encounters.falric = createEncounter();
encounters.falric:setAttributes("Falric", "This champion of the Scourge was among the first death knights created by Arthas after claiming Frostmourne. Falric loyally followed his prince on a doomed campaign to Northrend only to be rewarded with betrayal by the prince he served faithfully all his life.", 0.352459, 0.75, 276, 1992, 1, 7265, 185, 4);
encounters.falric:setLoot({}); 

encounters.marwyn = createEncounter();
encounters.marwyn:setAttributes("Marwyn", "Marwyn had known Arthas all his life and saw him not just as his prince, but as a true friend. As Arthas sailed to Northrend, the knight followed him without hesitation. Though his friend would later plunge a cursed runeblade through his heart, Marwyn still felt it break upon seeing what the prince had become.", 0.434426, 0.627049, 276, 1993, 2, 7269, 185, 4);
encounters.marwyn:setLoot({}); 

encounters.escape_from_arthas = createEncounter();
encounters.escape_from_arthas:setAttributes("Escape from Arthas", "Two leaders sought to defeat the Lich King in single combat, but quickly learned they were no match against the power of the one true king. Seeking to avoid their fate, they tried to flee from his sanctum. Arthas would savor every moment of their futile efforts. There was no escape from the inevitable.", 0.105191, 0.27459, 276, 1990, 3, 7273, 185, 4);
encounters.escape_from_arthas:setLoot({}); 

encounters.krystallus = createEncounter();
encounters.krystallus:setAttributes("Krystallus", "War isn't won by might alone; it is won by armies. This inherent truth inspired Loken to order the creation of loyal stone constructs to bolster his legions. Krystallus was chosen to oversee the operation and to crush any interloper that threatens its work.", 0.401639, 0.604508, 277, 1994, 1, 7285, 140, 4);
encounters.krystallus:setLoot({}); 

encounters.maiden_of_grief = createEncounter();
encounters.maiden_of_grief:setAttributes("Maiden of Grief", "Loken commands the forces of Ulduar, but not all serve him willingly. The Maiden of Grief has been ordered to destroy any who try reclaiming the Halls of Stone. She mourns turning on former allies, but fulfills her orders with violent purpose. Even her sorrows have been forged into weapons.", 0.502732, 0.862705, 277, 1996, 2, 7290, 140, 4);
encounters.maiden_of_grief:setLoot({}); 

encounters.tribunal_of_ages = createEncounter();
encounters.tribunal_of_ages:setAttributes("Tribunal of Ages", "Abedneum, Kaddrak, and Marnak make up the Tribunal of Ages, librarians for the titan discs that contain the ancient histories of Azeroth. The immobile constructs do not give up the titans' secrets easily, but adventurers such as the intrepid Brann Bronzebeard believe the reward is worth the risk.", 0.845629, 0.760246, 277, 1995, 3, 7294, 140, 4);
encounters.tribunal_of_ages:setLoot({}); 

encounters.sjonnir_the_ironshaper = createEncounter();
encounters.sjonnir_the_ironshaper:setAttributes("Sjonnir the Ironshaper", "While some resisted Loken's corruption, Sjonnir the Ironshaper was eager to turn the Forge of Wills to a darker purpose. He considers his new creations vastly superior to the earthen, and will unleash them on any who defy Loken's will.", 0.497268, 0.137295, 277, 1998, 4, 7313, 140, 4);
encounters.sjonnir_the_ironshaper:setLoot({}); 

encounters.forgemaster_garfrost = createEncounter();
encounters.forgemaster_garfrost:setAttributes("Forgemaster Garfrost", "Garfrost has crafted some of the most deadly weapons the Scourge has employed against the living. He can quickly forge saronite into terrible instruments of pain and death, or he can just throw it at his enemies.", 0.680328, 0.553278, 278, 1999, 1, 7327, 184, 4);
encounters.forgemaster_garfrost:setLoot({}); 

encounters.ick_krick = createEncounter();
encounters.ick_krick:setAttributes("Ick & Krick", "The diminutive necromancer Krick oversees the workers in the Pit of Saron. From atop the ghastly Ick, he can safely throw poison, explosives and dark magic at his enemies. From this vantage point, he has also learned dark secrets of Icecrown Citadel that could topple the Lich King.", 0.47541, 0.397541, 278, 2001, 2, 7334, 184, 4);
encounters.ick_krick:setLoot({}); 

encounters.scourgelord_tyrannus = createEncounter();
encounters.scourgelord_tyrannus:setAttributes("Scourgelord Tyrannus", "The death knight Tyrannus was promoted to Scourgelord after slaying the giant Garfrost. His power, ruthlessness and frost wyrm, Rimefang, make him the perfect guardian for the Pit of Saron and the entrance to the Halls of Reflection.", 0.441257, 0.266394, 278, 2000, 3, 7340, 184, 4);
encounters.scourgelord_tyrannus:setLoot({}); 

encounters.meathook = createEncounter();
encounters.meathook:setAttributes("Meathook", "Since Prince Arthas first encountered the Scourge abominations, they have become even more menacing. Meathook has grown stronger, more toxic and more agile than the others. Smarter was never the goal of the necromancers who created Meathook, but it only takes a base cunning to do what he does best.", 0.56694, 0.592213, 279, 2002, 1, 7361, 131, 4);
encounters.meathook:setLoot({}); 

encounters.salramm_the_fleshcrafter = createEncounter();
encounters.salramm_the_fleshcrafter:setAttributes("Salramm the Fleshcrafter", "Salramm the Fleshcrafter was one of the first necromancers trained in the halls beneath Scholomance. He saw the test subjects, and occasional fellow students, as little more than a collection of interesting parts for his work. Now he has the entire population of Stratholme for his experiments... along with any interlopers who try to stop him.", 0.59153, 0.401638, 279, 2004, 2, 7365, 131, 4);
encounters.salramm_the_fleshcrafter:setLoot({}); 

encounters.chrono_lord_epoch = createEncounter();
encounters.chrono_lord_epoch:setAttributes("Chrono-Lord Epoch", "The infinite dragonflight often tries subtle methods to manipulate the timeways, but if that fails they can send an assassin to deal with Arthas directly. While little is known about the agents of the infinite dragonflight, Epoch displays a dangerous mastery of time that makes him a deadly obstacle to Arthas's future.", 0.65847, 0.258197, 279, 2003, 3, 7371, 131, 4);
encounters.chrono_lord_epoch:setLoot({}); 

encounters.mal_ganis = createEncounter();
encounters.mal_ganis:setAttributes("Mal'Ganis", "The destiny of Mal'Ganis has already been written. Arthas's hatred for the dreadlord will cause the prince to travel to Northrend and take up Frostmourne. But this will only happen if Mal'Ganis finds him worthy. To prove his worthiness and begin down his path to becoming the Lich King, Arthas must survive Mal'Ganis's onslaught.", 0.325136, 0.459016, 279, 2005, 4, 7375, 131, 4);
encounters.mal_ganis:setLoot({}); 

encounters.bronjahm = createEncounter();
encounters.bronjahm:setAttributes("Bronjahm", "Bronjahm has served the Cult of the Damned from the early days. Kel'Thuzad himself taught Bronjahm the value of souls and how to grind them down to fuel the engines of the Scourge. He can corrupt the souls of his foes and tear them out piece by piece, making him the ideal guardian for the Lich King's Forge of Souls.", 0.435793, 0.495902, 280, 2006, 1, 7380, 183, 4);
encounters.bronjahm:setLoot({}); 

encounters.devourer_of_souls = createEncounter();
encounters.devourer_of_souls:setAttributes("Devourer of Souls", "The dark industries Bronjahm carries out in the Forge of Souls produce tortured, fragmented spirits. To prevent their escape, and use every scrap of the damned, the Lich King created the Devourer of Souls. The Devourer of Souls hunts and consumes the stray spirits, and slowly breaks them down within its terrible form. The consumed souls are driven mad with anguish and suffering, but the Devourer's hunger is never sated.", 0.434426, 0.120902, 280, 2007, 2, 7387, 183, 4);
encounters.devourer_of_souls:setLoot({}); 

encounters.commander_stoutbeard = createEncounter();
encounters.commander_stoutbeard:setAttributes("Commander Stoutbeard", "Commander Stoutbeard led his troops against some of the most dangerous enemies of the Alliance. The Halls of Stasis may have slowed him down, but the sight of Horde adventurers will get him up and running again.", 0.187159, 0.506146, 281, 519, 1, 6665, 129, 2);
encounters.commander_stoutbeard:setLoot({}); 

encounters.grand_magus_telestra = createEncounter();
encounters.grand_magus_telestra:setAttributes("Grand Magus Telestra", "It is rumored the Grand Magus Telestra tutored Prince Kael'thas. Though she believed the Prince allying with the naga was foolish, she could not support Dalaran imprisoning her people. Malygos only needed to remind her of this betrayal to gain her as an instructor for his mage hunters.", 0.275956, 0.39959, 281, 521, 2, 7392, 129, 4);
encounters.grand_magus_telestra:setLoot({}); 

encounters.anomalus = createEncounter();
encounters.anomalus:setAttributes("Anomalus", "Directing so much of Azeroth's arcane energy through the Nexus has created tears in reality. As Malygos's forces try to drive back invading creatures, the chaotic arcane power has taken form as Anomalus. If the creature is not stopped, it will unmake everything it can touch.", 0.620218, 0.221312, 281, 522, 3, 7405, 129, 4);
encounters.anomalus:setLoot({}); 

encounters.ormorok_the_tree_shaper = createEncounter();
encounters.ormorok_the_tree_shaper:setAttributes("Ormorok the Tree-Shaper", "The incredible arcane energies of the Nexus have transformed the Singing Gardens and its guardians. Ormorok's simple mind has become obsessed with the energies transforming him. For those who would interrupt his contemplations he has few words, but a mountain of violence.", 0.562842, 0.727459, 281, 524, 4, 7416, 129, 4);
encounters.ormorok_the_tree_shaper:setLoot({}); 

encounters.keristrasza = createEncounter();
encounters.keristrasza:setAttributes("Keristrasza", "Whether the tortures inflicted on Keristrasza were revenge for the death of Saragosa or a misguided attempt to turn her into an ally is known only to Malygos. Regardless of his intent, her allies have heard her cries of anguish and disturbing whispers of her diminishing mind.", 0.362022, 0.67418, 281, 527, 5, 7422, 129, 4);
encounters.keristrasza:setLoot({}); 

encounters.drakos_the_interrogator = createEncounter();
encounters.drakos_the_interrogator:setAttributes("Drakos the Interrogator", "Those who have broken Malygos's law may find themselves under the claws of Drakos. After securing Keristrasza in the Nexus, Drakos returned to the Oculus to collect his newer prisoners, other drakes who ran afoul of Malygos. He makes no claims of rehabilitation and he uses no metaphors. His prisoners are here to be punished, and there is no escape.", 0.491803, 0.762295, 282, 528, 1, 7437, 143, 4);
encounters.drakos_the_interrogator:setLoot({}); 

encounters.varos_cloudstrider = createEncounter();
encounters.varos_cloudstrider:setAttributes("Varos Cloudstrider", "Varos Cloudstrider has coordinated brutal attacks against the Wyrmrest Accord since the beginning of the Nexus War. He was recalled to guard the Oculus, and he has already prepared his captains and drakes. Varos has also tapped the power coursing through the Oculus itself to bolster his defense.", 0.461749, 0.192623, 282, 530, 2, 7440, 144, 4);
encounters.varos_cloudstrider:setLoot({}); 

encounters.mage_lord_urom = createEncounter();
encounters.mage_lord_urom:setAttributes("Mage-Lord Urom", "Urom has abandoned the Kirin Tor and pledged his loyalty to Malygos, who was more than happy to receive him. The turncoat mage is an invaluable asset for the blue dragons. He knows the Kirin Tor's strengths and weaknesses. He knows how they think. And he will use that knowledge to destroy them.", 0.70765, 0.27459, 282, 533, 3, 7445, 145, 4);
encounters.mage_lord_urom:setLoot({}); 

encounters.ley_guardian_eregos = createEncounter();
encounters.ley_guardian_eregos:setAttributes("Ley-Guardian Eregos", "Even heroes will tremble before Eregos, protector of the Oculus, defender of the ley line conduit, and executioner of interlopers. He will accomplish these tasks with the conviction of prophecy, securing the Spell-Weaver's utter dominion over all things arcane.", 0.469945, 0.209016, 282, 534, 4, 7448, 146, 4);
encounters.ley_guardian_eregos:setLoot({}); 

encounters.erekem = createEncounter();
encounters.erekem:setAttributes("Erekem", "The Violet Hold's inmates include the most notorious of Outland's criminals, and Erekem is no exception. The Kirin Tor thwarted his plot to assassinate the Council of Six, but now the blue dragons have recruited this insidious arakkoa to achieve a more ambitious feat: wiping out every mage in Dalaran.", 0.275956, 0.622951, 283, 0, 1, 7457, 168, 4);
encounters.erekem:setLoot({}); 

encounters.moragg = createEncounter();
encounters.moragg:setAttributes("Moragg", "Cyanigosa has enlisted Moragg to help her annihilate Dalaran's renegade magi. This nightmarish demon once served the Burning Legion, eviscerating Sargeras's enemies with the baleful gaze of his seven eyes. Now he will show Azeroth's heroes that one does not simply walk into the Violet Hold...", 0.678962, 0.528688, 283, 0, 2, 7470, 168, 4);
encounters.moragg:setLoot({}); 

encounters.ichoron = createEncounter();
encounters.ichoron:setAttributes("Ichoron", "A foolish apprentice summoned this revenant from the Elemental Plane, only to discover that disgruntled soldiers of the Old Gods make poor pets. Ichoron slew her would-be master and has rotted in the Violet Hold ever since, eager to wreak vengeance on her jailors.", 0.556011, 0.403688, 283, 0, 3, 7475, 168, 4);
encounters.ichoron:setLoot({}); 

encounters.xevozz = createEncounter();
encounters.xevozz:setAttributes("Xevozz", "Xevozz was an arcane weapons dealer... until the Kirin Tor discovered he was arming the Burning Legion. Now this hardnosed ethereal is executing a three-point business plan: destroy his enemies, escape incarceration, and get back to servicing his biggest client.", 0.330601, 0.452869, 283, 0, 4, 7482, 168, 4);
encounters.xevozz:setLoot({}); 

encounters.lavanthor = createEncounter();
encounters.lavanthor:setAttributes("Lavanthor", "Cyanigosa in her cold cunning has unleashed the core hound's inferno. The magi imprisoned Lavanthor to stanch the two-headed terror's thirst for blood, and years of isolation have done nothing to improve its temper.", 0.618852, 0.75, 283, 0, 5, 7488, 168, 4);
encounters.lavanthor:setLoot({}); 

encounters.zuramat_the_obliterator = createEncounter();
encounters.zuramat_the_obliterator:setAttributes("Zuramat the Obliterator", "It took one hundred of Dalaran's finest to subdue Zuramat; it took twice as many to clear the carnage from the killing field. The Obliterator's malevolence gives pause even to mad Malygos, who considers the void lord's appetite for magic distasteful. But genocide makes strange bedfellows.", 0.271858, 0.336066, 283, 0, 6, 7492, 168, 4);
encounters.zuramat_the_obliterator:setLoot({}); 

encounters.cyanigosa = createEncounter();
encounters.cyanigosa:setAttributes("Cyanigosa", "Malygos chose Cyanigosa to execute his machinations because of her unquestionable loyalty. She did not flinch when her master withdrew into madness; she did not falter when he commandeered Azeroth's ley lines; and she will not fail to eradicate all who defy him.", 0.45082, 0.551229, 283, 2020, 7, 7497, 168, 4);
encounters.cyanigosa:setLoot({}); 

encounters.grand_champions = createEncounter();
encounters.grand_champions:setAttributes("Grand Champions", "The Lich King is relentless, his undead armies pouring forth to overwhelm his foes. To prepare would-be champions against him, Highlord Tirion Fordring presents a test of courage, endurance, and teamwork. His hardened veterans will weed out those who lack the stomach to face the ravening throngs of undead.", 0.512295, 0.526639, 284, 2022, 2, 7502, 171, 4);
encounters.grand_champions:setLoot({}); 

encounters.eadric_the_pure = createEncounter();
encounters.eadric_the_pure:setAttributes("Eadric the Pure", "Before heroes can challenge the forces of darkness, they must defeat agents of the Light. Highlord Tirion Fordring has selected a formidable paladin from the Argent Crusade to test combatants' mettle. Eadric will go to great lengths to cull those without the moral conviction to enter Icecrown Citadel.", 0.513661, 0.52459, 284, 2022, 3, 7570, 171, 4);
encounters.eadric_the_pure:setLoot({}); 

encounters.argent_confessor_paletress = createEncounter();
encounters.argent_confessor_paletress:setAttributes("Argent Confessor Paletress", "Before heroes can challenge the forces of darkness, they must defeat agents of the Light. Highlord Tirion Fordring has selected a formidable priest from the Argent Crusade to test combatants' mettle. Paletress will do everything in her power to ensure that only those with strong faith will confront the Scourge.", 0.512295, 0.528688, 284, 2022, 4, 7574, 171, 4);
encounters.argent_confessor_paletress:setLoot({}); 

encounters.the_black_knight = createEncounter();
encounters.the_black_knight:setAttributes("The Black Knight", "The Lich King is cunning and will use treachery to thwart his enemies. To that end, he has dispatched the Black Knight to eliminate promising candidates from Highlord Tirion Fordring's army. The undead's mere presence defiles the Crusaders' Coliseum, and those who prevail against him will prove their worthiness.", 0.513661, 0.526639, 284, 2021, 5, 7582, 171, 4);
encounters.the_black_knight:setLoot({}); 

encounters.prince_keleseth = createEncounter();
encounters.prince_keleseth:setAttributes("Prince Keleseth", "The Lich King deployed Keleseth to Utgarde Keep in hopes of harnessing the vrykul's potential for destruction. Upon arriving, the ambassador found a people who were more than eager to assist the Scourge. The keep has proved to be an excellent staging point for terrorizing the Howling Fjord, and Keleseth has no intention of losing it to insolent trespassers.", 0.289618, 0.627049, 285, 2026, 1, 7601, 133, 4);
encounters.prince_keleseth:setLoot({}); 

encounters.skarvald_dalronn = createEncounter();
encounters.skarvald_dalronn:setAttributes("Skarvald & Dalronn", "It's a vrykul tradition to make unlikely partners work together. Some say it's to allow divergent abilities to complement each other; others say it's for the amusement of King Ymiron. Regardless, Skarvald and Dalronn are a perfect example of this custom. Between a vrykul's brawn and a human's necromantic arts, they will punish those who meddle with the Scourge.", 0.587431, 0.620901, 285, 2024, 2, 7609, 134, 4);
encounters.skarvald_dalronn:setLoot({}); 

encounters.ingvar_the_plunderer = createEncounter();
encounters.ingvar_the_plunderer:setAttributes("Ingvar the Plunderer", "Ingvar's brute strength is legendary even among the vrykul. Rumor has it that he once bested King Ymiron in a brawl. The truth is unknown, but purveyors of that tale usually don't live for a retelling. Ingvar has promised the Lich King that he'll use all measures of brutality to hold the keep, a promise that he dare not break.", 0.724043, 0.381148, 285, 2025, 3, 7619, 135, 4);
encounters.ingvar_the_plunderer:setLoot({}); 

encounters.svala_sorrowgrave = createEncounter();
encounters.svala_sorrowgrave:setAttributes("Svala Sorrowgrave", "Svala distinguished herself as Ingvar the Plunderer's lieutenant, leading perilous scouting missions in Horde and Alliance outposts. It was she who discovered the enemy's plans to invade Utgarde, giving the Lich King time to prepare. For her service, he has transformed her into a val'kyr, revered warrior maiden of the Scourge.", 0.363388, 0.706967, 286, 2030, 1, 7660, 136, 4);
encounters.svala_sorrowgrave:setLoot({}); 

encounters.gortok_palehoof = createEncounter();
encounters.gortok_palehoof:setAttributes("Gortok Palehoof", "The vrykul keep many trophies at Utgarde Keep, and Gortok is among the most impressive. King Ymiron displays the frozen magnataur's cruel countenance as a reminder that even the most savage beasts are mere decorations for vrykul halls. This living statue will sow destruction if liberated, unleashing his wrath indiscriminately.", 0.606558, 0.688525, 286, 2027, 2, 7669, 137, 4);
encounters.gortok_palehoof:setLoot({}); 

encounters.skadi_the_ruthless = createEncounter();
encounters.skadi_the_ruthless:setAttributes("Skadi the Ruthless", "The vrykul assign nicknames based on accomplishments. Cleansing a Drakkari bloodline or decapitating taunka might garner the appellation of \"dutiful,\" but it takes a true act of depravity to be called \"ruthless.\" Skadi earned his title long ago for relentlessly hunting down vrykul who sheltered the malformed infants, predecessors of humanity, condemned by Ymiron.", 0.684426, 0.362705, 286, 2029, 3, 7691, 137, 4);
encounters.skadi_the_ruthless:setLoot({}); 

encounters.instructor_chillheart = createEncounter();
encounters.instructor_chillheart:setAttributes("Instructor Chillheart", "Course: Introduction to the Dark Arts Instructor Chillheart journeyed from Northrend to teach aspiring necromancers discipline, harshly punishing those who disappoint her. She commands the icy chill of the north and masterfully uses Scholomance's libraries to deadly effect.", 0.652879, 0.604144, 246, 1426, 1, 5524, 476, 4);
encounters.instructor_chillheart:setLoot({}); 

encounters.houndmaster_braun = createEncounter();
encounters.houndmaster_braun:setAttributes("Houndmaster Braun", "The quickest and surest way to detect the undead is by the scent of rot they carry, and even the most veteran soldier cannot match the olfactory sense of a hound. Houndmaster Braun has bred and trained a savage pack of canines to aid the crusaders in hunting down their foes--living and undead.", 0.548038, 0.288227, 311, 1422, 1, 5606, 431, 4);
encounters.houndmaster_braun:setLoot({}); 

encounters.jandice_barov = createEncounter();
encounters.jandice_barov:setAttributes("Jandice Barov", "Course: Advanced Illusions Barov's spirit lurked in the recesses of Scholomance for years, but now she has taken a more active role in educating the next generation of magi. Her vast knowledge of illusions has made her both a valued educator and a dangerous opponent to anyone foolish enough to draw her ire.", 0.599743, 0.1831, 246, 1427, 2, 5532, 477, 4);
encounters.jandice_barov:setLoot({}); 

encounters.rattlegore = createEncounter();
encounters.rattlegore:setAttributes("Rattlegore", "Course: Reanimation 101 Rattlegore was thought to have been destroyed in Andorhal, but Gandling immediately began preparations to reanimate the clattering terror so he could guard against intruders. The Darkmaster sought to make Rattlegore more ferocious than ever, imbuing him with an insatiable desire to harvest raw materials from his enemies.", 0.484438, 0.26184, 246, 1428, 3, 5552, 477, 4);
encounters.rattlegore:setLoot({}); 

encounters.lilian_voss = createEncounter();
encounters.lilian_voss:setAttributes("Lilian Voss", "Course: Reeducation The undead Lilian Voss strangled her father--a high priest of the Scarlet Crusade--for treachery, and then started a rampage that eventually led her into the shadowy corridors of Scholomance. Rather than destroy the intruder, Darkmaster Gandling graciously decided to show Voss how to embrace her grim fate. The anger and runeblades she had once directed at the school are now turned toward Gandling's enemies.", 0.518268, 0.470907, 246, 1429, 4, 5558, 477, 4);
encounters.lilian_voss:setLoot({}); 

encounters.brother_korloff = createEncounter();
encounters.brother_korloff:setAttributes("Brother Korloff", "Brother Korloff first learned of the monk's deadly arts from pandaren ambassadors as they journeyed through Azeroth. When the crusader demonstrated this martial style to his superiors, they unanimously ordered Korloff to train an entire generation of initiates in the ways of the monk.", 0.493976, 0.524096, 316, 1424, 2, 5601, 436, 4);
encounters.brother_korloff:setLoot({}); 

encounters.high_inquisitor_whitemane = createEncounter();
encounters.high_inquisitor_whitemane:setAttributes("High Inquisitor Whitemane", "At a young age, Sally Whitemane witnessed her family succumb to the horrific plague of undeath as they were traveling through northern Lordaeron. She was then forced to destroy her parents and siblings when they rose as mindless Scourge minions, leaving her racked by guilt and rage. Ever since that day, the fearsome priestess has found fulfillment and pleasure in only one thing: the destruction of undead.", 0.490964, 0.804217, 316, 1425, 3, 5635, 436, 3);
encounters.high_inquisitor_whitemane:setLoot({}); 

encounters.darkmaster_gandling = createEncounter();
encounters.darkmaster_gandling:setAttributes("Darkmaster Gandling", "Course: Advanced Studies The recent defeat in Andorhal has put Darkmaster Gandling in the foulest of moods. More than ever, all students of Scholomance are advised to impress him at every turn. Pupils who dissatisfy the headmaster will be removed from class to perform lab work... or become lab work.", 0.501091, 0.326169, 246, 1430, 5, 5795, 479, 4);
encounters.darkmaster_gandling:setLoot({}); 

encounters.thalnos_the_soulrender = createEncounter();
encounters.thalnos_the_soulrender:setAttributes("Thalnos the Soulrender", "Thalnos earned repute in the Scarlet Crusade for the brutal torture methods he used to \"purify\" new recruits. Ultimately, the sadistic mage contracted the plague of undeath and arose as a fearsome skeletal being. The vengeful Thalnos now prowls the monastery's graveyard, commanding apparitions and zombified creatures to attack anyone who trespasses on his unholy domain.", 0.262048, 0.456325, 316, 1423, 1, 5862, 435, 4);
encounters.thalnos_the_soulrender:setLoot({}); 

encounters.adarogg = createEncounter();
encounters.adarogg:setAttributes("Adarogg", "Ragefire Chasm's trogg population has rapidly declined in recent months for one reason: Adarogg. This ravenous flame hound was among the first of his kind ripped from the Firelands by dark shaman. Adarogg's handlers feed the unruly beast over twice his weight in trogg flesh per day to keep him appeased.", 0.69273, 0.650206, 226, 1443, 1, 5961, 213, 4);
encounters.adarogg:setLoot({}); 

encounters.dark_shaman_koranthal = createEncounter();
encounters.dark_shaman_koranthal:setAttributes("Dark Shaman Koranthal", "Koranthal has always believed that brute force is the only way to control Azeroth's elementals. His extreme views led him to join the ranks of the sinister Twilight's Hammer. When the cult fell, the orc and other like-minded shaman secretly infiltrated Ragefire Chasm to continue practicing their dark arts.", 0.540467, 0.300412, 226, 1444, 2, 5963, 213, 4);
encounters.dark_shaman_koranthal:setLoot({}); 

encounters.slagmaw = createEncounter();
encounters.slagmaw:setAttributes("Slagmaw", "Unlike other lava worms enslaved by the dark shaman, Slagmaw has proven to be nearly impossible to control. The beast lives to dig through the depths of the earth, and it cares nothing for the consequences of its actions, or the damage it causes to anyone who stands in its way.", 0.40878, 0.574074, 226, 1445, 3, 5965, 213, 4);
encounters.slagmaw:setLoot({}); 

encounters.lava_guard_gordoth = createEncounter();
encounters.lava_guard_gordoth:setAttributes("Lava Guard Gordoth", "Hubris drove the brilliant shaman Gordoth to act as a living conduit for energies pulled from the Firelands. He and his allies had hoped to mimic the creation of elemental ascendants in the Twilight's Hammer cult. Instead, the explosive influx of power drove Gordoth insane and mutated his body into a hideous form.", 0.342936, 0.816872, 226, 1446, 4, 5967, 213, 4);
encounters.lava_guard_gordoth:setLoot({}); 

encounters.blood_guard_porung = createEncounter();
encounters.blood_guard_porung:setAttributes("Blood Guard Porung", "During the bloody siege of Shattrath, Porung stormed an enclave of draenei paladins who had barricaded themselves within a corner of the city. He single-handedly slaughtered the defenders, but suffered a grave injury that left him incapable of following the Horde when it later stormed Azeroth. Now recovered, Porung serves Warchief Kargath Bladefist in Hellfire Citadel, hoping to make up for the glorious battles he has missed and write his name in orcish history with the blood of his enemies.", 0.296846, 0.146568, 259, 1935, 2, 6216, 246, 2);
encounters.blood_guard_porung:setLoot({}); 

encounters.obsidian_sentinel = createEncounter();
encounters.obsidian_sentinel:setAttributes("Obsidian Sentinel", "The Obsidian Sentinel was responsible for guarding Uldaman's secrets until it was corrupted by an unknown force. Originally crafted from the same stone as the halls of Uldaman itself, this keeper has had the majority of its body replaced with dark glass capable of reflecting spells. Whatever was responsible for the Obsidian Sentinel's transformation must be incredibly potent, for it is not easy to alter the enchanted stone of a titan construct.", 0.289425, 0.597403, 239, 1887, 4, 6448, 230, 4);
encounters.obsidian_sentinel:setLoot({}); 

encounters.commander_malor = createEncounter();
encounters.commander_malor:setAttributes("Commander Malor", "Malor and a handful of other courageous warriors risked everything to protect the Scarlet Bastion from being desecrated by the undead. Tragically, they failed. Balnazzar corrupted the fearless commander into one of his servants, transforming the zealot into a mockery of his former self.", 0.29932, 0.411874, 236, 476, 3, 6452, 317, 4);
encounters.commander_malor:setLoot({}); 

encounters.commander_kolurg = createEncounter();
encounters.commander_kolurg:setAttributes("Commander Kolurg", "Commander Kolurg sought dangerous treasures to add to the Horde armories. His anger at his misfortune in the Halls of Stasis will not be eased when he thaws to find Alliance adventurers stealing his thunder.", 0.187159, 0.506146, 281, 519, 1, 7428, 129, 2);
encounters.commander_kolurg:setLoot({}); 

encounters.grand_champions = createEncounter();
encounters.grand_champions:setAttributes("Grand Champions", "The Lich King is relentless, his undead armies pouring forth to overwhelm his foes. To prepare would-be champions against him, Highlord Tirion Fordring presents a test of courage, endurance, and teamwork. His hardened veterans will weed out those who lack the stomach to face the ravening throngs of undead.", 0.512295, 0.526639, 284, 2022, 2, 7536, 171, 4);
encounters.grand_champions:setLoot({}); 

encounters.roogug = createEncounter();
encounters.roogug:setAttributes("Roogug", "Quilboar society regards the reading of stones and crystals as the highest form of shamanism. Roogug served the Quilboar people for many years, quietly honing his divinative arts. He now serves the Quilboar as the overseer of all geomancers and has amassed a powerful array of crystals with which to dispose of weaker foes. It is only a matter of time before these mystics overrun the Southern Barrens.", 0.872328, 0.410829, 234, 438, 2, 8667, 301, 4);
encounters.roogug:setLoot({}); 

encounters.hunter_bonetusk = createEncounter();
encounters.hunter_bonetusk:setAttributes("Hunter Bonetusk", "If a hunter's accomplishments are measured by the trophies they return with, Bonetusk would be regarded as one of the best. His cunning aim and animalistic instincts brought his hunting and tracking abilities to new heights, and only the strong stand a chance to survive against this veteran hunter.", 0.807336, 0.51718, 234, 1656, 1, 8646, 301, 4);
encounters.hunter_bonetusk:setLoot({}); 

encounters.warlord_ramtusk = createEncounter();
encounters.warlord_ramtusk:setAttributes("Warlord Ramtusk", "The commander of the Razorfen military forces, Warlord Ramtusk is a massive aging Quilboar whose thick hide bears the scars of many battles with centaur, harpies, orcs, and even tauren. In his later years, Ramtusk has embraced the company of Quilboar spirit leaders; Aggem Thorncurse and Death Speaker Jargba guide his thoughts from the spirit realm.", 0.574939, 0.305955, 234, 1659, 3, 8660, 301, 4);
encounters.warlord_ramtusk:setLoot({}); 

encounters.groyat_the_blind_hunter = createEncounter();
encounters.groyat_the_blind_hunter:setAttributes("Groyat, the Blind Hunter", "After years of seclusion, a monstrous creature from deep inside the dark grotto emerged. This gargantuan bat continually feeds on the boar once named Agathelos the Raging, whose dark power was once fueled by continual consumption of bat guano.", 0.0893967, 0.548399, 234, 1660, 4, 8671, 301, 4);
encounters.groyat_the_blind_hunter:setLoot({}); 

encounters.charlga_razorflank = createEncounter();
encounters.charlga_razorflank:setAttributes("Charlga Razorflank", "The leader (or \"crone\") of the Razorfen tribes is Charlga Razorflank, a quilboar whose experimental and powerful Geomancy practices are second to none. Her meteoric rise to power and the rapidly increasing violence between quilboar tribesmen can only lead to one thing: war.", 0.219597, 0.311669, 234, 1661, 5, 8682, 301, 4);
encounters.charlga_razorflank:setLoot({}); 

encounters.amnennar_the_coldbringer = createEncounter();
encounters.amnennar_the_coldbringer:setAttributes("Amnennar the Coldbringer", "The lich Amnennar was once a force of reckoning within the Scourge, participating in the assault on Mount Hyjal during the Third War. Afterward, the Lich King instructed his servant to remain in Kalimdor and expand the Scourge's influence. This effort was thwarted by heroes of the Horde and Alliance, however. Now the relative peace that has been brought to Razorfen Downs may be threatened. Death Speaker Blackthorn hopes to revive this powerful lich and renew the assault on the Barrens.", 0.45509, 0.582335, 233, 1666, 5, 9484, 300, 4);
encounters.amnennar_the_coldbringer:setLoot({}); 

encounters.aarux = createEncounter();
encounters.aarux:setAttributes("Aarux", "The Arachnomancers of the Death's Head cult are particularly proud of their efforts.  After many failed attempts they have finally created a suitable guardian for Death Speaker Blackthorn.  Aarux is a huge spider whose body bristles with toxin filled pustules that burst and ooze noxious liquids.  The Arachnomancers now await the opportune moment to unleash their creation.", 0.58982, 0.342815, 233, 1662, 1, 9491, 300, 4);
encounters.aarux:setLoot({}); 

encounters.mushlump = createEncounter();
encounters.mushlump:setAttributes("Mushlump", "A recent creation of Death Speaker Blackthorn, Mushlump is a grotesque collection of parts collected from other failed creations.  Full of bile, pus, and other noxious humors, Mushlump contaminates the halls leading to Death Speaker Blackthorn.", 0.34531, 0.664671, 233, 1664, 3, 9496, 300, 4);
encounters.mushlump:setLoot({}); 

encounters.executioner_gore = createEncounter();
encounters.executioner_gore:setAttributes("Executioner Gore", "As Aku'mai's power grows, the need for more sacrifices increases. Dragging screaming innocents to their deaths is Executioner Gore's specialty, and the Twilight's Hammer has been making great use of his services.", 0, 0, 227, 1670, 6, 9515, 319, 4);
encounters.executioner_gore:setLoot({}); 

encounters.thruk = createEncounter();
encounters.thruk:setAttributes("Thruk", "Thruk brings many valuable qualities to the Twilight's Hammer, but intelligence is not among them. Convinced that slaying the Guardian of the Deep will reveal vast hoards of gold, Thruk's diminutive mind has no room to focus on anything else and he will fillet the flesh of anyone who breaks his concentration.", 0, 0, 227, 1675, 4, 9518, 319, 4);
encounters.thruk:setLoot({}); 

encounters.death_speaker_blackthorn = createEncounter();
encounters.death_speaker_blackthorn:setAttributes("Death Speaker Blackthorn", "Death Speaker Blackthorn rose quickly through the ranks of the Death's Head cult after the defeat of Amnennar the Coldbringer. Shortly after usurping control of the cult, Blackthorn began receiving dark whispers. These whispers promised power and riches beyond belief, if he could return Amnennar to life. Compelled by unnatural energies, Blackthorn discovered the location of Amnennar's Phylactery and has returned to Razorfen Downs to complete the ritual that will return his former master to life once more.", 0.43014, 0.627246, 233, 1665, 4, 9523, 300, 4);
encounters.death_speaker_blackthorn:setLoot({}); 

encounters.lucifron = createEncounter();
encounters.lucifron:setAttributes("Lucifron", "", 0.658633, 0.374995, 741, 663, 1, 0, 232, 8);
encounters.lucifron:setLoot({}); 

encounters.magmadar = createEncounter();
encounters.magmadar:setAttributes("Magmadar", "", 0.694339, 0.236793, 741, 664, 2, 0, 232, 8);
encounters.magmadar:setLoot({}); 

encounters.gehennas = createEncounter();
encounters.gehennas:setAttributes("Gehennas", "", 0.330876, 0.485334, 741, 665, 3, 0, 232, 8);
encounters.gehennas:setLoot({}); 

encounters.garr = createEncounter();
encounters.garr:setAttributes("Garr", "", 0.315094, 0.689623, 741, 666, 4, 0, 232, 8);
encounters.garr:setLoot({}); 

encounters.shazzrah = createEncounter();
encounters.shazzrah:setAttributes("Shazzrah", "", 0.558406, 0.852617, 741, 667, 5, 0, 232, 8);
encounters.shazzrah:setLoot({}); 

encounters.baron_geddon = createEncounter();
encounters.baron_geddon:setAttributes("Baron Geddon", "", 0.523926, 0.77632, 741, 668, 6, 0, 232, 8);
encounters.baron_geddon:setLoot({}); 

encounters.sulfuron_harbinger = createEncounter();
encounters.sulfuron_harbinger:setAttributes("Sulfuron Harbinger", "", 0.828302, 0.825472, 741, 669, 7, 0, 232, 8);
encounters.sulfuron_harbinger:setLoot({}); 

encounters.golemagg_the_incinerator = createEncounter();
encounters.golemagg_the_incinerator:setAttributes("Golemagg the Incinerator", "", 0.68868, 0.576416, 741, 670, 8, 0, 232, 8);
encounters.golemagg_the_incinerator:setLoot({}); 

encounters.majordomo_executus = createEncounter();
encounters.majordomo_executus:setAttributes("Majordomo Executus", "", 0.84151, 0.652831, 741, 671, 9, 0, 232, 8);
encounters.majordomo_executus:setLoot({}); 

encounters.ragnaros = createEncounter();
encounters.ragnaros:setAttributes("Ragnaros", "", 0.562265, 0.533963, 741, 672, 10, 0, 232, 8);
encounters.ragnaros:setLoot({}); 

encounters.razorgore_the_untamed = createEncounter();
encounters.razorgore_the_untamed:setAttributes("Razorgore the Untamed", "", 0.419285, 0.602438, 742, 610, 1, 0, 287, 8);
encounters.razorgore_the_untamed:setLoot({}); 

encounters.vaelastrasz_the_corrupt = createEncounter();
encounters.vaelastrasz_the_corrupt:setAttributes("Vaelastrasz the Corrupt", "", 0.332819, 0.275371, 742, 611, 2, 0, 287, 8);
encounters.vaelastrasz_the_corrupt:setLoot({}); 

encounters.broodlord_lashlayer = createEncounter();
encounters.broodlord_lashlayer:setAttributes("Broodlord Lashlayer", "", 0.505751, 0.617476, 742, 612, 3, 0, 289, 8);
encounters.broodlord_lashlayer:setLoot({}); 

encounters.firemaw = createEncounter();
encounters.firemaw:setAttributes("Firemaw", "", 0.464398, 0.429507, 742, 613, 4, 0, 289, 8);
encounters.firemaw:setLoot({}); 

encounters.ebonroc = createEncounter();
encounters.ebonroc:setAttributes("Ebonroc", "", 0.34911, 0.209583, 742, 614, 5, 0, 289, 8);
encounters.ebonroc:setLoot({}); 

encounters.flamegor = createEncounter();
encounters.flamegor:setAttributes("Flamegor", "", 0.355376, 0.371237, 742, 615, 6, 0, 290, 8);
encounters.flamegor:setLoot({}); 

encounters.chromaggus = createEncounter();
encounters.chromaggus:setAttributes("Chromaggus", "", 0.394223, 0.7265, 742, 616, 7, 0, 290, 8);
encounters.chromaggus:setLoot({}); 

encounters.nefarian = createEncounter();
encounters.nefarian:setAttributes("Nefarian", "", 0.703746, 0.72462, 742, 617, 8, 0, 290, 8);
encounters.nefarian:setLoot({}); 

encounters.kurinnaxx = createEncounter();
encounters.kurinnaxx:setAttributes("Kurinnaxx", "", 0.563507, 0.357434, 743, 718, 1, 0, 247, 8);
encounters.kurinnaxx:setLoot({}); 

encounters.general_rajaxx = createEncounter();
encounters.general_rajaxx:setAttributes("General Rajaxx", "", 0.58402, 0.49128, 743, 719, 2, 0, 247, 8);
encounters.general_rajaxx:setLoot({}); 

encounters.moam = createEncounter();
encounters.moam:setAttributes("Moam", "", 0.328635, 0.360511, 743, 720, 3, 0, 247, 8);
encounters.moam:setLoot({}); 

encounters.buru_the_gorger = createEncounter();
encounters.buru_the_gorger:setAttributes("Buru the Gorger", "", 0.697866, 0.620511, 743, 721, 4, 0, 247, 8);
encounters.buru_the_gorger:setLoot({}); 

encounters.ayamiss_the_hunter = createEncounter();
encounters.ayamiss_the_hunter:setAttributes("Ayamiss the Hunter", "", 0.616841, 0.905126, 743, 722, 5, 0, 247, 8);
encounters.ayamiss_the_hunter:setLoot({}); 

encounters.ossirian_the_unscarred = createEncounter();
encounters.ossirian_the_unscarred:setAttributes("Ossirian the Unscarred", "", 0.429149, 0.695895, 743, 723, 6, 0, 247, 8);
encounters.ossirian_the_unscarred:setLoot({}); 

encounters.the_prophet_skeram = createEncounter();
encounters.the_prophet_skeram:setAttributes("The Prophet Skeram", "", 0.457866, 0.522049, 744, 709, 0, 0, 320, 8);
encounters.the_prophet_skeram:setLoot({}); 

encounters.battleguard_sartura = createEncounter();
encounters.battleguard_sartura:setAttributes("Battleguard Sartura", "", 0.445559, 0.335896, 744, 711, 2, 0, 319, 8);
encounters.battleguard_sartura:setLoot({}); 

encounters.fankriss_the_unyielding = createEncounter();
encounters.fankriss_the_unyielding:setAttributes("Fankriss the Unyielding", "", 0.622995, 0.218973, 744, 712, 3, 0, 319, 8);
encounters.fankriss_the_unyielding:setLoot({}); 

encounters.princess_huhuran = createEncounter();
encounters.princess_huhuran:setAttributes("Princess Huhuran", "", 0.435303, 0.503588, 744, 714, 5, 0, 319, 8);
encounters.princess_huhuran:setLoot({}); 

encounters.silithid_royalty = createEncounter();
encounters.silithid_royalty:setAttributes("Silithid Royalty", "", 0.284533, 0.497434, 744, 710, 1, 0, 319, 8);
encounters.silithid_royalty:setLoot({}); 

encounters.viscidus = createEncounter();
encounters.viscidus:setAttributes("Viscidus", "", 0.721456, 0.178973, 744, 713, 4, 0, 319, 8);
encounters.viscidus:setLoot({}); 

encounters.the_twin_emperors = createEncounter();
encounters.the_twin_emperors:setAttributes("The Twin Emperors", "", 0.606584, 0.697434, 744, 715, 6, 0, 319, 8);
encounters.the_twin_emperors:setLoot({}); 

encounters.ouro = createEncounter();
encounters.ouro:setAttributes("Ouro", "", 0.301969, 0.818972, 744, 716, 7, 0, 319, 8);
encounters.ouro:setLoot({}); 

encounters.c_thun = createEncounter();
encounters.c_thun:setAttributes("C'Thun", "", 0.570687, 0.625126, 744, 717, 8, 0, 321, 8);
encounters.c_thun:setLoot({}); 

encounters.servant_s_quarters = createEncounter();
encounters.servant_s_quarters:setAttributes("Servant's Quarters", "", 0.596409, 0.287693, 745, 0, 0, 0, 350, 8);
encounters.servant_s_quarters:setLoot({}); 

encounters.attumen_the_huntsman = createEncounter();
encounters.attumen_the_huntsman:setAttributes("Attumen the Huntsman", "", 0.452819, 0.826154, 745, 652, 1, 0, 350, 8);
encounters.attumen_the_huntsman:setLoot({}); 

encounters.moroes = createEncounter();
encounters.moroes:setAttributes("Moroes", "", 0.27128, 0.635385, 745, 653, 2, 0, 352, 8);
encounters.moroes:setLoot({}); 

encounters.maiden_of_virtue = createEncounter();
encounters.maiden_of_virtue:setAttributes("Maiden of Virtue", "", 0.834384, 0.500042, 745, 654, 3, 0, 353, 8);
encounters.maiden_of_virtue:setLoot({}); 

encounters.opera_hall = createEncounter();
encounters.opera_hall:setAttributes("Opera Hall", "", 0.181023, 0.35077, 745, 655, 4, 0, 353, 8);
encounters.opera_hall:setLoot({}); 

encounters.the_curator = createEncounter();
encounters.the_curator:setAttributes("The Curator", "", 0.494869, 0.366155, 745, 656, 6, 0, 358, 8);
encounters.the_curator:setLoot({}); 

encounters.shade_of_aran = createEncounter();
encounters.shade_of_aran:setAttributes("Shade of Aran", "", 0.716407, 0.260001, 745, 658, 7, 0, 359, 8);
encounters.shade_of_aran:setLoot({}); 

encounters.terestian_illhoof = createEncounter();
encounters.terestian_illhoof:setAttributes("Terestian Illhoof", "", 0.525638, 0.696924, 745, 657, 8, 0, 360, 8);
encounters.terestian_illhoof:setLoot({}); 

encounters.netherspite = createEncounter();
encounters.netherspite:setAttributes("Netherspite", "", 0.359484, 0.418462, 745, 659, 9, 0, 362, 8);
encounters.netherspite:setLoot({}); 

encounters.chess_event = createEncounter();
encounters.chess_event:setAttributes("Chess Event", "", 0.359484, 0.616923, 745, 660, 10, 0, 363, 8);
encounters.chess_event:setLoot({}); 

encounters.prince_malchezaar = createEncounter();
encounters.prince_malchezaar:setAttributes("Prince Malchezaar", "", 0.514356, 0.309231, 745, 661, 11, 0, 366, 8);
encounters.prince_malchezaar:setLoot({}); 

encounters.high_king_maulgar = createEncounter();
encounters.high_king_maulgar:setAttributes("High King Maulgar", "", 0.550255, 0.570769, 746, 649, 0, 0, 330, 8);
encounters.high_king_maulgar:setLoot({}); 

encounters.gruul_the_dragonkiller = createEncounter();
encounters.gruul_the_dragonkiller:setAttributes("Gruul the Dragonkiller", "", 0.199486, 0.283077, 746, 650, 1, 0, 330, 8);
encounters.gruul_the_dragonkiller:setLoot({}); 

encounters.magtheridon = createEncounter();
encounters.magtheridon:setAttributes("Magtheridon", "", 0.691795, 0.743077, 747, 651, 0, 0, 331, 8);
encounters.magtheridon:setLoot({}); 

encounters.hydross_the_unstable = createEncounter();
encounters.hydross_the_unstable:setAttributes("Hydross the Unstable", "", 0.36359, 0.847692, 748, 623, 0, 0, 332, 8);
encounters.hydross_the_unstable:setLoot({}); 

encounters.the_lurker_below = createEncounter();
encounters.the_lurker_below:setAttributes("The Lurker Below", "", 0.402564, 0.581538, 748, 624, 1, 0, 332, 8);
encounters.the_lurker_below:setLoot({}); 

encounters.leotheras_the_blind = createEncounter();
encounters.leotheras_the_blind:setAttributes("Leotheras the Blind", "", 0.417949, 0.255385, 748, 625, 2, 0, 332, 8);
encounters.leotheras_the_blind:setLoot({}); 

encounters.fathom_lord_karathress = createEncounter();
encounters.fathom_lord_karathress:setAttributes("Fathom-Lord Karathress", "", 0.504103, 0.176924, 748, 626, 3, 0, 332, 8);
encounters.fathom_lord_karathress:setLoot({}); 

encounters.morogrim_tidewalker = createEncounter();
encounters.morogrim_tidewalker:setAttributes("Morogrim Tidewalker", "", 0.59641, 0.260001, 748, 627, 4, 0, 332, 8);
encounters.morogrim_tidewalker:setLoot({}); 

encounters.lady_vashj = createEncounter();
encounters.lady_vashj:setAttributes("Lady Vashj", "", 0.722563, 0.589231, 748, 628, 5, 0, 332, 8);
encounters.lady_vashj:setLoot({}); 

encounters.al_ar = createEncounter();
encounters.al_ar:setAttributes("Al'ar", "", 0.501026, 0.587692, 749, 730, 0, 0, 334, 8);
encounters.al_ar:setLoot({}); 

encounters.void_reaver = createEncounter();
encounters.void_reaver:setAttributes("Void Reaver", "", 0.264075, 0.490686, 749, 731, 1, 0, 334, 8);
encounters.void_reaver:setLoot({}); 

encounters.high_astromancer_solarian = createEncounter();
encounters.high_astromancer_solarian:setAttributes("High Astromancer Solarian", "", 0.74, 0.48923, 749, 732, 2, 0, 334, 8);
encounters.high_astromancer_solarian:setLoot({}); 

encounters.kael_thas_sunstrider = createEncounter();
encounters.kael_thas_sunstrider:setAttributes("Kael'thas Sunstrider", "", 0.500999, 0.138461, 749, 733, 3, 0, 334, 8);
encounters.kael_thas_sunstrider:setLoot({}); 

encounters.rage_winterchill = createEncounter();
encounters.rage_winterchill:setAttributes("Rage Winterchill", "", 0.127692, 0.633846, 750, 618, 0, 0, 329, 8);
encounters.rage_winterchill:setLoot({}); 

encounters.anetheron = createEncounter();
encounters.anetheron:setAttributes("Anetheron", "", 0.0856407, 0.681538, 750, 619, 1, 0, 329, 8);
encounters.anetheron:setLoot({}); 

encounters.kaz_rogal = createEncounter();
encounters.kaz_rogal:setAttributes("Kaz'rogal", "", 0.424103, 0.358461, 750, 620, 2, 0, 329, 8);
encounters.kaz_rogal:setLoot({}); 

encounters.azgalor = createEncounter();
encounters.azgalor:setAttributes("Azgalor", "", 0.357436, 0.378461, 750, 621, 3, 0, 329, 8);
encounters.azgalor:setLoot({}); 

encounters.archimonde = createEncounter();
encounters.archimonde:setAttributes("Archimonde", "", 0.77282, 0.283076, 750, 622, 4, 0, 329, 8);
encounters.archimonde:setLoot({}); 

encounters.high_warlord_naj_entus = createEncounter();
encounters.high_warlord_naj_entus:setAttributes("High Warlord Naj'entus", "", 0.439487, 0.187651, 751, 601, 0, 15578, 340, 8);
encounters.high_warlord_naj_entus:setLoot({}); 

encounters.supremus = createEncounter();
encounters.supremus:setAttributes("Supremus", "", 0.663076, 0.473846, 751, 602, 1, 15588, 339, 8);
encounters.supremus:setLoot({}); 

encounters.shade_of_akama = createEncounter();
encounters.shade_of_akama:setAttributes("Shade of Akama", "", 0.409743, 0.88923, 751, 603, 2, 15599, 341, 8);
encounters.shade_of_akama:setLoot({}); 

encounters.teron_gorefiend = createEncounter();
encounters.teron_gorefiend:setAttributes("Teron Gorefiend", "", 0.394358, 0.118461, 751, 604, 3, 15628, 343, 8);
encounters.teron_gorefiend:setLoot({}); 

encounters.gurtogg_bloodboil = createEncounter();
encounters.gurtogg_bloodboil:setAttributes("Gurtogg Bloodboil", "", 0.539999, 0.476922, 751, 605, 4, 15645, 342, 8);
encounters.gurtogg_bloodboil:setLoot({}); 

encounters.reliquary_of_souls = createEncounter();
encounters.reliquary_of_souls:setAttributes("Reliquary of Souls", "", 0.613844, 0.850768, 751, 606, 5, 15661, 342, 8);
encounters.reliquary_of_souls:setLoot({}); 

encounters.mother_shahraz = createEncounter();
encounters.mother_shahraz:setAttributes("Mother Shahraz", "", 0.675383, 0.367691, 751, 607, 6, 15687, 344, 8);
encounters.mother_shahraz:setLoot({}); 

encounters.the_illidari_council = createEncounter();
encounters.the_illidari_council:setAttributes("The Illidari Council", "", 0.473332, 0.43846, 751, 608, 7, 15700, 345, 8);
encounters.the_illidari_council:setLoot({}); 

encounters.illidan_stormrage = createEncounter();
encounters.illidan_stormrage:setAttributes("Illidan Stormrage", "", 0.527691, 0.704613, 751, 609, 8, 15731, 346, 8);
encounters.illidan_stormrage:setLoot({}); 

encounters.kalecgos = createEncounter();
encounters.kalecgos:setAttributes("Kalecgos", "", 0.306154, 0.510769, 752, 724, 0, 0, 335, 8);
encounters.kalecgos:setLoot({}); 

encounters.brutallus = createEncounter();
encounters.brutallus:setAttributes("Brutallus", "", 0.658973, 0.864615, 752, 725, 1, 0, 335, 8);
encounters.brutallus:setLoot({}); 

encounters.felmyst = createEncounter();
encounters.felmyst:setAttributes("Felmyst", "", 0.727691, 0.826153, 752, 726, 2, 0, 335, 8);
encounters.felmyst:setLoot({}); 

encounters.the_eredar_twins = createEncounter();
encounters.the_eredar_twins:setAttributes("The Eredar Twins", "", 0.641566, 0.321, 752, 727, 3, 0, 335, 8);
encounters.the_eredar_twins:setLoot({}); 

encounters.m_uru = createEncounter();
encounters.m_uru:setAttributes("M'uru", "", 0.46718, 0.238462, 752, 728, 4, 0, 336, 8);
encounters.m_uru:setLoot({}); 

encounters.kil_jaeden = createEncounter();
encounters.kil_jaeden:setAttributes("Kil'jaeden", "", 0.46, 0.616923, 752, 729, 5, 0, 336, 8);
encounters.kil_jaeden:setLoot({}); 

encounters.archavon_the_stone_watcher = createEncounter();
encounters.archavon_the_stone_watcher:setAttributes("Archavon the Stone Watcher", "", 0.49335, 0.168738, 753, 1126, 0, 0, 156, 8);
encounters.archavon_the_stone_watcher:setLoot({}); 

encounters.emalon_the_storm_watcher = createEncounter();
encounters.emalon_the_storm_watcher:setAttributes("Emalon the Storm Watcher", "", 0.627193, 0.553059, 753, 1127, 1, 0, 156, 8);
encounters.emalon_the_storm_watcher:setLoot({}); 

encounters.koralon_the_flame_watcher = createEncounter();
encounters.koralon_the_flame_watcher:setAttributes("Koralon the Flame Watcher", "", 0.363289, 0.551625, 753, 1128, 2, 0, 156, 8);
encounters.koralon_the_flame_watcher:setLoot({}); 

encounters.toravon_the_ice_watcher = createEncounter();
encounters.toravon_the_ice_watcher:setAttributes("Toravon the Ice Watcher", "", 0.627151, 0.363767, 753, 1129, 3, 0, 156, 8);
encounters.toravon_the_ice_watcher:setLoot({}); 

encounters.anub_rekhan = createEncounter();
encounters.anub_rekhan:setAttributes("Anub'Rekhan", "", 0.306925, 0.469885, 754, 1107, 0, 0, 163, 8);
encounters.anub_rekhan:setLoot({}); 

encounters.grand_widow_faerlina = createEncounter();
encounters.grand_widow_faerlina:setAttributes("Grand Widow Faerlina", "", 0.441725, 0.360899, 754, 1110, 1, 0, 163, 8);
encounters.grand_widow_faerlina:setLoot({}); 

encounters.maexxna = createEncounter();
encounters.maexxna:setAttributes("Maexxna", "", 0.686466, 0.152964, 754, 1116, 2, 0, 163, 8);
encounters.maexxna:setLoot({}); 

encounters.noth_the_plaguebringer = createEncounter();
encounters.noth_the_plaguebringer:setAttributes("Noth the Plaguebringer", "", 0.346122, 0.564531, 754, 1117, 3, 0, 165, 8);
encounters.noth_the_plaguebringer:setLoot({}); 

encounters.heigan_the_unclean = createEncounter();
encounters.heigan_the_unclean:setAttributes("Heigan the Unclean", "", 0.498172, 0.456978, 754, 1112, 4, 0, 165, 8);
encounters.heigan_the_unclean:setLoot({}); 

encounters.loatheb = createEncounter();
encounters.loatheb:setAttributes("Loatheb", "", 0.760165, 0.283523, 754, 1115, 5, 0, 165, 8);
encounters.loatheb:setLoot({}); 

encounters.instructor_razuvious = createEncounter();
encounters.instructor_razuvious:setAttributes("Instructor Razuvious", "", 0.427469, 0.459909, 754, 1113, 6, 0, 164, 8);
encounters.instructor_razuvious:setLoot({}); 

encounters.gothik_the_harvester = createEncounter();
encounters.gothik_the_harvester:setAttributes("Gothik the Harvester", "", 0.675078, 0.596142, 754, 1109, 7, 0, 164, 8);
encounters.gothik_the_harvester:setLoot({}); 

encounters.the_four_horsemen = createEncounter();
encounters.the_four_horsemen:setAttributes("The Four Horsemen", "", 0.301273, 0.768225, 754, 1121, 8, 0, 164, 8);
encounters.the_four_horsemen:setLoot({}); 

encounters.patchwerk = createEncounter();
encounters.patchwerk:setAttributes("Patchwerk", "Patchwerk want to play!", 0.541192, 0.416887, 754, 1118, 9, 0, 162, 8);
encounters.patchwerk:setLoot({}); 

encounters.grobbulus = createEncounter();
encounters.grobbulus:setAttributes("Grobbulus", "", 0.615762, 0.531547, 754, 1111, 10, 0, 162, 8);
encounters.grobbulus:setLoot({}); 

encounters.gluth = createEncounter();
encounters.gluth:setAttributes("Gluth", "", 0.462924, 0.438272, 754, 1108, 11, 0, 162, 8);
encounters.gluth:setLoot({}); 

encounters.thaddius = createEncounter();
encounters.thaddius:setAttributes("Thaddius", "", 0.265857, 0.145792, 754, 1120, 12, 0, 162, 8);
encounters.thaddius:setLoot({}); 

encounters.sapphiron = createEncounter();
encounters.sapphiron:setAttributes("Sapphiron", "", 0.565133, 0.675014, 754, 1119, 13, 0, 167, 8);
encounters.sapphiron:setLoot({}); 

encounters.kel_thuzad = createEncounter();
encounters.kel_thuzad:setAttributes("Kel'Thuzad", "", 0.365324, 0.223293, 754, 1114, 14, 0, 167, 8);
encounters.kel_thuzad:setLoot({}); 

encounters.sartharion = createEncounter();
encounters.sartharion:setAttributes("Sartharion", "", 0.505736, 0.477055, 755, 1090, 0, 0, 155, 8);
encounters.sartharion:setLoot({}); 

encounters.malygos = createEncounter();
encounters.malygos:setAttributes("Malygos", "", 0.384321, 0.498566, 756, 1094, 0, 0, 141, 8);
encounters.malygos:setLoot({}); 

encounters.the_northrend_beasts = createEncounter();
encounters.the_northrend_beasts:setAttributes("The Northrend Beasts", "", 0.511514, 0.527373, 757, 1088, 0, 0, 172, 8);
encounters.the_northrend_beasts:setLoot({}); 

encounters.lord_jaraxxus = createEncounter();
encounters.lord_jaraxxus:setAttributes("Lord Jaraxxus", "", 0.463713, 0.40548, 757, 1087, 1, 0, 172, 8);
encounters.lord_jaraxxus:setLoot({}); 

encounters.champions_of_the_alliance = createEncounter();
encounters.champions_of_the_alliance:setAttributes("Champions of the Alliance", "", 0.42834, 0.527373, 757, 1086, 2, 0, 172, 8);
encounters.champions_of_the_alliance:setLoot({}); 

encounters.champions_of_the_horde = createEncounter();
encounters.champions_of_the_horde:setAttributes("Champions of the Horde", "", 0.42834, 0.527373, 757, 1086, 2, 0, 172, 8);
encounters.champions_of_the_horde:setLoot({}); 

encounters.twin_val_kyr = createEncounter();
encounters.twin_val_kyr:setAttributes("Twin Val'kyr", "", 0.463713, 0.649266, 757, 1089, 3, 0, 172, 8);
encounters.twin_val_kyr:setLoot({}); 

encounters.anub_arak = createEncounter();
encounters.anub_arak:setAttributes("Anub'arak", "", 0.532546, 0.355289, 757, 1085, 4, 0, 173, 8);
encounters.anub_arak:setLoot({}); 

encounters.lord_marrowgar = createEncounter();
encounters.lord_marrowgar:setAttributes("Lord Marrowgar", "", 0.391055, 0.593338, 758, 1101, 0, 0, 186, 8);
encounters.lord_marrowgar:setLoot({}); 

encounters.lady_deathwhisper = createEncounter();
encounters.lady_deathwhisper:setAttributes("Lady Deathwhisper", "", 0.391055, 0.86998, 758, 1100, 1, 0, 186, 8);
encounters.lady_deathwhisper:setLoot({}); 

encounters.icecrown_gunship_battle = createEncounter();
encounters.icecrown_gunship_battle:setAttributes("Icecrown Gunship Battle", "", 0.219927, 0.550191, 758, 1099, 2, 0, 187, 8);
encounters.icecrown_gunship_battle:setLoot({}); 

encounters.icecrown_gunship_battle = createEncounter();
encounters.icecrown_gunship_battle:setAttributes("Icecrown Gunship Battle", "", 0.6905, 0.550191, 758, 1099, 2, 0, 187, 8);
encounters.icecrown_gunship_battle:setLoot({}); 

encounters.deathbringer_saurfang = createEncounter();
encounters.deathbringer_saurfang:setAttributes("Deathbringer Saurfang", "", 0.515422, 0.21606, 758, 1096, 3, 0, 188, 8);
encounters.deathbringer_saurfang:setLoot({}); 

encounters.festergut = createEncounter();
encounters.festergut:setAttributes("Festergut", "", 0.198978, 0.654874, 758, 1097, 4, 0, 190, 8);
encounters.festergut:setLoot({}); 

encounters.rotface = createEncounter();
encounters.rotface:setAttributes("Rotface", "", 0.198978, 0.418259, 758, 1104, 5, 0, 190, 8);
encounters.rotface:setLoot({}); 

encounters.professor_putricide = createEncounter();
encounters.professor_putricide:setAttributes("Professor Putricide", "", 0.131101, 0.532982, 758, 1102, 6, 0, 190, 8);
encounters.professor_putricide:setLoot({}); 

encounters.blood_prince_council = createEncounter();
encounters.blood_prince_council:setAttributes("Blood Prince Council", "", 0.52016, 0.141491, 758, 1095, 7, 0, 190, 8);
encounters.blood_prince_council:setLoot({}); 

encounters.blood_queen_lana_thel = createEncounter();
encounters.blood_queen_lana_thel:setAttributes("Blood-Queen Lana'thel", "", 0.511599, 0.435467, 758, 1103, 8, 0, 191, 8);
encounters.blood_queen_lana_thel:setLoot({}); 

encounters.valithria_dreamwalker = createEncounter();
encounters.valithria_dreamwalker:setAttributes("Valithria Dreamwalker", "", 0.766814, 0.736678, 758, 1098, 9, 0, 190, 8);
encounters.valithria_dreamwalker:setLoot({}); 

encounters.sindragosa = createEncounter();
encounters.sindragosa:setAttributes("Sindragosa", "", 0.366325, 0.231898, 758, 1105, 10, 0, 189, 8);
encounters.sindragosa:setLoot({}); 

encounters.the_lich_king = createEncounter();
encounters.the_lich_king:setAttributes("The Lich King", "", 0.499296, 0.528743, 758, 1106, 11, 0, 192, 8);
encounters.the_lich_king:setLoot({}); 

encounters.flame_leviathan = createEncounter();
encounters.flame_leviathan:setAttributes("Flame Leviathan", "This massive armored tank guards the courtyard entrance in Ulduar. The watcher Mirmiron constructed the Flame Leviathan as part of his V0-L7R-0N weapons platform.", 0.493308, 0.386712, 759, 1132, 0, 17182, 147, 8);
encounters.flame_leviathan:setLoot({}); 

encounters.ignis_the_furnace_master = createEncounter();
encounters.ignis_the_furnace_master:setAttributes("Ignis the Furnace Master", "Like the other titan-forged creations in Ulduar, Ignis now serves the twisted will of the Old God Yogg-Saron. This imposing fire giant toils over the Colossal Forge, creating the iron armies that will conquer Azeroth in Yogg-Saron's name.", 0.383365, 0.266253, 759, 1136, 1, 17236, 147, 8);
encounters.ignis_the_furnace_master:setLoot({}); 

encounters.razorscale = createEncounter();
encounters.razorscale:setAttributes("Razorscale", "Veranus, broodmother of the proto-drakes in the Storm Peaks, served the keeper Thorim until she was captured by Loken and twisted into a vicious weapon. Under his master's orders, Ignis the Furnace Master fused iron plates onto Razorscale's hide to enhance her deadly strikes.", 0.545846, 0.264819, 759, 1139, 2, 17251, 147, 8);
encounters.razorscale:setLoot({}); 

encounters.xt_002_deconstructor = createEncounter();
encounters.xt_002_deconstructor:setAttributes("XT-002 Deconstructor", "Engineered to patrol the Ulduar scrapyard, Mimiron invested his clockwork creation with a rudimentary intellect that suited his duties. XT-002 has come to look upon himself as the keeper's son, and often throws tantrums like a petulant child.", 0.488611, 0.141492, 759, 1142, 3, 17281, 147, 8);
encounters.xt_002_deconstructor:setLoot({}); 

encounters.the_assembly_of_iron = createEncounter();
encounters.the_assembly_of_iron:setAttributes("The Assembly of Iron", "The iron legions of Loken are commanded by three fearsome generals, each representing a different titan-forged race. Stormcaller Brundir, Runemaster Molgeim, and the giant Steelbreaker fight in the name of the keeper's true master, the malevolent Yogg-Saron.", 0.156955, 0.564406, 759, 1140, 4, 17306, 148, 8);
encounters.the_assembly_of_iron:setLoot({}); 

encounters.kologarn = createEncounter();
encounters.kologarn:setAttributes("Kologarn", "Loken commanded Ignis the Furnace Master to fashion this towering giant to guard the Shattered Walkway. His massive arms allow Kologarn to pulverize any intruders attempting to reach the inner sanctum.", 0.37206, 0.133581, 759, 1137, 5, 17330, 148, 8);
encounters.kologarn:setLoot({}); 

encounters.auriaya = createEncounter();
encounters.auriaya:setAttributes("Auriaya", "Ulduar's archivist patrols the Observation Ring accompanied by ferocious cats. Years of solitude have weighed heavily on Auriaya, and the Old God's growing power seems to have destroyed the last shreds of her sanity.", 0.512595, 0.571575, 759, 1131, 6, 17346, 149, 8);
encounters.auriaya:setLoot({}); 

encounters.hodir = createEncounter();
encounters.hodir:setAttributes("Hodir", "The giant Hodir once presided over the Temple of Winter, lending his guidance to the frost giants in the Storm Peaks. Now the watcher dwells in an ice cave in the Halls of Winter, forced to serve the will of Yogg-Saron.", 0.67038, 0.638974, 759, 1135, 7, 17441, 149, 8);
encounters.hodir:setLoot({}); 

encounters.thorim = createEncounter();
encounters.thorim:setAttributes("Thorim", "For years, Thorim believed that ice giants had murdered his beloved wife Sif. Thorim turned his wrath upon his allies and fell into despair. When he learned that his brother Loken was responsible for the crime, Loken captured Thorim and brought him to Ulduar, where the Old God clouded the keeper's mind.", 0.722005, 0.485533, 759, 1141, 8, 17520, 149, 8);
encounters.thorim:setLoot({}); 

encounters.freya = createEncounter();
encounters.freya:setAttributes("Freya", "The watcher Freya has served as protector of all living things, aided by three stoic elders. Though her conservatory remains lush and verdant, she too has succumbed to the Old God's maddening whispers", 0.533669, 0.228841, 759, 1133, 9, 17375, 149, 8);
encounters.freya:setLoot({}); 

encounters.mimiron = createEncounter();
encounters.mimiron:setAttributes("Mimiron", "A brilliant innovator, Mimiron has crafted countless mechanisms throughout the history of Azeroth that have inspired awe and wonder. But since falling under Loken's disturbed influence, this watcher of Ulduar has only constructed machines of war and destruction.", 0.436196, 0.412397, 759, 1138, 10, 17579, 151, 8);
encounters.mimiron:setLoot({}); 

encounters.general_vezax = createEncounter();
encounters.general_vezax:setAttributes("General Vezax", "Strange creatures known as faceless ones lurk in the depths of Ulduar. One of their mightiest commanders, General Vezax, guards the twisted passages leading to the Prison of Yogg-Saron.", 0.567128, 0.602997, 759, 1134, 11, 17637, 150, 8);
encounters.general_vezax:setLoot({}); 

encounters.yogg_saron = createEncounter();
encounters.yogg_saron:setAttributes("Yogg-Saron", "The lucid dream. The monster in your nightmares. The fiend of a thousand faces. All must bend to the master's will. Your petty quarrels only make him stronger.", 0.683763, 0.399364, 759, 1143, 12, 17653, 150, 8);
encounters.yogg_saron:setLoot({}); 

encounters.algalon_the_observer = createEncounter();
encounters.algalon_the_observer:setAttributes("Algalon the Observer", "Loken's death triggered a warning to the titan Pantheon that Azeroth had lost its Prime Designate. Algalon the Observer has been dispatched to evaluate the presence of systemic corruption. If necessary, the constellar will trigger the re-origination of the entire world, wiping out all its current inhabitants.", 0.792833, 0.458222, 759, 1130, 13, 0, 148, 0);
encounters.algalon_the_observer:setLoot({}); 

encounters.onyxia = createEncounter();
encounters.onyxia:setAttributes("Onyxia", "", 0.67237, 0.309886, 760, 1084, 0, 0, 248, 8);
encounters.onyxia:setLoot({}); 

encounters.halion = createEncounter();
encounters.halion:setAttributes("Halion", "", 0.491354, 0.535788, 761, 1150, 0, 0, 200, 8);
encounters.halion:setLoot({}); 

encounters.chess_event = createEncounter();
encounters.chess_event:setAttributes("Chess Event", "", 0.359484, 0.616923, 745, 660, 10, 0, 363, 8);
encounters.chess_event:setLoot({}); 


