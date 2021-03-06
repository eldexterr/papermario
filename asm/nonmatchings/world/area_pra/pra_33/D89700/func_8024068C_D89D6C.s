.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024068C_D89D6C
/* D89D6C 8024068C 3C03800A */  lui       $v1, 0x800a
/* D89D70 80240690 8463A634 */  lh        $v1, -0x59cc($v1)
/* D89D74 80240694 3C07BF80 */  lui       $a3, 0xbf80
/* D89D78 80240698 27BDFEC0 */  addiu     $sp, $sp, -0x140
/* D89D7C 8024069C F7B40128 */  sdc1      $f20, 0x128($sp)
/* D89D80 802406A0 4480A000 */  mtc1      $zero, $f20
/* D89D84 802406A4 AFB1011C */  sw        $s1, 0x11c($sp)
/* D89D88 802406A8 0080882D */  daddu     $s1, $a0, $zero
/* D89D8C 802406AC AFB00118 */  sw        $s0, 0x118($sp)
/* D89D90 802406B0 27B00098 */  addiu     $s0, $sp, 0x98
/* D89D94 802406B4 AFBF0120 */  sw        $ra, 0x120($sp)
/* D89D98 802406B8 F7B80138 */  sdc1      $f24, 0x138($sp)
/* D89D9C 802406BC F7B60130 */  sdc1      $f22, 0x130($sp)
/* D89DA0 802406C0 00031080 */  sll       $v0, $v1, 2
/* D89DA4 802406C4 00431021 */  addu      $v0, $v0, $v1
/* D89DA8 802406C8 00021080 */  sll       $v0, $v0, 2
/* D89DAC 802406CC 00431023 */  subu      $v0, $v0, $v1
/* D89DB0 802406D0 000218C0 */  sll       $v1, $v0, 3
/* D89DB4 802406D4 00431021 */  addu      $v0, $v0, $v1
/* D89DB8 802406D8 000210C0 */  sll       $v0, $v0, 3
/* D89DBC 802406DC 3C01800B */  lui       $at, 0x800b
/* D89DC0 802406E0 00220821 */  addu      $at, $at, $v0
/* D89DC4 802406E4 C4361DEC */  lwc1      $f22, 0x1dec($at)
/* D89DC8 802406E8 4406A000 */  mfc1      $a2, $f20
/* D89DCC 802406EC 4600B587 */  neg.s     $f22, $f22
/* D89DD0 802406F0 4405B000 */  mfc1      $a1, $f22
/* D89DD4 802406F4 0200202D */  daddu     $a0, $s0, $zero
/* D89DD8 802406F8 0C019EC8 */  jal       guRotateF
/* D89DDC 802406FC E7B40010 */   swc1     $f20, 0x10($sp)
/* D89DE0 80240700 C62C008C */  lwc1      $f12, 0x8c($s1)
/* D89DE4 80240704 0C00A6C9 */  jal       clamp_angle
/* D89DE8 80240708 00000000 */   nop      
/* D89DEC 8024070C 44050000 */  mfc1      $a1, $f0
/* D89DF0 80240710 4406A000 */  mfc1      $a2, $f20
/* D89DF4 80240714 4407A000 */  mfc1      $a3, $f20
/* D89DF8 80240718 3C013F80 */  lui       $at, 0x3f80
/* D89DFC 8024071C 4481C000 */  mtc1      $at, $f24
/* D89E00 80240720 27A40018 */  addiu     $a0, $sp, 0x18
/* D89E04 80240724 0C019EC8 */  jal       guRotateF
/* D89E08 80240728 E7B80010 */   swc1     $f24, 0x10($sp)
/* D89E0C 8024072C 0200202D */  daddu     $a0, $s0, $zero
/* D89E10 80240730 27A50018 */  addiu     $a1, $sp, 0x18
/* D89E14 80240734 0C019D80 */  jal       guMtxCatF
/* D89E18 80240738 00A0302D */   daddu    $a2, $a1, $zero
/* D89E1C 8024073C 4405B000 */  mfc1      $a1, $f22
/* D89E20 80240740 4406A000 */  mfc1      $a2, $f20
/* D89E24 80240744 4407C000 */  mfc1      $a3, $f24
/* D89E28 80240748 0200202D */  daddu     $a0, $s0, $zero
/* D89E2C 8024074C 0C019EC8 */  jal       guRotateF
/* D89E30 80240750 E7B40010 */   swc1     $f20, 0x10($sp)
/* D89E34 80240754 27A40018 */  addiu     $a0, $sp, 0x18
/* D89E38 80240758 0200282D */  daddu     $a1, $s0, $zero
/* D89E3C 8024075C 0C019D80 */  jal       guMtxCatF
/* D89E40 80240760 0080302D */   daddu    $a2, $a0, $zero
/* D89E44 80240764 E7B40010 */  swc1      $f20, 0x10($sp)
/* D89E48 80240768 8E2500A8 */  lw        $a1, 0xa8($s1)
/* D89E4C 8024076C 4406A000 */  mfc1      $a2, $f20
/* D89E50 80240770 4407C000 */  mfc1      $a3, $f24
/* D89E54 80240774 0C019EC8 */  jal       guRotateF
/* D89E58 80240778 0200202D */   daddu    $a0, $s0, $zero
/* D89E5C 8024077C 27A40018 */  addiu     $a0, $sp, 0x18
/* D89E60 80240780 0200282D */  daddu     $a1, $s0, $zero
/* D89E64 80240784 0C019D80 */  jal       guMtxCatF
/* D89E68 80240788 0080302D */   daddu    $a2, $a0, $zero
/* D89E6C 8024078C 27B000D8 */  addiu     $s0, $sp, 0xd8
/* D89E70 80240790 3C013F36 */  lui       $at, 0x3f36
/* D89E74 80240794 3421DB6E */  ori       $at, $at, 0xdb6e
/* D89E78 80240798 44810000 */  mtc1      $at, $f0
/* D89E7C 8024079C 0200202D */  daddu     $a0, $s0, $zero
/* D89E80 802407A0 44050000 */  mfc1      $a1, $f0
/* D89E84 802407A4 3C06BF36 */  lui       $a2, 0xbf36
/* D89E88 802407A8 34C6DB6E */  ori       $a2, $a2, 0xdb6e
/* D89E8C 802407AC 0C019DF0 */  jal       guScaleF
/* D89E90 802407B0 00A0382D */   daddu    $a3, $a1, $zero
/* D89E94 802407B4 27A40018 */  addiu     $a0, $sp, 0x18
/* D89E98 802407B8 0200282D */  daddu     $a1, $s0, $zero
/* D89E9C 802407BC 0C019D80 */  jal       guMtxCatF
/* D89EA0 802407C0 0080302D */   daddu    $a2, $a0, $zero
/* D89EA4 802407C4 27B00058 */  addiu     $s0, $sp, 0x58
/* D89EA8 802407C8 8E250028 */  lw        $a1, 0x28($s1)
/* D89EAC 802407CC C620002C */  lwc1      $f0, 0x2c($s1)
/* D89EB0 802407D0 8E270030 */  lw        $a3, 0x30($s1)
/* D89EB4 802407D4 46000007 */  neg.s     $f0, $f0
/* D89EB8 802407D8 44060000 */  mfc1      $a2, $f0
/* D89EBC 802407DC 0C019E40 */  jal       guTranslateF
/* D89EC0 802407E0 0200202D */   daddu    $a0, $s0, $zero
/* D89EC4 802407E4 27A40018 */  addiu     $a0, $sp, 0x18
/* D89EC8 802407E8 0200282D */  daddu     $a1, $s0, $zero
/* D89ECC 802407EC 0C019D80 */  jal       guMtxCatF
/* D89ED0 802407F0 0080302D */   daddu    $a2, $a0, $zero
/* D89ED4 802407F4 C62200A8 */  lwc1      $f2, 0xa8($s1)
/* D89ED8 802407F8 3C0142B4 */  lui       $at, 0x42b4
/* D89EDC 802407FC 44810000 */  mtc1      $at, $f0
/* D89EE0 80240800 00000000 */  nop       
/* D89EE4 80240804 4602003E */  c.le.s    $f0, $f2
/* D89EE8 80240808 00000000 */  nop       
/* D89EEC 8024080C 4500000A */  bc1f      .L80240838
/* D89EF0 80240810 24040001 */   addiu    $a0, $zero, 1
/* D89EF4 80240814 3C014387 */  lui       $at, 0x4387
/* D89EF8 80240818 44810000 */  mtc1      $at, $f0
/* D89EFC 8024081C 00000000 */  nop       
/* D89F00 80240820 4600103C */  c.lt.s    $f2, $f0
/* D89F04 80240824 00000000 */  nop       
/* D89F08 80240828 45000004 */  bc1f      .L8024083C
/* D89F0C 8024082C 27A20018 */   addiu    $v0, $sp, 0x18
/* D89F10 80240830 3C041000 */  lui       $a0, 0x1000
/* D89F14 80240834 34840001 */  ori       $a0, $a0, 1
.L80240838:
/* D89F18 80240838 27A20018 */  addiu     $v0, $sp, 0x18
.L8024083C:
/* D89F1C 8024083C 0000282D */  daddu     $a1, $zero, $zero
/* D89F20 80240840 00A0302D */  daddu     $a2, $a1, $zero
/* D89F24 80240844 00A0382D */  daddu     $a3, $a1, $zero
/* D89F28 80240848 0C0B7710 */  jal       render_sprite
/* D89F2C 8024084C AFA20010 */   sw       $v0, 0x10($sp)
/* D89F30 80240850 8FBF0120 */  lw        $ra, 0x120($sp)
/* D89F34 80240854 8FB1011C */  lw        $s1, 0x11c($sp)
/* D89F38 80240858 8FB00118 */  lw        $s0, 0x118($sp)
/* D89F3C 8024085C D7B80138 */  ldc1      $f24, 0x138($sp)
/* D89F40 80240860 D7B60130 */  ldc1      $f22, 0x130($sp)
/* D89F44 80240864 D7B40128 */  ldc1      $f20, 0x128($sp)
/* D89F48 80240868 03E00008 */  jr        $ra
/* D89F4C 8024086C 27BD0140 */   addiu    $sp, $sp, 0x140
