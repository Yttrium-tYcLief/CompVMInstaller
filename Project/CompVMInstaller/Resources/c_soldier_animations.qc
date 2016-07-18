// Created by Crowbar 0.27.0.0

$ModelName "weapons/c_models/c_soldier_animations.mdl"

$SurfaceProp "default"

$Contents "solid"

$MaxEyeDeflection 90

$CDMaterials "models\weapons\c_models\soldier\c_soldier_viewmodel\"

$CBox 0 0 0 0 0 0

$BBox -21.578 -29.125 -34.025 51.769 65.928 9.564

$DefineBone "root" "" 0 65.927551 -3.78886 0 0 0 0 0 0 0 0 0
$DefineBone "bip_upperArm_L" "root" 10.928331 0 0 -0.346421 27.875274 -9.114138 0 0 0 0 0 0
$DefineBone "bip_upperArm_R" "root" -10.9283 0.000046 0 0.346421 -27.875274 170.88587 0 0 0 0 0 0
$DefineBone "bip_lowerArm_L" "bip_upperArm_L" -1.188 -14.058315 -3.26346 -0.80234 -4.237946 -10.928142 0 0 0 0 0 0
$DefineBone "bip_lowerArm_R" "bip_upperArm_R" 1.18795 14.05838 3.263466 -0.802339 -4.237949 -10.928148 0 0 0 0 0 0
$DefineBone "bip_wrist_L" "bip_lowerArm_L" 0 -12.375359 0.000002 0.000002 -0.000002 -0.710515 0 0 0 0 0 0
$DefineBone "bip_wrist_R" "bip_lowerArm_R" 0.000011 12.375389 0.000009 0 0.000002 -0.710523 0 0 0 0 0 0
$DefineBone "bip_hand_L" "bip_wrist_L" 0.000008 -1.058861 -0.000003 0 -0.000002 0.000005 0 0 0 0 0 0
$DefineBone "bip_hand_R" "bip_wrist_R" 0.000057 1.058849 -0.000004 0 0.000005 0.000009 0 0 0 0 0 0
$DefineBone "effect_hand_L" "bip_hand_L" -2.036926 -1.84973 0.156127 -10.441173 169.872052 3.118211 0 0 0 0 0 0
$DefineBone "effect_hand_R" "bip_hand_R" 2.03688 1.849712 -0.156134 10.441624 -10.127989 -3.118025 0 0 0 0 0 0
$DefineBone "vm_weapon_bone" "bip_hand_R" 5.058613 0.60368 0.378056 9.77531 -21.896738 -161.570694 0 0 0 0 0 0
$DefineBone "vm_weapon_bone_1" "bip_hand_R" 5.315786 1.151814 0.576564 9.77531 -21.896738 -161.570694 0 0 0 0 0 0
$DefineBone "vm_weapon_bone_2" "bip_hand_R" 5.702507 1.97607 0.875071 9.77531 -21.896738 -161.570694 0 0 0 0 0 0
$DefineBone "vm_weapon_bone_3" "bip_hand_R" 6.039692 2.69474 1.135339 9.77531 -21.896738 -161.570694 0 0 0 0 0 0
$DefineBone "vm_weapon_bone_4" "bip_hand_R" 6.464046 3.599216 1.462897 9.77531 -21.896738 -161.570694 0 0 0 0 0 0
$DefineBone "vm_weapon_bone_5" "bip_hand_R" 6.940704 4.615168 1.830827 9.77531 -21.896738 -161.570694 0 0 0 0 0 0
$DefineBone "vm_weapon_bone_6" "bip_hand_R" 7.454599 5.710472 2.227496 9.77531 -21.896738 -161.570694 0 0 0 0 0 0
$DefineBone "vm_weapon_bone_7" "bip_hand_R" 8.025963 6.928272 2.668527 9.77531 -21.896738 -161.570694 0 0 0 0 0 0
$DefineBone "vm_weapon_bone_L" "bip_hand_L" -3.807613 -3.641075 -1.568387 9.7753 -21.896726 18.429287 0 0 0 0 0 0
$DefineBone "vm_weapon_bone_L_1" "bip_hand_L" -4.177807 -4.430103 -1.854137 9.7753 -21.896726 18.429287 0 0 0 0 0 0
$DefineBone "vm_weapon_bone_L_2" "bip_hand_L" -4.658195 -5.454004 -2.224946 9.7753 -21.896726 18.429287 0 0 0 0 0 0
$DefineBone "weapon_bone" "bip_hand_R" 4.013519 1.023731 0.572107 9.77531 -21.896738 -161.570694 0 0 0 0 0 0
$DefineBone "weapon_bone_1" "bip_hand_R" 4.814575 2.731096 1.190435 9.77531 -21.896738 -161.570694 0 0 0 0 0 0
$DefineBone "weapon_bone_2" "bip_hand_R" 5.711926 4.643698 1.88309 9.77531 -21.896738 -161.570694 0 0 0 0 0 0
$DefineBone "weapon_bone_3" "bip_hand_R" 6.465527 6.249928 2.464792 9.77531 -21.896738 -161.570694 0 0 0 0 0 0
$DefineBone "weapon_bone_L" "bip_hand_L" -2.582489 -4.133493 -1.795871 9.7753 -21.896726 18.429287 0 0 0 0 0 0
$DefineBone "handle_bone" "weapon_bone" 3.907276 9.50758 9.639423 -6.826707 123.790404 -169.927854 0 0 0 0 0 0
$DefineBone "rocket" "root" 0 -20 -20 0 0 0 0 0 0 0 0 0
$DefineBone "bip_thumb_0_L" "bip_hand_L" -1.809822 -0.499918 2.575142 -6.260517 -25.558539 -31.003735 0 0 0 0 0 0
$DefineBone "bip_thumb_0_R" "bip_hand_R" 1.809738 0.499899 -2.575143 -6.260507 -25.558532 -31.003711 0 0 0 0 0 0
$DefineBone "bip_thumb_1_L" "bip_thumb_0_L" 0.000002 -3.099541 -0.000004 0.000005 -0.000001 11.826812 0 0 0 0 0 0
$DefineBone "bip_thumb_1_R" "bip_thumb_0_R" 0.000011 3.099564 0.000017 0.000015 -0.000005 11.826836 0 0 0 0 0 0
$DefineBone "bip_thumb_2_L" "bip_thumb_1_L" -0.000006 -1.649408 0.000002 0.000008 -0.000009 -8.169211 0 0 0 0 0 0
$DefineBone "bip_thumb_2_R" "bip_thumb_1_R" 0 1.649406 0.000002 0.00001 -0.000003 -8.169201 0 0 0 0 0 0
$DefineBone "bip_index_meta_0_L" "bip_hand_L" -0.008202 -1.168278 1.640409 61.198851 -118.799216 -115.979413 0 0 0 0 0 0
$DefineBone "bip_index_meta_0_R" "bip_hand_R" 0.008163 1.168316 -1.640392 61.198851 -118.799189 -115.979413 0 0 0 0 0 0
$DefineBone "bip_index_0_L" "bip_index_meta_0_L" 0.000002 -3.307287 0 -15.200354 22.794737 12.109838 0 0 0 0 0 0
$DefineBone "bip_index_0_R" "bip_index_meta_0_R" 0.000013 3.307262 0.000013 -15.200337 22.794725 12.109829 0 0 0 0 0 0
$DefineBone "bip_index_1_L" "bip_index_0_L" -0.000001 -2.892874 -0.000002 0 0.000007 39.534542 0 0 0 0 0 0
$DefineBone "bip_index_1_R" "bip_index_0_R" 0.000034 2.89282 0.000027 -0.000001 -0.000009 39.534556 0 0 0 0 0 0
$DefineBone "bip_index_2_L" "bip_index_1_L" -0.000002 -1.789223 0.000002 -0.000003 -0.000001 8.963477 0 0 0 0 0 0
$DefineBone "bip_index_2_R" "bip_index_1_R" -0.000029 1.789276 -0.000039 -0.000009 -0.00001 8.96346 0 0 0 0 0 0
$DefineBone "bip_middle_meta_0_L" "bip_hand_L" -0.108315 -1.322845 0.774749 75.179995 -147.650892 -144.614149 0 0 0 0 0 0
$DefineBone "bip_middle_meta_0_R" "bip_hand_R" 0.108292 1.322811 -0.774755 75.179995 -147.650878 -144.614176 0 0 0 0 0 0
$DefineBone "bip_middle_0_L" "bip_middle_meta_0_L" 0.000002 -3.408819 0 -6.141877 11.826461 13.018645 0 0 0 0 0 0
$DefineBone "bip_middle_0_R" "bip_middle_meta_0_R" 0.000008 3.408815 0.000011 -6.141866 11.826455 13.018647 0 0 0 0 0 0
$DefineBone "bip_middle_1_L" "bip_middle_0_L" 0.000001 -2.799505 0.000002 0.000006 -0.000007 39.115343 0 0 0 0 0 0
$DefineBone "bip_middle_1_R" "bip_middle_0_R" -0.000012 2.799559 0 0.000001 -0.000008 39.115336 0 0 0 0 0 0
$DefineBone "bip_middle_2_L" "bip_middle_1_L" -0.000003 -1.822453 -0.000001 0 -0.000003 14.700046 0 0 0 0 0 0
$DefineBone "bip_middle_2_R" "bip_middle_1_R" 0.000014 1.822392 0.000011 -0.000003 -0.000005 14.700041 0 0 0 0 0 0
$DefineBone "bip_ring_meta_0_L" "bip_hand_L" -0.20533 -1.37532 -0.310266 77.044043 145.98244 149.993851 0 0 0 0 0 0
$DefineBone "bip_ring_meta_0_R" "bip_hand_R" 0.205292 1.375259 0.310248 77.04405 145.982386 149.993729 0 0 0 0 0 0
$DefineBone "bip_ring_0_L" "bip_ring_meta_0_L" 0 -3.388151 0.000004 0.7786 -0.720688 16.12608 0 0 0 0 0 0
$DefineBone "bip_ring_0_R" "bip_ring_meta_0_R" -0.000021 3.388241 0.000004 0.778618 -0.7207 16.126092 0 0 0 0 0 0
$DefineBone "bip_ring_1_L" "bip_ring_0_L" 0.000002 -2.085274 -0.000002 -0.000004 -0.000002 35.566711 0 0 0 0 0 0
$DefineBone "bip_ring_1_R" "bip_ring_0_R" 0.000003 2.085255 0.000004 -0.000003 -0.000007 35.56667 0 0 0 0 0 0
$DefineBone "bip_ring_2_L" "bip_ring_1_L" -0.000002 -1.544365 0.000002 0.000003 -0.000002 12.35065 0 0 0 0 0 0
$DefineBone "bip_ring_2_R" "bip_ring_1_R" 0.000009 1.544365 0.000019 0 -0.000007 12.350672 0 0 0 0 0 0
$DefineBone "bip_pinky_meta_0_L" "bip_hand_L" -0.193996 -1.163872 -1.333147 69.132915 115.572758 124.448343 0 0 0 0 0 0
$DefineBone "bip_pinky_meta_0_R" "bip_hand_R" 0.193981 1.163816 1.333129 69.132894 115.572758 124.448315 0 0 0 0 0 0
$DefineBone "bip_pinky_0_L" "bip_pinky_meta_0_L" 0 -3.297543 -0.000002 1.356044 -7.079815 14.347256 0 0 0 0 0 0
$DefineBone "bip_pinky_0_R" "bip_pinky_meta_0_R" -0.000006 3.297586 0.000021 1.356039 -7.079822 14.34725 0 0 0 0 0 0
$DefineBone "bip_pinky_1_L" "bip_pinky_0_L" 0 -1.951851 0.000002 0.000005 0.000004 28.58441 0 0 0 0 0 0
$DefineBone "bip_pinky_1_R" "bip_pinky_0_R" 0.000012 1.951797 0 0.000002 0.000003 28.584449 0 0 0 0 0 0
$DefineBone "bip_pinky_2_L" "bip_pinky_1_L" -0.000001 -1.231838 0.000001 0.000002 0.000003 22.624833 0 0 0 0 0 0
$DefineBone "bip_pinky_2_R" "bip_pinky_1_R" -0.000008 1.231865 -0.000045 -0.000003 0.000003 22.624809 0 0 0 0 0 0


