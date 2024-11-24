local ____lualib = require("lualib_bundle")
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 3,["7"] = 3,["8"] = 4,["9"] = 4,["10"] = 5,["11"] = 5,["12"] = 6,["13"] = 6,["14"] = 48,["15"] = 49,["16"] = 49,["17"] = 49,["18"] = 49,["19"] = 49,["20"] = 49,["21"] = 49,["22"] = 49,["23"] = 49,["24"] = 49,["25"] = 49,["26"] = 49,["27"] = 49,["28"] = 49,["29"] = 48,["30"] = 65,["31"] = 65,["32"] = 65,["33"] = 65,["34"] = 65,["35"] = 65,["36"] = 65,["37"] = 65,["38"] = 65,["39"] = 65,["40"] = 65,["41"] = 65,["42"] = 65,["43"] = 65,["44"] = 48,["45"] = 81,["46"] = 81,["47"] = 81,["48"] = 81,["49"] = 81,["50"] = 81,["51"] = 81,["52"] = 81,["53"] = 81,["54"] = 81,["55"] = 81,["56"] = 81,["57"] = 81,["58"] = 81,["59"] = 48,["60"] = 98,["61"] = 102,["62"] = 104,["63"] = 105,["64"] = 106,["65"] = 107,["66"] = 107,["67"] = 107,["68"] = 107,["71"] = 110});
local ____exports = {}
local ____ActorTypeUtil = require("solar.solar-common.actor.util.ActorTypeUtil")
local ActorTypeUtil = ____ActorTypeUtil.default
local ____ActorAbilityUtil = require("solar.solar-common.actor.util.ActorAbilityUtil")
local ActorAbilityUtil = ____ActorAbilityUtil.default
local ____SelectUtil = require("solar.solar-common.util.unit.SelectUtil")
local SelectUtil = ____SelectUtil.default
local ____init_ability = require("xlsx.init_actor.init_ability")
local InitAbility = ____init_ability.InitAbility
____exports.data = {{
    id = "寒冰天赋",
    class = "技能",
    targetType = "无目标",
    passive = true,
    name = "极寒之触",
    describe = "|cff00ccff被动：攻击禁锢目标持续3秒，对目标单位造成攻击力*（20+英雄等级）伤害|n|n触发类型：攻击触发|n技能CD：15s|r",
    icon = "ReplaceableTextures\\CommandButtons\\BTNDarkRitual.blp",
    range = 0,
    area = 0,
    manaCost = 0,
    hotKey = "D",
    maxCd = 10,
    x = 2,
    y = 1
}, {
    id = "寒冰Q",
    class = "技能",
    targetType = "点",
    passive = false,
    name = "万箭齐发",
    describe = "|cff00ccff主动：向目标位置释放扇形箭矢20支，每支箭对路径敌人造成攻击力*10的伤害|n|n触发类型：主动选择目标点|n技能CD：10秒|r",
    icon = "ReplaceableTextures\\CommandButtons\\BTNBlizzard.blp",
    range = 1000,
    area = 200,
    manaCost = 0,
    hotKey = "Q",
    maxCd = 10,
    x = 0,
    y = 2
}, {
    id = "寒冰W",
    class = "技能",
    targetType = "无目标",
    passive = false,
    name = "净化回血",
    describe = "|cff00ccff主动：净化周围队友和自己，并且恢复攻击力*10的生命值|n注意：被眩晕也能释放，可以解除眩晕|n|n触发类型：主动无目标释放|n技能CD：10秒|r",
    icon = "ReplaceableTextures\\CommandButtons\\BTNManaRecharge.blp",
    range = 0,
    area = 0,
    manaCost = 0,
    hotKey = "W",
    maxCd = 10,
    x = 1,
    y = 2
}}
____exports.d_actor_ability = ____exports.data
function ____exports.default(self)
    for ____, datum in ipairs(____exports.data) do
        if datum.id then
            ActorTypeUtil:registerActorType(datum)
            ActorAbilityUtil:createActorAbility(
                datum.id,
                SelectUtil.getAnHero(0)
            )
        end
    end
    __TS__New(InitAbility)
end
return ____exports
