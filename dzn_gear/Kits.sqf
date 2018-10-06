// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************
kit_usmc_sl = [
	["<EQUIPEMENT >>  ","rhs_uniform_g3_mc","rhsusf_spc_squadleader","tf_rt1523g_big_bwmod","rhsusf_opscore_mc_pelt_nsw",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_hk416d145","rhs_mag_30Rnd_556x45_M855_PMAG",["rhsusf_acc_nt4_black","rhsusf_acc_anpeq15_bk","rhsusf_acc_ACOG3",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","hgun_Pistol_heavy_01_F","11Rnd_45ACP_Mag",["muzzle_snds_acp","acc_flashlight_pistol","optic_MRD",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["rhs_mag_30Rnd_556x45_M855_PMAG_Tan",5],["HandGrenade",2],["ACE_HandFlare_Yellow",2],["ACE_HandFlare_Green",2],["SmokeShell",2],["HANDGUN MAG",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_usmc_ftl = [
	["<EQUIPEMENT >>  ","rhs_uniform_g3_mc","rhsusf_spc_teamleader","B_AssaultPack_rgr","rhsusf_opscore_mc_pelt_nsw",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_hk416d145_m320","rhs_mag_30Rnd_556x45_M855A1_Stanag",["rhsusf_acc_nt4_black","rhsusf_acc_anpeq15_bk_h","rhsusf_acc_ACOG3_3d",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["ACE_M26_Clacker",1],["HandGrenade",2],["ACE_HandFlare_Yellow",1],["ACE_HandFlare_Green",1],["SmokeShell",2],["rhs_mag_30Rnd_556x45_M855_PMAG",8],["rhs_mag_M441_HE",7]]],
	["<BACKPACK ITEMS >> ",[["SatchelCharge_Remote_Mag",2]]]
];

kit_usmc_ar = [
	["<EQUIPEMENT >>  ","rhs_uniform_g3_mc","rhsusf_spc_mg","B_AssaultPack_rgr","rhsusf_opscore_mc_pelt_nsw",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_m27iar_grip","rhs_mag_30Rnd_556x45_M855A1_Stanag",["rhsusf_acc_nt4_black","rhsusf_acc_anpeq15_bk_h","rhsusf_acc_ACOG3_3d","bipod_01_F_blk"]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","hgun_Pistol_heavy_01_F","11Rnd_45ACP_Mag",["muzzle_snds_acp","","optic_MRD",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["HANDGUN MAG",2],["rhs_mag_30Rnd_556x45_M855_PMAG",6]]],
	["<BACKPACK ITEMS >> ",[["rhs_mag_30Rnd_556x45_M855_PMAG",15]]]
];

kit_usmc_gr = [
	["<EQUIPEMENT >>  ","rhs_uniform_g3_mc","rhsusf_spc_teamleader","","rhsusf_opscore_mc_pelt_nsw",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_hk416d145_m320","rhs_mag_30Rnd_556x45_M855A1_Stanag",["rhsusf_acc_nt4_black","rhsusf_acc_anpeq15_bk","rhsusf_acc_ACOG3_3d",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["ACE_HandFlare_Yellow",1],["ACE_HandFlare_Green",1],["SmokeShell",2],["rhs_mag_30Rnd_556x45_M855_PMAG",8],["rhs_mag_M441_HE",7]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_usmc_so = [
	["<EQUIPEMENT >>  ","rhs_uniform_g3_mc","rhsusf_spc_squadleader","B_Static_Designator_01_weapon_F","rhsusf_opscore_mc_pelt_nsw",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_hk416d145","rhs_mag_30Rnd_556x45_M855_PMAG",["rhsusf_acc_nt4_black","rhsusf_acc_anpeq15_bk_h","rhsusf_acc_ACOG3_3d",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","hgun_Pistol_heavy_01_F","11Rnd_45ACP_Mag",["muzzle_snds_acp","acc_flashlight_pistol","optic_MRD",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS,"B_UavTerminal"],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_30Rnd_556x45_M855_PMAG_Tan",5],["HandGrenade",2],["ACE_HandFlare_Yellow",2],["ACE_HandFlare_Green",2],["SmokeShell",2],["HANDGUN MAG",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_usmc_psg = [
	["<EQUIPEMENT >>  ","rhs_uniform_g3_mc","rhsusf_spc_squadleader","tf_rt1523g_big_bwmod","rhsusf_lwh_helmet_marpatwd",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_hk416d145","rhs_mag_30Rnd_556x45_M855_PMAG",["rhsusf_acc_nt4_black","rhsusf_acc_anpeq15_bk_h","rhsusf_acc_ACOG3_3d",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","hgun_Pistol_heavy_01_F","11Rnd_45ACP_Mag",["muzzle_snds_acp","acc_flashlight_pistol","optic_MRD",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS,"B_UavTerminal"],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_30Rnd_556x45_M855_PMAG_Tan",5],["HandGrenade",2],["ACE_HandFlare_Yellow",2],["ACE_HandFlare_Green",2],["SmokeShell",2],["HANDGUN MAG",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_afrf_r = [
	["<EQUIPEMENT >>  ","rhs_uniform_msv_emr","rhs_6b23_digi_6sh92","","rhs_6b27m_digi","rhs_scarf"],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74m_dtk","rhs_30Rnd_545x39_7N10_AK",["rhs_acc_dtk","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",5],["rhs_mag_rgn",1]]],
	["<BACKPACK ITEMS >> ",[]]
];
