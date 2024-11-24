import ActorTypeUtil from "@/ActorTypeUtil";
import ActorAbility from "@/ActorAbility";
import AbilityUtil from "@/AbilityUtil";
import DamageUtil from "@/DamageUtil";
import EffectUtil from "@/EffectUtil";
import UnitUtil from "@/UnitUtil";
import PlayerUtil from "@/PlayerUtil";
import BaseUtil from "@/BaseUtil";
import SelectUtil from "@/SelectUtil";
import CoolDown from "@/CoolDown";
import MathUtil from "@/MathUtil";
import DamageType from "@/DamageType";
import DataBase from "@/DataBase";

interface EffectDistance {
    effectInstance: effect;
    shootDistance: number;
    angle: number;
}

export class InitAbility {
    constructor() {
        this.init_寒冰天赋()
        this.init_寒冰Q()
        this.init_寒冰W()

    }

    init_寒冰天赋() {
        let actorType = ActorTypeUtil.getActorType("寒冰天赋");
        actorType.onUnitAttackDamageEnemy = (actor) => {
            if (actor instanceof ActorAbility && AbilityUtil.getUnitAbilityStateCooldown(actor.unit, actor.abilityId) == 0) {
                DamageUtil.damageEnemyUnitsInRange(actor.unit, 200, {fullPros: 1})
                EffectUtil.addSpecialEffectAndDestroy("Doodads\\Icecrown\\Rocks\\Icecrown_Crystal\\Icecrown_Crystal1.mdl", actor.unitX, actor.unitY, 1.5, 0)
                AbilityUtil.setUnitAbilityStateCooldown(actor.unit, actor.abilityId, actor.getMaxCd())
            }
        }
    }

    init_寒冰Q() {
        let actorType = ActorTypeUtil.getActorType("寒冰Q");
        actorType.onAction = (actor, targetX, targetY) => {
            if (!IsHandle(actor.unit)) return;
            let triggerX: number = actor.unitX;
            let triggerY: number = actor.unitY;
            let model: string = 'Abilities\\Spells\\Other\\FrostArrows\\NagaColdArrowMissile.mdl';
            let angle: number = MathUtil.angleBetweenCoords(triggerX, triggerY, targetX, targetY);
            angle = angle - 45 + 360
            let height: number = GetUnitFlyHeight(actor.unit)
            let distance: number = 1500;
            let velocity: number = 20;
            let effectDistanceList: EffectDistance[] = []
            for (let i = 0; i < 20; i++) {
                let angle1 = 6 * i + angle
                let effectDistance: EffectDistance = {
                    effectInstance: AddSpecialEffect(model, triggerX, triggerY),
                    shootDistance: 0,
                    angle: angle1
                }
                EXEffectMatRotateZ(effectDistance.effectInstance, angle1);
                EXSetEffectZ(effectDistance.effectInstance, height);
                handle_ref(effectDistance.effectInstance);
                effectDistanceList.push(effectDistance)
            }

            BaseUtil.onTimer(0.02, () => {
                if (effectDistanceList.length > 0) {
                    for (let i = effectDistanceList.length - 1; i >= 0; i--) {
                        let effectDistance = effectDistanceList[i];
                        let effectHandle: effect = effectDistance.effectInstance;
                        let x = EXGetEffectX(effectHandle) + velocity * CosBJ(effectDistance.angle);
                        let y = EXGetEffectY(effectHandle) + velocity * SinBJ(effectDistance.angle);
                        EXSetEffectXY(effectHandle, x, y);
                        effectDistance.shootDistance += velocity;
                        let units = SelectUtil.getEnemyUnitsInRange(actor.unit, 100, x, y, true)
                        if (units.length > 0 || effectDistance.shootDistance >= distance) {
                            if (units.length > 0) {
                                DamageUtil.damageEnemyUnitsInRange(actor.unit, 150, {fullPros: 5}, DamageType.s_物理技能, x, y)
                            }
                            effectDistanceList.splice(i, 1)
                            handle_unref(effectHandle);
                            DestroyEffect(effectHandle);
                        }
                    }
                    return true
                } else {
                    return false
                }
            })
        }
    }

    init_寒冰W(){
        let actorType = ActorTypeUtil.getActorType("寒冰W");
        actorType.onAction = (actor) => {
            DisplayTimedTextToPlayer(Player(0), 0,0,10,"能否释放技能")
            if (!IsHandle(actor.unit)) return;
            let triggerX: number = actor.unitX;
            let triggerY: number = actor.unitY;
            SelectUtil.forAllyUnitsInRange(actor.unit, 1000, (unit)=>{

            }, triggerX, triggerY)

        }
    }
}

