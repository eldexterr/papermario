.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240EB8_D7DA08
/* D7DA08 80240EB8 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* D7DA0C 80240EBC AFBF0010 */  sw        $ra, 0x10($sp)
/* D7DA10 80240EC0 0C00EAD2 */  jal       get_npc_safe
/* D7DA14 80240EC4 2404FFFC */   addiu    $a0, $zero, -4
/* D7DA18 80240EC8 0040202D */  daddu     $a0, $v0, $zero
/* D7DA1C 80240ECC 10800004 */  beqz      $a0, .L80240EE0
/* D7DA20 80240ED0 3C030008 */   lui      $v1, 8
/* D7DA24 80240ED4 8C820000 */  lw        $v0, ($a0)
/* D7DA28 80240ED8 00431025 */  or        $v0, $v0, $v1
/* D7DA2C 80240EDC AC820000 */  sw        $v0, ($a0)
.L80240EE0:
/* D7DA30 80240EE0 8FBF0010 */  lw        $ra, 0x10($sp)
/* D7DA34 80240EE4 03E00008 */  jr        $ra
/* D7DA38 80240EE8 27BD0018 */   addiu    $sp, $sp, 0x18
