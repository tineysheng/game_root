local ____lualib = require("lualib_bundle")
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 3,["7"] = 3,["8"] = 4,["9"] = 4,["10"] = 5,["11"] = 5,["12"] = 6,["13"] = 6,["14"] = 51,["15"] = 52,["16"] = 52,["17"] = 52,["18"] = 52,["19"] = 52,["20"] = 52,["21"] = 52,["22"] = 52,["23"] = 52,["24"] = 52,["25"] = 52,["26"] = 52,["27"] = 52,["28"] = 52,["29"] = 52,["30"] = 52,["31"] = 51,["32"] = 69,["33"] = 69,["34"] = 69,["35"] = 69,["36"] = 69,["37"] = 69,["38"] = 69,["39"] = 69,["40"] = 69,["41"] = 69,["42"] = 69,["43"] = 69,["44"] = 69,["45"] = 69,["46"] = 69,["47"] = 69,["48"] = 51,["49"] = 86,["50"] = 86,["51"] = 86,["52"] = 86,["53"] = 86,["54"] = 86,["55"] = 86,["56"] = 86,["57"] = 86,["58"] = 86,["59"] = 86,["60"] = 86,["61"] = 86,["62"] = 86,["63"] = 86,["64"] = 86,["65"] = 51,["66"] = 103,["67"] = 103,["68"] = 103,["69"] = 103,["70"] = 103,["71"] = 103,["72"] = 103,["73"] = 103,["74"] = 103,["75"] = 103,["76"] = 103,["77"] = 103,["78"] = 103,["79"] = 103,["80"] = 103,["81"] = 103,["82"] = 51,["83"] = 120,["84"] = 120,["85"] = 120,["86"] = 120,["87"] = 120,["88"] = 120,["89"] = 120,["90"] = 120,["91"] = 120,["92"] = 120,["93"] = 120,["94"] = 120,["95"] = 120,["96"] = 120,["97"] = 120,["98"] = 120,["99"] = 51,["100"] = 51,["101"] = 138,["102"] = 142,["103"] = 144,["104"] = 145,["105"] = 146,["106"] = 147,["107"] = 147,["108"] = 147,["109"] = 147,["112"] = 150});
local ____exports = {}
local ____ActorTypeUtil = require("solar.solar-common.actor.util.ActorTypeUtil")
local ActorTypeUtil = ____ActorTypeUtil.default
local ____ActorAbilityUtil = require("solar.solar-common.actor.util.ActorAbilityUtil")
local ActorAbilityUtil = ____ActorAbilityUtil.default
local ____SelectUtil = require("solar.solar-common.util.unit.SelectUtil")
local SelectUtil = ____SelectUtil.default
local ____init_ability = require("xlsx.init_actor.init_ability")
local InitAbility = ____init_ability.InitAbility
____exports.data = {
    {
        id = "寒冰天赋",
        class = "技能",
        targetType = "无目标",
        passive = true,
        templateType = "主动7",
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
    },
    {
        id = "寒冰Q",
        class = "技能",
        targetType = "点",
        passive = false,
        templateType = "主动9",
        name = "万箭齐发",
        describe = "|cff00ccff主动：向目标位置释放扇形箭矢20支，每支箭对路径敌人造成攻击力*10的伤害|n|n触发类型：主动选择目标点|n技能CD：10秒|r",
        icon = "ReplaceableTextures\\CommandButtons\\BTNBlizzard.blp",
        range = 10000,
        area = 200,
        manaCost = 0,
        hotKey = "Q",
        maxCd = 10,
        x = 0,
        y = 2
    },
    {
        id = "寒冰W",
        class = "技能",
        targetType = "无目标",
        passive = false,
        templateType = "Absk",
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
    },
    {
        id = "寒冰E",
        class = "技能",
        targetType = "点",
        passive = false,
        templateType = "主动11",
        name = "暴风箭雨",
        describe = "|cff00ccff主动：发射大量箭雨打向远方，每支箭对路径敌人造成攻击力*10的伤害|n|n触发类型：主动选择目标点|n技能CD：15秒|r",
        icon = "ReplaceableTextures\\CommandButtons\\BTNFreezingBreath.blp",
        range = 10000,
        area = 200,
        manaCost = 0,
        hotKey = "E",
        maxCd = 20,
        x = 2,
        y = 2
    },
    {
        id = "寒冰R",
        class = "技能",
        targetType = "无目标",
        passive = false,
        templateType = "ANms",
        name = "多次攻击",
        describe = "|cff00ccff主动开启：开启技能后攻击敌人会额外发生三支箭矢打击目标，每支箭矢会对目标造成攻击力*5的伤害|n|n触发类型：主动开启并且普攻|r",
        icon = "ReplaceableTextures\\CommandButtons\\BTNColdArrows.blp",
        range = 0,
        area = 0,
        manaCost = 0,
        hotKey = "R",
        maxCd = 3,
        x = 3,
        y = 2
    }
}
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
