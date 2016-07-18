// Created by Crowbar 0.27.0.0

$ModelName "weapons/c_models/c_demo_animations.mdl"

$SurfaceProp "default"

$Contents "solid"

$MaxEyeDeflection 90

$CDMaterials "models\weapons\c_models\demo\c_demo_viewmodel\"

$CBox 0 0 0 0 0 0

$BBox -21.578 -23.871 -47.894 48.258 65.928 5.571

$DefineBone "root" "" 0 65.927551 -3.78886 0 0 0 0 0 0 0 0 0
$DefineBone "bip_upperArm_L" "root" 10.928331 0 0 -0.346421 27.875274 -9.114139 0 0 0 0 0 0
$DefineBone "bip_lowerArm_L" "bip_upperArm_L" -1.188 -14.058319 -3.26346 -0.802339 -4.237951 -10.928142 0 0 0 0 0 0
$DefineBone "bip_upperArm_R" "root" -10.9283 0.000046 0 0.346421 -27.875274 170.88587 0 0 0 0 0 0
$DefineBone "bip_lowerArm_R" "bip_upperArm_R" 1.187954 14.058365 3.263467 -0.802339 -4.237953 -10.92814 0 0 0 0 0 0
$DefineBone "bip_wrist_R" "bip_lowerArm_R" 0.000019 12.375401 0.00001 0.000001 -0.000003 -0.710518 0 0 0 0 0 0
$DefineBone "bip_hand_R" "bip_wrist_R" 0.00005 1.058849 -0.000005 0 -0.000002 0.000003 0 0 0 0 0 0
$DefineBone "bip_wrist_L" "bip_lowerArm_L" 0 -12.375362 0.000001 0 -0.000002 -0.710519 0 0 0 0 0 0
$DefineBone "bip_hand_L" "bip_wrist_L" 0 -1.058857 0 0 0 0.000003 0 0 0 0 0 0
$DefineBone "weapon_bone" "bip_hand_R" 4.013523 1.023735 0.572109 9.775304 -21.896736 -161.570708 0 0 0 0 0 0
$DefineBone "weapon_bone_1" "bip_hand_R" 4.622826 2.322412 1.04243 9.775304 -21.896736 -161.570708 0 0 0 0 0 0
$DefineBone "weapon_bone_2" "bip_hand_R" 5.50211 4.19651 1.721142 9.775304 -21.896736 -161.570708 0 0 0 0 0 0
$DefineBone "weapon_bone_3" "bip_hand_R" 6.221514 5.729843 2.276443 9.775304 -21.896736 -161.570708 0 0 0 0 0 0
$DefineBone "weapon_bone_L" "bip_hand_L" -4.013557 -1.023741 -0.572112 9.775302 -21.896733 18.42929 0 0 0 0 0 0
$DefineBone "weapon_targe" "bip_lowerArm_L" 0 0 0 0 -0.000002 -0.000001 0 0 0 0 0 0
$DefineBone "weapon_bone_4" "bip_hand_R" 6.910431 7.198206 2.808212 9.775304 -21.896736 -161.570708 0 0 0 0 0 0
$DefineBone "vm_weapon_bone" "bip_hand_R" 6.01416 0.219616 0.200627 9.775309 -21.896736 -161.570694 0 0 0 0 0 0
$DefineBone "vm_weapon_bone_1" "bip_hand_R" 6.623466 1.51829 0.670945 9.775309 -21.896736 -161.570694 0 0 0 0 0 0
$DefineBone "vm_weapon_bone_2" "bip_hand_R" 7.50275 3.392387 1.349657 9.775309 -21.896736 -161.570694 0 0 0 0 0 0
$DefineBone "vm_weapon_bone_3" "bip_hand_R" 8.222153 4.925726 1.904961 9.775309 -21.896736 -161.570694 0 0 0 0 0 0
$DefineBone "vm_weapon_bone_4" "bip_hand_R" 8.911076 6.394085 2.436731 9.775309 -21.896736 -161.570694 0 0 0 0 0 0
$DefineBone "vm_weapon_bone_5" "bip_hand_R" 9.679916 8.032795 3.030196 9.775309 -21.896736 -161.570694 0 0 0 0 0 0
$DefineBone "vm_weapon_bone_6" "bip_hand_R" 10.512981 9.808384 3.673234 9.775309 -21.896736 -161.570694 0 0 0 0 0 0
$DefineBone "vm_weapon_bone_7" "bip_hand_R" 11.224152 11.324175 4.222181 9.775309 -21.896736 -161.570694 0 0 0 0 0 0
$DefineBone "vm_weapon_bone_L" "bip_hand_L" -5.17634 -0.556385 -0.356201 9.7753 -21.896726 18.429288 0 0 0 0 0 0
$DefineBone "vm_weapon_bone_L_1" "bip_hand_L" -5.827742 -1.944777 -0.859014 9.7753 -21.896726 18.429288 0 0 0 0 0 0
$DefineBone "vm_weapon_bone_L_2" "bip_hand_L" -6.484051 -3.343632 -1.365612 9.7753 -21.896726 18.429288 0 0 0 0 0 0
$DefineBone "bip_middle_meta_0_L" "bip_hand_L" -0.108311 -1.322844 0.774748 75.179995 -147.650878 -144.614135 0 0 0 0 0 0
$DefineBone "bip_middle_0_L" "bip_middle_meta_0_L" 0 -3.408819 -0.000004 -6.141865 11.826457 13.018661 0 0 0 0 0 0
$DefineBone "bip_middle_1_L" "bip_middle_0_L" 0 -2.799511 0 0.000003 -0.000002 39.115333 0 0 0 0 0 0
$DefineBone "bip_middle_2_L" "bip_middle_1_L" 0 -1.822445 0.000001 0.000002 -0.000002 14.700025 0 0 0 0 0 0
$DefineBone "bip_ring_meta_0_L" "bip_hand_L" -0.205322 -1.37532 -0.310267 77.044036 145.982454 149.993838 0 0 0 0 0 0
$DefineBone "bip_ring_0_L" "bip_ring_meta_0_L" -0.000001 -3.388157 -0.000004 0.7786 -0.720688 16.126097 0 0 0 0 0 0
$DefineBone "bip_ring_1_L" "bip_ring_0_L" -0.000001 -2.085257 0 0 0.000001 35.566687 0 0 0 0 0 0
$DefineBone "bip_ring_2_L" "bip_ring_1_L" 0 -1.544365 0 0.000001 -0.000003 12.350674 0 0 0 0 0 0
$DefineBone "bip_pinky_meta_0_L" "bip_hand_L" -0.194 -1.163877 -1.333149 69.132915 115.572758 124.448315 0 0 0 0 0 0
$DefineBone "bip_pinky_0_L" "bip_pinky_meta_0_L" 0 -3.297544 0 1.356045 -7.079819 14.347284 0 0 0 0 0 0
$DefineBone "bip_pinky_1_L" "bip_pinky_0_L" -0.000001 -1.951855 0.000002 0.000002 0.000002 28.58441 0 0 0 0 0 0
$DefineBone "bip_pinky_2_L" "bip_pinky_1_L" 0 -1.231823 -0.000003 0.000002 0.000002 22.624831 0 0 0 0 0 0
$DefineBone "bip_index_meta_0_L" "bip_hand_L" -0.008209 -1.16828 1.640407 61.198857 -118.79923 -115.979413 0 0 0 0 0 0
$DefineBone "bip_index_0_L" "bip_index_meta_0_L" 0.000002 -3.307287 -0.000002 -15.200344 22.794739 12.109852 0 0 0 0 0 0
$DefineBone "bip_index_1_L" "bip_index_0_L" -0.000001 -2.892885 0.000004 -0.000002 0.000003 39.534542 0 0 0 0 0 0
$DefineBone "bip_index_2_L" "bip_index_1_L" 0 -1.789227 0 0.000003 0.000005 8.963468 0 0 0 0 0 0
$DefineBone "bip_thumb_0_L" "bip_hand_L" -1.809822 -0.499922 2.57514 -6.260517 -25.558529 -31.003732 0 0 0 0 0 0
$DefineBone "bip_thumb_1_L" "bip_thumb_0_L" 0 -3.099539 0.000002 0.000001 0.000003 11.826799 0 0 0 0 0 0
$DefineBone "bip_thumb_2_L" "bip_thumb_1_L" 0 -1.649414 0.000002 0.000003 -0.000001 -8.169221 0 0 0 0 0 0
$DefineBone "bip_thumb_0_R" "bip_hand_R" 1.809742 0.499897 -2.575145 -6.260518 -25.558537 -31.003732 0 0 0 0 0 0
$DefineBone "bip_thumb_1_R" "bip_thumb_0_R" 0.000008 3.099564 0.000011 0.000006 -0.000004 11.826806 0 0 0 0 0 0
$DefineBone "bip_thumb_2_R" "bip_thumb_1_R" 0 1.649405 0.000004 0.000006 -0.000007 -8.169216 0 0 0 0 0 0
$DefineBone "bip_index_meta_0_R" "bip_hand_R" 0.008167 1.168327 -1.640391 61.198857 -118.79923 -115.979413 0 0 0 0 0 0
$DefineBone "bip_index_0_R" "bip_index_meta_0_R" 0.000019 3.307258 0.000004 -15.200344 22.794739 12.109849 0 0 0 0 0 0
$DefineBone "bip_index_1_R" "bip_index_0_R" 0.000034 2.892828 0.000029 0.000004 0.000005 39.534535 0 0 0 0 0 0
$DefineBone "bip_index_2_R" "bip_index_1_R" -0.000029 1.789288 -0.00004 0.000005 0.000001 8.963455 0 0 0 0 0 0
$DefineBone "bip_middle_meta_0_R" "bip_hand_R" 0.108292 1.322821 -0.774756 75.179995 -147.650878 -144.614135 0 0 0 0 0 0
$DefineBone "bip_middle_0_R" "bip_middle_meta_0_R" 0 3.408812 0.000011 -6.141869 11.826456 13.018647 0 0 0 0 0 0
$DefineBone "bip_middle_1_R" "bip_middle_0_R" -0.00001 2.799555 0.000006 -0.000003 -0.000001 39.115319 0 0 0 0 0 0
$DefineBone "bip_middle_2_R" "bip_middle_1_R" 0.000011 1.822392 0.000011 -0.000003 0 14.700039 0 0 0 0 0 0
$DefineBone "bip_ring_meta_0_R" "bip_hand_R" 0.205292 1.375273 0.310248 77.044043 145.982454 149.993824 0 0 0 0 0 0
$DefineBone "bip_ring_0_R" "bip_ring_meta_0_R" -0.000019 3.388235 0 0.778601 -0.72069 16.126097 0 0 0 0 0 0
$DefineBone "bip_ring_1_R" "bip_ring_0_R" 0.000001 2.085241 0 0.000001 0 35.56668 0 0 0 0 0 0
$DefineBone "bip_ring_2_R" "bip_ring_1_R" 0.000009 1.544376 0.000013 0.000002 0 12.350656 0 0 0 0 0 0
$DefineBone "bip_pinky_meta_0_R" "bip_hand_R" 0.193977 1.163818 1.333126 69.132915 115.572758 124.448315 0 0 0 0 0 0
$DefineBone "bip_pinky_0_R" "bip_pinky_meta_0_R" -0.000007 3.297594 0.000029 1.356042 -7.079819 14.347282 0 0 0 0 0 0
$DefineBone "bip_pinky_1_R" "bip_pinky_0_R" 0.00001 1.951797 -0.000002 0 0.000002 28.584402 0 0 0 0 0 0
$DefineBone "bip_pinky_2_R" "bip_pinky_1_R" -0.000009 1.23185 -0.000041 0 0.000002 22.624821 0 0 0 0 0 0


