.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241A64_844634
/* 844634 80241A64 0000402D */  daddu     $t0, $zero, $zero
/* 844638 80241A68 0100382D */  daddu     $a3, $t0, $zero
/* 84463C 80241A6C 3C058011 */  lui       $a1, %hi(gPlayerData)
/* 844640 80241A70 24A5F290 */  addiu     $a1, $a1, %lo(gPlayerData)
/* 844644 80241A74 8C8300AC */  lw        $v1, 0xac($a0)
/* 844648 80241A78 24020001 */  addiu     $v0, $zero, 1
/* 84464C 80241A7C 1062000F */  beq       $v1, $v0, .L80241ABC
/* 844650 80241A80 0100302D */   daddu    $a2, $t0, $zero
/* 844654 80241A84 28620002 */  slti      $v0, $v1, 2
/* 844658 80241A88 10400005 */  beqz      $v0, .L80241AA0
/* 84465C 80241A8C 24020002 */   addiu    $v0, $zero, 2
/* 844660 80241A90 50600007 */  beql      $v1, $zero, .L80241AB0
/* 844664 80241A94 2406000A */   addiu    $a2, $zero, 0xa
/* 844668 80241A98 080906B5 */  j         .L80241AD4
/* 84466C 80241A9C 00000000 */   nop      
.L80241AA0:
/* 844670 80241AA0 5062000A */  beql      $v1, $v0, .L80241ACC
/* 844674 80241AA4 2406FFFB */   addiu    $a2, $zero, -5
/* 844678 80241AA8 080906B5 */  j         .L80241AD4
/* 84467C 80241AAC 00000000 */   nop      
.L80241AB0:
/* 844680 80241AB0 2407FFFB */  addiu     $a3, $zero, -5
/* 844684 80241AB4 080906B5 */  j         .L80241AD4
/* 844688 80241AB8 2408FFFD */   addiu    $t0, $zero, -3
.L80241ABC:
/* 84468C 80241ABC 2406FFFB */  addiu     $a2, $zero, -5
/* 844690 80241AC0 2407000A */  addiu     $a3, $zero, 0xa
/* 844694 80241AC4 080906B5 */  j         .L80241AD4
/* 844698 80241AC8 2408FFFD */   addiu    $t0, $zero, -3
.L80241ACC:
/* 84469C 80241ACC 00C0382D */  daddu     $a3, $a2, $zero
/* 8446A0 80241AD0 24080006 */  addiu     $t0, $zero, 6
.L80241AD4:
/* 8446A4 80241AD4 90A30004 */  lbu       $v1, 4($a1)
/* 8446A8 80241AD8 90A20003 */  lbu       $v0, 3($a1)
/* 8446AC 80241ADC 00661821 */  addu      $v1, $v1, $a2
/* 8446B0 80241AE0 00461021 */  addu      $v0, $v0, $a2
/* 8446B4 80241AE4 A0A20003 */  sb        $v0, 3($a1)
/* 8446B8 80241AE8 00021600 */  sll       $v0, $v0, 0x18
/* 8446BC 80241AEC 00021603 */  sra       $v0, $v0, 0x18
/* 8446C0 80241AF0 2842004C */  slti      $v0, $v0, 0x4c
/* 8446C4 80241AF4 14400003 */  bnez      $v0, .L80241B04
/* 8446C8 80241AF8 A0A30004 */   sb       $v1, 4($a1)
/* 8446CC 80241AFC 2402004B */  addiu     $v0, $zero, 0x4b
/* 8446D0 80241B00 A0A20003 */  sb        $v0, 3($a1)
.L80241B04:
/* 8446D4 80241B04 80A30002 */  lb        $v1, 2($a1)
/* 8446D8 80241B08 80A20003 */  lb        $v0, 3($a1)
/* 8446DC 80241B0C 0043102A */  slt       $v0, $v0, $v1
/* 8446E0 80241B10 90A30003 */  lbu       $v1, 3($a1)
/* 8446E4 80241B14 54400001 */  bnel      $v0, $zero, .L80241B1C
/* 8446E8 80241B18 A0A30002 */   sb       $v1, 2($a1)
.L80241B1C:
/* 8446EC 80241B1C 90A30007 */  lbu       $v1, 7($a1)
/* 8446F0 80241B20 90A20006 */  lbu       $v0, 6($a1)
/* 8446F4 80241B24 00671821 */  addu      $v1, $v1, $a3
/* 8446F8 80241B28 00471021 */  addu      $v0, $v0, $a3
/* 8446FC 80241B2C A0A20006 */  sb        $v0, 6($a1)
/* 844700 80241B30 00021600 */  sll       $v0, $v0, 0x18
/* 844704 80241B34 00021603 */  sra       $v0, $v0, 0x18
/* 844708 80241B38 2842004C */  slti      $v0, $v0, 0x4c
/* 84470C 80241B3C 14400003 */  bnez      $v0, .L80241B4C
/* 844710 80241B40 A0A30007 */   sb       $v1, 7($a1)
/* 844714 80241B44 2402004B */  addiu     $v0, $zero, 0x4b
/* 844718 80241B48 A0A20006 */  sb        $v0, 6($a1)
.L80241B4C:
/* 84471C 80241B4C 80A30005 */  lb        $v1, 5($a1)
/* 844720 80241B50 80A20006 */  lb        $v0, 6($a1)
/* 844724 80241B54 0043102A */  slt       $v0, $v0, $v1
/* 844728 80241B58 90A30006 */  lbu       $v1, 6($a1)
/* 84472C 80241B5C 54400001 */  bnel      $v0, $zero, .L80241B64
/* 844730 80241B60 A0A30005 */   sb       $v1, 5($a1)
.L80241B64:
/* 844734 80241B64 90A20008 */  lbu       $v0, 8($a1)
/* 844738 80241B68 00481021 */  addu      $v0, $v0, $t0
/* 84473C 80241B6C A0A20008 */  sb        $v0, 8($a1)
/* 844740 80241B70 00021600 */  sll       $v0, $v0, 0x18
/* 844744 80241B74 00021603 */  sra       $v0, $v0, 0x18
/* 844748 80241B78 2842001F */  slti      $v0, $v0, 0x1f
/* 84474C 80241B7C 14400002 */  bnez      $v0, .L80241B88
/* 844750 80241B80 2402001E */   addiu    $v0, $zero, 0x1e
/* 844754 80241B84 A0A20008 */  sb        $v0, 8($a1)
.L80241B88:
/* 844758 80241B88 03E00008 */  jr        $ra
/* 84475C 80241B8C 24020002 */   addiu    $v0, $zero, 2
