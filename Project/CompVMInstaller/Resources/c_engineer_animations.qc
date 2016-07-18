// Created by Crowbar 0.27.0.0

$ModelName "weapons\c_models\c_engineer_animations.mdl"

$SurfaceProp "default"

$Contents "solid"

$MaxEyeDeflection 90

$CDMaterials "models\weapons\c_models\engineer\c_engineer_viewmodel\"

$CBox 0 0 0 0 0 0

$BBox -20.603 -22.304 -34.592 45.033 60.106 7.864

$DefineBone "root" "" 0 60.106396 -4.292783 0 0 0 0 0 0 0 0 0
$DefineBone "bip_upperArm_L" "root" 10.092304 0 0 -0.346421 27.875274 -9.114138 0 0 0 0 0 0
$DefineBone "bip_upperArm_R" "root" -10.0923 0.000004 0.000003 0.346421 -27.875274 170.88587 0 0 0 0 0 0
$DefineBone "bip_lowerArm_L" "bip_upperArm_L" 0 -11.937256 0 0 0.000002 -12.615493 0 0 0 0 0 0
$DefineBone "bip_lowerArm_R" "bip_upperArm_R" -0.000008 11.937298 0.000002 0 0 -12.615493 0 0 0 0 0 0
$DefineBone "bip_wrist_L" "bip_lowerArm_L" 0 -9.999998 -0.000002 0.000002 0.000003 -0.710517 0 0 0 0 0 0
$DefineBone "bip_wrist_R" "bip_lowerArm_R" 0 10.533932 0.000002 0.000002 0.000002 -0.710514 0 0 0 0 0 0
$DefineBone "bip_hand_L" "bip_lowerArm_L" 0 -11.59272 0.013129 0.000002 0.000003 -0.710517 0 0 0 0 0 0
$DefineBone "bip_hand_R" "bip_wrist_R" 0.000027 1.058876 0.000007 0.000002 -0.000002 -0.000002 0 0 0 0 0 0
$DefineBone "arm_attach_R" "bip_lowerArm_R" -0.000004 0 0.000001 0 0.000002 0.000006 0 0 0 0 0 0
$DefineBone "bip_twist_R" "bip_lowerArm_R" -0.000004 5.300001 0 0.000013 0.000003 0.000008 0 0 0 0 0 0
$DefineBone "forearm_twist_01_L" "bip_lowerArm_L" 0.000008 -5.303598 -0.001716 0.000002 0.000003 -0.710517 0 0 0 0 0 0
$DefineBone "effect_hand_L" "bip_hand_L" -2.078655 -1.771875 0.100797 -10.919345 165.860736 1.498614 0 0 0 0 0 0
$DefineBone "effect_hand_R" "bip_hand_R" 2.261845 1.906815 -0.064198 10.919792 -14.139304 -1.498447 0 0 0 0 0 0
$DefineBone "vm_weapon_bone" "bip_hand_R" 6.006599 2.049641 0.807188 10.568537 -25.94621 -160.087095 0 0 0 0 0 0
$DefineBone "vm_weapon_bone_1" "bip_hand_R" 6.721283 3.300211 1.318987 10.568537 -25.94621 -160.087095 0 0 0 0 0 0
$DefineBone "vm_weapon_bone_2" "bip_hand_R" 7.410255 4.505789 1.812372 10.568537 -25.94621 -160.087095 0 0 0 0 0 0
$DefineBone "vm_weapon_bone_3" "bip_hand_R" 8.175129 5.844181 2.360109 10.568537 -25.94621 -160.087095 0 0 0 0 0 0
$DefineBone "vm_weapon_bone_4" "bip_hand_R" 8.709616 6.779434 2.742866 10.568537 -25.94621 -160.087095 0 0 0 0 0 0
$DefineBone "vm_weapon_bone_5" "bip_hand_R" 9.36731 7.930285 3.213854 10.568537 -25.94621 -160.087095 0 0 0 0 0 0
$DefineBone "vm_weapon_bone_6" "bip_hand_R" 10.168661 9.332505 3.787714 10.568537 -25.94621 -160.087095 0 0 0 0 0 0
$DefineBone "vm_weapon_bone_7" "bip_hand_R" 10.923656 10.653618 4.328383 10.568537 -25.94621 -160.087095 0 0 0 0 0 0
$DefineBone "vm_weapon_bone_L" "bip_hand_L" -4.987762 -3.40139 1.04353 10.568533 -25.9462 19.912903 0 0 0 0 0 0
$DefineBone "vm_weapon_bone_L_1" "bip_hand_L" -5.525152 -4.341726 0.658694 10.568533 -25.9462 19.912903 0 0 0 0 0 0
$DefineBone "vm_weapon_bone_L_2" "bip_hand_L" -6.14864 -5.432716 0.212205 10.568533 -25.9462 19.912903 0 0 0 0 0 0
$DefineBone "weapon_bone" "bip_hand_R" 5.090199 2.495529 0.997334 10.568537 -25.94621 -160.087095 0 0 0 0 0 0
$DefineBone "weapon_bone_1" "bip_hand_R" 5.80489 3.746096 1.50913 10.568537 -25.94621 -160.087095 0 0 0 0 0 0
$DefineBone "weapon_bone_2" "bip_hand_R" 6.493858 4.951681 2.002517 10.568537 -25.94621 -160.087095 0 0 0 0 0 0
$DefineBone "weapon_bone_3" "bip_hand_R" 7.258736 6.290068 2.550255 10.568537 -25.94621 -160.087095 0 0 0 0 0 0
$DefineBone "weapon_bone_L" "bip_hand_L" -2.407539 -4.656857 0.508154 2.934624 4.443494 99.617859 0 0 0 0 0 0
$DefineBone "bip_thumb_0_L" "bip_hand_L" -1.809814 -0.499929 2.575144 -6.260519 -25.558531 -31.003742 0 0 0 0 0 0
$DefineBone "bip_thumb_0_R" "bip_hand_R" 1.809803 0.499863 -2.575165 -6.260524 -25.558532 -31.003735 0 0 0 0 0 0
$DefineBone "bip_thumb_1_L" "bip_thumb_0_L" -0.000004 -3.099537 -0.000008 -0.000003 0.000003 11.826803 0 0 0 0 0 0
$DefineBone "bip_thumb_1_R" "bip_thumb_0_R" -0.00005 3.09952 0.000008 0.000008 -0.000015 11.826805 0 0 0 0 0 0
$DefineBone "bip_thumb_2_L" "bip_thumb_1_L" -0.000004 -1.64941 0.000004 -0.000005 0.000001 -8.169218 0 0 0 0 0 0
$DefineBone "bip_thumb_2_R" "bip_thumb_1_R" 0 1.64942 0.00001 0.000002 -0.000009 -8.169227 0 0 0 0 0 0
$DefineBone "bip_index_meta_0_L" "bip_hand_L" -0.008202 -1.168287 1.640406 61.198851 -118.799216 -115.979413 0 0 0 0 0 0
$DefineBone "bip_index_meta_0_R" "bip_hand_R" 0.008183 1.168306 -1.640392 61.198857 -118.799175 -115.979372 0 0 0 0 0 0
$DefineBone "bip_index_0_L" "bip_index_meta_0_L" 0.000004 -3.307283 0.000002 -15.200344 22.794744 12.109848 0 0 0 0 0 0
$DefineBone "bip_index_0_R" "bip_index_meta_0_R" 0.00004 3.307251 0.000002 -15.200328 22.794742 12.109872 0 0 0 0 0 0
$DefineBone "bip_index_1_L" "bip_index_0_L" -0.000003 -2.892881 -0.000002 -0.000003 0.00001 39.534542 0 0 0 0 0 0
$DefineBone "bip_index_1_R" "bip_index_0_R" 0.000006 2.892891 0.000051 -0.000009 0.000003 39.534508 0 0 0 0 0 0
$DefineBone "bip_index_2_L" "bip_index_1_L" 0 -1.789223 0 0.000004 0.000003 8.963478 0 0 0 0 0 0
$DefineBone "bip_index_2_R" "bip_index_1_R" -0.000023 1.789169 -0.000064 -0.000002 -0.000002 8.963479 0 0 0 0 0 0
$DefineBone "bip_middle_meta_0_L" "bip_hand_L" -0.108307 -1.322851 0.77475 75.180002 -147.650905 -144.614135 0 0 0 0 0 0
$DefineBone "bip_middle_meta_0_R" "bip_hand_R" 0.108303 1.322773 -0.774776 75.180002 -147.650892 -144.614121 0 0 0 0 0 0
$DefineBone "bip_middle_0_L" "bip_middle_meta_0_L" -0.000002 -3.408819 -0.000002 -6.141863 11.82646 13.018679 0 0 0 0 0 0
$DefineBone "bip_middle_0_R" "bip_middle_meta_0_R" -0.000008 3.408844 -0.000019 -6.141873 11.826468 13.018621 0 0 0 0 0 0
$DefineBone "bip_middle_1_L" "bip_middle_0_L" 0 -2.799513 0 0.000005 0.000001 39.115319 0 0 0 0 0 0
$DefineBone "bip_middle_1_R" "bip_middle_0_R" -0.000019 2.799555 -0.000031 0.000004 0.000011 39.11536 0 0 0 0 0 0
$DefineBone "bip_middle_2_L" "bip_middle_1_L" 0 -1.822449 0.000005 -0.000003 0.000004 14.700037 0 0 0 0 0 0
$DefineBone "bip_middle_2_R" "bip_middle_1_R" 0.000011 1.822418 0.000038 -0.000003 0.000018 14.700022 0 0 0 0 0 0
$DefineBone "bip_ring_meta_0_L" "bip_hand_L" -0.205322 -1.375326 -0.310266 77.044043 145.982468 149.993865 0 0 0 0 0 0
$DefineBone "bip_ring_meta_0_R" "bip_hand_R" 0.205257 1.375311 0.310268 77.044043 145.982454 149.993865 0 0 0 0 0 0
$DefineBone "bip_ring_0_L" "bip_ring_meta_0_L" -0.000001 -3.388149 0.000008 0.77859 -0.720686 16.126111 0 0 0 0 0 0
$DefineBone "bip_ring_0_R" "bip_ring_meta_0_R" 0 3.388145 0.000072 0.778586 -0.720684 16.126068 0 0 0 0 0 0
$DefineBone "bip_ring_1_L" "bip_ring_0_L" 0.000002 -2.085268 -0.000002 0.000002 0.000002 35.566687 0 0 0 0 0 0
$DefineBone "bip_ring_1_R" "bip_ring_0_R" -0.00001 2.085281 0.000004 -0.000001 -0.000003 35.56668 0 0 0 0 0 0
$DefineBone "bip_ring_2_L" "bip_ring_1_L" -0.000001 -1.544365 0.000005 0.000007 -0.000003 12.350656 0 0 0 0 0 0
$DefineBone "bip_ring_2_R" "bip_ring_1_R" 0.000022 1.544292 0.000012 0.000007 -0.000004 12.350661 0 0 0 0 0 0
$DefineBone "bip_pinky_meta_0_L" "bip_hand_L" -0.193996 -1.163881 -1.333147 69.132901 115.572785 124.448315 0 0 0 0 0 0
$DefineBone "bip_pinky_meta_0_R" "bip_hand_R" 0.194004 1.163836 1.333138 69.132921 115.572758 124.448315 0 0 0 0 0 0
$DefineBone "bip_pinky_0_L" "bip_pinky_meta_0_L" 0 -3.297543 -0.000002 1.356041 -7.079814 14.347318 0 0 0 0 0 0
$DefineBone "bip_pinky_0_R" "bip_pinky_meta_0_R" 0.000001 3.297546 -0.000027 1.356041 -7.079811 14.347291 0 0 0 0 0 0
$DefineBone "bip_pinky_1_L" "bip_pinky_0_L" 0 -1.951864 0.000006 0.000005 0.000002 28.584419 0 0 0 0 0 0
$DefineBone "bip_pinky_1_R" "bip_pinky_0_R" 0.000002 1.951904 -0.000051 -0.000001 0.000004 28.58442 0 0 0 0 0 0
$DefineBone "bip_pinky_2_L" "bip_pinky_1_L" -0.000001 -1.231834 0 0.00001 0 22.624848 0 0 0 0 0 0
$DefineBone "bip_pinky_2_R" "bip_pinky_1_R" -0.00001 1.231846 0.000063 0.00001 0.000005 22.624855 0 0 0 0 0 0


