local ____lualib = require("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__InstanceOf = ____lualib.__TS__InstanceOf
local __TS__ArraySplice = ____lualib.__TS__ArraySplice
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 8,["19"] = 8,["20"] = 9,["21"] = 9,["22"] = 11,["23"] = 11,["24"] = 12,["25"] = 12,["26"] = 21,["27"] = 21,["28"] = 21,["30"] = 23,["31"] = 24,["32"] = 25,["33"] = 22,["34"] = 29,["35"] = 30,["36"] = 31,["37"] = 32,["38"] = 33,["39"] = 34,["40"] = 34,["41"] = 34,["42"] = 34,["43"] = 34,["44"] = 34,["45"] = 34,["46"] = 35,["47"] = 35,["48"] = 35,["49"] = 35,["50"] = 35,["52"] = 31,["53"] = 29,["54"] = 40,["55"] = 41,["56"] = 42,["57"] = 43,["60"] = 44,["61"] = 45,["62"] = 46,["63"] = 47,["64"] = 48,["65"] = 49,["66"] = 50,["67"] = 51,["68"] = 52,["70"] = 53,["71"] = 53,["72"] = 54,["73"] = 55,["74"] = 55,["75"] = 55,["76"] = 55,["77"] = 55,["78"] = 60,["79"] = 61,["80"] = 62,["81"] = 63,["82"] = 53,["85"] = 66,["86"] = 66,["87"] = 66,["88"] = 67,["90"] = 68,["91"] = 68,["92"] = 69,["93"] = 70,["94"] = 71,["95"] = 72,["96"] = 73,["97"] = 74,["98"] = 75,["99"] = 75,["100"] = 75,["101"] = 75,["102"] = 75,["103"] = 75,["104"] = 75,["105"] = 76,["106"] = 77,["107"] = 78,["108"] = 78,["109"] = 78,["110"] = 78,["111"] = 78,["112"] = 78,["113"] = 78,["114"] = 78,["116"] = 80,["117"] = 81,["118"] = 82,["120"] = 68,["123"] = 85,["125"] = 87,["127"] = 66,["128"] = 66,["129"] = 42,["130"] = 40,["131"] = 93,["132"] = 94,["133"] = 95,["134"] = 96,["135"] = 96,["136"] = 96,["137"] = 96,["138"] = 96,["139"] = 96,["140"] = 96,["141"] = 97,["144"] = 98,["145"] = 99,["146"] = 100,["147"] = 100,["148"] = 100,["149"] = 100,["150"] = 100,["151"] = 100,["152"] = 100,["153"] = 100,["154"] = 95,["155"] = 93});
local ____exports = {}
local ____ActorTypeUtil = require("solar.solar-common.actor.util.ActorTypeUtil")
local ActorTypeUtil = ____ActorTypeUtil.default
local ____ActorAbility = require("solar.solar-common.actor.ActorAbility")
local ActorAbility = ____ActorAbility.default
local ____AbilityUtil = require("solar.solar-common.util.ability.AbilityUtil")
local AbilityUtil = ____AbilityUtil.default
local ____DamageUtil = require("solar.solar-common.util.system.DamageUtil")
local DamageUtil = ____DamageUtil.default
local ____EffectUtil = require("solar.solar-common.util.game.EffectUtil")
local EffectUtil = ____EffectUtil.default
local ____BaseUtil = require("solar.solar-common.util.BaseUtil")
local BaseUtil = ____BaseUtil.default
local ____SelectUtil = require("solar.solar-common.util.unit.SelectUtil")
local SelectUtil = ____SelectUtil.default
local ____MathUtil = require("solar.solar-common.util.math.MathUtil")
local MathUtil = ____MathUtil.default
local ____DamageType = require("solar.solar-common.constant.DamageType")
local DamageType = ____DamageType.default
____exports.InitAbility = __TS__Class()
local InitAbility = ____exports.InitAbility
InitAbility.name = "InitAbility"
function InitAbility.prototype.____constructor(self)
    self["init_寒冰天赋"](self)
    self["init_寒冰Q"](self)
    self["init_寒冰W"](self)
