.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240000_D58890
/* D58890 80240000 3C038007 */  lui       $v1, %hi(gGameStatusPtr)
/* D58894 80240004 8C63419C */  lw        $v1, %lo(gGameStatusPtr)($v1)
/* D58898 80240008 24020001 */  addiu     $v0, $zero, 1
/* D5889C 8024000C A0620084 */  sb        $v0, 0x84($v1)
/* D588A0 80240010 03E00008 */  jr        $ra
/* D588A4 80240014 0000102D */   daddu    $v0, $zero, $zero
/* D588A8 80240018 00000000 */  nop       
/* D588AC 8024001C 00000000 */  nop       