$SectionFrames 30 119

$PoseParameter "r_hand_grip" 0 12 0

$WeightList "weights_r_handposes" {
	 "root" 0
	 "bip_upperArm_L" 0
	 "bip_lowerArm_L" 0
	 "bip_upperArm_R" 0
	 "bip_lowerArm_R" 0
	 "bip_wrist_R" 0
	 "bip_hand_R" 0
	 "bip_wrist_L" 0
	 "bip_hand_L" 0
	 "weapon_bone" 1
	 "weapon_bone_1" 0
	 "weapon_bone_2" 0
	 "weapon_bone_3" 0
	 "weapon_bone_L" 0
	 "weapon_targe" 0
	 "weapon_bone_4" 0
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
	 "bip_middle_meta_0_L" 0
	 "bip_middle_0_L" 0
	 "bip_middle_1_L" 0
	 "bip_middle_2_L" 0
	 "bip_ring_meta_0_L" 0
	 "bip_ring_0_L" 0
	 "bip_ring_1_L" 0
	 "bip_ring_2_L" 0
	 "bip_pinky_meta_0_L" 0
	 "bip_pinky_0_L" 0
	 "bip_pinky_1_L" 0
	 "bip_pinky_2_L" 0
	 "bip_index_meta_0_L" 0
	 "bip_index_0_L" 0
	 "bip_index_1_L" 0
	 "bip_index_2_L" 0
	 "bip_thumb_0_L" 0
	 "bip_thumb_1_L" 0
	 "bip_thumb_2_L" 0
	 "bip_thumb_0_R" 1
	 "bip_thumb_1_R" 1
	 "bip_thumb_2_R" 1
	 "bip_index_meta_0_R" 0
	 "bip_index_0_R" 1
	 "bip_index_1_R" 1
	 "bip_index_2_R" 1
	 "bip_middle_meta_0_R" 0
	 "bip_middle_0_R" 1
	 "bip_middle_1_R" 1
	 "bip_middle_2_R" 1
	 "bip_ring_meta_0_R" 0
	 "bip_ring_0_R" 1
	 "bip_ring_1_R" 1
	 "bip_ring_2_R" 1
	 "bip_pinky_meta_0_R" 0
	 "bip_pinky_0_R" 1
	 "bip_pinky_1_R" 1
	 "bip_pinky_2_R" 1
}

