.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802417B0_802030
/* 802030 802417B0 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 802034 802417B4 AFB10014 */  sw        $s1, 0x14($sp)
/* 802038 802417B8 0080882D */  daddu     $s1, $a0, $zero
/* 80203C 802417BC AFBF0018 */  sw        $ra, 0x18($sp)
/* 802040 802417C0 AFB00010 */  sw        $s0, 0x10($sp)
/* 802044 802417C4 8E300148 */  lw        $s0, 0x148($s1)
/* 802048 802417C8 0C00EABB */  jal       get_npc_unsafe
/* 80204C 802417CC 86040008 */   lh       $a0, 8($s0)
/* 802050 802417D0 8E0300CC */  lw        $v1, 0xcc($s0)
/* 802054 802417D4 3C014120 */  lui       $at, 0x4120
/* 802058 802417D8 44812000 */  mtc1      $at, $f4
/* 80205C 802417DC 3C014000 */  lui       $at, 0x4000
/* 802060 802417E0 44810000 */  mtc1      $at, $f0
/* 802064 802417E4 C442003C */  lwc1      $f2, 0x3c($v0)
/* 802068 802417E8 8C640010 */  lw        $a0, 0x10($v1)
/* 80206C 802417EC 8C430000 */  lw        $v1, ($v0)
/* 802070 802417F0 E444001C */  swc1      $f4, 0x1c($v0)
/* 802074 802417F4 E4400014 */  swc1      $f0, 0x14($v0)
/* 802078 802417F8 E4420064 */  swc1      $f2, 0x64($v0)
/* 80207C 802417FC 34630800 */  ori       $v1, $v1, 0x800
/* 802080 80241800 AC430000 */  sw        $v1, ($v0)
/* 802084 80241804 AC440028 */  sw        $a0, 0x28($v0)
/* 802088 80241808 2402000B */  addiu     $v0, $zero, 0xb
/* 80208C 8024180C AE220070 */  sw        $v0, 0x70($s1)
/* 802090 80241810 8FBF0018 */  lw        $ra, 0x18($sp)
/* 802094 80241814 8FB10014 */  lw        $s1, 0x14($sp)
/* 802098 80241818 8FB00010 */  lw        $s0, 0x10($sp)
/* 80209C 8024181C 03E00008 */  jr        $ra
/* 8020A0 80241820 27BD0020 */   addiu    $sp, $sp, 0x20
