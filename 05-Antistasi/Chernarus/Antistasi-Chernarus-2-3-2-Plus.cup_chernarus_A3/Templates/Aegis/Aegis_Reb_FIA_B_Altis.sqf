////////////////////////////////////
//       NAMES AND FLAGS         ///
////////////////////////////////////
nameTeamPlayer = "FIA";
SDKFlag = "Flag_FIA_F";
SDKFlagTexture = "\A3\Data_F\Flags\Flag_FIA_CO.paa";
typePetros = "B_G_officer_F";

////////////////////////////////////
//             UNITS             ///
////////////////////////////////////
//First Entry is Guerilla, Second Entry is Para/Military
staticCrewTeamPlayer = "B_G_Soldier_unarmed_F";
SDKUnarmed = "B_G_Survivor_F";
SDKSniper = ["B_G_Soldier_M_F","B_G_Sharpshooter_F"];
SDKATman = ["B_G_Soldier_LAT2_F","B_G_Soldier_LAT_F"];
SDKMedic = ["B_G_medic_F","B_G_medic_F"];
SDKMG = ["B_G_Soldier_AR_F","B_G_Soldier_AR_F"];
SDKExp = ["B_G_Soldier_exp_F","B_G_Soldier_exp_F"];
SDKGL = ["B_G_Soldier_GL_F","B_G_Soldier_GL_F"];
SDKMil = ["B_G_Soldier_lite_F","B_G_Soldier_lite_F"];
SDKSL = ["B_G_Soldier_SL_F","B_G_Soldier_SL_F"];
SDKEng = ["B_G_engineer_F","B_G_engineer_F"];

////////////////////////////////////
//            GROUPS             ///
////////////////////////////////////
groupsSDKmid = [SDKSL,SDKGL,SDKMG,SDKMil];
groupsSDKAT = [SDKSL,SDKMG,SDKATman,SDKATman,SDKATman];
groupsSDKSquad = [SDKSL,SDKGL,SDKMil,SDKMG,SDKMil,SDKATman,SDKMil,SDKMedic];
groupsSDKSquadEng = [SDKSL,SDKGL,SDKMil,SDKMG,SDKExp,SDKATman,SDKEng,SDKMedic];
groupsSDKSquadSupp = [SDKSL,SDKGL,SDKMil,SDKMG,SDKATman,SDKMedic,[staticCrewTeamPlayer,staticCrewTeamPlayer],[staticCrewTeamPlayer,staticCrewTeamPlayer]];
groupsSDKSniper = [SDKSniper,SDKSniper];
groupsSDKSentry = [SDKGL,SDKMil];

//Rebel Unit Tiers (for costs)
sdkTier1 = SDKMil + [staticCrewTeamPlayer] + SDKMG + SDKGL + SDKATman;
sdkTier2 = SDKMedic + SDKExp + SDKEng;
sdkTier3 = SDKSL + SDKSniper;
soldiersSDK = sdkTier1 + sdkTier2 + sdkTier3;

////////////////////////////////////
//           VEHICLES            ///
////////////////////////////////////
//Military Vehicles
vehSDKBike = "B_G_Quadbike_01_F";
vehSDKLightArmed = "B_G_Offroad_01_armed_F";
vehSDKAT = "B_G_Offroad_01_AT_F";
vehSDKLightUnarmed = "B_G_Offroad_01_F";
vehSDKTruck = "B_G_Van_01_transport_F";
vehSDKPlane = "C_Plane_Civil_01_F";
vehSDKBoat = "B_G_Boat_Transport_01_F";
vehSDKRepair = "B_G_Offroad_01_repair_F";

//Civilian Vehicles
civCar = "C_Offroad_01_F";
civTruck = "C_Van_01_transport_F";
civHeli = "C_Heli_Light_01_civil_F";
civBoat = "C_Boat_Transport_02_F";
civLooter = "C_Truck_02_covered_F";

////////////////////////////////////
//        STATIC WEAPONS         ///
////////////////////////////////////
//Assembled Static Weapons
SDKMGStatic = "I_G_HMG_02_high_F";
staticATteamPlayer = "B_static_AT_F";
staticAAteamPlayer = "B_static_AA_F";
SDKMortar = "B_G_Mortar_01_F";
SDKMortarHEMag = "8Rnd_82mm_Mo_shells";
SDKMortarSmokeMag = "8Rnd_82mm_Mo_Smoke_white";

