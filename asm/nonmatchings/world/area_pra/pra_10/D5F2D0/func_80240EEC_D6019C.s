.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240EEC_D6019C
/* D6019C 80240EEC 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* D601A0 80240EF0 AFBF0010 */  sw        $ra, 0x10($sp)
/* D601A4 80240EF4 0C00EAD2 */  jal       get_npc_safe
/* D601A8 80240EF8 2404FFFC */   addiu    $a0, $zero, -4
/* D601AC 80240EFC 0040202D */  daddu     $a0, $v0, $zero
/* D601B0 80240F00 10800004 */  beqz      $a0, .L80240F14
/* D601B4 80240F04 3C030002 */   lui      $v1, 2
/* D601B8 80240F08 8C820000 */  lw        $v0, ($a0)
/* D601BC 80240F0C 00431025 */  or        $v0, $v0, $v1
/* D601C0 80240F10 AC820000 */  sw        $v0, ($a0)
.L80240F14:
/* D601C4 80240F14 8FBF0010 */  lw        $ra, 0x10($sp)
/* D601C8 80240F18 03E00008 */  jr        $ra
/* D601CC 80240F1C 27BD0018 */   addiu    $sp, $sp, 0x18
