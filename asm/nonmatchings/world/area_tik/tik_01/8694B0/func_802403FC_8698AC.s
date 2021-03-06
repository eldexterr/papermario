.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802403FC_8698AC
/* 8698AC 802403FC 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 8698B0 80240400 AFB10014 */  sw        $s1, 0x14($sp)
/* 8698B4 80240404 0080882D */  daddu     $s1, $a0, $zero
/* 8698B8 80240408 AFBF001C */  sw        $ra, 0x1c($sp)
/* 8698BC 8024040C AFB20018 */  sw        $s2, 0x18($sp)
/* 8698C0 80240410 0C016AFA */  jal       get_current_map_header
/* 8698C4 80240414 AFB00010 */   sw       $s0, 0x10($sp)
/* 8698C8 80240418 0220202D */  daddu     $a0, $s1, $zero
/* 8698CC 8024041C 3C05FE36 */  lui       $a1, 0xfe36
/* 8698D0 80240420 34A53C80 */  ori       $a1, $a1, 0x3c80
/* 8698D4 80240424 0C0B1EAF */  jal       get_variable
/* 8698D8 80240428 0040902D */   daddu    $s2, $v0, $zero
/* 8698DC 8024042C 0220202D */  daddu     $a0, $s1, $zero
/* 8698E0 80240430 3C05FE36 */  lui       $a1, 0xfe36
/* 8698E4 80240434 8E430014 */  lw        $v1, 0x14($s2)
/* 8698E8 80240438 00028100 */  sll       $s0, $v0, 4
/* 8698EC 8024043C 02031821 */  addu      $v1, $s0, $v1
/* 8698F0 80240440 C4600000 */  lwc1      $f0, ($v1)
/* 8698F4 80240444 4600008D */  trunc.w.s $f2, $f0
/* 8698F8 80240448 44061000 */  mfc1      $a2, $f2
/* 8698FC 8024044C 0C0B2026 */  jal       set_variable
/* 869900 80240450 34A53C81 */   ori      $a1, $a1, 0x3c81
/* 869904 80240454 0220202D */  daddu     $a0, $s1, $zero
/* 869908 80240458 8E420014 */  lw        $v0, 0x14($s2)
/* 86990C 8024045C 3C05FE36 */  lui       $a1, 0xfe36
/* 869910 80240460 02021021 */  addu      $v0, $s0, $v0
/* 869914 80240464 C4400004 */  lwc1      $f0, 4($v0)
/* 869918 80240468 4600008D */  trunc.w.s $f2, $f0
/* 86991C 8024046C 44061000 */  mfc1      $a2, $f2
/* 869920 80240470 0C0B2026 */  jal       set_variable
/* 869924 80240474 34A53C82 */   ori      $a1, $a1, 0x3c82
/* 869928 80240478 0220202D */  daddu     $a0, $s1, $zero
/* 86992C 8024047C 8E420014 */  lw        $v0, 0x14($s2)
/* 869930 80240480 3C05FE36 */  lui       $a1, 0xfe36
/* 869934 80240484 02021021 */  addu      $v0, $s0, $v0
/* 869938 80240488 C4400008 */  lwc1      $f0, 8($v0)
/* 86993C 8024048C 4600008D */  trunc.w.s $f2, $f0
/* 869940 80240490 44061000 */  mfc1      $a2, $f2
/* 869944 80240494 0C0B2026 */  jal       set_variable
/* 869948 80240498 34A53C83 */   ori      $a1, $a1, 0x3c83
/* 86994C 8024049C 0220202D */  daddu     $a0, $s1, $zero
/* 869950 802404A0 8E420014 */  lw        $v0, 0x14($s2)
/* 869954 802404A4 3C05FE36 */  lui       $a1, 0xfe36
/* 869958 802404A8 02028021 */  addu      $s0, $s0, $v0
/* 86995C 802404AC C600000C */  lwc1      $f0, 0xc($s0)
/* 869960 802404B0 4600008D */  trunc.w.s $f2, $f0
/* 869964 802404B4 44061000 */  mfc1      $a2, $f2
/* 869968 802404B8 0C0B2026 */  jal       set_variable
/* 86996C 802404BC 34A53C84 */   ori      $a1, $a1, 0x3c84
/* 869970 802404C0 8FBF001C */  lw        $ra, 0x1c($sp)
/* 869974 802404C4 8FB20018 */  lw        $s2, 0x18($sp)
/* 869978 802404C8 8FB10014 */  lw        $s1, 0x14($sp)
/* 86997C 802404CC 8FB00010 */  lw        $s0, 0x10($sp)
/* 869980 802404D0 24020002 */  addiu     $v0, $zero, 2
/* 869984 802404D4 03E00008 */  jr        $ra
/* 869988 802404D8 27BD0020 */   addiu    $sp, $sp, 0x20