$SectionFrames 30 125

$PoseParameter "r_hand_grip" 0 12 0

$WeightList "weights_r_handposes" {
	 "root" 0
	 "bip_upperArm_L" 0
	 "bip_upperArm_R" 0
	 "bip_lowerArm_L" 0
	 "bip_lowerArm_R" 0
	 "bip_wrist_L" 0
	 "bip_wrist_R" 0
	 "bip_hand_L" 0
	 "bip_hand_R" 0
	 "arm_attach_R" 0
	 "bip_twist_R" 0
	 "forearm_twist_01_L" 0
	 "effect_hand_L" 0
	 "effect_hand_R" 0
	 "vm_weapon_bone" 1
	 "vm_weapon_bone_1" 1
	 "vm_weapon_bone_2" 1
	 "vm_weapon_bone_3" 1
	 "vm_weapon_bone_4" 1
	 "vm_weapon_bone_5" 1
	 "vm_weapon_bone_6" 1
	 "vm_weapon_bone_7" 1
	 "vm_weapon_bone_L" 0
	 "vm_weapon_bone_L_1" 0
	 "vm_weapon_bone_L_2" 0
	 "weapon_bone" 1
	 "weapon_bone_1" 0
	 "weapon_bone_2" 0
	 "weapon_bone_3" 0
	 "weapon_bone_L" 0
	 "bip_thumb_0_L" 0
	 "bip_thumb_0_R" 1
	 "bip_thumb_1_L" 0
	 "bip_thumb_1_R" 1
	 "bip_thumb_2_L" 0
	 "bip_thumb_2_R" 1
	 "bip_index_meta_0_L" 0
	 "bip_index_meta_0_R" 0
	 "bip_index_0_L" 0
	 "bip_index_0_R" 1
	 "bip_index_1_L" 0
	 "bip_index_1_R" 1
	 "bip_index_2_L" 0
	 "bip_index_2_R" 1
	 "bip_middle_meta_0_L" 0
	 "bip_middle_meta_0_R" 0
	 "bip_middle_0_L" 0
	 "bip_middle_0_R" 1
	 "bip_middle_1_L" 0
	 "bip_middle_1_R" 1
	 "bip_middle_2_L" 0
	 "bip_middle_2_R" 1
	 "bip_ring_meta_0_L" 0
	 "bip_ring_meta_0_R" 0
	 "bip_ring_0_L" 0
	 "bip_ring_0_R" 1
	 "bip_ring_1_L" 0
	 "bip_ring_1_R" 1
	 "bip_ring_2_L" 0
	 "bip_ring_2_R" 1
	 "bip_pinky_meta_0_L" 0
	 "bip_pinky_meta_0_R" 0
	 "bip_pinky_0_L" 0
	 "bip_pinky_0_R" 1
	 "bip_pinky_1_L" 0
	 "bip_pinky_1_R" 1
	 "bip_pinky_2_L" 0
	 "bip_pinky_2_R" 1
}