end
InitAbility.prototype["init_寒冰天赋"] = function(self)
    local actorType = ActorTypeUtil:getActorType("寒冰天赋")
    actorType.onUnitAttackDamageEnemy = function(____, actor)
        if __TS__InstanceOf(actor, ActorAbility) and AbilityUtil:getUnitAbilityStateCooldown(actor.unit, actor.abilityId) == 0 then
            DamageUtil:damageEnemyUnitsInRange(actor.unit, 200, {fullPros = 1})
            EffectUtil:addSpecialEffectAndDestroy(
                "Doodads\\Icecrown\\Rocks\\Icecrown_Crystal\\Icecrown_Crystal1.mdl",
                actor.unitX,
                actor.unitY,
                1.5,
                0
            )
            AbilityUtil:setUnitAbilityStateCooldown(
                actor.unit,
                actor.abilityId,
                actor:getMaxCd()
            )
        end
    end
end
InitAbility.prototype["init_寒冰Q"] = function(self)
    local actorType = ActorTypeUtil:getActorType("寒冰Q")
    actorType.onAction = function(____, actor, targetX, targetY)
        if not IsHandle(actor.unit) then
            return
        end
        local triggerX = actor.unitX
        local triggerY = actor.unitY
        local model = "Abilities\\Spells\\Other\\FrostArrows\\NagaColdArrowMissile.mdl"
        local angle = MathUtil.angleBetweenCoords(triggerX, triggerY, targetX, targetY)
        angle = angle - 45 + 360
        local height = GetUnitFlyHeight(actor.unit)
        local distance = 1500
        local velocity = 20
        local effectDistanceList = {}
        do
            local i = 0
            while i < 20 do
                local angle1 = 6 * i + angle
                local effectDistance = {
                    effectInstance = AddSpecialEffect(model, triggerX, triggerY),
                    shootDistance = 0,
                    angle = angle1
                }
                EXEffectMatRotateZ(effectDistance.effectInstance, angle1)
                EXSetEffectZ(effectDistance.effectInstance, height)
                handle_ref(effectDistance.effectInstance)
                effectDistanceList[#effectDistanceList + 1] = effectDistance
                i = i + 1
            end
        end
        BaseUtil.onTimer(
            0.02,
            function()
                if #effectDistanceList > 0 then
                    do
                        local i = #effectDistanceList - 1
                        while i >= 0 do
                            local effectDistance = effectDistanceList[i + 1]
                            local effectHandle = effectDistance.effectInstance
                            local x = EXGetEffectX(effectHandle) + velocity * CosBJ(effectDistance.angle)
                            local y = EXGetEffectY(effectHandle) + velocity * SinBJ(effectDistance.angle)
                            EXSetEffectXY(effectHandle, x, y)
                            effectDistance.shootDistance = effectDistance.shootDistance + velocity
                            local units = SelectUtil.getEnemyUnitsInRange(
                                actor.unit,
                                100,
                                x,
                                y,
                                true
                            )
                            if #units > 0 or effectDistance.shootDistance >= distance then
                                if #units > 0 then
                                    DamageUtil:damageEnemyUnitsInRange(
                                        actor.unit,
                                        150,
                                        {fullPros = 5},
                                        DamageType["s_物理技能"],
                                        x,
                                        y
                                    )
                                end
                                __TS__ArraySplice(effectDistanceList, i, 1)
                                handle_unref(effectHandle)
                                DestroyEffect(effectHandle)
                            end
                            i = i - 1
                        end
                    end
                    return true
                else
                    return false
                end
            end
        )
    end
end
InitAbility.prototype["init_寒冰W"] = function(self)
    local actorType = ActorTypeUtil:getActorType("寒冰W")
    actorType.onAction = function(____, actor)
        DisplayTimedTextToPlayer(
            Player(0),
            0,
            0,
            10,
            "能否释放技能"
        )
        if not IsHandle(actor.unit) then
            return
        end
        local triggerX = actor.unitX
        local triggerY = actor.unitY
        SelectUtil.forAllyUnitsInRange(
            actor.unit,
            1000,
            function(____, unit)
            end,
            triggerX,
            triggerY
        )
    end
end
return ____exports
