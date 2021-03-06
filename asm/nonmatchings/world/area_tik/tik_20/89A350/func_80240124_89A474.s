.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240124_89A474
/* 89A474 80240124 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 89A478 80240128 AFB00010 */  sw        $s0, 0x10($sp)
/* 89A47C 8024012C 0080802D */  daddu     $s0, $a0, $zero
/* 89A480 80240130 10A00005 */  beqz      $a1, .L80240148
/* 89A484 80240134 AFBF0014 */   sw       $ra, 0x14($sp)
/* 89A488 80240138 AE000070 */  sw        $zero, 0x70($s0)
/* 89A48C 8024013C AE000074 */  sw        $zero, 0x74($s0)
/* 89A490 80240140 AE000078 */  sw        $zero, 0x78($s0)
/* 89A494 80240144 AE00007C */  sw        $zero, 0x7c($s0)
.L80240148:
/* 89A498 80240148 8E020070 */  lw        $v0, 0x70($s0)
/* 89A49C 8024014C 1440000E */  bnez      $v0, .L80240188
/* 89A4A0 80240150 00000000 */   nop      
/* 89A4A4 80240154 8E0300A8 */  lw        $v1, 0xa8($s0)
/* 89A4A8 80240158 8E020088 */  lw        $v0, 0x88($s0)
/* 89A4AC 8024015C 00621821 */  addu      $v1, $v1, $v0
/* 89A4B0 80240160 04610004 */  bgez      $v1, .L80240174
/* 89A4B4 80240164 AE0300A8 */   sw       $v1, 0xa8($s0)
/* 89A4B8 80240168 3C020002 */  lui       $v0, 2
/* 89A4BC 8024016C 08090061 */  j         .L80240184
/* 89A4C0 80240170 00621021 */   addu     $v0, $v1, $v0
.L80240174:
/* 89A4C4 80240174 3C040002 */  lui       $a0, 2
/* 89A4C8 80240178 0083102A */  slt       $v0, $a0, $v1
/* 89A4CC 8024017C 10400002 */  beqz      $v0, .L80240188
/* 89A4D0 80240180 00641023 */   subu     $v0, $v1, $a0
.L80240184:
/* 89A4D4 80240184 AE0200A8 */  sw        $v0, 0xa8($s0)
.L80240188:
/* 89A4D8 80240188 8E020074 */  lw        $v0, 0x74($s0)
/* 89A4DC 8024018C 1440000E */  bnez      $v0, .L802401C8
/* 89A4E0 80240190 00000000 */   nop      
/* 89A4E4 80240194 8E0300AC */  lw        $v1, 0xac($s0)
/* 89A4E8 80240198 8E02008C */  lw        $v0, 0x8c($s0)
/* 89A4EC 8024019C 00621821 */  addu      $v1, $v1, $v0
/* 89A4F0 802401A0 04610004 */  bgez      $v1, .L802401B4
/* 89A4F4 802401A4 AE0300AC */   sw       $v1, 0xac($s0)
/* 89A4F8 802401A8 3C020002 */  lui       $v0, 2
/* 89A4FC 802401AC 08090071 */  j         .L802401C4
/* 89A500 802401B0 00621021 */   addu     $v0, $v1, $v0
.L802401B4:
/* 89A504 802401B4 3C040002 */  lui       $a0, 2
/* 89A508 802401B8 0083102A */  slt       $v0, $a0, $v1
/* 89A50C 802401BC 10400002 */  beqz      $v0, .L802401C8
/* 89A510 802401C0 00641023 */   subu     $v0, $v1, $a0
.L802401C4:
/* 89A514 802401C4 AE0200AC */  sw        $v0, 0xac($s0)
.L802401C8:
/* 89A518 802401C8 8E020078 */  lw        $v0, 0x78($s0)
/* 89A51C 802401CC 1440000E */  bnez      $v0, .L80240208
/* 89A520 802401D0 00000000 */   nop      
/* 89A524 802401D4 8E0300B0 */  lw        $v1, 0xb0($s0)
/* 89A528 802401D8 8E020090 */  lw        $v0, 0x90($s0)
/* 89A52C 802401DC 00621821 */  addu      $v1, $v1, $v0
/* 89A530 802401E0 04610004 */  bgez      $v1, .L802401F4
/* 89A534 802401E4 AE0300B0 */   sw       $v1, 0xb0($s0)
/* 89A538 802401E8 3C020002 */  lui       $v0, 2
/* 89A53C 802401EC 08090081 */  j         .L80240204
/* 89A540 802401F0 00621021 */   addu     $v0, $v1, $v0
.L802401F4:
/* 89A544 802401F4 3C040002 */  lui       $a0, 2
/* 89A548 802401F8 0083102A */  slt       $v0, $a0, $v1
/* 89A54C 802401FC 10400002 */  beqz      $v0, .L80240208
/* 89A550 80240200 00641023 */   subu     $v0, $v1, $a0
.L80240204:
/* 89A554 80240204 AE0200B0 */  sw        $v0, 0xb0($s0)
.L80240208:
/* 89A558 80240208 8E02007C */  lw        $v0, 0x7c($s0)
/* 89A55C 8024020C 1440000E */  bnez      $v0, .L80240248
/* 89A560 80240210 00000000 */   nop      
/* 89A564 80240214 8E0300B4 */  lw        $v1, 0xb4($s0)
/* 89A568 80240218 8E020094 */  lw        $v0, 0x94($s0)
/* 89A56C 8024021C 00621821 */  addu      $v1, $v1, $v0
/* 89A570 80240220 04610004 */  bgez      $v1, .L80240234
/* 89A574 80240224 AE0300B4 */   sw       $v1, 0xb4($s0)
/* 89A578 80240228 3C020002 */  lui       $v0, 2
/* 89A57C 8024022C 08090091 */  j         .L80240244
/* 89A580 80240230 00621021 */   addu     $v0, $v1, $v0
.L80240234:
/* 89A584 80240234 3C040002 */  lui       $a0, 2
/* 89A588 80240238 0083102A */  slt       $v0, $a0, $v1
/* 89A58C 8024023C 10400002 */  beqz      $v0, .L80240248
/* 89A590 80240240 00641023 */   subu     $v0, $v1, $a0
.L80240244:
/* 89A594 80240244 AE0200B4 */  sw        $v0, 0xb4($s0)
.L80240248:
/* 89A598 80240248 8E040084 */  lw        $a0, 0x84($s0)
/* 89A59C 8024024C 0C046F07 */  jal       set_main_pan_u
/* 89A5A0 80240250 8E0500A8 */   lw       $a1, 0xa8($s0)
/* 89A5A4 80240254 8E040084 */  lw        $a0, 0x84($s0)
/* 89A5A8 80240258 0C046F0D */  jal       set_main_pan_v
/* 89A5AC 8024025C 8E0500AC */   lw       $a1, 0xac($s0)
/* 89A5B0 80240260 8E040084 */  lw        $a0, 0x84($s0)
/* 89A5B4 80240264 0C046F13 */  jal       set_aux_pan_u
/* 89A5B8 80240268 8E0500B0 */   lw       $a1, 0xb0($s0)
/* 89A5BC 8024026C 8E040084 */  lw        $a0, 0x84($s0)
/* 89A5C0 80240270 0C046F19 */  jal       set_aux_pan_v
/* 89A5C4 80240274 8E0500B4 */   lw       $a1, 0xb4($s0)
/* 89A5C8 80240278 8E020070 */  lw        $v0, 0x70($s0)
/* 89A5CC 8024027C 8E030078 */  lw        $v1, 0x78($s0)
/* 89A5D0 80240280 8E040098 */  lw        $a0, 0x98($s0)
/* 89A5D4 80240284 24420001 */  addiu     $v0, $v0, 1
/* 89A5D8 80240288 AE020070 */  sw        $v0, 0x70($s0)
/* 89A5DC 8024028C 8E020074 */  lw        $v0, 0x74($s0)
/* 89A5E0 80240290 24630001 */  addiu     $v1, $v1, 1
/* 89A5E4 80240294 AE030078 */  sw        $v1, 0x78($s0)
/* 89A5E8 80240298 8E030070 */  lw        $v1, 0x70($s0)
/* 89A5EC 8024029C 24420001 */  addiu     $v0, $v0, 1
/* 89A5F0 802402A0 AE020074 */  sw        $v0, 0x74($s0)
/* 89A5F4 802402A4 8E02007C */  lw        $v0, 0x7c($s0)
/* 89A5F8 802402A8 0064182A */  slt       $v1, $v1, $a0
/* 89A5FC 802402AC 24420001 */  addiu     $v0, $v0, 1
/* 89A600 802402B0 14600002 */  bnez      $v1, .L802402BC
/* 89A604 802402B4 AE02007C */   sw       $v0, 0x7c($s0)
/* 89A608 802402B8 AE000070 */  sw        $zero, 0x70($s0)
.L802402BC:
/* 89A60C 802402BC 8E020074 */  lw        $v0, 0x74($s0)
/* 89A610 802402C0 8E03009C */  lw        $v1, 0x9c($s0)
/* 89A614 802402C4 0043102A */  slt       $v0, $v0, $v1
/* 89A618 802402C8 50400001 */  beql      $v0, $zero, .L802402D0
/* 89A61C 802402CC AE000074 */   sw       $zero, 0x74($s0)
.L802402D0:
/* 89A620 802402D0 8E020078 */  lw        $v0, 0x78($s0)
/* 89A624 802402D4 8E0300A0 */  lw        $v1, 0xa0($s0)
/* 89A628 802402D8 0043102A */  slt       $v0, $v0, $v1
/* 89A62C 802402DC 50400001 */  beql      $v0, $zero, .L802402E4
/* 89A630 802402E0 AE000078 */   sw       $zero, 0x78($s0)
.L802402E4:
/* 89A634 802402E4 8E02007C */  lw        $v0, 0x7c($s0)
/* 89A638 802402E8 8E0300A4 */  lw        $v1, 0xa4($s0)
/* 89A63C 802402EC 0043102A */  slt       $v0, $v0, $v1
/* 89A640 802402F0 50400001 */  beql      $v0, $zero, .L802402F8
/* 89A644 802402F4 AE00007C */   sw       $zero, 0x7c($s0)
.L802402F8:
/* 89A648 802402F8 8FBF0014 */  lw        $ra, 0x14($sp)
/* 89A64C 802402FC 8FB00010 */  lw        $s0, 0x10($sp)
/* 89A650 80240300 0000102D */  daddu     $v0, $zero, $zero
/* 89A654 80240304 03E00008 */  jr        $ra
/* 89A658 80240308 27BD0018 */   addiu    $sp, $sp, 0x18