$Animation "saxxy_pose" "c_engineer_animations_anims\saxxy_pose.smd" {
	fps 30
	loop
	weightlist "weights_r_handposes"
}

$Animation "bread_bagged_pose" "c_engineer_animations_anims\bread_bagged_pose.smd" {
	fps 30
	weightlist "weights_r_handposes"
}

$Animation "bread_baguette_pose" "c_engineer_animations_anims\bread_baguette_pose.smd" {
	fps 30
	weightlist "weights_r_handposes"
}

$Animation "bread_burnt_pose" "c_engineer_animations_anims\bread_burnt_pose.smd" {
	fps 30
	weightlist "weights_r_handposes"
}

$Animation "bread_cinnamon_pose" "c_engineer_animations_anims\bread_cinnamon_pose.smd" {
	fps 30
	weightlist "weights_r_handposes"
}

$Animation "bread_cornbread_pose" "c_engineer_animations_anims\bread_cornbread_pose.smd" {
	fps 30
	weightlist "weights_r_handposes"
}

$Animation "bread_crumpet_pose" "c_engineer_animations_anims\bread_crumpet_pose.smd" {
	fps 30
	weightlist "weights_r_handposes"
}

$Animation "bread_pretzel_pose" "c_engineer_animations_anims\bread_pretzel_pose.smd" {
	fps 30
	weightlist "weights_r_handposes"
}

