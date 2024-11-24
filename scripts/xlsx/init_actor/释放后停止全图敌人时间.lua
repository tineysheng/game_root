local ____lualib = require("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 1,["7"] = 1,["8"] = 2,["9"] = 2,["10"] = 3,["11"] = 3,["12"] = 5,["13"] = 5,["14"] = 5,["16"] = 15,["17"] = 17,["18"] = 18,["21"] = 24,["22"] = 25,["23"] = 26,["24"] = 28,["25"] = 31,["26"] = 31,["27"] = 31,["28"] = 31,["29"] = 31,["30"] = 31,["31"] = 31,["32"] = 31,["33"] = 31,["34"] = 33,["35"] = 34,["36"] = 34,["37"] = 34,["38"] = 36,["39"] = 36,["40"] = 38,["41"] = 39,["42"] = 40,["43"] = 36,["44"] = 36,["45"] = 36,["46"] = 44,["47"] = 45,["48"] = 45,["49"] = 45,["50"] = 45,["51"] = 45,["52"] = 45,["53"] = 45,["54"] = 45,["55"] = 45,["56"] = 47,["57"] = 47,["58"] = 49,["59"] = 50,["60"] = 51,["61"] = 47,["62"] = 47,["63"] = 47,["64"] = 54,["66"] = 58,["67"] = 34,["68"] = 34,["69"] = 63,["70"] = 63,["71"] = 63,["72"] = 63,["73"] = 63,["74"] = 63,["75"] = 63,["76"] = 63,["77"] = 63,["78"] = 63,["79"] = 66,["80"] = 66,["81"] = 66,["82"] = 66,["83"] = 66,["84"] = 67,["85"] = 67,["86"] = 67,["87"] = 67,["88"] = 68,["89"] = 68,["90"] = 68,["91"] = 68,["92"] = 15,["93"] = 12,["94"] = 9});
local ____exports = {}
local ____TimerDialogUtil = require("solar.solar-common.util.game.TimerDialogUtil")
local TimerDialogUtil = ____TimerDialogUtil.default
local ____BaseUtil = require("solar.solar-common.util.BaseUtil")
local BaseUtil = ____BaseUtil.default
local ____SelectUtil = require("solar.solar-common.util.unit.SelectUtil")
local SelectUtil = ____SelectUtil.default
____exports.default = __TS__Class()
local _____91CA_653E_540E_505C_6B62_5168_56FE_654C_4EBA_65F6_95F4 = ____exports.default
_____91CA_653E_540E_505C_6B62_5168_56FE_654C_4EBA_65F6_95F4.name = "释放后停止全图敌人时间"
function _____91CA_653E_540E_505C_6B62_5168_56FE_654C_4EBA_65F6_95F4.prototype.____constructor(self)
    se:onUnitSpellEffect(function(e)
        local cfgElement = ____exports.default.cfg[e.spellAbilityIdStr]
        if cfgElement == nil then
            return
        end
        local unit = GetTriggerUnit()
        local wj = GetOwningPlayer(unit)
        local life_time = cfgElement
        TimerDialogUtil:show("时间停止", life_time)
        CinematicFadeBJ(
            bj_CINEFADETYPE_FADEOUT,
            0.5,
            "ReplaceableTextures\\CameraMasks\\White_mask.blp",
            0,
            0,
            100,
            75
        )
        time = 0
        BaseUtil.onTimer(
            1,
            function(____, c)
                SelectUtil.forAllEnemyUnits(
                    function(____, u)
                        UnitSuspendDecayBJ(true, u)
                        PauseUnitBJ(true, u)
                        SetUnitTimeScalePercent(u, 0)
                    end,
                    wj
                )
                if c >= life_time then
                    CinematicFadeBJ(
                        bj_CINEFADETYPE_FADEIN,
                        0.5,
                        "ReplaceableTextures\\CameraMasks\\White_mask.blp",
                        0,
                        0,
                        0,
                        0
                    )
                    SelectUtil.forAllEnemyUnits(
                        function(____, u)
                            UnitSuspendDecayBJ(false, u)
                            PauseUnitBJ(false, u)
                            SetUnitTimeScalePercent(u, 100)
                        end,
                        wj
                    )
                    return false
                end
                return true
            end
        )
        CreateTextTagUnitBJ(
            ("|cff98FB98时间宝石" .. " -> ") .. I2S(life_time),
            unit,
            GetRandomReal(0, 300),
            GetRandomReal(10, 16),
            GetRandomReal(50, 100),
            GetRandomReal(10, 100),
            GetRandomReal(10, 100),
            0
        )
        SetTextTagVelocity(
            bj_lastCreatedTextTag,
            GetRandomReal(-0.1, 0.1),
            GetRandomReal(0.01, 0.1)
        )
        SetTextTagPermanent(
            GetLastCreatedTextTag(),
            false
        )
        SetTextTagLifespan(
            GetLastCreatedTextTag(),
            GetRandomReal(0.5, 2)
        )
    end)
end
_____91CA_653E_540E_505C_6B62_5168_56FE_654C_4EBA_65F6_95F4.cfg = {}
return ____exports
