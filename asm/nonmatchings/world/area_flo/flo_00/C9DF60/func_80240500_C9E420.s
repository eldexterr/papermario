.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240500_C9E420
/* C9E420 80240500 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* C9E424 80240504 AFB40040 */  sw        $s4, 0x40($sp)
/* C9E428 80240508 0080A02D */  daddu     $s4, $a0, $zero
/* C9E42C 8024050C AFBF0044 */  sw        $ra, 0x44($sp)
/* C9E430 80240510 AFB3003C */  sw        $s3, 0x3c($sp)
/* C9E434 80240514 AFB20038 */  sw        $s2, 0x38($sp)
/* C9E438 80240518 AFB10034 */  sw        $s1, 0x34($sp)
/* C9E43C 8024051C AFB00030 */  sw        $s0, 0x30($sp)
/* C9E440 80240520 8E910148 */  lw        $s1, 0x148($s4)
/* C9E444 80240524 00A0902D */  daddu     $s2, $a1, $zero
/* C9E448 80240528 86240008 */  lh        $a0, 8($s1)
/* C9E44C 8024052C 0C00EABB */  jal       get_npc_unsafe
/* C9E450 80240530 00C0982D */   daddu    $s3, $a2, $zero
/* C9E454 80240534 8E430014 */  lw        $v1, 0x14($s2)
/* C9E458 80240538 04600031 */  bltz      $v1, .L80240600
/* C9E45C 8024053C 0040802D */   daddu    $s0, $v0, $zero
/* C9E460 80240540 0260202D */  daddu     $a0, $s3, $zero
/* C9E464 80240544 AFA00010 */  sw        $zero, 0x10($sp)
/* C9E468 80240548 8E460024 */  lw        $a2, 0x24($s2)
/* C9E46C 8024054C 8E470028 */  lw        $a3, 0x28($s2)
/* C9E470 80240550 0C01242D */  jal       func_800490B4
/* C9E474 80240554 0220282D */   daddu    $a1, $s1, $zero
/* C9E478 80240558 10400029 */  beqz      $v0, .L80240600
/* C9E47C 8024055C 0000202D */   daddu    $a0, $zero, $zero
/* C9E480 80240560 0200282D */  daddu     $a1, $s0, $zero
/* C9E484 80240564 0000302D */  daddu     $a2, $zero, $zero
/* C9E488 80240568 860300A8 */  lh        $v1, 0xa8($s0)
/* C9E48C 8024056C 3C013F80 */  lui       $at, 0x3f80
/* C9E490 80240570 44810000 */  mtc1      $at, $f0
/* C9E494 80240574 3C014000 */  lui       $at, 0x4000
/* C9E498 80240578 44811000 */  mtc1      $at, $f2
/* C9E49C 8024057C 3C01C1A0 */  lui       $at, 0xc1a0
/* C9E4A0 80240580 44812000 */  mtc1      $at, $f4
/* C9E4A4 80240584 2402000F */  addiu     $v0, $zero, 0xf
/* C9E4A8 80240588 AFA2001C */  sw        $v0, 0x1c($sp)
/* C9E4AC 8024058C 44833000 */  mtc1      $v1, $f6
/* C9E4B0 80240590 00000000 */  nop       
/* C9E4B4 80240594 468031A0 */  cvt.s.w   $f6, $f6
/* C9E4B8 80240598 44073000 */  mfc1      $a3, $f6
/* C9E4BC 8024059C 27A20028 */  addiu     $v0, $sp, 0x28
/* C9E4C0 802405A0 AFA20020 */  sw        $v0, 0x20($sp)
/* C9E4C4 802405A4 E7A00010 */  swc1      $f0, 0x10($sp)
/* C9E4C8 802405A8 E7A20014 */  swc1      $f2, 0x14($sp)
/* C9E4CC 802405AC 0C01BFA4 */  jal       fx_emote
/* C9E4D0 802405B0 E7A40018 */   swc1     $f4, 0x18($sp)
/* C9E4D4 802405B4 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* C9E4D8 802405B8 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* C9E4DC 802405BC C60C0038 */  lwc1      $f12, 0x38($s0)
/* C9E4E0 802405C0 C60E0040 */  lwc1      $f14, 0x40($s0)
/* C9E4E4 802405C4 8C460028 */  lw        $a2, 0x28($v0)
/* C9E4E8 802405C8 0C00A720 */  jal       atan2
/* C9E4EC 802405CC 8C470030 */   lw       $a3, 0x30($v0)
/* C9E4F0 802405D0 0200202D */  daddu     $a0, $s0, $zero
/* C9E4F4 802405D4 240502F4 */  addiu     $a1, $zero, 0x2f4
/* C9E4F8 802405D8 3C060020 */  lui       $a2, 0x20
/* C9E4FC 802405DC 0C012530 */  jal       func_800494C0
/* C9E500 802405E0 E480000C */   swc1     $f0, 0xc($a0)
/* C9E504 802405E4 8E220018 */  lw        $v0, 0x18($s1)
/* C9E508 802405E8 9442002A */  lhu       $v0, 0x2a($v0)
/* C9E50C 802405EC 30420001 */  andi      $v0, $v0, 1
/* C9E510 802405F0 14400029 */  bnez      $v0, .L80240698
/* C9E514 802405F4 2402000A */   addiu    $v0, $zero, 0xa
/* C9E518 802405F8 080901A6 */  j         .L80240698
/* C9E51C 802405FC 2402000C */   addiu    $v0, $zero, 0xc
.L80240600:
/* C9E520 80240600 8602008C */  lh        $v0, 0x8c($s0)
/* C9E524 80240604 14400025 */  bnez      $v0, .L8024069C
/* C9E528 80240608 00000000 */   nop      
/* C9E52C 8024060C 9602008E */  lhu       $v0, 0x8e($s0)
/* C9E530 80240610 2442FFFF */  addiu     $v0, $v0, -1
/* C9E534 80240614 A602008E */  sh        $v0, 0x8e($s0)
/* C9E538 80240618 00021400 */  sll       $v0, $v0, 0x10
/* C9E53C 8024061C 1440001F */  bnez      $v0, .L8024069C
/* C9E540 80240620 00000000 */   nop      
/* C9E544 80240624 8E820074 */  lw        $v0, 0x74($s4)
/* C9E548 80240628 2442FFFF */  addiu     $v0, $v0, -1
/* C9E54C 8024062C 10400019 */  beqz      $v0, .L80240694
/* C9E550 80240630 AE820074 */   sw       $v0, 0x74($s4)
/* C9E554 80240634 8E220018 */  lw        $v0, 0x18($s1)
/* C9E558 80240638 9442002A */  lhu       $v0, 0x2a($v0)
/* C9E55C 8024063C 30420010 */  andi      $v0, $v0, 0x10
/* C9E560 80240640 14400007 */  bnez      $v0, .L80240660
/* C9E564 80240644 00000000 */   nop      
/* C9E568 80240648 C600000C */  lwc1      $f0, 0xc($s0)
/* C9E56C 8024064C 3C014334 */  lui       $at, 0x4334
/* C9E570 80240650 44816000 */  mtc1      $at, $f12
/* C9E574 80240654 0C00A6C9 */  jal       clamp_angle
/* C9E578 80240658 460C0300 */   add.s    $f12, $f0, $f12
/* C9E57C 8024065C E600000C */  swc1      $f0, 0xc($s0)
.L80240660:
/* C9E580 80240660 8E440008 */  lw        $a0, 8($s2)
/* C9E584 80240664 000417C2 */  srl       $v0, $a0, 0x1f
/* C9E588 80240668 00822021 */  addu      $a0, $a0, $v0
/* C9E58C 8024066C 00042043 */  sra       $a0, $a0, 1
/* C9E590 80240670 0C00A67F */  jal       rand_int
/* C9E594 80240674 24840001 */   addiu    $a0, $a0, 1
/* C9E598 80240678 8E430008 */  lw        $v1, 8($s2)
/* C9E59C 8024067C 000327C2 */  srl       $a0, $v1, 0x1f
/* C9E5A0 80240680 00641821 */  addu      $v1, $v1, $a0
/* C9E5A4 80240684 00031843 */  sra       $v1, $v1, 1
/* C9E5A8 80240688 00621821 */  addu      $v1, $v1, $v0
/* C9E5AC 8024068C 080901A7 */  j         .L8024069C
/* C9E5B0 80240690 A603008E */   sh       $v1, 0x8e($s0)
.L80240694:
/* C9E5B4 80240694 24020004 */  addiu     $v0, $zero, 4
.L80240698:
/* C9E5B8 80240698 AE820070 */  sw        $v0, 0x70($s4)
.L8024069C:
/* C9E5BC 8024069C 8FBF0044 */  lw        $ra, 0x44($sp)
/* C9E5C0 802406A0 8FB40040 */  lw        $s4, 0x40($sp)
/* C9E5C4 802406A4 8FB3003C */  lw        $s3, 0x3c($sp)
/* C9E5C8 802406A8 8FB20038 */  lw        $s2, 0x38($sp)
/* C9E5CC 802406AC 8FB10034 */  lw        $s1, 0x34($sp)
/* C9E5D0 802406B0 8FB00030 */  lw        $s0, 0x30($sp)
/* C9E5D4 802406B4 03E00008 */  jr        $ra
/* C9E5D8 802406B8 27BD0048 */   addiu    $sp, $sp, 0x48
