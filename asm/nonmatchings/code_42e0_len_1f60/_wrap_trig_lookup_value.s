.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel _wrap_trig_lookup_value
/* 5434 8002A034 3C014980 */  lui       $at, 0x4980
/* 5438 8002A038 44812000 */  mtc1      $at, $f4
/* 543C 8002A03C 00000000 */  nop       
/* 5440 8002A040 460C203E */  c.le.s    $f4, $f12
/* 5444 8002A044 00000000 */  nop       
/* 5448 8002A048 45010008 */  bc1t      .L8002A06C
/* 544C 8002A04C 46006086 */   mov.s    $f2, $f12
/* 5450 8002A050 3C01C980 */  lui       $at, 0xc980
/* 5454 8002A054 44810000 */  mtc1      $at, $f0
/* 5458 8002A058 00000000 */  nop       
/* 545C 8002A05C 4600603E */  c.le.s    $f12, $f0
/* 5460 8002A060 00000000 */  nop       
/* 5464 8002A064 4500000F */  bc1f      .L8002A0A4
/* 5468 8002A068 00000000 */   nop      
.L8002A06C:
/* 546C 8002A06C 3C013580 */  lui       $at, 0x3580
/* 5470 8002A070 44810000 */  mtc1      $at, $f0
/* 5474 8002A074 00000000 */  nop       
/* 5478 8002A078 46006302 */  mul.s     $f12, $f12, $f0
/* 547C 8002A07C 00000000 */  nop       
/* 5480 8002A080 4600618D */  trunc.w.s $f6, $f12
/* 5484 8002A084 44023000 */  mfc1      $v0, $f6
/* 5488 8002A088 00000000 */  nop       
/* 548C 8002A08C 44820000 */  mtc1      $v0, $f0
/* 5490 8002A090 00000000 */  nop       
/* 5494 8002A094 46800020 */  cvt.s.w   $f0, $f0
/* 5498 8002A098 46040002 */  mul.s     $f0, $f0, $f4
/* 549C 8002A09C 00000000 */  nop       
/* 54A0 8002A0A0 46001301 */  sub.s     $f12, $f2, $f0
.L8002A0A4:
/* 54A4 8002A0A4 4600618D */  trunc.w.s $f6, $f12
/* 54A8 8002A0A8 44023000 */  mfc1      $v0, $f6
/* 54AC 8002A0AC 03E00008 */  jr        $ra
/* 54B0 8002A0B0 3042FFFF */   andi     $v0, $v0, 0xffff