$SectionFrames 30 121

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
	 "handle_bone" 1
	 "rocket" 0
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

$Animation "saxxy_pose" "c_soldier_animations_anims\saxxy_pose.smd" {
	fps 30
	loop
	weightlist "weights_r_handposes"
}

$Animation "bread_bagged_pose" "c_soldier_animations_anims\bread_bagged_pose.smd" {
	fps 30
	weightlist "weights_r_handposes"
}

$Animation "bread_baguette_pose" "c_soldier_animations_anims\bread_baguette_pose.smd" {
	fps 30
	weightlist "weights_r_handposes"
}

$Animation "bread_burnt_pose" "c_soldier_animations_anims\bread_burnt_pose.smd" {
	fps 30
	weightlist "weights_r_handposes"
}

$Animation "bread_cinnamon_pose" "c_soldier_animations_anims\bread_cinnamon_pose.smd" {
	fps 30
	weightlist "weights_r_handposes"
}

$Animation "bread_cornbread_pose" "c_soldier_animations_anims\bread_cornbread_pose.smd" {
	fps 30
	weightlist "weights_r_handposes"
}

$Animation "bread_crumpet_pose" "c_soldier_animations_anims\bread_crumpet_pose.smd" {
	fps 30
	weightlist "weights_r_handposes"
}

