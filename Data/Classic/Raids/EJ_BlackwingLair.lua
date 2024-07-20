local instance = EJ_Data:CreateInstance();
local bgFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Backgrounds\\UI-EJ-BACKGROUND-BlackwingLair.blp";
local btnFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Buttons\\UI-EJ-DUNGEONBUTTON-BlackwingLair.blp";
local loreFile = "Interface\\AddOns\\EncounterJournal\\Assets\\Lore\\UI-EJ-LOREBG-BlackwingLair.blp";

local diffID = DifficultyUtil.ID;
local diffMask = DifficultyUtil.Mask;
local iconFlags = EJ_Data.IconFlags;

instance:setAttributes(742, "Blackwing Lair", EJ_Descriptions.Instances["BLACKWINGLAIR"], 287, bgFile, btnFile, loreFile, DifficultyUtil.ID.RaidAscended);

local razorgore_the_untamed = EJ_Data:CreateEncounter();
razorgore_the_untamed:setAttributes("Razorgore the Untamed", "[TODO] Add Ascension specific mechanics.", 742, 610, 1, 8);
razorgore_the_untamed:setLoot({19337,19336,1506015,1506014,19370,19369,19334,19335,19397,19357,19405,2522462});

--Phase 1
local razorgore_phase_1 = EJ_Data:CreateSection("Phase 1 - Orb of Domination", "This phase ends once Razorgore destroys all eggs in the room - Once this happens, Razorgore will automatically break control from the Orb of Domination, and any remaining adds alive in the room will flee the fight.", 0, 0, -1);
razorgore_the_untamed:addSection(razorgore_phase_1, nil);

local razorgore_orb = EJ_Data:CreateSection("Orb of Domination", "The Orb of Domination located on the platform on the left side of the room. Once the Orb is interacted with, you will take control of Razorgore for 90 seconds. You gain access to four abilities while controlling Razorgore. Once the 90 second channel is over or it is canceled you will be affected with Mind Exhaustion for 1 minute, preventing you from using the Orb of Domination.", 0, iconFlags.Important, -1);
razorgore_the_untamed:addSection(razorgore_orb, razorgore_phase_1);
razorgore_the_untamed:addSection(EJ_Data:CreateSection("Destroy Egg", "", 19873, 0, -1), razorgore_orb);
razorgore_the_untamed:addSection(EJ_Data:CreateSection("Calm Dragonkin", "", 19872, 0, -1), razorgore_orb);
razorgore_the_untamed:addSection(EJ_Data:CreateSection("Cleave", "", 19632, 0, -1), razorgore_orb);
razorgore_the_untamed:addSection(EJ_Data:CreateSection("Fireball Volley", "", 22425, 0, -1), razorgore_orb);

local razorgore_adds = EJ_Data:CreateSection("Adds, Adds and more Adds", "", 0, iconFlags.Adds, -1);
razorgore_the_untamed:addSection(razorgore_adds, razorgore_phase_1);
razorgore_the_untamed:addSection(EJ_Data:CreateSection("Death Talon Dragonspawn", "", 0, 0, -1), razorgore_adds);
razorgore_the_untamed:addSection(EJ_Data:CreateSection("Blackwing Mage", "", 0, 0, -1), razorgore_adds);
razorgore_the_untamed:addSection(EJ_Data:CreateSection("Blackwing Legionnaire", "", 0, 0, -1), razorgore_adds);

--Phase 2
local razorgore_phase_2 = EJ_Data:CreateSection("Phase 2 - Kill the Dragon", "", 0, 0, -1);
razorgore_the_untamed:addSection(razorgore_phase_2, nil);
razorgore_the_untamed:addSection(EJ_Data:CreateSection("Conflagration", "", 16805, 0, -1), razorgore_phase_2);
razorgore_the_untamed:addSection(EJ_Data:CreateSection("Fireball Volley", "", 22425, 0, -1), razorgore_phase_2);

instance:addEncounter(razorgore_the_untamed);