$Animation "saxxy_pose" "c_demo_animations_anims\saxxy_pose.smd" {
	fps 30
	loop
	weightlist "weights_r_handposes"
}

$Animation "bread_bagged_pose" "c_demo_animations_anims\bread_bagged_pose.smd" {
	fps 30
	weightlist "weights_r_handposes"
}

$Animation "bread_baguette_pose" "c_demo_animations_anims\bread_baguette_pose.smd" {
	fps 30
	weightlist "weights_r_handposes"
}

$Animation "bread_burnt_pose" "c_demo_animations_anims\bread_burnt_pose.smd" {
	fps 30
	weightlist "weights_r_handposes"
}

$Animation "bread_cinnamon_pose" "c_demo_animations_anims\bread_cinnamon_pose.smd" {
	fps 30
	weightlist "weights_r_handposes"
}

$Animation "bread_cornbread_pose" "c_demo_animations_anims\bread_cornbread_pose.smd" {
	fps 30
	weightlist "weights_r_handposes"
}

$Animation "bread_crumpet_pose" "c_demo_animations_anims\bread_crumpet_pose.smd" {
	fps 30
	weightlist "weights_r_handposes"
}

$Animation "bread_pretzel_pose" "c_demo_animations_anims\bread_pretzel_pose.smd" {
	fps 30
	weightlist "weights_r_handposes"
}

