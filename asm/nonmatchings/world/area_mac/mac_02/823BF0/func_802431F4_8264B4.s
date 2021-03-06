.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802431F4_8264B4
/* 8264B4 802431F4 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 8264B8 802431F8 AFB1001C */  sw        $s1, 0x1c($sp)
/* 8264BC 802431FC 0080882D */  daddu     $s1, $a0, $zero
/* 8264C0 80243200 AFBF0034 */  sw        $ra, 0x34($sp)
/* 8264C4 80243204 AFB60030 */  sw        $s6, 0x30($sp)
/* 8264C8 80243208 AFB5002C */  sw        $s5, 0x2c($sp)
/* 8264CC 8024320C AFB40028 */  sw        $s4, 0x28($sp)
/* 8264D0 80243210 AFB30024 */  sw        $s3, 0x24($sp)
/* 8264D4 80243214 AFB20020 */  sw        $s2, 0x20($sp)
/* 8264D8 80243218 AFB00018 */  sw        $s0, 0x18($sp)
/* 8264DC 8024321C F7B60040 */  sdc1      $f22, 0x40($sp)
/* 8264E0 80243220 F7B40038 */  sdc1      $f20, 0x38($sp)
/* 8264E4 80243224 8E30000C */  lw        $s0, 0xc($s1)
/* 8264E8 80243228 8E160000 */  lw        $s6, ($s0)
/* 8264EC 8024322C 26100004 */  addiu     $s0, $s0, 4
/* 8264F0 80243230 0C0B1EAF */  jal       get_variable
/* 8264F4 80243234 02C0282D */   daddu    $a1, $s6, $zero
/* 8264F8 80243238 44820000 */  mtc1      $v0, $f0
/* 8264FC 8024323C 00000000 */  nop       
/* 826500 80243240 46800020 */  cvt.s.w   $f0, $f0
/* 826504 80243244 E7A00010 */  swc1      $f0, 0x10($sp)
/* 826508 80243248 8E140000 */  lw        $s4, ($s0)
/* 82650C 8024324C 26100004 */  addiu     $s0, $s0, 4
/* 826510 80243250 0220202D */  daddu     $a0, $s1, $zero
/* 826514 80243254 0C0B1EAF */  jal       get_variable
/* 826518 80243258 0280282D */   daddu    $a1, $s4, $zero
/* 82651C 8024325C 0220202D */  daddu     $a0, $s1, $zero
/* 826520 80243260 8E150000 */  lw        $s5, ($s0)
/* 826524 80243264 4482B000 */  mtc1      $v0, $f22
/* 826528 80243268 00000000 */  nop       
/* 82652C 8024326C 4680B5A0 */  cvt.s.w   $f22, $f22
/* 826530 80243270 0C0B1EAF */  jal       get_variable
/* 826534 80243274 02A0282D */   daddu    $a1, $s5, $zero
/* 826538 80243278 2404FFFC */  addiu     $a0, $zero, -4
/* 82653C 8024327C 44820000 */  mtc1      $v0, $f0
/* 826540 80243280 00000000 */  nop       
/* 826544 80243284 46800020 */  cvt.s.w   $f0, $f0
/* 826548 80243288 0C00EABB */  jal       get_npc_unsafe
/* 82654C 8024328C E7A00014 */   swc1     $f0, 0x14($sp)
/* 826550 80243290 3C048007 */  lui       $a0, %hi(gCurrentCameraID)
/* 826554 80243294 8C847410 */  lw        $a0, %lo(gCurrentCameraID)($a0)
/* 826558 80243298 3C014334 */  lui       $at, 0x4334
/* 82655C 8024329C 44816000 */  mtc1      $at, $f12
/* 826560 802432A0 00041880 */  sll       $v1, $a0, 2
/* 826564 802432A4 00641821 */  addu      $v1, $v1, $a0
/* 826568 802432A8 00031880 */  sll       $v1, $v1, 2
/* 82656C 802432AC 00641823 */  subu      $v1, $v1, $a0
/* 826570 802432B0 000320C0 */  sll       $a0, $v1, 3
/* 826574 802432B4 00641821 */  addu      $v1, $v1, $a0
/* 826578 802432B8 000318C0 */  sll       $v1, $v1, 3
/* 82657C 802432BC 3C01800B */  lui       $at, 0x800b
/* 826580 802432C0 00230821 */  addu      $at, $at, $v1
/* 826584 802432C4 C4201DEC */  lwc1      $f0, 0x1dec($at)
/* 826588 802432C8 460C0300 */  add.s     $f12, $f0, $f12
/* 82658C 802432CC 0C00A6C9 */  jal       clamp_angle
/* 826590 802432D0 0040982D */   daddu    $s3, $v0, $zero
/* 826594 802432D4 27B00010 */  addiu     $s0, $sp, 0x10
/* 826598 802432D8 0200202D */  daddu     $a0, $s0, $zero
/* 82659C 802432DC 27B20014 */  addiu     $s2, $sp, 0x14
/* 8265A0 802432E0 0240282D */  daddu     $a1, $s2, $zero
/* 8265A4 802432E4 3C064170 */  lui       $a2, 0x4170
/* 8265A8 802432E8 8E67000C */  lw        $a3, 0xc($s3)
/* 8265AC 802432EC 0C00A7E7 */  jal       add_vec2D_polar
/* 8265B0 802432F0 46000506 */   mov.s    $f20, $f0
/* 8265B4 802432F4 0200202D */  daddu     $a0, $s0, $zero
/* 8265B8 802432F8 3C064120 */  lui       $a2, 0x4120
/* 8265BC 802432FC 4407A000 */  mfc1      $a3, $f20
/* 8265C0 80243300 0C00A7E7 */  jal       add_vec2D_polar
/* 8265C4 80243304 0240282D */   daddu    $a1, $s2, $zero
/* 8265C8 80243308 0220202D */  daddu     $a0, $s1, $zero
/* 8265CC 8024330C C7A00010 */  lwc1      $f0, 0x10($sp)
/* 8265D0 80243310 4600008D */  trunc.w.s $f2, $f0
/* 8265D4 80243314 44061000 */  mfc1      $a2, $f2
/* 8265D8 80243318 0C0B2026 */  jal       set_variable
/* 8265DC 8024331C 02C0282D */   daddu    $a1, $s6, $zero
/* 8265E0 80243320 0220202D */  daddu     $a0, $s1, $zero
/* 8265E4 80243324 4600B08D */  trunc.w.s $f2, $f22
/* 8265E8 80243328 44061000 */  mfc1      $a2, $f2
/* 8265EC 8024332C 0C0B2026 */  jal       set_variable
/* 8265F0 80243330 0280282D */   daddu    $a1, $s4, $zero
/* 8265F4 80243334 0220202D */  daddu     $a0, $s1, $zero
/* 8265F8 80243338 C7A00014 */  lwc1      $f0, 0x14($sp)
/* 8265FC 8024333C 4600008D */  trunc.w.s $f2, $f0
/* 826600 80243340 44061000 */  mfc1      $a2, $f2
/* 826604 80243344 0C0B2026 */  jal       set_variable
/* 826608 80243348 02A0282D */   daddu    $a1, $s5, $zero
/* 82660C 8024334C 8FBF0034 */  lw        $ra, 0x34($sp)
/* 826610 80243350 8FB60030 */  lw        $s6, 0x30($sp)
/* 826614 80243354 8FB5002C */  lw        $s5, 0x2c($sp)
/* 826618 80243358 8FB40028 */  lw        $s4, 0x28($sp)
/* 82661C 8024335C 8FB30024 */  lw        $s3, 0x24($sp)
/* 826620 80243360 8FB20020 */  lw        $s2, 0x20($sp)
/* 826624 80243364 8FB1001C */  lw        $s1, 0x1c($sp)
/* 826628 80243368 8FB00018 */  lw        $s0, 0x18($sp)
/* 82662C 8024336C D7B60040 */  ldc1      $f22, 0x40($sp)
/* 826630 80243370 D7B40038 */  ldc1      $f20, 0x38($sp)
/* 826634 80243374 24020002 */  addiu     $v0, $zero, 2
/* 826638 80243378 03E00008 */  jr        $ra
/* 82663C 8024337C 27BD0048 */   addiu    $sp, $sp, 0x48