$Animation "bread_ration_pose" "c_engineer_animations_anims\bread_ration_pose.smd" {
	fps 30
	weightlist "weights_r_handposes"
}

$Animation "bread_robo_pose" "c_engineer_animations_anims\bread_robo_pose.smd" {
	fps 30
	weightlist "weights_r_handposes"
}

$Animation "bread_russianblack_pose" "c_engineer_animations_anims\bread_russianblack_pose.smd" {
	fps 30
	weightlist "weights_r_handposes"
}

$Animation "bread_shortbread_pose" "c_engineer_animations_anims\bread_shortbread_pose.smd" {
	fps 30
	weightlist "weights_r_handposes"
}

$Animation "breadmonster" "c_engineer_animations_anims\breadmonster.smd" {
	fps 30
	loop
	weightlist "weights_r_handposes"
}

$Sequence "r_handposes" {
	"saxxy_pose"
	"bread_bagged_pose"
	"bread_baguette_pose"
	"bread_burnt_pose"
	"bread_cinnamon_pose"
	"bread_cornbread_pose"
	"bread_crumpet_pose"
	"bread_pretzel_pose"
	"bread_ration_pose"
	"bread_robo_pose"
	"bread_russianblack_pose"
	"bread_shortbread_pose"
	"breadmonster"
	blend "r_hand_grip" 0 12
	blendwidth 13
	fadein 0.2
	fadeout 0.2
	hidden
	realtime
	fps 30
	loop
	weightlist "weights_r_handposes"
}

