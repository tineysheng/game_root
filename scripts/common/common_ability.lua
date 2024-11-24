local ____lualib = require("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 2,["7"] = 2,["8"] = 3,["9"] = 3,["10"] = 6,["11"] = 6,["12"] = 6,["14"] = 7,["15"] = 10,["16"] = 11,["19"] = 12,["20"] = 13,["21"] = 14,["22"] = 15,["23"] = 16,["24"] = 17,["25"] = 18,["26"] = 19,["27"] = 20,["28"] = 21,["29"] = 22,["30"] = 23,["31"] = 24,["32"] = 25,["33"] = 25,["34"] = 25,["35"] = 26,["36"] = 27,["37"] = 28,["38"] = 29,["39"] = 30,["40"] = 31,["41"] = 32,["42"] = 33,["43"] = 33,["44"] = 33,["45"] = 33,["46"] = 34,["47"] = 34,["48"] = 34,["49"] = 34,["50"] = 34,["51"] = 34,["52"] = 34,["53"] = 34,["54"] = 34,["55"] = 34,["57"] = 36,["58"] = 37,["60"] = 39,["61"] = 40,["63"] = 42,["64"] = 25,["65"] = 25,["66"] = 10});
local ____exports = {}
local ____MathUtil = require("solar.solar-common.util.math.MathUtil")
local MathUtil = ____MathUtil.default
local ____BaseUtil = require("solar.solar-common.util.BaseUtil")
local BaseUtil = ____BaseUtil.default
____exports.CommonAbility = __TS__Class()
local CommonAbility = ____exports.CommonAbility
CommonAbility.name = "CommonAbility"
function CommonAbility.prototype.____constructor(self)
end
function CommonAbility.shoot(self, whichUnit, targetUnit, damageValue, damageType, maxDistance, missileart, callback)
    if not IsHandle(whichUnit) or not IsHandle(targetUnit) then
        return
    end
    local triggerX = GetUnitX(whichUnit)
    local triggerY = GetUnitY(whichUnit)
    local targetX = GetUnitX(targetUnit)
    local targetY = GetUnitY(targetUnit)
    local model = missileart or "Abilities\\Weapons\\Arrow\\ArrowMissile.mdl"
    local angle = MathUtil.angleBetweenCoords(triggerX, triggerY, targetX, targetY)
    local distance = maxDistance or MathUtil.distanceBetweenPoints(triggerX, triggerY, targetX, targetY)
    local effectHandle = AddSpecialEffect(model, triggerX, triggerY)
    EXEffectMatRotateZ(effectHandle, angle)
    handle_ref(effectHandle)
    local delta = 20
    local shootDistance = 0
    handle_ref(whichUnit)
    BaseUtil.onTimer(
        0.02,
        function()
            local x = EXGetEffectX(effectHandle) + delta * CosBJ(angle)
            local y = EXGetEffectY(effectHandle) + delta * SinBJ(angle)
            EXSetEffectXY(effectHandle, x, y)
            shootDistance = shootDistance + delta
            if shootDistance >= distance then
                handle_unref(effectHandle)
                DestroyEffect(effectHandle)
                if IsUnitAliveBJ(targetUnit) and IsUnitEnemy(
                    targetUnit,
                    GetOwningPlayer(whichUnit)
                ) then
                    UnitDamageTarget(
                        whichUnit,
                        targetUnit,
                        damageValue,
                        false,
                        false,
                        ATTACK_TYPE_PIERCE,
                        damageType or DAMAGE_TYPE_UNIVERSAL,
                        nil
                    )
                end
                if callback then
                    callback(nil, whichUnit, targetUnit)
                end
                handle_unref(whichUnit)
                return false
            end
            return true
        end
    )
end
return ____exports
