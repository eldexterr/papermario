.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240054_D5F304
/* D5F304 80240054 00041403 */  sra       $v0, $a0, 0x10
/* D5F308 80240058 304300FF */  andi      $v1, $v0, 0xff
/* D5F30C 8024005C 24020006 */  addiu     $v0, $zero, 6
/* D5F310 80240060 10620015 */  beq       $v1, $v0, .L802400B8
/* D5F314 80240064 28620007 */   slti     $v0, $v1, 7
/* D5F318 80240068 10400005 */  beqz      $v0, .L80240080
/* D5F31C 8024006C 24020001 */   addiu    $v0, $zero, 1
/* D5F320 80240070 1062000A */  beq       $v1, $v0, .L8024009C
/* D5F324 80240074 3C020100 */   lui      $v0, 0x100
/* D5F328 80240078 03E00008 */  jr        $ra
/* D5F32C 8024007C 00821025 */   or       $v0, $a0, $v0
.L80240080:
/* D5F330 80240080 2862000A */  slti      $v0, $v1, 0xa
/* D5F334 80240084 10400016 */  beqz      $v0, .L802400E0
/* D5F338 80240088 28620008 */   slti     $v0, $v1, 8
/* D5F33C 8024008C 14400015 */  bnez      $v0, .L802400E4
/* D5F340 80240090 3C020100 */   lui      $v0, 0x100
/* D5F344 80240094 03E00008 */  jr        $ra
/* D5F348 80240098 0080102D */   daddu    $v0, $a0, $zero
.L8024009C:
/* D5F34C 8024009C 3C020001 */  lui       $v0, 1
/* D5F350 802400A0 3442000C */  ori       $v0, $v0, 0xc
/* D5F354 802400A4 0044102A */  slt       $v0, $v0, $a0
/* D5F358 802400A8 1040000E */  beqz      $v0, .L802400E4
/* D5F35C 802400AC 3C020100 */   lui      $v0, 0x100
.L802400B0:
/* D5F360 802400B0 03E00008 */  jr        $ra
/* D5F364 802400B4 0080102D */   daddu    $v0, $a0, $zero
.L802400B8:
/* D5F368 802400B8 3C02FFF9 */  lui       $v0, 0xfff9
/* D5F36C 802400BC 3442FFF4 */  ori       $v0, $v0, 0xfff4
/* D5F370 802400C0 00821821 */  addu      $v1, $a0, $v0
/* D5F374 802400C4 2C620010 */  sltiu     $v0, $v1, 0x10
/* D5F378 802400C8 10400005 */  beqz      $v0, .L802400E0
/* D5F37C 802400CC 30620001 */   andi     $v0, $v1, 1
/* D5F380 802400D0 1440FFF7 */  bnez      $v0, .L802400B0
/* D5F384 802400D4 24820001 */   addiu    $v0, $a0, 1
/* D5F388 802400D8 03E00008 */  jr        $ra
/* D5F38C 802400DC 00000000 */   nop      
.L802400E0:
/* D5F390 802400E0 3C020100 */  lui       $v0, 0x100
.L802400E4:
/* D5F394 802400E4 03E00008 */  jr        $ra
/* D5F398 802400E8 00821025 */   or       $v0, $a0, $v0