local vaelastrasz_the_corrupt = EJ_Data:CreateEncounter();
vaelastrasz_the_corrupt:setAttributes("Vaelastrasz the Corrupt", "", 742, 611, 2, 8);
vaelastrasz_the_corrupt:setLoot({19339,19340,19372,19371,19346,19348,19430,19403,19367,14000,2522463});

vaelastrasz_the_corrupt:addSection(EJ_Data:CreateSection("Essence of the Red", "As soon as Vaelastrasz is engaged, he buffs the entire raid with Essence of the Red - This ability empowers all players, granting them 500 Mana/50 Energy/20 Rage every second for 3 minutes.", 0, 0, -1), nil);
vaelastrasz_the_corrupt:addSection(EJ_Data:CreateSection("Burning Adrenaline", "Every 15 seconds, Vaelastrasz will grant the buff Burning Adrenaline to a mana-user - increasing all damage done by 100% and makes all spells instant cast, but drains 5% of the player's maximum HP every second until they die. Once a player affected by Burning Adrenaline dies, they will deal 4k-6k Fire damage to anyone surrounding them.", 0, 0, -1), nil);
vaelastrasz_the_corrupt:addSection(EJ_Data:CreateSection("Flame Breath", "", 23461, 0, -1), nil);
vaelastrasz_the_corrupt:addSection(EJ_Data:CreateSection("Cleave", "", 19983, 0, -1), nil);
vaelastrasz_the_corrupt:addSection(EJ_Data:CreateSection("Tail Sweep", "", 15847, 0, -1), nil);

instance:addEncounter(vaelastrasz_the_corrupt);

local broodlord_lashlayer = EJ_Data:CreateEncounter();
broodlord_lashlayer:setAttributes("Broodlord Lashlayer", "", 742, 612, 3, 8);
broodlord_lashlayer:setLoot({19342,19341,19345,19374,19373,19351,19350,19402,19365,19432,2522465});

broodlord_lashlayer:addSection(EJ_Data:CreateSection("Knock Away", "Reduces target's threat by 50%", 18670, iconFlags.Tank, -1), nil);
broodlord_lashlayer:addSection(EJ_Data:CreateSection("Cleave", "", 15284, 0, -1), nil);
broodlord_lashlayer:addSection(EJ_Data:CreateSection("Blast Wave", "", 23331, 0, -1), nil);
broodlord_lashlayer:addSection(EJ_Data:CreateSection("Mortal Strike", "", 24573, iconFlags.Tank + iconFlags.Healer, -1), nil);

instance:addEncounter(broodlord_lashlayer);

local firemaw = EJ_Data:CreateEncounter();
firemaw:setAttributes("Firemaw", "", 742, 613, 4, 8);
firemaw:setLoot({19365,19355,19353,19343,19344,19398,19400,19399,19396,19401,19394,19402,19397,19395,2522464});

firemaw:addSection(EJ_Data:CreateSection("Flame Buffet", "", 23341, 0, -1), nil);
firemaw:addSection(EJ_Data:CreateSection("Shadow Flame", "Applies a strong damage over time debuff that explodes when it expires. The debuff can be mitigated with Onyxia Scale Cloak.", 0, iconFlags.Important, -1), nil);
firemaw:addSection(EJ_Data:CreateSection("Wing Buffet", "", 23339, 0, -1), nil);
firemaw:addSection(EJ_Data:CreateSection("Thrash", "", 3391, 0, -1), nil);

instance:addEncounter(firemaw);

local ebonroc = EJ_Data:CreateEncounter();
ebonroc:setAttributes("Ebonroc", "", 742, 614, 5, 8);
ebonroc:setLoot({19345,19407,19405,19396,19394,19403,19397,19406,19395,19353,19355,19368,2522464});

ebonroc:addSection(EJ_Data:CreateSection("Shadow of Ebonroc", "Shadow of Ebonroc applies a debuff to its current target for 8 seconds - Every time Ebonroc melees this target, it will heal for 25,000.", 0, 0, -1), nil);
ebonroc:addSection(EJ_Data:CreateSection("Shadow Flame", "Applies a strong damage over time debuff that explodes when it expires. The debuff can be mitigated with Onyxia Scale Cloak.", 0, iconFlags.Important, -1), nil);
ebonroc:addSection(EJ_Data:CreateSection("Wing Buffet", "", 23339, 0, -1), nil);
ebonroc:addSection(EJ_Data:CreateSection("Thrash", "", 3391, 0, -1), nil);

