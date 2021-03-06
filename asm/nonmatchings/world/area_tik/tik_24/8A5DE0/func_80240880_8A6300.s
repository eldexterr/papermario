.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240880_8A6300
/* 8A6300 80240880 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 8A6304 80240884 AFB3003C */  sw        $s3, 0x3c($sp)
/* 8A6308 80240888 0080982D */  daddu     $s3, $a0, $zero
/* 8A630C 8024088C AFBF0040 */  sw        $ra, 0x40($sp)
/* 8A6310 80240890 AFB20038 */  sw        $s2, 0x38($sp)
/* 8A6314 80240894 AFB10034 */  sw        $s1, 0x34($sp)
/* 8A6318 80240898 AFB00030 */  sw        $s0, 0x30($sp)
/* 8A631C 8024089C 8E710148 */  lw        $s1, 0x148($s3)
/* 8A6320 802408A0 0C00EABB */  jal       get_npc_unsafe
/* 8A6324 802408A4 86240008 */   lh       $a0, 8($s1)
/* 8A6328 802408A8 0040802D */  daddu     $s0, $v0, $zero
/* 8A632C 802408AC 8E22007C */  lw        $v0, 0x7c($s1)
/* 8A6330 802408B0 8603008E */  lh        $v1, 0x8e($s0)
/* 8A6334 802408B4 2442FFFF */  addiu     $v0, $v0, -1
/* 8A6338 802408B8 14620012 */  bne       $v1, $v0, .L80240904
/* 8A633C 802408BC 00000000 */   nop      
/* 8A6340 802408C0 C6000038 */  lwc1      $f0, 0x38($s0)
/* 8A6344 802408C4 4600020D */  trunc.w.s $f8, $f0
/* 8A6348 802408C8 44024000 */  mfc1      $v0, $f8
/* 8A634C 802408CC 00000000 */  nop       
/* 8A6350 802408D0 A6220010 */  sh        $v0, 0x10($s1)
/* 8A6354 802408D4 C600003C */  lwc1      $f0, 0x3c($s0)
/* 8A6358 802408D8 4600020D */  trunc.w.s $f8, $f0
/* 8A635C 802408DC 44024000 */  mfc1      $v0, $f8
/* 8A6360 802408E0 00000000 */  nop       
/* 8A6364 802408E4 A6220012 */  sh        $v0, 0x12($s1)
/* 8A6368 802408E8 C6000040 */  lwc1      $f0, 0x40($s0)
/* 8A636C 802408EC 24020001 */  addiu     $v0, $zero, 1
/* 8A6370 802408F0 A2220007 */  sb        $v0, 7($s1)
/* 8A6374 802408F4 4600020D */  trunc.w.s $f8, $f0
/* 8A6378 802408F8 44024000 */  mfc1      $v0, $f8
/* 8A637C 802408FC 00000000 */  nop       
/* 8A6380 80240900 A6220014 */  sh        $v0, 0x14($s1)
.L80240904:
/* 8A6384 80240904 C6000038 */  lwc1      $f0, 0x38($s0)
/* 8A6388 80240908 C602003C */  lwc1      $f2, 0x3c($s0)
/* 8A638C 8024090C C6040040 */  lwc1      $f4, 0x40($s0)
/* 8A6390 80240910 C6060018 */  lwc1      $f6, 0x18($s0)
/* 8A6394 80240914 E7A00020 */  swc1      $f0, 0x20($sp)
/* 8A6398 80240918 E7A20024 */  swc1      $f2, 0x24($sp)
/* 8A639C 8024091C E7A40028 */  swc1      $f4, 0x28($sp)
/* 8A63A0 80240920 E7A60010 */  swc1      $f6, 0x10($sp)
/* 8A63A4 80240924 C600000C */  lwc1      $f0, 0xc($s0)
/* 8A63A8 80240928 E7A00014 */  swc1      $f0, 0x14($sp)
/* 8A63AC 8024092C 860200A8 */  lh        $v0, 0xa8($s0)
/* 8A63B0 80240930 27A50020 */  addiu     $a1, $sp, 0x20
/* 8A63B4 80240934 44820000 */  mtc1      $v0, $f0
/* 8A63B8 80240938 00000000 */  nop       
/* 8A63BC 8024093C 46800020 */  cvt.s.w   $f0, $f0
/* 8A63C0 80240940 E7A00018 */  swc1      $f0, 0x18($sp)
/* 8A63C4 80240944 860200A6 */  lh        $v0, 0xa6($s0)
/* 8A63C8 80240948 27A60024 */  addiu     $a2, $sp, 0x24
/* 8A63CC 8024094C 44820000 */  mtc1      $v0, $f0
/* 8A63D0 80240950 00000000 */  nop       
/* 8A63D4 80240954 46800020 */  cvt.s.w   $f0, $f0
/* 8A63D8 80240958 E7A0001C */  swc1      $f0, 0x1c($sp)
/* 8A63DC 8024095C 8E040080 */  lw        $a0, 0x80($s0)
/* 8A63E0 80240960 0C037711 */  jal       func_800DDC44
/* 8A63E4 80240964 27A70028 */   addiu    $a3, $sp, 0x28
/* 8A63E8 80240968 0040902D */  daddu     $s2, $v0, $zero
/* 8A63EC 8024096C 16400005 */  bnez      $s2, .L80240984
/* 8A63F0 80240970 00000000 */   nop      
/* 8A63F4 80240974 8E050018 */  lw        $a1, 0x18($s0)
/* 8A63F8 80240978 8E06000C */  lw        $a2, 0xc($s0)
/* 8A63FC 8024097C 0C00EA95 */  jal       npc_move_heading
/* 8A6400 80240980 0200202D */   daddu    $a0, $s0, $zero
.L80240984:
/* 8A6404 80240984 8602008E */  lh        $v0, 0x8e($s0)
/* 8A6408 80240988 9603008E */  lhu       $v1, 0x8e($s0)
/* 8A640C 8024098C 18400007 */  blez      $v0, .L802409AC
/* 8A6410 80240990 2462FFFF */   addiu    $v0, $v1, -1
/* 8A6414 80240994 A602008E */  sh        $v0, 0x8e($s0)
/* 8A6418 80240998 00021400 */  sll       $v0, $v0, 0x10
/* 8A641C 8024099C 18400003 */  blez      $v0, .L802409AC
/* 8A6420 802409A0 00000000 */   nop      
/* 8A6424 802409A4 12400008 */  beqz      $s2, .L802409C8
/* 8A6428 802409A8 00000000 */   nop      
.L802409AC:
/* 8A642C 802409AC 8E2200CC */  lw        $v0, 0xcc($s1)
/* 8A6430 802409B0 A2200007 */  sb        $zero, 7($s1)
/* 8A6434 802409B4 8C420028 */  lw        $v0, 0x28($v0)
/* 8A6438 802409B8 A600008E */  sh        $zero, 0x8e($s0)
/* 8A643C 802409BC AE020028 */  sw        $v0, 0x28($s0)
/* 8A6440 802409C0 2402000F */  addiu     $v0, $zero, 0xf
/* 8A6444 802409C4 AE620070 */  sw        $v0, 0x70($s3)
.L802409C8:
/* 8A6448 802409C8 8FBF0040 */  lw        $ra, 0x40($sp)
/* 8A644C 802409CC 8FB3003C */  lw        $s3, 0x3c($sp)
/* 8A6450 802409D0 8FB20038 */  lw        $s2, 0x38($sp)
/* 8A6454 802409D4 8FB10034 */  lw        $s1, 0x34($sp)
/* 8A6458 802409D8 8FB00030 */  lw        $s0, 0x30($sp)
/* 8A645C 802409DC 03E00008 */  jr        $ra
/* 8A6460 802409E0 27BD0048 */   addiu    $sp, $sp, 0x48
