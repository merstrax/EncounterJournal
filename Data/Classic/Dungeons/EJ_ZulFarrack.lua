local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-ZulFarrak.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-ZulFarrak.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-ZulFarrak.blp";

instance:setAttributes(241, "Zul'Farrak", EJ_Descriptions.Instances["ZULFARRAK"], 209, bgFile, btnFile, 0, loreFile, EJ_Data.Normal);

local gahz_rilla = EJ_Data:CreateEncounter();
gahz_rilla:setAttributes("Gahz'rilla", "Legend has it that Gahz'rilla was an adored pet of the Old Gods, or even a demigod in her own right. Whatever the truth is, the Sandfury trolls have worshiped this monstrous hydra for thousands of years. Ever wary of the beast's icy wrath, the trolls will only rouse Gahz'rilla when they have plentiful sacrifices to sate the ravenous creature's appetite.", 0.280942, 0.382783, 241, 594, 2, 4981, 219, 2);
gahz_rilla:setLoot({}); 

local antu_sul = EJ_Data:CreateEncounter();
antu_sul:setAttributes("Antu'sul", "Antu'sul prefers his sul'lithuz basilisks strong and ruthless. He treats these scaled beasts like family, and he is known to strike down anyone--even fellow trolls--who harm his precious children. Rather than give his opponents a proper burial, Antu'sul allows the basilisks to feast on whoever dares cross him.", 0.646175, 0.276639, 241, 595, 3, 4986, 219, 2);
antu_sul:setLoot({}); 

local theka_the_martyr = EJ_Data:CreateEncounter();
theka_the_martyr:setAttributes("Theka the Martyr", "Long ago, the martyr Theka was slain in the brutal war between the qiraji and the trolls. Zul'Farrak still stands because of his brave sacrifice. Even in death he maintains a vigil over his beloved city, and it is said that the dozens of insectoid warriors who killed him were cursed to live as mindless scarabs, scuttling at the martyr's side.", 0.531421, 0.262295, 241, 596, 4, 5005, 219, 2);
theka_the_martyr:setLoot({}); 

local witch_doctor_zum_rah = EJ_Data:CreateEncounter();
witch_doctor_zum_rah:setAttributes("Witch Doctor Zum'rah", "The powerful loa Bwonsamdi watches over the spirits of the Darkspear trolls, but many of the Sandfury tribe's fallen members are offered no such protection after death. These tortured spirits obey Zum'rah, a cruel witch doctor who uses his dark magic to force the city's dead into unending service.", 0.442623, 0.17623, 241, 597, 5, 5011, 219, 2);
witch_doctor_zum_rah:setLoot({}); 

local nekrum_sezz_ziz = EJ_Data:CreateEncounter();
nekrum_sezz_ziz:setAttributes("Nekrum & Sezz'ziz", "Nekrum Gutchewer has mysteriously lived well past his natural life, but his decaying body remains strong enough to aid Sezz'ziz. Together, these two trolls have gathered sacrifices to the mythic beast Gahz'rilla, who slumbers at the city's heart. Many troll followers eagerly await the terrifying creature's awakening, and they will do anything to see the ritual through.", 0.296448, 0.17418, 241, 598, 6, 5019, 219, 2);
nekrum_sezz_ziz:setLoot({}); 

local chief_ukorz_sandscalp = EJ_Data:CreateEncounter();
chief_ukorz_sandscalp:setAttributes("Chief Ukorz Sandscalp", "Chief Ukorz Sandscalp is obsessed with restoring his tribe to its former glory. He was raised on stories of a time when trolls lorded over their ancient lands without interference from goblins, gnomes, pirates, ogres, and other foreign interlopers. Sandscalp has called on his trusted comrade Ruuzlu to help him begin a new chapter in Sandfury history in the only way their tribe knows how: with swift and blinding violence.", 0.422131, 0.329918, 241, 600, 8, 5025, 219, 2);
chief_ukorz_sandscalp:setLoot({}); 

EJ_Data:addInstance(EJ_Data.CLASSIC, tcopy(instance), false);