instance:addEncounter(ebonroc);

local flamegor = EJ_Data:CreateEncounter();
flamegor:setAttributes("Flamegor", "", 742, 615, 6, 8);
flamegor:setLoot({19430,19396,19433,19394,19397,19432,19395,19431,19353,19357,19355,19367,2522464});

flamegor:addSection(EJ_Data:CreateSection("Fire Nova", "", 23462, 0, -1), nil);
flamegor:addSection(EJ_Data:CreateSection("Frenzy", "When Flamegor enters Frenzy he will cast Fire Nova every few seconds.", 0, iconFlags.Interruptable, -1), nil);
flamegor:addSection(EJ_Data:CreateSection("Shadow Flame", "Applies a strong damage over time debuff that explodes when it expires. The debuff can be mitigated with Onyxia Scale Cloak.", 0, iconFlags.Important, -1), nil);
flamegor:addSection(EJ_Data:CreateSection("Wing Buffet", "", 23339, 0, -1), nil);
flamegor:addSection(EJ_Data:CreateSection("Thrash", "", 3391, 0, -1), nil);

instance:addEncounter(flamegor);

local chromaggus = EJ_Data:CreateEncounter();
chromaggus:setAttributes("Chromaggus", "[TODO] Add Ascension specific mechanics.", 742, 616, 7, 8);
chromaggus:setLoot({19386,19388,19385,19391,19389,19390,19393,19392,19387,19347,19352,19349,19361,2522461});

local chromaggus_breaths = EJ_Data:CreateSection("Chromaggus' Breath Attacks", "", 0, 0, -1);
chromaggus:addSection(chromaggus_breaths, nil);
chromaggus:addSection(EJ_Data:CreateSection("Black: Engulfing Shadow", "", 23316, 0, -1), chromaggus_breaths);
chromaggus:addSection(EJ_Data:CreateSection("Bronze: Time Lapse", "", 23310, iconFlags.Important, -1), chromaggus_breaths);
chromaggus:addSection(EJ_Data:CreateSection("Blue: Frost Burn", "", 23187, 0, -1), chromaggus_breaths);
chromaggus:addSection(EJ_Data:CreateSection("Green: Corrosive Acid", "", 23313, 0, -1), chromaggus_breaths);
chromaggus:addSection(EJ_Data:CreateSection("Red: Incinerate", "", 23309, 0, -1), chromaggus_breaths);

local chromaggus_afflictions = EJ_Data:CreateSection("Brood Afflictions", "", 0, 0, -1);
chromaggus:addSection(chromaggus_afflictions, nil);
chromaggus:addSection(EJ_Data:CreateSection("Brood Affliction: Black", "", 23154, 0, -1), chromaggus_afflictions);
chromaggus:addSection(EJ_Data:CreateSection("Brood Affliction: Bronze", "", 23170, 0, -1), chromaggus_afflictions);
chromaggus:addSection(EJ_Data:CreateSection("Brood Affliction: Blue", "", 23153, 0, -1), chromaggus_afflictions);
chromaggus:addSection(EJ_Data:CreateSection("Brood Affliction: Green", "", 23169, 0, -1), chromaggus_afflictions);
chromaggus:addSection(EJ_Data:CreateSection("Brood Affliction: Red", "", 23155, 0, -1), chromaggus_afflictions);

instance:addEncounter(chromaggus);

local nefarian = EJ_Data:CreateEncounter();
nefarian:setAttributes("Nefarian", "[TODO] Ascension specific fight.", 742, 617, 8, 8);
nefarian:setLoot({19378,19375,19381,19380,19377,19376,19382,19379,19364,19363,19360,19356,14001,2522450});
instance:addEncounter(nefarian);

instance:generateLootList();
EJ_Data:addInstance(EJ_Data.CLASSIC, instance, true, 4);