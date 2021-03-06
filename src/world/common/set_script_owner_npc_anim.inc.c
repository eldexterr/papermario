#include "common.h"

static void set_script_owner_npc_anim(ScriptInstance* script) {
    Enemy* enemy = script->owner1.enemy;
    Npc* npc = get_npc_unsafe(enemy->npcID);

    npc->currentAnim = enemy->animList[8];
    npc->duration = enemy->varTable[2];
    npc->yaw = atan2(npc->pos.x, npc->pos.z, gPlayerStatusPtr->position.x, gPlayerStatusPtr->position.z);
    script->functionTemp[0].s = 13;
}