//Static Weapon Bags
MGStaticSDKB = "I_G_HMG_02_high_weapon_F";
ATStaticSDKB = "B_AT_01_weapon_F";
AAStaticSDKB = "B_AA_01_weapon_F";
MortStaticSDKB = "B_Mortar_01_weapon_F";
//Short Support
supportStaticSDKB = "I_G_HMG_02_support_F";
//Tall Support
supportStaticsSDKB2 = "I_G_HMG_02_support_high_F";
//Mortar Support
supportStaticsSDKB3 = "B_Mortar_01_support_F";

////////////////////////////////////
//             ITEMS             ///
////////////////////////////////////
//Mines
ATMineMag = "ATMine_Range_Mag";
APERSMineMag = "APERSMine_Range_Mag";

//Breaching explosives
//Breaching APCs needs one demo charge
breachingExplosivesAPC = [["DemoCharge_Remote_Mag", 1]];
//Breaching tanks needs one satchel charge or two demo charges
breachingExplosivesTank = [["SatchelCharge_Remote_Mag", 1], ["DemoCharge_Remote_Mag", 2]];

//Starting Unlocks
initialRebelEquipment append ["hgun_Pistol_01_F", "hgun_C1911_F"];
initialRebelEquipment append ["sgun_Mp153_classic_F", "sgun_HunterShotgun_01_F", "sgun_HunterShotgun_01_sawedoff_F"];
initialRebelEquipment append ["10Rnd_9x21_Mag", "7Rnd_45ACP_Mag", "2Rnd_12Gauge_Pellets", "2Rnd_12Gauge_Slug", "4Rnd_12Gauge_Pellets", "4Rnd_12Gauge_Slug", "MiniGrenade", "SmokeShell"];
initialRebelEquipment append ["B_FieldPack_blk","B_FieldPack_oucamo","B_FieldPack_cbr","B_FieldPack_oli","B_FieldPack_green_F","B_FieldPack_taiga_F"];
initialRebelEquipment append ["V_Chestrig_blk","V_Chestrig_rgr","V_Chestrig_khk","V_Chestrig_oli","V_BandollierB_blk","V_BandollierB_rgr","V_BandollierB_oli","V_Rangemaster_belt"];
initialRebelEquipment append ["Binocular","acc_flashlight", "acc_flashlight_pistol"];
//TFAR Unlocks
if (hasTFAR) then {initialRebelEquipment append ["tf_microdagr","tf_rf7800str"]};
if (hasTFAR && startWithLongRangeRadio) then {initialRebelEquipment pushBack "tf_rt1523g_big_rhs"};

//black market stuff
shop_UAV = ["I_UAV_01_F"];
shop_AA = ["I_LT_01_AA_F", "I_LT_01_AA_F", "I_LT_01_AA_F"];
shop_MRAP = ["B_A_MRAP_03_hmg_wdl_F", "B_MRAP_01_hmg_F", "O_MRAP_02_hmg_F"];
shop_wheel_apc = ["O_APC_Wheeled_02_rcws_v2_F", "B_APC_Wheeled_01_cannon_v2_F", "I_APC_Wheeled_03_cannon_F"];
shop_track_apc = ["B_A_APC_tracked_03_cannon_wdl_F", "B_A_APC_tracked_03_cannon_wdl_F", "B_APC_Tracked_01_rcws_F"];
shop_heli = ["O_Heli_Light_02_dynamicLoadout_F", "B_Heli_Light_01_dynamicLoadout_F", "I_E_Heli_light_03_dynamicLoadout_F"];
shop_tank = ["B_E_LT_01_cannon_F", "B_E_LT_01_AT_F", "I_MBT_03_cannon_F"];
shop_plane = ["I_Plane_Fighter_03_dynamicLoadout_F", "I_Plane_Fighter_03_dynamicLoadout_F", "I_E_Plane_Fighter_04_F"];

//military building models (common for all sides)
smallBunker = "Land_BagBunker_Small_F";
sandbag = "Land_BagFence_Long_F";