$Animation "bread_pretzel_pose" "c_soldier_animations_anims\bread_pretzel_pose.smd" {
	fps 30
	weightlist "weights_r_handposes"
}

$Animation "bread_ration_pose" "c_soldier_animations_anims\bread_ration_pose.smd" {
	fps 30
	weightlist "weights_r_handposes"
}

$Animation "bread_robo_pose" "c_soldier_animations_anims\bread_robo_pose.smd" {
	fps 30
	weightlist "weights_r_handposes"
}

$Animation "bread_russianblack_pose" "c_soldier_animations_anims\bread_russianblack_pose.smd" {
	fps 30
	weightlist "weights_r_handposes"
}

$Animation "bread_shortbread_pose" "c_soldier_animations_anims\bread_shortbread_pose.smd" {
	fps 30
	weightlist "weights_r_handposes"
}

$Animation "breadmonster" "c_soldier_animations_anims\breadmonster.smd" {
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

$Sequence "dh_idle" {
	"c_soldier_animations_anims\dh_idle.smd"
	activity "ACT_PRIMARY_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
	loop
}

$Sequence "dh_fire" {
	"c_soldier_animations_anims\dh_fire.smd"
	activity "ACT_PRIMARY_VM_PRIMARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "dh_draw" {
	"c_soldier_animations_anims\dh_draw.smd"
	activity "ACT_PRIMARY_VM_DRAW" 1
	{ event 5004 1 "Weapon_RPG.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "dh_reload_start" {
	"c_soldier_animations_anims\dh_reload_start.smd"
	activity "ACT_PRIMARY_RELOAD_START" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "dh_reload_loop" {
	"c_soldier_animations_anims\dh_reload_loop.smd"
	activity "ACT_PRIMARY_VM_RELOAD" 1
	{ event 5004 2 "Weapon_RPG.Reload" }
	{ event AE_WPN_INCREMENTAMMO 10 " " }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
	loop
}

$Sequence "dh_reload_finish" {
	"c_soldier_animations_anims\dh_reload_finish.smd"
	activity "ACT_PRIMARY_RELOAD_FINISH" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "dh_reload_start_alt" {
	"c_soldier_animations_anims\dh_reload_start_alt.smd"
	activity "ACT_PRIMARY_RELOAD_START_2" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "dh_reload_loop_alt" {
	"c_soldier_animations_anims\dh_reload_loop_alt.smd"
	activity "ACT_PRIMARY_VM_RELOAD_2" 1
	{ event 5004 2 "Weapon_RPG.Reload" }
	{ event AE_WPN_INCREMENTAMMO 10 " " }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
	loop
}

$Sequence "dh_reload_finish_alt" {
	"c_soldier_animations_anims\dh_reload_finish_alt.smd"
	activity "ACT_PRIMARY_RELOAD_FINISH_2" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "mangler_fire_super" {
	"c_soldier_animations_anims\mangler_fire_super.smd"
	activity "ACT_PRIMARY_VM_PRIMARYATTACK_3" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "mangler_reload_start" {
	"c_soldier_animations_anims\mangler_reload_start.smd"
	activity "ACT_PRIMARY_RELOAD_START_3" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "mangler_reload_loop" {
	"c_soldier_animations_anims\mangler_reload_loop.smd"
	activity "ACT_PRIMARY_VM_RELOAD_3" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
	loop
}

$Sequence "mangler_reload_finish" {
	"c_soldier_animations_anims\mangler_reload_finish.smd"
	activity "ACT_PRIMARY_RELOAD_FINISH_3" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "s_draw" {
	"c_soldier_animations_anims\s_draw.smd"
	activity "ACT_MELEE_VM_DRAW" 1
	{ event 5004 1 "Weapon_Shovel.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "s_idle" {
	"c_soldier_animations_anims\s_idle.smd"
	activity "ACT_MELEE_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$Sequence "s_swing_a" {
	"c_soldier_animations_anims\s_swing_a.smd"
	activity "ACT_MELEE_VM_HITCENTER" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "s_swing_b" {
	"c_soldier_animations_anims\s_swing_b.smd"
	activity "ACT_MELEE_VM_HITCENTER" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "s_swing_c" {
	"c_soldier_animations_anims\s_swing_c.smd"
	activity "ACT_MELEE_VM_SWINGHARD" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "bb_draw" {
	"c_soldier_animations_anims\bb_draw.smd"
	activity "ACT_ITEM1_VM_DRAW" 1
	{ event 5004 1 "Weapon_RPG.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
}

$Sequence "bb_idle" {
	"c_soldier_animations_anims\bb_idle.smd"
	activity "ACT_ITEM1_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$Sequence "bb_fire_red" {
	"c_soldier_animations_anims\bb_fire_red.smd"
	activity "ACT_ITEM1_VM_PRIMARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "bb_fire_blue" {
	"c_soldier_animations_anims\bb_fire_blue.smd"
	activity "ACT_ITEM1_VM_SECONDARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "wh_draw" {
	"c_soldier_animations_anims\wh_draw.smd"
	activity "ACT_ITEM2_VM_DRAW" 1
	{ event 5004 1 "Weapon_RPG.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
}

$Sequence "wh_idle" {
	"c_soldier_animations_anims\wh_idle.smd"
	activity "ACT_ITEM2_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$Sequence "wh_fire_red" {
	"c_soldier_animations_anims\wh_fire_red.smd"
	activity "ACT_ITEM2_VM_PRIMARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "wh_fire_blue" {
	"c_soldier_animations_anims\wh_fire_blue.smd"
	activity "ACT_ITEM2_VM_SECONDARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "draw" {
	"c_soldier_animations_anims\draw.smd"
	activity "ACT_SECONDARY_VM_DRAW" 1
	{ event 5004 1 "Weapon_RPG.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "idle" {
	"c_soldier_animations_anims\idle.smd"
	activity "ACT_SECONDARY_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 20
	loop
}

$Sequence "fire" {
	"c_soldier_animations_anims\fire.smd"
	activity "ACT_SECONDARY_VM_PRIMARYATTACK" 1
	{ event 5004 7 "Weapon_ShotgunEngineer.Cock_Back" }
	{ event 5004 12 "Weapon_ShotgunEngineer.Cock_Forward" }
	{ event 6002 13 "2" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "reload_start" {
	"c_soldier_animations_anims\reload_start.smd"
	activity "ACT_SECONDARY_RELOAD_START" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "reload_loop" {
	"c_soldier_animations_anims\reload_loop.smd"
	activity "ACT_SECONDARY_VM_RELOAD" 1
	{ event 5004 6 "Weapon_Shotgun.Reload" }
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$Sequence "reload_end" {
	"c_soldier_animations_anims\reload_end.smd"
	activity "ACT_SECONDARY_RELOAD_FINISH" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "melee_allclass_draw" {
	"c_soldier_animations_anims\melee_allclass_draw.smd"
	activity "ACT_MELEE_ALLCLASS_VM_DRAW" 1
	{ event 5004 1 "Weapon_Shovel.Draw" }
	fadein 0.2
	fadeout 0.2
	blendlayer "r_handposes" 0 0 0 0 local
	node "raised"
	snap
	fps 30
}

$Sequence "melee_allclass_idle" {
	"c_soldier_animations_anims\melee_allclass_idle.smd"
	activity "ACT_MELEE_ALLCLASS_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "r_handposes" 0 0 0 0 local
	node "raised"
	fps 30
	loop
}

$Sequence "melee_allclass_swing" {
	"c_soldier_animations_anims\melee_allclass_swing.smd"
	activity "ACT_MELEE_ALLCLASS_VM_HITCENTER" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "r_handposes" 0 0 0 0 local
	node "raised"
	snap
	fps 30
}

$Sequence "bison_draw" {
	"c_soldier_animations_anims\bison_draw.smd"
	activity "ACT_SECONDARY2_VM_DRAW" 1
	{ event 5004 1 "Weapon_RPG.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "bison_idle" {
	"c_soldier_animations_anims\bison_idle.smd"
	activity "ACT_SECONDARY2_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 20
	loop
}

$Sequence "bison_fire" {
	"c_soldier_animations_anims\bison_fire.smd"
	activity "ACT_SECONDARY2_VM_PRIMARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "bison_reload_start" {
	"c_soldier_animations_anims\bison_reload_start.smd"
	activity "ACT_SECONDARY2_RELOAD_START" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "bison_reload_loop" {
	"c_soldier_animations_anims\bison_reload_loop.smd"
	activity "ACT_SECONDARY2_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$Sequence "bison_reload_end" {
	"c_soldier_animations_anims\bison_reload_end.smd"
	activity "ACT_SECONDARY2_RELOAD_FINISH" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "bet_idle" {
	"c_soldier_animations_anims\bet_idle.smd"
	activity "ACT_VM_IDLE_QRL" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
	loop
}

$Sequence "bet_fire" {
	"c_soldier_animations_anims\bet_fire.smd"
	activity "ACT_VM_PRIMARYATTACK_QRL" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "bet_draw" {
	"c_soldier_animations_anims\bet_draw.smd"
	activity "ACT_VM_DRAW_QRL" 1
	{ event 5004 1 "Weapon_RPG.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "bet_reload_start" {
	"c_soldier_animations_anims\bet_reload_start.smd"
	activity "ACT_VM_RELOAD_START_QRL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "bet_reload_loop" {
	"c_soldier_animations_anims\bet_reload_loop.smd"
	activity "ACT_VM_RELOAD_QRL" 1
	{ event 5004 2 "Weapon_RPG.Reload" }
	{ event AE_WPN_INCREMENTAMMO 10 " " }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
	loop
}

$Sequence "bet_reload_finish" {
	"c_soldier_animations_anims\bet_reload_finish.smd"
	activity "ACT_VM_RELOAD_FINISH_QRL" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "throw_draw" {
	"c_soldier_animations_anims\throw_draw.smd"
	activity "ACT_THROWABLE_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "r_handposes" 0 0 0 0 local
	node "raised"
	snap
	fps 30
}

$Sequence "throw_idle" {
	"c_soldier_animations_anims\throw_idle.smd"
	activity "ACT_THROWABLE_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "r_handposes" 0 0 0 0 local
	node "raised"
	fps 30
	loop
}

$Sequence "throw_fire" {
	"c_soldier_animations_anims\throw_fire.smd"
	activity "ACT_THROWABLE_VM_FIRE" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "r_handposes" 0 0 0 0 local
	snap
	fps 30
}

$Sequence "spell_draw" {
	"c_soldier_animations_anims\spell_draw.smd"
	activity "ACT_SPELL_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "spell_fire" {
	"c_soldier_animations_anims\spell_fire.smd"
	activity "ACT_SPELL_VM_FIRE" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "primary_inspect_start" {
	"c_soldier_animations_anims\primary_inspect_start.smd"
	activity "ACT_PRIMARY_VM_INSPECT_START" 1
	{ event 5004 1 "WeaponInspect.Movement1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "primary_inspect_idle" {
	"c_soldier_animations_anims\primary_inspect_idle.smd"
	activity "ACT_PRIMARY_VM_INSPECT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$Sequence "primary_inspect_end" {
	"c_soldier_animations_anims\primary_inspect_end.smd"
	activity "ACT_PRIMARY_VM_INSPECT_END" 1
	{ event 5004 1 "WeaponInspect.Movement4" }
	{ event 5004 58 "WeaponInspect.Movement2" }
	{ event 5004 130 "WeaponInspect.Movement3" }
	fadein 0.2
	fadeout 0
	fps 30
}

$Sequence "primary_alt1_inspect_start" {
	"c_soldier_animations_anims\primary_alt1_inspect_start.smd"
	activity "ACT_PRIMARY_ALT1_VM_INSPECT_START" 1
	{ event 5004 1 "WeaponInspect.Movement1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "primary_alt1_inspect_idle" {
	"c_soldier_animations_anims\primary_alt1_inspect_idle.smd"
	activity "ACT_PRIMARY_ALT1_VM_INSPECT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$Sequence "primary_alt1_inspect_end" {
	"c_soldier_animations_anims\primary_alt1_inspect_end.smd"
	activity "ACT_PRIMARY_ALT1_VM_INSPECT_END" 1
	{ event 5004 1 "WeaponInspect.Movement4" }
	{ event 5004 58 "WeaponInspect.Movement2" }
	{ event 5004 130 "WeaponInspect.Movement3" }
	fadein 0.2
	fadeout 0
	fps 30
}

$Sequence "item1_inspect_start" {
	"c_soldier_animations_anims\item1_inspect_start.smd"
	activity "ACT_ITEM1_VM_INSPECT_START" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "item1_inspect_idle" {
	"c_soldier_animations_anims\item1_inspect_idle.smd"
	activity "ACT_ITEM1_VM_INSPECT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$Sequence "item1_inspect_end" {
	"c_soldier_animations_anims\item1_inspect_end.smd"
	activity "ACT_ITEM1_VM_INSPECT_END" 1
	fadein 0.2
	fadeout 0
	fps 30
}

$Sequence "melee_inspect_start" {
	"c_soldier_animations_anims\melee_inspect_start.smd"
	activity "ACT_MELEE_VM_INSPECT_START" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "melee_inspect_idle" {
	"c_soldier_animations_anims\melee_inspect_idle.smd"
	activity "ACT_MELEE_VM_INSPECT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$Sequence "melee_inspect_end" {
	"c_soldier_animations_anims\melee_inspect_end.smd"
	activity "ACT_MELEE_VM_INSPECT_END" 1
	fadein 0.2
	fadeout 0
	fps 30
}

$Sequence "grapple_draw" {
	"c_soldier_animations_anims\grapple_draw.smd"
	activity "ACT_GRAPPLE_DRAW" 1
	{ event AE_CL_PLAYSOUND 1 "WeaponGrapplingHook.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "grapple_idle" {
	"c_soldier_animations_anims\grapple_idle.smd"
	activity "ACT_GRAPPLE_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$Sequence "grapple_fire_start" {
	"c_soldier_animations_anims\grapple_fire_start.smd"
	activity "ACT_GRAPPLE_FIRE_START" 1
	fadein 0.1
	fadeout 0.2
	fps 30
}

$Sequence "grapple_fire_idle" {
	"c_soldier_animations_anims\grapple_fire_idle.smd"
	activity "ACT_GRAPPLE_FIRE_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$Sequence "grapple_pull_start" {
	"c_soldier_animations_anims\grapple_pull_start.smd"
	activity "ACT_GRAPPLE_PULL_START" 1
	fadein 0.1
	fadeout 0.2
	fps 30
}

$Sequence "grapple_pull_idle" {
	"c_soldier_animations_anims\grapple_pull_idle.smd"
	activity "ACT_GRAPPLE_PULL_IDLE" 1
	fadein 0.1
	fadeout 0.2
	fps 30
	loop
}

$Sequence "grapple_pull_end" {
	"c_soldier_animations_anims\grapple_pull_end.smd"
	activity "ACT_GRAPPLE_PULL_END" 1
	fadein 0.1
	fadeout 0.2
	fps 30
}

$Sequence "PASSTIME_ball_pickup" {
	"c_soldier_animations_anims\PASSTIME_ball_pickup.smd"
	activity "ACT_BALL_VM_PICKUP" 1
	fadein 0.1
	fadeout 0.2
	fps 30
}

$Sequence "PASSTIME_ball_idle" {
	"c_soldier_animations_anims\PASSTIME_ball_idle.smd"
	activity "ACT_BALL_VM_IDLE" 1
	fadein 0.1
	fadeout 0.2
	fps 30
}

$Sequence "PASSTIME_ball_catch1" {
	"c_soldier_animations_anims\PASSTIME_ball_catch1.smd"
	activity "ACT_BALL_VM_CATCH" 100
	fadein 0.1
	fadeout 0.2
	fps 30
}

$Sequence "PASSTIME_ball_catch2" {
	"c_soldier_animations_anims\PASSTIME_ball_catch2.smd"
	activity "ACT_BALL_VM_CATCH" 1
	{ event AE_CL_PLAYSOUND 20 "Soldier.PainCrticialDeath01" }
	{ event AE_CL_PLAYSOUND 78 "Canister.ImpactHard" }
	{ event AE_CL_PLAYSOUND 97 "Canister.ImpactHard" }
	{ event AE_CL_PLAYSOUND 117 "Canister.ImpactHard" }
	fadein 0.1
	fadeout 0.2
	fps 30
}

$Sequence "item2_inspect_start" {
	"c_soldier_animations_anims\item2_inspect_start.smd"
	activity "ACT_ITEM2_VM_INSPECT_START" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "item2_inspect_idle" {
	"c_soldier_animations_anims\item2_inspect_idle.smd"
	activity "ACT_ITEM2_VM_INSPECT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$Sequence "item2_inspect_end" {
	"c_soldier_animations_anims\item2_inspect_end.smd"
	activity "ACT_ITEM2_VM_INSPECT_END" 1
	fadein 0.2
	fadeout 0
	fps 30
}

$Sequence "melee_allclass_inspect_start" {
	"c_soldier_animations_anims\melee_allclass_inspect_start.smd"
	activity "ACT_MELEE_ALLCLASS_VM_INSPECT_START" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
}

$Sequence "melee_allclass_inspect_idle" {
	"c_soldier_animations_anims\melee_allclass_inspect_idle.smd"
	activity "ACT_MELEE_ALLCLASS_VM_INSPECT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$Sequence "melee_allclass_inspect_end" {
	"c_soldier_animations_anims\melee_allclass_inspect_end.smd"
	activity "ACT_MELEE_ALLCLASS_VM_INSPECT_END" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "secondary_inspect_start" {
	"c_soldier_animations_anims\secondary_inspect_start.smd"
	activity "ACT_SECONDARY_VM_INSPECT_START" 1
	{ event 5004 1 "WeaponInspect.Movement4" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "secondary_inspect_idle" {
	"c_soldier_animations_anims\secondary_inspect_idle.smd"
	activity "ACT_SECONDARY_VM_INSPECT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$Sequence "secondary_inspect_end" {
	"c_soldier_animations_anims\secondary_inspect_end.smd"
	activity "ACT_SECONDARY_VM_INSPECT_END" 1
	{ event 5004 1 "WeaponInspect.Movement2" }
	{ event 5004 96 "WeaponInspect.Movement3" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "PASSTIME_ball_throw_end" {
	"c_soldier_animations_anims\PASSTIME_ball_throw_end.smd"
	activity "ACT_BALL_VM_THROW_END" 1
	fadein 0.1
	fadeout 0.2
	fps 30
}

$Sequence "PASSTIME_ball_throw_start" {
	"c_soldier_animations_anims\PASSTIME_ball_throw_start.smd"
	activity "ACT_BALL_VM_THROW_start" 1
	fadein 0.1
	fadeout 0.2
	fps 30
}

$Sequence "PASSTIME_ball_throw_loop" {
	"c_soldier_animations_anims\PASSTIME_ball_throw_loop.smd"
	activity "ACT_BALL_VM_THROW_LOOP" 1
	fadein 0.1
	fadeout 0.2
	fps 30
}
