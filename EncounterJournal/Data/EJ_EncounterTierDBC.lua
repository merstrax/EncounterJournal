Enum.EnounterTiers = {};
Enum.EnounterTiers.Classic = 1;
Enum.EnounterTiers.TBC = 2;
Enum.EnounterTiers.WLK = 3;

EJ_EncounterTierDB = {
    {Enum.EnounterTiers.Classic, "Classic"},
    {Enum.EnounterTiers.TBC, "Burning Crusade"},
    {Enum.EnounterTiers.WLK, "Wrath of the Lich King"}
};

Enum.EJTierInstanceStruct = {};
Enum.EJTierInstanceStruct.ID = 1;
Enum.EJTierInstanceStruct.TierID = 2;
Enum.EJTierInstanceStruct.InstanceID = 3;
Enum.EJTierInstanceStruct.OrderIndex = 4;

--ID,JournalTierID,JournalInstanceID,OrderIndex
EJ_TierInstanceDB = {
    {1195, Enum.EnounterTiers.Classic, 63, 0},
    {1199, Enum.EnounterTiers.Classic, 64, 0},
    {445, Enum.EnounterTiers.Classic, 226, 0},
    {439, Enum.EnounterTiers.Classic, 227, 0},
    {440, Enum.EnounterTiers.Classic, 228, 0},
    {441, Enum.EnounterTiers.Classic, 229, 0},
    {442, Enum.EnounterTiers.Classic, 230, 0},
    {443, Enum.EnounterTiers.Classic, 231, 0},
    {444, Enum.EnounterTiers.Classic, 232, 0},
    {446, Enum.EnounterTiers.Classic, 233, 0},
    {447, Enum.EnounterTiers.Classic, 234, 0},
    {449, Enum.EnounterTiers.Classic, 236, 0},
    {450, Enum.EnounterTiers.Classic, 237, 0},
    {451, Enum.EnounterTiers.Classic, 238, 0},
    {452, Enum.EnounterTiers.Classic, 239, 0},
    {453, Enum.EnounterTiers.Classic, 240, 0},
    {454, Enum.EnounterTiers.Classic, 241, 0},
    {563, Enum.EnounterTiers.Classic, 246, 0},
    {561, Enum.EnounterTiers.Classic, 311, 0},
    {562, Enum.EnounterTiers.Classic, 316, 0},
    {1208, Enum.EnounterTiers.Classic, 741, 1},
    {1227, Enum.EnounterTiers.Classic, 760, 2},
    {1209, Enum.EnounterTiers.Classic, 742, 3},
    {355, Enum.EnounterTiers.Classic, 76, 4},
    {1210, Enum.EnounterTiers.Classic, 743, 5},
    {1211, Enum.EnounterTiers.Classic, 744, 6},
    {1221, Enum.EnounterTiers.Classic, 754, 7},
    {460, Enum.EnounterTiers.TBC, 247, 0},
    {461, Enum.EnounterTiers.TBC, 248, 0},
    {462, Enum.EnounterTiers.TBC, 249, 0},
    {463, Enum.EnounterTiers.TBC, 250, 0},
    {464, Enum.EnounterTiers.TBC, 251, 0},
    {465, Enum.EnounterTiers.TBC, 252, 0},
    {466, Enum.EnounterTiers.TBC, 253, 0},
    {467, Enum.EnounterTiers.TBC, 254, 0},
    {468, Enum.EnounterTiers.TBC, 255, 0},
    {469, Enum.EnounterTiers.TBC, 256, 0},
    {470, Enum.EnounterTiers.TBC, 257, 0},
    {471, Enum.EnounterTiers.TBC, 258, 0},
    {472, Enum.EnounterTiers.TBC, 259, 0},
    {473, Enum.EnounterTiers.TBC, 260, 0},
    {474, Enum.EnounterTiers.TBC, 261, 0},
    {475, Enum.EnounterTiers.TBC, 262, 0},
    {1212, Enum.EnounterTiers.TBC, 745, 1},
    {1213, Enum.EnounterTiers.TBC, 746, 2},
    {1214, Enum.EnounterTiers.TBC, 747, 3},
    {1215, Enum.EnounterTiers.TBC, 748, 4},
    {1216, Enum.EnounterTiers.TBC, 749, 5},
    {1217, Enum.EnounterTiers.TBC, 750, 6},
    {1218, Enum.EnounterTiers.TBC, 751, 7},
    {354, Enum.EnounterTiers.TBC, 77, 8},
    {1219, Enum.EnounterTiers.TBC, 752, 9},
    {484, Enum.EnounterTiers.WLK, 271, 0},
    {485, Enum.EnounterTiers.WLK, 272, 0},
    {486, Enum.EnounterTiers.WLK, 273, 0},
    {487, Enum.EnounterTiers.WLK, 274, 0},
    {488, Enum.EnounterTiers.WLK, 275, 0},
    {489, Enum.EnounterTiers.WLK, 276, 0},
    {490, Enum.EnounterTiers.WLK, 277, 0},
    {491, Enum.EnounterTiers.WLK, 278, 0},
    {492, Enum.EnounterTiers.WLK, 279, 0},
    {493, Enum.EnounterTiers.WLK, 280, 0},
    {494, Enum.EnounterTiers.WLK, 281, 0},
    {495, Enum.EnounterTiers.WLK, 282, 0},
    {496, Enum.EnounterTiers.WLK, 283, 0},
    {497, Enum.EnounterTiers.WLK, 284, 0},
    {498, Enum.EnounterTiers.WLK, 285, 0},
    {499, Enum.EnounterTiers.WLK, 286, 0},
    {1220, Enum.EnounterTiers.WLK, 753, 1},
    {1222, Enum.EnounterTiers.WLK, 755, 2},
    {1223, Enum.EnounterTiers.WLK, 756, 3},
    {1226, Enum.EnounterTiers.WLK, 759, 4},
    {1224, Enum.EnounterTiers.WLK, 757, 5},
    {1225, Enum.EnounterTiers.WLK, 758, 6},
    {1228, Enum.EnounterTiers.WLK, 761, 7}
}