$Animation "bread_ration_pose" "c_demo_animations_anims\bread_ration_pose.smd" {
	fps 30
	weightlist "weights_r_handposes"
}

$Animation "bread_robo_pose" "c_demo_animations_anims\bread_robo_pose.smd" {
	fps 30
	weightlist "weights_r_handposes"
}

$Animation "bread_russianblack_pose" "c_demo_animations_anims\bread_russianblack_pose.smd" {
	fps 30
	weightlist "weights_r_handposes"
}

$Animation "bread_shortbread_pose" "c_demo_animations_anims\bread_shortbread_pose.smd" {
	fps 30
	weightlist "weights_r_handposes"
}

$Animation "breadmonster" "c_demo_animations_anims\breadmonster.smd" {
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

$Sequence "b_draw" {
	"c_demo_animations_anims\b_draw.smd"
	activity "ACT_MELEE_VM_DRAW" 1
	{ event 5004 1 "Weapon_Bottle.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "b_idle" {
	"c_demo_animations_anims\b_idle.smd"
	activity "ACT_MELEE_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$Sequence "b_swing_a" {
	"c_demo_animations_anims\b_swing_a.smd"
	activity "ACT_MELEE_VM_HITCENTER" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "b_swing_b" {
	"c_demo_animations_anims\b_swing_b.smd"
	activity "ACT_MELEE_VM_HITCENTER" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "b_swing_c" {
	"c_demo_animations_anims\b_swing_c.smd"
	activity "ACT_MELEE_VM_SWINGHARD" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "melee_allclass_draw" {
	"c_demo_animations_anims\melee_allclass_draw.smd"
	activity "ACT_MELEE_ALLCLASS_VM_DRAW" 1
	{ event 5004 1 "Weapon_Machete.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "melee_allclass_idle" {
	"c_demo_animations_anims\melee_allclass_idle.smd"
	activity "ACT_MELEE_ALLCLASS_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$Sequence "melee_allclass_swing_a" {
	"c_demo_animations_anims\melee_allclass_swing_a.smd"
	activity "ACT_MELEE_ALLCLASS_VM_HITCENTER" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "melee_allclass_swing_b" {
	"c_demo_animations_anims\melee_allclass_swing_b.smd"
	activity "ACT_MELEE_ALLCLASS_VM_HITCENTER" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "melee_allclass_swing_c" {
	"c_demo_animations_anims\melee_allclass_swing_c.smd"
	activity "ACT_MELEE_ALLCLASS_VM_SWINGHARD" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "cm_draw" {
	"c_demo_animations_anims\cm_draw.smd"
	activity "ACT_VM_DRAW_SPECIAL" 1
	{ event 5004 1 "Weapon_Machete.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "cm_idle" {
	"c_demo_animations_anims\cm_idle.smd"
	activity "ACT_VM_IDLE_SPECIAL" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$Sequence "cm_swing_a" {
	"c_demo_animations_anims\cm_swing_a.smd"
	activity "ACT_VM_HITCENTER_SPECIAL" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "cm_swing_b" {
	"c_demo_animations_anims\cm_swing_b.smd"
	activity "ACT_VM_HITCENTER_SPECIAL" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "cm_swing_c" {
	"c_demo_animations_anims\cm_swing_c.smd"
	activity "ACT_VM_SWINGHARD_SPECIAL" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "sb_idle" {
	"c_demo_animations_anims\sb_idle.smd"
	activity "ACT_PRIMARY_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$Sequence "sb_fire" {
	"c_demo_animations_anims\sb_fire.smd"
	activity "ACT_PRIMARY_VM_PRIMARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "sb_draw" {
	"c_demo_animations_anims\sb_draw.smd"
	activity "ACT_PRIMARY_VM_DRAW" 1
	{ event 5004 1 "Weapon_GrenadeLauncher.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "sb_autofire" {
	"c_demo_animations_anims\sb_autofire.smd"
	activity "ACT_PRIMARY_VM_PULLBACK" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "sb_reload_start" {
	"c_demo_animations_anims\sb_reload_start.smd"
	activity "ACT_PRIMARY_RELOAD_START" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "sb_reload_loop" {
	"c_demo_animations_anims\sb_reload_loop.smd"
	activity "ACT_PRIMARY_VM_RELOAD" 1
	{ event 5004 2 "Weapon_StickyBombLauncher.BoltBack" }
	{ event 5004 12 "Weapon_StickyBombLauncher.BoltForward" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "sb_reload_end" {
	"c_demo_animations_anims\sb_reload_end.smd"
	activity "ACT_PRIMARY_RELOAD_FINISH" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "g_draw" {
	"c_demo_animations_anims\g_draw.smd"
	activity "ACT_SECONDARY_VM_DRAW" 1
	{ event 5004 1 "Weapon_GrenadeLauncher.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "g_idle" {
	"c_demo_animations_anims\g_idle.smd"
	activity "ACT_SECONDARY_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
	loop
}

$Sequence "g_fire" {
	"c_demo_animations_anims\g_fire.smd"
	activity "ACT_SECONDARY_VM_PRIMARYATTACK" 1
	{ event 5004 11 "Weapon_GrenadeLauncher.DrumStart" }
	{ event 5004 16 "Weapon_GrenadeLauncher.DrumStart" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "g_auto_fire" {
	"c_demo_animations_anims\g_auto_fire.smd"
	activity "ACT_SECONDARY_VM_PULLBACK" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "g_reload_start" {
	"c_demo_animations_anims\g_reload_start.smd"
	activity "ACT_SECONDARY_RELOAD_START" 1
	{ event 5004 5 "Weapon_GrenadeLauncher.DrumOpen" }
	{ event AE_CL_BODYGROUP_SET_VALUE_CMODEL_WPN 1 "reload 1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "g_reload_loop" {
	"c_demo_animations_anims\g_reload_loop.smd"
	activity "ACT_SECONDARY_VM_RELOAD" 1
	{ event 5004 6 "Weapon_GrenadeLauncher.DrumLoad" }
	{ event AE_CL_BODYGROUP_SET_VALUE_CMODEL_WPN 1 "reload 1" }
	{ event AE_CL_BODYGROUP_SET_VALUE_CMODEL_WPN 20 "reload 0" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "g_reload_end" {
	"c_demo_animations_anims\g_reload_end.smd"
	activity "ACT_SECONDARY_RELOAD_FINISH" 1
	{ event 5004 5 "Weapon_GrenadeLauncher.DrumClose" }
	{ event AE_CL_BODYGROUP_SET_VALUE_CMODEL_WPN 1 "reload 0" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "loch_reload_start" {
	"c_demo_animations_anims\loch_reload_start.smd"
	activity "ACT_PRIMARY_RELOAD_START_2" 1
	{ event 5004 5 "Weapon_GrenadeLauncher.DrumOpen" }
	{ event AE_CL_BODYGROUP_SET_VALUE_CMODEL_WPN 1 "reload 1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "loch_reload_loop" {
	"c_demo_animations_anims\loch_reload_loop.smd"
	activity "ACT_PRIMARY_VM_RELOAD_2" 1
	{ event 5004 6 "Weapon_GrenadeLauncher.DrumLoad" }
	{ event AE_CL_BODYGROUP_SET_VALUE_CMODEL_WPN 1 "reload 1" }
	{ event AE_CL_BODYGROUP_SET_VALUE_CMODEL_WPN 20 "reload 0" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
	loop
}

$Sequence "loch_reload_end" {
	"c_demo_animations_anims\loch_reload_end.smd"
	activity "ACT_PRIMARY_RELOAD_FINISH_2" 1
	{ event 5004 5 "Weapon_GrenadeLauncher.DrumClose" }
	{ event AE_CL_BODYGROUP_SET_VALUE_CMODEL_WPN 1 "reload 0" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "throw_draw" {
	"c_demo_animations_anims\throw_draw.smd"
	activity "ACT_THROWABLE_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "r_handposes" 0 0 0 0 local
	node "raised"
	snap
	fps 30
}

$Sequence "throw_idle" {
	"c_demo_animations_anims\throw_idle.smd"
	activity "ACT_THROWABLE_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "r_handposes" 0 0 0 0 local
	node "raised"
	fps 30
	loop
}

$Sequence "throw_fire" {
	"c_demo_animations_anims\throw_fire.smd"
	activity "ACT_THROWABLE_VM_FIRE" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "r_handposes" 0 0 0 0 local
	snap
	fps 30
}

$Sequence "spell_draw" {
	"c_demo_animations_anims\spell_draw.smd"
	activity "ACT_SPELL_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "spell_fire" {
	"c_demo_animations_anims\spell_fire.smd"
	activity "ACT_SPELL_VM_FIRE" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "primary_inspect_start" {
	"c_demo_animations_anims\primary_inspect_start.smd"
	activity "ACT_PRIMARY_VM_INSPECT_START" 1
	{ event 5004 1 "WeaponInspect.Movement1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "primary_inspect_idle" {
	"c_demo_animations_anims\primary_inspect_idle.smd"
	activity "ACT_PRIMARY_VM_INSPECT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 24
	loop
}

$Sequence "primary_inspect_end" {
	"c_demo_animations_anims\primary_inspect_end.smd"
	activity "ACT_PRIMARY_VM_INSPECT_END" 1
	{ event 5004 1 "WeaponInspect.Movement4" }
	{ event 5004 25 "WeaponInspect.Movement2" }
	{ event 5004 30 "Selection.DemoClipSpinLong" }
	{ event 5004 80 "WeaponInspect.Movement3" }
	fadein 0.2
	fadeout 0
	fps 30
}

$Sequence "secondary_inspect_start" {
	"c_demo_animations_anims\secondary_inspect_start.smd"
	activity "ACT_SECONDARY_VM_INSPECT_START" 1
	{ event 5004 1 "WeaponInspect.Movement1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "secondary_inspect_idle" {
	"c_demo_animations_anims\secondary_inspect_idle.smd"
	activity "ACT_SECONDARY_VM_INSPECT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$Sequence "secondary_inspect_end" {
	"c_demo_animations_anims\secondary_inspect_end.smd"
	activity "ACT_SECONDARY_VM_INSPECT_END" 1
	{ event 5004 1 "WeaponInspect.Movement4" }
	{ event 5004 99 "WeaponInspect.Movement3" }
	fadein 0.2
	fadeout 0
	fps 30
}

$Sequence "melee_allclass_inspect_start" {
	"c_demo_animations_anims\melee_allclass_inspect_start.smd"
	activity "ACT_MELEE_ALLCLASS_VM_INSPECT_START" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
}

$Sequence "melee_allclass_inspect_idle" {
	"c_demo_animations_anims\melee_allclass_inspect_idle.smd"
	activity "ACT_MELEE_ALLCLASS_VM_INSPECT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$Sequence "melee_allclass_inspect_end" {
	"c_demo_animations_anims\melee_allclass_inspect_end.smd"
	activity "ACT_MELEE_ALLCLASS_VM_INSPECT_END" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "grapple_draw" {
	"c_demo_animations_anims\grapple_draw.smd"
	activity "ACT_GRAPPLE_DRAW" 1
	{ event AE_CL_PLAYSOUND 1 "WeaponGrapplingHook.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$Sequence "grapple_idle" {
	"c_demo_animations_anims\grapple_idle.smd"
	activity "ACT_GRAPPLE_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$Sequence "grapple_fire_start" {
	"c_demo_animations_anims\grapple_fire_start.smd"
	activity "ACT_GRAPPLE_FIRE_START" 1
	fadein 0.1
	fadeout 0.2
	fps 30
}

$Sequence "grapple_fire_idle" {
	"c_demo_animations_anims\grapple_fire_idle.smd"
	activity "ACT_GRAPPLE_FIRE_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$Sequence "grapple_pull_start" {
	"c_demo_animations_anims\grapple_pull_start.smd"
	activity "ACT_GRAPPLE_PULL_START" 1
	fadein 0.1
	fadeout 0.2
	fps 30
}

$Sequence "grapple_pull_idle" {
	"c_demo_animations_anims\grapple_pull_idle.smd"
	activity "ACT_GRAPPLE_PULL_IDLE" 1
	fadein 0.1
	fadeout 0.2
	fps 35
	loop
}

$Sequence "grapple_pull_end" {
	"c_demo_animations_anims\grapple_pull_end.smd"
	activity "ACT_GRAPPLE_PULL_END" 1
	fadein 0.1
	fadeout 0.2
	fps 30
}

$Sequence "PASSTIME_ball_pickup" {
	"c_demo_animations_anims\PASSTIME_ball_pickup.smd"
	activity "ACT_BALL_VM_PICKUP" 1
	fadein 0.1
	fadeout 0.2
	fps 30
}

$Sequence "PASSTIME_ball_idle" {
	"c_demo_animations_anims\PASSTIME_ball_idle.smd"
	activity "ACT_BALL_VM_IDLE" 1
	fadein 0.1
	fadeout 0.2
	fps 30
	loop
}

$Sequence "PASSTIME_ball_catch1" {
	"c_demo_animations_anims\PASSTIME_ball_catch1.smd"
	activity "ACT_BALL_VM_CATCH" 100
	fadein 0.1
	fadeout 0.2
	fps 30
}

$Sequence "PASSTIME_ball_throw_end" {
	"c_demo_animations_anims\PASSTIME_ball_throw_end.smd"
	activity "ACT_BALL_VM_THROW_END" 1
	fadein 0.1
	fadeout 0.2
	fps 30
}

$Sequence "claymore_inspect_start" {
	"c_demo_animations_anims\claymore_inspect_start.smd"
	activity "ACT_SPECIAL_VM_INSPECT_START" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
}

$Sequence "claymore_inspect_idle" {
	"c_demo_animations_anims\claymore_inspect_idle.smd"
	activity "ACT_SPECIAL_VM_INSPECT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$Sequence "claymore_inspect_end" {
	"c_demo_animations_anims\claymore_inspect_end.smd"
	activity "ACT_SPECIAL_VM_INSPECT_END" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "melee_inspect_start" {
	"c_demo_animations_anims\melee_inspect_start.smd"
	activity "ACT_MELEE_VM_INSPECT_START" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "melee_inspect_idle" {
	"c_demo_animations_anims\melee_inspect_idle.smd"
	activity "ACT_MELEE_VM_INSPECT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$Sequence "melee_inspect_end" {
	"c_demo_animations_anims\melee_inspect_end.smd"
	activity "ACT_MELEE_VM_INSPECT_END" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "PASSTIME_ball_throw_start" {
	"c_demo_animations_anims\PASSTIME_ball_throw_start.smd"
	activity "ACT_BALL_VM_THROW_start" 1
	fadein 0.1
	fadeout 0.2
	fps 30
}

$Sequence "PASSTIME_ball_throw_loop" {
	"c_demo_animations_anims\PASSTIME_ball_throw_loop.smd"
	activity "ACT_BALL_VM_THROW_LOOP" 1
	fadein 0.1
	fadeout 0.2
	fps 30
}

$Sequence "PASSTIME_ball_catch2" {
	"c_demo_animations_anims\PASSTIME_ball_catch2.smd"
	activity "ACT_BALL_VM_CATCH" 1
	{ event AE_CL_PLAYSOUND 35 "Canister.ImpactSoft" }
	{ event AE_CL_PLAYSOUND 45 "Canister.ImpactSoft" }
	{ event AE_CL_PLAYSOUND 56 "Canister.ImpactSoft" }
	{ event AE_CL_PLAYSOUND 123 "Canister.ImpactHard" }
	{ event AE_CL_PLAYSOUND 148 "Canister.ImpactHard" }
	{ event AE_CL_PLAYSOUND 173 "Canister.ImpactHard" }
	{ event AE_CL_PLAYSOUND 85 "Taunt.Demo02EquipmentJingle2" }
	{ event AE_CL_PLAYSOUND 92 "Taunt.Demo02EquipmentJingle3" }
	{ event AE_CL_PLAYSOUND 98 "Taunt.Demo02EquipmentJingle2" }
	{ event AE_CL_PLAYSOUND 100 "Taunt.Demo02EquipmentJingle" }
	{ event AE_CL_PLAYSOUND 105 "Taunt.Demo02EquipmentJingle3" }
	fadein 0.1
	fadeout 0.2
	fps 30
}
