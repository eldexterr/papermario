.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240704_99D094
/* 99D094 80240704 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 99D098 80240708 AFB10014 */  sw        $s1, 0x14($sp)
/* 99D09C 8024070C 0080882D */  daddu     $s1, $a0, $zero
/* 99D0A0 80240710 AFBF0018 */  sw        $ra, 0x18($sp)
/* 99D0A4 80240714 AFB00010 */  sw        $s0, 0x10($sp)
/* 99D0A8 80240718 8E300148 */  lw        $s0, 0x148($s1)
/* 99D0AC 8024071C 0C00EABB */  jal       get_npc_unsafe
/* 99D0B0 80240720 86040008 */   lh       $a0, 8($s0)
/* 99D0B4 80240724 0040202D */  daddu     $a0, $v0, $zero
/* 99D0B8 80240728 9482008E */  lhu       $v0, 0x8e($a0)
/* 99D0BC 8024072C 24030003 */  addiu     $v1, $zero, 3
/* 99D0C0 80240730 24420001 */  addiu     $v0, $v0, 1
/* 99D0C4 80240734 A482008E */  sh        $v0, 0x8e($a0)
/* 99D0C8 80240738 00021400 */  sll       $v0, $v0, 0x10
/* 99D0CC 8024073C 00021403 */  sra       $v0, $v0, 0x10
/* 99D0D0 80240740 14430003 */  bne       $v0, $v1, .L80240750
/* 99D0D4 80240744 00000000 */   nop      
/* 99D0D8 80240748 96020086 */  lhu       $v0, 0x86($s0)
/* 99D0DC 8024074C A48200A8 */  sh        $v0, 0xa8($a0)
.L80240750:
/* 99D0E0 80240750 8482008E */  lh        $v0, 0x8e($a0)
/* 99D0E4 80240754 8E030080 */  lw        $v1, 0x80($s0)
/* 99D0E8 80240758 0043102A */  slt       $v0, $v0, $v1
/* 99D0EC 8024075C 14400004 */  bnez      $v0, .L80240770
/* 99D0F0 80240760 00000000 */   nop      
/* 99D0F4 80240764 96020086 */  lhu       $v0, 0x86($s0)
/* 99D0F8 80240768 A48200A8 */  sh        $v0, 0xa8($a0)
/* 99D0FC 8024076C AE200070 */  sw        $zero, 0x70($s1)
.L80240770:
/* 99D100 80240770 8FBF0018 */  lw        $ra, 0x18($sp)
/* 99D104 80240774 8FB10014 */  lw        $s1, 0x14($sp)
/* 99D108 80240778 8FB00010 */  lw        $s0, 0x10($sp)
/* 99D10C 8024077C 03E00008 */  jr        $ra
/* 99D110 80240780 27BD0020 */   addiu    $sp, $sp, 0x20
