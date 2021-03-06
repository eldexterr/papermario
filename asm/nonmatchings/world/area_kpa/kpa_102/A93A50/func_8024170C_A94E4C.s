.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024170C_A94E4C
/* A94E4C 8024170C 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* A94E50 80241710 AFB3003C */  sw        $s3, 0x3c($sp)
/* A94E54 80241714 0080982D */  daddu     $s3, $a0, $zero
/* A94E58 80241718 AFBF0040 */  sw        $ra, 0x40($sp)
/* A94E5C 8024171C AFB20038 */  sw        $s2, 0x38($sp)
/* A94E60 80241720 AFB10034 */  sw        $s1, 0x34($sp)
/* A94E64 80241724 AFB00030 */  sw        $s0, 0x30($sp)
/* A94E68 80241728 8E710148 */  lw        $s1, 0x148($s3)
/* A94E6C 8024172C 0C00EABB */  jal       get_npc_unsafe
/* A94E70 80241730 86240008 */   lh       $a0, 8($s1)
/* A94E74 80241734 0040802D */  daddu     $s0, $v0, $zero
/* A94E78 80241738 8E22007C */  lw        $v0, 0x7c($s1)
/* A94E7C 8024173C 8603008E */  lh        $v1, 0x8e($s0)
/* A94E80 80241740 2442FFFF */  addiu     $v0, $v0, -1
/* A94E84 80241744 14620012 */  bne       $v1, $v0, .L80241790
/* A94E88 80241748 00000000 */   nop      
/* A94E8C 8024174C C6000038 */  lwc1      $f0, 0x38($s0)
/* A94E90 80241750 4600020D */  trunc.w.s $f8, $f0
/* A94E94 80241754 44024000 */  mfc1      $v0, $f8
/* A94E98 80241758 00000000 */  nop       
/* A94E9C 8024175C A6220010 */  sh        $v0, 0x10($s1)
/* A94EA0 80241760 C600003C */  lwc1      $f0, 0x3c($s0)
/* A94EA4 80241764 4600020D */  trunc.w.s $f8, $f0
/* A94EA8 80241768 44024000 */  mfc1      $v0, $f8
/* A94EAC 8024176C 00000000 */  nop       
/* A94EB0 80241770 A6220012 */  sh        $v0, 0x12($s1)
/* A94EB4 80241774 C6000040 */  lwc1      $f0, 0x40($s0)
/* A94EB8 80241778 24020001 */  addiu     $v0, $zero, 1
/* A94EBC 8024177C A2220007 */  sb        $v0, 7($s1)
/* A94EC0 80241780 4600020D */  trunc.w.s $f8, $f0
/* A94EC4 80241784 44024000 */  mfc1      $v0, $f8
/* A94EC8 80241788 00000000 */  nop       
/* A94ECC 8024178C A6220014 */  sh        $v0, 0x14($s1)
.L80241790:
/* A94ED0 80241790 C6000038 */  lwc1      $f0, 0x38($s0)
/* A94ED4 80241794 C602003C */  lwc1      $f2, 0x3c($s0)
/* A94ED8 80241798 C6040040 */  lwc1      $f4, 0x40($s0)
/* A94EDC 8024179C C6060018 */  lwc1      $f6, 0x18($s0)
/* A94EE0 802417A0 E7A00020 */  swc1      $f0, 0x20($sp)
/* A94EE4 802417A4 E7A20024 */  swc1      $f2, 0x24($sp)
/* A94EE8 802417A8 E7A40028 */  swc1      $f4, 0x28($sp)
/* A94EEC 802417AC E7A60010 */  swc1      $f6, 0x10($sp)
/* A94EF0 802417B0 C600000C */  lwc1      $f0, 0xc($s0)
/* A94EF4 802417B4 E7A00014 */  swc1      $f0, 0x14($sp)
/* A94EF8 802417B8 860200A8 */  lh        $v0, 0xa8($s0)
/* A94EFC 802417BC 27A50020 */  addiu     $a1, $sp, 0x20
/* A94F00 802417C0 44820000 */  mtc1      $v0, $f0
/* A94F04 802417C4 00000000 */  nop       
/* A94F08 802417C8 46800020 */  cvt.s.w   $f0, $f0
/* A94F0C 802417CC E7A00018 */  swc1      $f0, 0x18($sp)
/* A94F10 802417D0 860200A6 */  lh        $v0, 0xa6($s0)
/* A94F14 802417D4 27A60024 */  addiu     $a2, $sp, 0x24
/* A94F18 802417D8 44820000 */  mtc1      $v0, $f0
/* A94F1C 802417DC 00000000 */  nop       
/* A94F20 802417E0 46800020 */  cvt.s.w   $f0, $f0
/* A94F24 802417E4 E7A0001C */  swc1      $f0, 0x1c($sp)
/* A94F28 802417E8 8E040080 */  lw        $a0, 0x80($s0)
/* A94F2C 802417EC 0C037711 */  jal       func_800DDC44
/* A94F30 802417F0 27A70028 */   addiu    $a3, $sp, 0x28
/* A94F34 802417F4 0040902D */  daddu     $s2, $v0, $zero
/* A94F38 802417F8 16400005 */  bnez      $s2, .L80241810
/* A94F3C 802417FC 00000000 */   nop      
/* A94F40 80241800 8E050018 */  lw        $a1, 0x18($s0)
/* A94F44 80241804 8E06000C */  lw        $a2, 0xc($s0)
/* A94F48 80241808 0C00EA95 */  jal       npc_move_heading
/* A94F4C 8024180C 0200202D */   daddu    $a0, $s0, $zero
.L80241810:
/* A94F50 80241810 8602008E */  lh        $v0, 0x8e($s0)
/* A94F54 80241814 9603008E */  lhu       $v1, 0x8e($s0)
/* A94F58 80241818 18400007 */  blez      $v0, .L80241838
/* A94F5C 8024181C 2462FFFF */   addiu    $v0, $v1, -1
/* A94F60 80241820 A602008E */  sh        $v0, 0x8e($s0)
/* A94F64 80241824 00021400 */  sll       $v0, $v0, 0x10
/* A94F68 80241828 18400003 */  blez      $v0, .L80241838
/* A94F6C 8024182C 00000000 */   nop      
/* A94F70 80241830 12400008 */  beqz      $s2, .L80241854
/* A94F74 80241834 00000000 */   nop      
.L80241838:
/* A94F78 80241838 8E2200CC */  lw        $v0, 0xcc($s1)
/* A94F7C 8024183C A2200007 */  sb        $zero, 7($s1)
/* A94F80 80241840 8C420028 */  lw        $v0, 0x28($v0)
/* A94F84 80241844 A600008E */  sh        $zero, 0x8e($s0)
/* A94F88 80241848 AE020028 */  sw        $v0, 0x28($s0)
/* A94F8C 8024184C 2402000F */  addiu     $v0, $zero, 0xf
/* A94F90 80241850 AE620070 */  sw        $v0, 0x70($s3)
.L80241854:
/* A94F94 80241854 8FBF0040 */  lw        $ra, 0x40($sp)
/* A94F98 80241858 8FB3003C */  lw        $s3, 0x3c($sp)
/* A94F9C 8024185C 8FB20038 */  lw        $s2, 0x38($sp)
/* A94FA0 80241860 8FB10034 */  lw        $s1, 0x34($sp)
/* A94FA4 80241864 8FB00030 */  lw        $s0, 0x30($sp)
/* A94FA8 80241868 03E00008 */  jr        $ra
/* A94FAC 8024186C 27BD0048 */   addiu    $sp, $sp, 0x48
