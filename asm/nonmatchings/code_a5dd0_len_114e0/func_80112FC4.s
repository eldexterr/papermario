.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80112FC4
/* 0A96C4 80112FC4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0A96C8 80112FC8 AFB00010 */  sw    $s0, 0x10($sp)
/* 0A96CC 80112FCC 3C108015 */  lui   $s0, 0x8015
/* 0A96D0 80112FD0 26101700 */  addiu $s0, $s0, 0x1700
/* 0A96D4 80112FD4 AFB10014 */  sw    $s1, 0x14($sp)
/* 0A96D8 80112FD8 0000882D */  daddu $s1, $zero, $zero
/* 0A96DC 80112FDC AFBF0018 */  sw    $ra, 0x18($sp)
.L80112FE0:
/* 0A96E0 80112FE0 96030000 */  lhu   $v1, ($s0)
/* 0A96E4 80112FE4 5060000D */  beql  $v1, $zero, .L8011301C
/* 0A96E8 80112FE8 26310001 */   addiu $s1, $s1, 1
/* 0A96EC 80112FEC 30620004 */  andi  $v0, $v1, 4
/* 0A96F0 80112FF0 5440000A */  bnel  $v0, $zero, .L8011301C
/* 0A96F4 80112FF4 26310001 */   addiu $s1, $s1, 1
/* 0A96F8 80112FF8 30620002 */  andi  $v0, $v1, 2
/* 0A96FC 80112FFC 14400007 */  bnez  $v0, .L8011301C
/* 0A9700 80113000 26310001 */   addiu $s1, $s1, 1
/* 0A9704 80113004 30620020 */  andi  $v0, $v1, 0x20
/* 0A9708 80113008 10400004 */  beqz  $v0, .L8011301C
/* 0A970C 8011300C 00000000 */   nop   
/* 0A9710 80113010 8E020014 */  lw    $v0, 0x14($s0)
/* 0A9714 80113014 0040F809 */  jalr  $v0
/* 0A9718 80113018 00000000 */  nop   
.L8011301C:
/* 0A971C 8011301C 2A220002 */  slti  $v0, $s1, 2
/* 0A9720 80113020 1440FFEF */  bnez  $v0, .L80112FE0
/* 0A9724 80113024 26100018 */   addiu $s0, $s0, 0x18
/* 0A9728 80113028 3C108015 */  lui   $s0, 0x8015
/* 0A972C 8011302C 26101700 */  addiu $s0, $s0, 0x1700
/* 0A9730 80113030 0000882D */  daddu $s1, $zero, $zero
.L80113034:
/* 0A9734 80113034 96030000 */  lhu   $v1, ($s0)
/* 0A9738 80113038 5060000D */  beql  $v1, $zero, .L80113070
/* 0A973C 8011303C 26310001 */   addiu $s1, $s1, 1
/* 0A9740 80113040 30620004 */  andi  $v0, $v1, 4
/* 0A9744 80113044 5440000A */  bnel  $v0, $zero, .L80113070
/* 0A9748 80113048 26310001 */   addiu $s1, $s1, 1
/* 0A974C 8011304C 30620002 */  andi  $v0, $v1, 2
/* 0A9750 80113050 14400007 */  bnez  $v0, .L80113070
/* 0A9754 80113054 26310001 */   addiu $s1, $s1, 1
/* 0A9758 80113058 30620010 */  andi  $v0, $v1, 0x10
/* 0A975C 8011305C 10400004 */  beqz  $v0, .L80113070
/* 0A9760 80113060 00000000 */   nop   
/* 0A9764 80113064 8E020010 */  lw    $v0, 0x10($s0)
/* 0A9768 80113068 0040F809 */  jalr  $v0
/* 0A976C 8011306C 00000000 */  nop   
.L80113070:
/* 0A9770 80113070 2A220002 */  slti  $v0, $s1, 2
/* 0A9774 80113074 1440FFEF */  bnez  $v0, .L80113034
/* 0A9778 80113078 26100018 */   addiu $s0, $s0, 0x18
/* 0A977C 8011307C 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0A9780 80113080 8FB10014 */  lw    $s1, 0x14($sp)
/* 0A9784 80113084 8FB00010 */  lw    $s0, 0x10($sp)
/* 0A9788 80113088 03E00008 */  jr    $ra
/* 0A978C 8011308C 27BD0020 */   addiu $sp, $sp, 0x20
