.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241060_824320
/* 824320 80241060 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 824324 80241064 AFB10014 */  sw        $s1, 0x14($sp)
/* 824328 80241068 0080882D */  daddu     $s1, $a0, $zero
/* 82432C 8024106C AFBF0018 */  sw        $ra, 0x18($sp)
/* 824330 80241070 AFB00010 */  sw        $s0, 0x10($sp)
/* 824334 80241074 8E300148 */  lw        $s0, 0x148($s1)
/* 824338 80241078 0C00EABB */  jal       get_npc_unsafe
/* 82433C 8024107C 86040008 */   lh       $a0, 8($s0)
/* 824340 80241080 8E0300CC */  lw        $v1, 0xcc($s0)
/* 824344 80241084 3C014120 */  lui       $at, 0x4120
/* 824348 80241088 44812000 */  mtc1      $at, $f4
/* 82434C 8024108C 3C014000 */  lui       $at, 0x4000
/* 824350 80241090 44810000 */  mtc1      $at, $f0
/* 824354 80241094 C442003C */  lwc1      $f2, 0x3c($v0)
/* 824358 80241098 8C640010 */  lw        $a0, 0x10($v1)
/* 82435C 8024109C 8C430000 */  lw        $v1, ($v0)
/* 824360 802410A0 E444001C */  swc1      $f4, 0x1c($v0)
/* 824364 802410A4 E4400014 */  swc1      $f0, 0x14($v0)
/* 824368 802410A8 E4420064 */  swc1      $f2, 0x64($v0)
/* 82436C 802410AC 34630800 */  ori       $v1, $v1, 0x800
/* 824370 802410B0 AC430000 */  sw        $v1, ($v0)
/* 824374 802410B4 AC440028 */  sw        $a0, 0x28($v0)
/* 824378 802410B8 2402000B */  addiu     $v0, $zero, 0xb
/* 82437C 802410BC AE220070 */  sw        $v0, 0x70($s1)
/* 824380 802410C0 8FBF0018 */  lw        $ra, 0x18($sp)
/* 824384 802410C4 8FB10014 */  lw        $s1, 0x14($sp)
/* 824388 802410C8 8FB00010 */  lw        $s0, 0x10($sp)
/* 82438C 802410CC 03E00008 */  jr        $ra
/* 824390 802410D0 27BD0020 */   addiu    $sp, $sp, 0x20
