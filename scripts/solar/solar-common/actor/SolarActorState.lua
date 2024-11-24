local ____lualib = require("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 4,["14"] = 4,["15"] = 5,["16"] = 5,["17"] = 6,["18"] = 6,["19"] = 7,["20"] = 7,["21"] = 8,["22"] = 8,["23"] = 9,["24"] = 9,["25"] = 10,["26"] = 10,["27"] = 11,["28"] = 11,["29"] = 12,["30"] = 12,["31"] = 13,["32"] = 13,["33"] = 14,["34"] = 14,["35"] = 15,["36"] = 15,["37"] = 17,["38"] = 17,["39"] = 17,["41"] = 21,["42"] = 22,["45"] = 26,["46"] = 27,["47"] = 29,["48"] = 30,["49"] = 31,["50"] = 32,["51"] = 33,["52"] = 34,["53"] = 36,["54"] = 37,["55"] = 37,["56"] = 37,["57"] = 39,["58"] = 37,["59"] = 37,["61"] = 43,["62"] = 44,["63"] = 45,["64"] = 46,["67"] = 50,["69"] = 44,["72"] = 20,["73"] = 58,["74"] = 59,["75"] = 61,["76"] = 62,["77"] = 63,["78"] = 64,["79"] = 65,["80"] = 66,["82"] = 66,["87"] = 59,["88"] = 72,["89"] = 74,["90"] = 75,["91"] = 76,["92"] = 77,["93"] = 78,["94"] = 79,["96"] = 79,["101"] = 84,["102"] = 86,["103"] = 87,["104"] = 88,["105"] = 89,["106"] = 90,["107"] = 91,["109"] = 91,["115"] = 72,["116"] = 98,["117"] = 100,["118"] = 101,["119"] = 102,["120"] = 103,["121"] = 104,["123"] = 104,["128"] = 98,["129"] = 110,["130"] = 112,["131"] = 113,["132"] = 114,["133"] = 115,["134"] = 116,["135"] = 117,["137"] = 117,["142"] = 110,["143"] = 123,["144"] = 125,["145"] = 126,["146"] = 127,["147"] = 128,["148"] = 129,["149"] = 130,["151"] = 130,["156"] = 123,["157"] = 136,["158"] = 136,["159"] = 136,["160"] = 138,["161"] = 139,["162"] = 140,["163"] = 141,["164"] = 142,["166"] = 142,["168"] = 143,["170"] = 143,["175"] = 136,["176"] = 136,["177"] = 149,["178"] = 149,["179"] = 149,["180"] = 151,["181"] = 152,["182"] = 153,["183"] = 154,["184"] = 155,["186"] = 155,["188"] = 156,["190"] = 156,["195"] = 149,["196"] = 149,["197"] = 162,["198"] = 162,["199"] = 162,["200"] = 163,["201"] = 164,["202"] = 165,["205"] = 168,["208"] = 171,["210"] = 171,["211"] = 171,["212"] = 171,["213"] = 171,["214"] = 171,["215"] = 171,["216"] = 171,["218"] = 162,["219"] = 162,["220"] = 173,["221"] = 173,["222"] = 173,["223"] = 174,["224"] = 175,["225"] = 176,["228"] = 179,["232"] = 182,["233"] = 182,["235"] = 182,["236"] = 182,["237"] = 182,["238"] = 182,["239"] = 182,["240"] = 182,["241"] = 182,["243"] = 173,["244"] = 173,["245"] = 58,["246"] = 191,["247"] = 192,["248"] = 194,["249"] = 195,["250"] = 196,["251"] = 197,["252"] = 199,["253"] = 200,["254"] = 201,["256"] = 201,["260"] = 205,["261"] = 206,["262"] = 207,["263"] = 208,["265"] = 208,["271"] = 214,["272"] = 215,["273"] = 216,["274"] = 217,["275"] = 218,["276"] = 219,["278"] = 219,["282"] = 222,["283"] = 223,["284"] = 224,["285"] = 225,["287"] = 225,["294"] = 192,["295"] = 191});
local ____exports = {}
local ____ActorUtil = require("solar.solar-common.actor.util.ActorUtil")
local ActorUtil = ____ActorUtil.default
local ____Actor = require("solar.solar-common.actor.Actor")
local Actor = ____Actor.default
local ____SolarDamageState = require("solar.solar-common.attribute.SolarDamageState")
local SolarDamageState = ____SolarDamageState.default
local ____SolarActorUnitState = require("solar.solar-common.actor.state.SolarActorUnitState")
local SolarActorUnitState = ____SolarActorUnitState.default
local ____SolarActorItemState = require("solar.solar-common.actor.state.SolarActorItemState")
local SolarActorItemState = ____SolarActorItemState.default
local ____SolarActorAbilityState = require("solar.solar-common.actor.state.SolarActorAbilityState")
local SolarActorAbilityState = ____SolarActorAbilityState.default
local ____SolarActorBuffState = require("solar.solar-common.actor.state.SolarActorBuffState")
local SolarActorBuffState = ____SolarActorBuffState.default
local ____SolarActorAttributeState = require("solar.solar-common.actor.state.SolarActorAttributeState")
local SolarActorAttributeState = ____SolarActorAttributeState.default
local ____SolarActorFrameState = require("solar.solar-common.actor.state.SolarActorFrameState")
local SolarActorFrameState = ____SolarActorFrameState.default
local ____SingletonUtil = require("solar.solar-common.util.lang.SingletonUtil")
local SingletonUtil = ____SingletonUtil.default
local ____BaseUtil = require("solar.solar-common.util.BaseUtil")
local BaseUtil = ____BaseUtil.default
local ____MessageUtil = require("solar.solar-common.util.system.MessageUtil")
local MessageUtil = ____MessageUtil.default
local ____SyncUtil = require("solar.solar-common.util.net.SyncUtil")
local SyncUtil = ____SyncUtil.default
local ____ActorTypeUtil = require("solar.solar-common.actor.util.ActorTypeUtil")
local ActorTypeUtil = ____ActorTypeUtil.default
local ____InputUtil = require("solar.solar-common.util.system.InputUtil")
local InputUtil = ____InputUtil.default
____exports.default = __TS__Class()
local SolarActorState = ____exports.default
SolarActorState.name = "SolarActorState"
function SolarActorState.prototype.____constructor(self)
    if SingletonUtil:notFirstTime(____exports.default) then
        print("不能重复new SolarActorState()")
        return
    end
    self:initActor()
    self:initActorSolarDamage()
    __TS__New(SolarActorUnitState)
    __TS__New(SolarActorItemState)
    __TS__New(SolarActorAbilityState)
    __TS__New(SolarActorBuffState)
    __TS__New(SolarActorAttributeState)
    __TS__New(SolarActorFrameState)
    if isEmbedJapi then
        BaseUtil.runLater(
            2.3,
            function()
                MessageUtil:_sl_init_message_hook()
            end
        )
    else
        if isEmbedJapi == false then
            InputUtil:onMouseLeftButtonReleased(function()
                if SolarActorFrameState.mouseFocusActor then
                    if SolarActorFrameState.mouseFocusActor:isDisable() or SolarActorFrameState.mouseFocusActor:isHide() then
                        return
                    end
                    SolarActorFrameState.mouseFocusActor:localClick(1, 0, 0)
                end
            end)
        end
    end
end
function SolarActorState.prototype.initActor(self)
    se:onUnitAttacked(function(e)
        local actorList = ActorUtil:getUnitAllActorList(e.trigUnit)
        if actorList ~= nil and #actorList > 0 then
            local uArg = GetAttacker()
            for ____, actor in ipairs(actorList) do
                if not actor:isDisable() then
                    local ____opt_0 = actor:get("onUnitAttacked")
                    if ____opt_0 ~= nil then
                        ____opt_0(nil, actor, uArg)
                    end
                end
            end
        end
    end)
    se:onUnitDeath(function(e)
        local actorList = ActorUtil:getUnitAllActorList(e.trigUnit)
        local killingUnit = e.killingUnit
        if actorList ~= nil and #actorList > 0 then
            for ____, actor in ipairs(actorList) do
                if not actor:isDisable() then
                    local ____opt_2 = actor:get("onUnitDeath")
                    if ____opt_2 ~= nil then
                        ____opt_2(nil, actor, killingUnit)
                    end
                end
            end
        end
        if IsHandle(killingUnit) then
            local actorList = ActorUtil:getUnitAllActorList(killingUnit)
            if actorList ~= nil and #actorList > 0 then
                local uArg = e.trigUnit
                for ____, actor in ipairs(actorList) do
                    if not actor:isDisable() then
                        local ____opt_4 = actor:get("onUnitKillEnemy")
                        if ____opt_4 ~= nil then
                            ____opt_4(nil, actor, uArg)
                        end
                    end
                end
            end
        end
    end)
    se:onHeroLevelUp(function(e)
        local actorList = ActorUtil:getUnitAllActorList(e.trigUnit)
        if actorList ~= nil and #actorList > 0 then
            for ____, actor in ipairs(actorList) do
                if not actor:isDisable() then
                    local ____opt_6 = actor:get("onUnitLevelChange")
                    if ____opt_6 ~= nil then
                        ____opt_6(nil, actor, 1)
                    end
                end
            end
        end
    end)
    se:onUnitSpellEffect(function(e)
        local actorList = ActorUtil:getUnitAllActorList(e.trigUnit)
        if actorList ~= nil and #actorList > 0 then
            local idStr = e.spellAbilityIdStr
            for ____, actor in ipairs(actorList) do
                if not actor:isDisable() then
                    local ____opt_8 = actor:get("onUnitSpell")
                    if ____opt_8 ~= nil then
                        ____opt_8(nil, actor, idStr)
                    end
                end
            end
        end
    end)
    se:onUnitPickupItem(function(e)
        local actorList = ActorUtil:getUnitAllActorList(e.trigUnit)
        if actorList ~= nil and #actorList > 0 then
            local item = e.manipulatedItem
            for ____, actor in ipairs(actorList) do
                if not actor:isDisable() then
                    local ____opt_10 = actor:get("onUnitPickupItem")
                    if ____opt_10 ~= nil then
                        ____opt_10(nil, actor, item)
                    end
                end
            end
        end
    end)
    se:on(
        "_sl_:单位获得演员",
        function(data)
            local actorList = ActorUtil:getUnitAllActorList(data.u)
            if actorList ~= nil and #actorList > 0 then
                for ____, actor in ipairs(actorList) do
                    if actor ~= data.a and not actor:isDisable() then
                        local ____opt_12 = actor:get("onUnitAddActor")
                        if ____opt_12 ~= nil then
                            ____opt_12(nil, actor, data.a)
                        end
                        local ____opt_14 = actor:get("onUnitActorsChange")
                        if ____opt_14 ~= nil then
                            ____opt_14(nil, actor, false, data.a)
                        end
                    end
                end
            end
        end
    )
    se:on(
        "_sl_:单位失去演员",
        function(data)
            local actorList = ActorUtil:getUnitAllActorList(data.u)
            if actorList ~= nil and #actorList > 0 then
                for ____, actor in ipairs(actorList) do
                    if actor ~= data.a and not actor:isDisable() then
                        local ____opt_16 = actor:get("onUnitRemoveActor")
                        if ____opt_16 ~= nil then
                            ____opt_16(nil, actor, data.a)
                        end
                        local ____opt_18 = actor:get("onUnitActorsChange")
                        if ____opt_18 ~= nil then
                            ____opt_18(nil, actor, true, data.a)
                        end
                    end
                end
            end
        end
    )
    SyncUtil.onSyncObjData(
        "_sl_:a:onClick",
        function(____, triggerPlayer, data)
            local actor = Actor.allActors[data.i]
            if actor == nil then
                log.errorWithTraceBack("本地点击的id未找到对应的演员!")
                return
            end
            if actor:isDisable() then
                return
            end
            local ____opt_20 = actor:get("onClick")
            if ____opt_20 ~= nil then
                ____opt_20(
                    nil,
                    actor,
                    data.b,
                    triggerPlayer,
                    actor.actorType
                )
            end
        end
    )
    SyncUtil.onSyncObjData(
        "_sl_:at:onClick",
        function(____, triggerPlayer, data)
            local actorType = ActorTypeUtil:getActorType(data.i)
            if actorType == nil then
                log.errorWithTraceBack("本地点击的id未找到对应的演员类型!")
                return
            end
            if actorType.disable == true then
                return
            end
            local ____this_23
            ____this_23 = actorType
            local ____opt_22 = ____this_23.onClick
            if ____opt_22 ~= nil then
                ____opt_22(
                    ____this_23,
                    nil,
                    data.b,
                    triggerPlayer,
                    actorType
                )
            end
        end
    )
end
function SolarActorState.prototype.initActorSolarDamage(self)
    SolarDamageState:addEventHandler(function(____, event)
        local unit0 = event.unit0
        local unit1 = event.unit1
        local actorList = ActorUtil:getUnitAllActorList(unit0)
        if actorList ~= nil and #actorList > 0 then
            for ____, actor in ipairs(actorList) do
                if not actor:isDisable() then
                    local ____opt_24 = actor:get("onUnitDamaged")
                    if ____opt_24 ~= nil then
                        ____opt_24(nil, actor, unit1, event)
                    end
                end
            end
            if event.isAttack then
                for ____, actor in ipairs(actorList) do
                    if not actor:isDisable() then
                        local ____opt_26 = actor:get("onUnitAttackedDamage")
                        if ____opt_26 ~= nil then
                            ____opt_26(nil, actor, unit1, event)
                        end
                    end
                end
            end
        end
        if IsHandle(unit1) then
            actorList = ActorUtil:getUnitAllActorList(unit1)
            if actorList ~= nil and #actorList > 0 then
                for ____, actor in ipairs(actorList) do
                    if not actor:isDisable() then
                        local ____opt_28 = actor:get("onUnitDamageEnemy")
                        if ____opt_28 ~= nil then
                            ____opt_28(nil, actor, unit0, event)
                        end
                    end
                end
                if event.isAttack then
                    for ____, actor in ipairs(actorList) do
                        if not actor:isDisable() then
                            local ____opt_30 = actor:get("onUnitAttackDamageEnemy")
                            if ____opt_30 ~= nil then
                                ____opt_30(nil, actor, unit0, event)
                            end
                        end
                    end
                end
            end
        end
    end)
end
return ____exports