$Sequence "fj_draw" {
	"c_engineer_animations_anims\fj_draw.smd"
	activity "ACT_PRIMARY_VM_DRAW" 1
	{ event 5004 1 "Weapon_Shotgun.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "fj_idle" {
	"c_engineer_animations_anims\fj_idle.smd"
	activity "ACT_PRIMARY_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$Sequence "fj_fire" {
	"c_engineer_animations_anims\fj_fire.smd"
	activity "ACT_PRIMARY_VM_PRIMARYATTACK" 1
	{ event 5004 7 "Weapon_ShotgunEngineer.Cock_Back" }
	{ event 5004 12 "Weapon_ShotgunEngineer.Cock_Forward" }
	{ event 6002 13 "2" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "fj_reload_start" {
	"c_engineer_animations_anims\fj_reload_start.smd"
	activity "ACT_PRIMARY_RELOAD_START" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "fj_reload_loop" {
	"c_engineer_animations_anims\fj_reload_loop.smd"
	activity "ACT_PRIMARY_VM_RELOAD" 1
	{ event 5004 10 "Weapon_Shotgun.Reload" }
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$Sequence "fj_reload_end" {
	"c_engineer_animations_anims\fj_reload_end.smd"
	activity "ACT_PRIMARY_RELOAD_FINISH" 1
	{ event 5004 12 "Weapon_ShotgunEngineer.Cock_Back" }
	{ event 5004 17 "Weapon_ShotgunEngineer.Cock_Forward" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 35
}

$Sequence "fj_fire_alt" {
	"c_engineer_animations_anims\fj_fire_alt.smd"
	activity "ACT_VM_PRIMARYATTACK_SPECIAL" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "pdq_idle_tap" {
	"c_engineer_animations_anims\pdq_idle_tap.smd"
	activity "ACT_MELEE_VM_IDLE" 1
	{ event 5004 21 "Weapon_Wrench.HitHand" }
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$Sequence "pdq_draw" {
	"c_engineer_animations_anims\pdq_draw.smd"
	activity "ACT_MELEE_VM_DRAW" 1
	{ event 5004 3 "Weapon_Wrench.Draw" }
	{ event 5004 3 "Weapon_Wrench.Draw2" }
	{ event 5004 20 "Weapon_Wrench.HitHand" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "pdq_swing_a" {
	"c_engineer_animations_anims\pdq_swing_a.smd"
	activity "ACT_MELEE_VM_HITCENTER" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "pdq_swing_b" {
	"c_engineer_animations_anims\pdq_swing_b.smd"
	activity "ACT_MELEE_VM_HITCENTER" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "pdq_swing_c" {
	"c_engineer_animations_anims\pdq_swing_c.smd"
	activity "ACT_MELEE_VM_SWINGHARD" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "wgl_draw" {
	"c_engineer_animations_anims\wgl_draw.smd"
	activity "ACT_ITEM1_VM_DRAW" 1
	{ event 5004 1 "Weapon_Wrench.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "wgl_idle" {
	"c_engineer_animations_anims\wgl_idle.smd"
	activity "ACT_ITEM1_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$Sequence "wgl_reload_start" {
	"c_engineer_animations_anims\wgl_reload_start.smd"
	activity "ACT_ITEM1_RELOAD_START" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "wgl_reload_loop" {
	"c_engineer_animations_anims\wgl_reload_loop.smd"
	activity "ACT_ITEM1_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$Sequence "wgl_reload_end" {
	"c_engineer_animations_anims\wgl_reload_end.smd"
	activity "ACT_ITEM1_RELOAD_FINISH" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 35
}

$Sequence "wgl_idle_rare" {
	"c_engineer_animations_anims\wgl_idle_rare.smd"
	activity "ACT_ITEM1_VM_IDLE_2" 1
	{ event 5004 1 "Weapon_Wrangler.Ouch" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "gun_idle" {
	"c_engineer_animations_anims\gun_idle.smd"
	activity "ACT_ITEM2_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$Sequence "gun_draw" {
	"c_engineer_animations_anims\gun_draw.smd"
	activity "ACT_ITEM2_VM_DRAW" 1
	{ event 5004 3 "Weapon_Wrench.Draw" }
	{ event 5004 3 "Weapon_Wrench.Draw2" }
	{ event 5004 17 "Weapon_Gunslinger.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "gun_swing_a" {
	"c_engineer_animations_anims\gun_swing_a.smd"
	activity "ACT_ITEM2_VM_HITCENTER" 1
	{ event 5004 3 "Weapon_Wrench.Draw" }
	{ event 5004 3 "Weapon_Wrench.Draw2" }
	{ event 5004 9 "Weapon_Gunslinger.Swing" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "gun_idle_rare" {
	"c_engineer_animations_anims\gun_idle_rare.smd"
	activity "ACT_ITEM2_VM_IDLE_2" 1
	{ event 5004 1 "Weapon_Gunslinger.ThreeHit" }
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$Sequence "gun_swing_B" {
	"c_engineer_animations_anims\gun_swing_B.smd"
	activity "ACT_ITEM2_VM_SWINGHARD" 1
	{ event 5004 3 "Weapon_Wrench.Draw" }
	{ event 5004 3 "Weapon_Wrench.Draw2" }
	{ event 5004 9 "Weapon_Gunslinger.Swing" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "pstl_draw" {
	"c_engineer_animations_anims\pstl_draw.smd"
	activity "ACT_SECONDARY_VM_DRAW" 1
	{ event 5004 1 "Weapon_Pistol.Draw" }
	{ event 5004 1 "Weapon_Pistol.Draw2" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "pstl_idle" {
	"c_engineer_animations_anims\pstl_idle.smd"
	activity "ACT_SECONDARY_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$Sequence "pstl_fire" {
	"c_engineer_animations_anims\pstl_fire.smd"
	activity "ACT_SECONDARY_VM_PRIMARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "pstl_reload" {
	"c_engineer_animations_anims\pstl_reload.smd"
	activity "ACT_SECONDARY_VM_RELOAD" 1
	{ event 5004 14 "Weapon_Pistol.ClipIn" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "pda_idle" {
	"c_engineer_animations_anims\pda_idle.smd"
	activity "ACT_ENGINEER_PDA1_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
	loop
}

$Sequence "pda_draw" {
	"c_engineer_animations_anims\pda_draw.smd"
	activity "ACT_ENGINEER_PDA1_VM_DRAW" 1
	{ event 5004 1 "Weapon_PDA.DrawEngineer" }
	{ event 5004 13 "Weapon_PDA.AntennaeEngineer" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "bld_idle" {
	"c_engineer_animations_anims\bld_idle.smd"
	activity "ACT_ENGINEER_PDA2_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$Sequence "bld_draw" {
	"c_engineer_animations_anims\bld_draw.smd"
	activity "ACT_ENGINEER_PDA2_VM_DRAW" 1
	{ event 5004 1 "Weapon_PDA.DrawEngineer" }
	{ event 5004 11 "Weapon_Builder.SwitchEngineer" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "box_idle" {
	"c_engineer_animations_anims\box_idle.smd"
	activity "ACT_ENGINEER_BLD_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$Sequence "box_draw" {
	"c_engineer_animations_anims\box_draw.smd"
	activity "ACT_ENGINEER_BLD_VM_DRAW" 1
	{ event 5004 3 "Weapon_ToolBox.Draw" }
	{ event 5004 3 "Weapon_ToolBox.Draw2" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "spk_idle_tap" {
	"c_engineer_animations_anims\spk_idle_tap.smd"
	activity "ACT_ITEM3_VM_IDLE" 1
	{ event 5004 21 "Weapon_Wrench.HitHand" }
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$Sequence "spk_draw" {
	"c_engineer_animations_anims\spk_draw.smd"
	activity "ACT_ITEM3_VM_DRAW" 1
	{ event 5004 3 "Weapon_Wrench.Draw" }
	{ event 5004 3 "Weapon_Wrench.Draw2" }
	{ event 5004 20 "Weapon_Wrench.HitHand" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "spk_swing_a" {
	"c_engineer_animations_anims\spk_swing_a.smd"
	activity "ACT_ITEM3_VM_HITCENTER" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "spk_swing_b" {
	"c_engineer_animations_anims\spk_swing_b.smd"
	activity "ACT_ITEM3_VM_HITCENTER" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "spk_swing_c" {
	"c_engineer_animations_anims\spk_swing_c.smd"
	activity "ACT_ITEM3_VM_SWINGHARD" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "melee_allclass_idle" {
	"c_engineer_animations_anims\melee_allclass_idle.smd"
	activity "ACT_MELEE_ALLCLASS_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$Sequence "melee_allclass_draw" {
	"c_engineer_animations_anims\melee_allclass_draw.smd"
	activity "ACT_MELEE_ALLCLASS_VM_DRAW" 1
	{ event 5004 1 "Weapon_Machete.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "melee_allclass_swing" {
	"c_engineer_animations_anims\melee_allclass_swing.smd"
	activity "ACT_MELEE_ALLCLASS_VM_HITCENTER" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "pomson_draw" {
	"c_engineer_animations_anims\pomson_draw.smd"
	activity "ACT_SECONDARY2_VM_DRAW" 1
	{ event 5004 1 "Weapon_Shotgun.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "pomson_idle" {
	"c_engineer_animations_anims\pomson_idle.smd"
	activity "ACT_SECONDARY2_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$Sequence "pomson_fire" {
	"c_engineer_animations_anims\pomson_fire.smd"
	activity "ACT_SECONDARY2_VM_PRIMARYATTACK" 1
	{ event 5004 7 "Weapon_ShotgunEngineer.Cock_Back" }
	{ event 5004 12 "Weapon_ShotgunEngineer.Cock_Forward" }
	{ event 6002 13 "2" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "pomson_reload_start" {
	"c_engineer_animations_anims\pomson_reload_start.smd"
	activity "ACT_SECONDARY2_RELOAD_START" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "pomson_reload_loop" {
	"c_engineer_animations_anims\pomson_reload_loop.smd"
	activity "ACT_SECONDARY2_VM_RELOAD" 1
	{ event 5004 10 "Weapon_Shotgun.Reload" }
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$Sequence "pomson_reload_end" {
	"c_engineer_animations_anims\pomson_reload_end.smd"
	activity "ACT_SECONDARY2_RELOAD_FINISH" 1
	{ event 5004 12 "Weapon_ShotgunEngineer.Cock_Back" }
	{ event 5004 17 "Weapon_ShotgunEngineer.Cock_Forward" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 35
}

$Sequence "throw_draw" {
	"c_engineer_animations_anims\throw_draw.smd"
	activity "ACT_THROWABLE_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "r_handposes" 0 0 0 0 local
	node "raised"
	snap
	fps 30
}

$Sequence "throw_idle" {
	"c_engineer_animations_anims\throw_idle.smd"
	activity "ACT_THROWABLE_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "r_handposes" 0 0 0 0 local
	node "raised"
	fps 30
	loop
}

$Sequence "throw_fire" {
	"c_engineer_animations_anims\throw_fire.smd"
	activity "ACT_THROWABLE_VM_FIRE" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "r_handposes" 0 0 0 0 local
	snap
	fps 30
}

$Sequence "spell_draw" {
	"c_engineer_animations_anims\spell_draw.smd"
	activity "ACT_SPELL_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "spell_fire" {
	"c_engineer_animations_anims\spell_fire.smd"
	activity "ACT_SPELL_VM_FIRE" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "revolver_draw" {
	"c_engineer_animations_anims\revolver_draw.smd"
	activity "ACT_ENGINEER_REVOLVER_DRAW" 1
	{ event 5004 1 "Weapon_Pistol.Draw" }
	{ event 5004 1 "Weapon_Pistol.Draw2" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "revolver_idle" {
	"c_engineer_animations_anims\revolver_idle.smd"
	activity "ACT_ENGINEER_REVOLVER_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$Sequence "revolver_fire" {
	"c_engineer_animations_anims\revolver_fire.smd"
	activity "ACT_ENGINEER_REVOLVER_PRIMARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "revolver_reload" {
	"c_engineer_animations_anims\revolver_reload.smd"
	activity "ACT_ENGINEER_REVOLVER_RELOAD" 1
	{ event 5004 14 "Weapon_Pistol.ClipIn" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "primary_inspect_start" {
	"c_engineer_animations_anims\primary_inspect_start.smd"
	activity "ACT_PRIMARY_VM_INSPECT_START" 1
	{ event 5004 1 "WeaponInspect.Movement4" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "primary_inspect_idle" {
	"c_engineer_animations_anims\primary_inspect_idle.smd"
	activity "ACT_PRIMARY_VM_INSPECT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$Sequence "primary_inspect_end" {
	"c_engineer_animations_anims\primary_inspect_end.smd"
	activity "ACT_PRIMARY_VM_INSPECT_END" 1
	{ event 5004 1 "WeaponInspect.Movement2" }
	{ event 5004 58 "WeaponInspect.Movement3" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "secondary_inspect_start" {
	"c_engineer_animations_anims\secondary_inspect_start.smd"
	activity "ACT_SECONDARY_VM_INSPECT_START" 1
	{ event 5004 1 "WeaponInspect.Movement3" }
	{ event 5004 20 "Weapon_Pistol.ReloadScout" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "secondary_inspect_idle" {
	"c_engineer_animations_anims\secondary_inspect_idle.smd"
	activity "ACT_SECONDARY_VM_INSPECT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$Sequence "secondary_inspect_end" {
	"c_engineer_animations_anims\secondary_inspect_end.smd"
	activity "ACT_SECONDARY_VM_INSPECT_END" 1
	{ event 5004 1 "Weapon_Pistol.ClipIn" }
	{ event 5004 1 "WeaponInspect.Movement2" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "melee_inspect_start" {
	"c_engineer_animations_anims\melee_inspect_start.smd"
	activity "ACT_MELEE_VM_INSPECT_START" 1
	{ event 5004 1 "WeaponInspect.Movement4" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "melee_inspect_idle" {
	"c_engineer_animations_anims\melee_inspect_idle.smd"
	activity "ACT_MELEE_VM_INSPECT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$Sequence "melee_inspect_end" {
	"c_engineer_animations_anims\melee_inspect_end.smd"
	activity "ACT_MELEE_VM_INSPECT_END" 1
	{ event 5004 1 "WeaponInspect.Movement2" }
	{ event 5004 94 "Weapon_Wrench.HitHand" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "item1_inspect_start" {
	"c_engineer_animations_anims\item1_inspect_start.smd"
	activity "ACT_ITEM1_VM_INSPECT_START" 1
	{ event 5004 1 "WeaponInspect.Movement4" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "item1_inspect_idle" {
	"c_engineer_animations_anims\item1_inspect_idle.smd"
	activity "ACT_ITEM1_VM_INSPECT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$Sequence "item1_inspect_end" {
	"c_engineer_animations_anims\item1_inspect_end.smd"
	activity "ACT_ITEM1_VM_INSPECT_END" 1
	{ event 5004 1 "WeaponInspect.Movement2" }
	{ event 5004 97 "WeaponInspect.Movement3" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "item2_inspect_start" {
	"c_engineer_animations_anims\item2_inspect_start.smd"
	activity "ACT_ITEM2_VM_INSPECT_START" 1
	{ event 5004 1 "WeaponInspect.Movement4" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "item2_inspect_idle" {
	"c_engineer_animations_anims\item2_inspect_idle.smd"
	activity "ACT_ITEM2_VM_INSPECT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$Sequence "item2_inspect_end" {
	"c_engineer_animations_anims\item2_inspect_end.smd"
	activity "ACT_ITEM2_VM_INSPECT_END" 1
	{ event 5004 1 "WeaponInspect.Movement2" }
	{ event 5004 97 "WeaponInspect.Movement3" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "grapple_draw" {
	"c_engineer_animations_anims\grapple_draw.smd"
	activity "ACT_GRAPPLE_DRAW" 1
	{ event AE_CL_PLAYSOUND 1 "WeaponGrapplingHook.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "grapple_idle" {
	"c_engineer_animations_anims\grapple_idle.smd"
	activity "ACT_GRAPPLE_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$Sequence "grapple_fire_start" {
	"c_engineer_animations_anims\grapple_fire_start.smd"
	activity "ACT_GRAPPLE_FIRE_START" 1
	fadein 0.1
	fadeout 0.2
	fps 30
}

$Sequence "grapple_fire_idle" {
	"c_engineer_animations_anims\grapple_fire_idle.smd"
	activity "ACT_GRAPPLE_FIRE_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$Sequence "grapple_pull_start" {
	"c_engineer_animations_anims\grapple_pull_start.smd"
	activity "ACT_GRAPPLE_PULL_START" 1
	fadein 0.1
	fadeout 0.2
	fps 30
}

$Sequence "grapple_pull_idle" {
	"c_engineer_animations_anims\grapple_pull_idle.smd"
	activity "ACT_GRAPPLE_PULL_IDLE" 1
	fadein 0.1
	fadeout 0.2
	fps 30
	loop
}

$Sequence "grapple_pull_end" {
	"c_engineer_animations_anims\grapple_pull_end.smd"
	activity "ACT_GRAPPLE_PULL_END" 1
	fadein 0.1
	fadeout 0.2
	fps 30
}

$Sequence "PASSTIME_ball_pickup" {
	"c_engineer_animations_anims\PASSTIME_ball_pickup.smd"
	activity "ACT_BALL_VM_PICKUP" 1
	fadein 0.1
	fadeout 0.2
	fps 24
}

$Sequence "PASSTIME_ball_idle" {
	"c_engineer_animations_anims\PASSTIME_ball_idle.smd"
	activity "ACT_BALL_VM_IDLE" 1
	fadein 0.1
	fadeout 0.2
	fps 24
}

$Sequence "PASSTIME_ball_catch1" {
	"c_engineer_animations_anims\PASSTIME_ball_catch1.smd"
	activity "ACT_BALL_VM_CATCH" 100
	fadein 0.1
	fadeout 0.2
	fps 24
}

$Sequence "PASSTIME_ball_throw_end" {
	"c_engineer_animations_anims\PASSTIME_ball_throw_end.smd"
	activity "ACT_BALL_VM_THROW_END" 1
	fadein 0.1
	fadeout 0.2
	fps 24
}

$Sequence "PASSTIME_ball_throw_start" {
	"c_engineer_animations_anims\PASSTIME_ball_throw_start.smd"
	activity "ACT_BALL_VM_THROW_START" 1
	fadein 0.1
	fadeout 0.2
	fps 24
}

$Sequence "PASSTIME_ball_throw_loop" {
	"c_engineer_animations_anims\PASSTIME_ball_throw_loop.smd"
	activity "ACT_BALL_VM_THROW_LOOP" 1
	fadein 0.1
	fadeout 0.2
	fps 24
}

$Sequence "melee_allclass_inspect_start" {
	"c_engineer_animations_anims\melee_allclass_inspect_start.smd"
	activity "ACT_MELEE_ALLCLASS_VM_INSPECT_START" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
}

$Sequence "melee_allclass_inspect_idle" {
	"c_engineer_animations_anims\melee_allclass_inspect_idle.smd"
	activity "ACT_MELEE_ALLCLASS_VM_INSPECT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$Sequence "melee_allclass_inspect_end" {
	"c_engineer_animations_anims\melee_allclass_inspect_end.smd"
	activity "ACT_MELEE_ALLCLASS_VM_INSPECT_END" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "PASSTIME_ball_catch2" {
	"c_engineer_animations_anims\PASSTIME_ball_catch2.smd"
	activity "ACT_BALL_VM_CATCH" 1
	{ event AE_CL_PLAYSOUND 33 "Weapon_Bison.Reload" }
	{ event AE_CL_PLAYSOUND 57 "Weapon_Bison.Reload" }
	{ event AE_CL_PLAYSOUND 79 "Weapon.ImpactHard" }
	fadein 0.1
	fadeout 0.2
	fps 24
}
