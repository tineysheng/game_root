local ____lualib = require("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 4,["12"] = 4,["13"] = 5,["14"] = 5,["15"] = 6,["16"] = 6,["17"] = 7,["18"] = 7,["19"] = 8,["20"] = 8,["21"] = 9,["22"] = 9,["23"] = 20,["24"] = 20,["25"] = 20,["27"] = 20,["28"] = 29,["29"] = 30,["32"] = 33,["33"] = 34,["34"] = 35,["35"] = 36,["37"] = 38,["38"] = 40,["39"] = 40,["40"] = 40,["41"] = 40,["42"] = 42,["43"] = 43,["44"] = 44,["45"] = 45,["46"] = 45,["47"] = 45,["48"] = 46,["49"] = 47,["51"] = 45,["52"] = 45,["55"] = 52,["56"] = 53,["57"] = 54,["58"] = 54,["59"] = 54,["60"] = 55,["61"] = 56,["63"] = 54,["64"] = 54,["67"] = 38,["68"] = 29,["69"] = 72,["70"] = 73,["71"] = 74,["72"] = 75,["73"] = 76,["74"] = 77,["76"] = 79,["77"] = 79,["78"] = 79,["79"] = 80,["80"] = 81,["81"] = 82,["82"] = 83,["83"] = 84,["85"] = 86,["86"] = 86,["87"] = 86,["88"] = 86,["89"] = 86,["90"] = 86,["91"] = 86,["92"] = 86,["93"] = 86,["94"] = 86,["95"] = 86,["96"] = 86,["97"] = 86,["98"] = 100,["99"] = 101,["100"] = 103,["102"] = 105,["103"] = 106,["104"] = 108,["106"] = 110,["107"] = 112,["109"] = 114,["110"] = 115,["111"] = 118,["112"] = 119,["113"] = 120,["114"] = 121,["116"] = 123,["117"] = 123,["118"] = 123,["119"] = 123,["120"] = 125,["121"] = 125,["122"] = 125,["123"] = 125,["124"] = 126,["126"] = 128,["127"] = 128,["128"] = 128,["129"] = 128,["130"] = 128,["131"] = 130,["132"] = 130,["133"] = 130,["134"] = 130,["135"] = 131,["137"] = 136,["138"] = 137,["139"] = 138,["140"] = 139,["141"] = 140,["145"] = 146,["146"] = 146,["147"] = 146,["148"] = 146,["149"] = 146,["150"] = 146,["151"] = 146,["152"] = 150,["153"] = 100,["154"] = 152,["155"] = 154,["156"] = 155,["157"] = 156,["158"] = 158,["160"] = 161,["161"] = 164,["163"] = 167,["167"] = 152,["168"] = 188,["169"] = 189,["170"] = 79,["171"] = 79,["172"] = 72,["173"] = 193,["174"] = 194,["175"] = 194,["176"] = 194,["177"] = 194,["178"] = 194,["179"] = 195,["180"] = 197,["181"] = 198,["182"] = 198,["183"] = 198,["184"] = 198,["185"] = 198,["186"] = 199,["188"] = 201,["190"] = 203,["191"] = 204,["192"] = 205,["193"] = 207,["195"] = 209,["197"] = 209,["200"] = 211,["202"] = 193,["203"] = 219,["204"] = 220,["207"] = 223,["208"] = 227,["209"] = 227,["210"] = 227,["211"] = 228,["212"] = 229,["213"] = 230,["216"] = 234,["217"] = 235,["219"] = 227,["220"] = 227,["221"] = 219,["222"] = 22,["223"] = 23,["224"] = 217});
local ____exports = {}
local ____Cache = require("solar.solar-common.tool.Cache")
local Cache = ____Cache.default
local ____ActorTypeUtil = require("solar.solar-common.actor.util.ActorTypeUtil")
local ActorTypeUtil = ____ActorTypeUtil.default
local ____PlayerUtil = require("solar.solar-common.util.game.PlayerUtil")
local PlayerUtil = ____PlayerUtil.default
local ____SyncUtil = require("solar.solar-common.util.net.SyncUtil")
local SyncUtil = ____SyncUtil.default
local ____ActorItemUtil = require("solar.solar-common.actor.util.ActorItemUtil")
local ActorItemUtil = ____ActorItemUtil.default
local ____ActorAbilityUtil = require("solar.solar-common.actor.util.ActorAbilityUtil")
local ActorAbilityUtil = ____ActorAbilityUtil.default
local ____ActorFrameUtil = require("solar.solar-common.actor.util.ActorFrameUtil")
local ActorFrameUtil = ____ActorFrameUtil.default
local ____Actor = require("solar.solar-common.actor.Actor")
local Actor = ____Actor.default
____exports.default = __TS__Class()
local ActorTypeShopUtil = ____exports.default
ActorTypeShopUtil.name = "ActorTypeShopUtil"
function ActorTypeShopUtil.prototype.____constructor(self)
end
function ActorTypeShopUtil.autoDisableSellingAbilityOnNoStoreTarget(self, shopActorUnitTypeId)
    if GetStoreTarget == nil then
        return
    end
    local actorType = ActorTypeUtil:getActorType(shopActorUnitTypeId)
    actorType.interval = 1
    if actorType.onUnitInterval ~= nil then
        print("不要重复设置商店单位的onUnitInterval回调:" .. shopActorUnitTypeId)
    end
    actorType.onUnitInterval = function(____, actor)
        local unit = GetStoreTarget(
            actor.unit,
            GetLocalPlayer()
        )
        if IsHandle(unit) then
            if actor.tempBool ~= true then
                actor.tempBool = true
                ActorAbilityUtil:forUnitActorAbilityList(
                    actor.unit,
                    function(____, actor)
                        if not actor:isDisable() and actor:get("class") == ____exports.default._sl_baseSellingAbilityClass then
                            actor:getRootFrameControl():getDisableFrame().visible = false
                        end
                    end
                )
            end
        else
            if actor.tempBool ~= false then
                actor.tempBool = false
                ActorAbilityUtil:forUnitActorAbilityList(
                    actor.unit,
                    function(____, actor)
                        if actor:get("class") == ____exports.default._sl_baseSellingAbilityClass then
                            actor:getRootFrameControl():getDisableFrame().visible = true
                        end
                    end
                )
            end
        end
    end
end
function ActorTypeShopUtil.warpActorItem2SellingAbility(self, actorItemTypeId)
    if GetStoreTarget == nil then
        local info = "|cffff0000无GetStoreTarget环境此API无效:" .. actorItemTypeId
        BJDebugMsg(info)
        log.errorWithTraceBack(info)
        return nil
    end
    return ____exports.default.cache:get(
        "warpActorItem2SellingAbility:" .. actorItemTypeId,
        function()
            ____exports.default:_sl_initBuyActorItem()
            local actorType = ActorTypeUtil:getActorType(actorItemTypeId)
            if actorType == nil then
                log.errorWithTraceBack("不存在此演员物品类型:" .. actorItemTypeId)
                return nil
            end
            local actorAbilityType = {
                id = "_sl_SellingAbility:" .. actorItemTypeId,
                class = ____exports.default._sl_baseSellingAbilityClass,
                name = actorType.name,
                icon = actorType.icon,
                disable = actorType.disable,
                requiredTip = actorType.requiredTip,
                describe = actorType.describe,
                goldCost = actorType.goldCost,
                lumberCost = actorType.lumberCost,
                manaCost = 0,
                maxCd = 0.2
            }
            actorAbilityType.onLocalClick = function(____, actor, btn)
                if btn ~= 1 then
                    return true
                end
                local actorAbility = actor
                if actorAbility:getCooldown() > 0 then
                    return false
                end
                if _g_time - (actor.tempNum or 0) < 400 then
                    return false
                end
                actor.tempNum = _g_time
                local p = GetLocalPlayer()
                local unit = GetStoreTarget(actor.unit, p)
                if not IsHandle(unit) then
                    PlayerUtil:message("没有购买单位!请将需要购买物品的单位靠近此单位!", 10, p)
                    return false
                end
                if not PlayerUtil:hasEnoughState(
                    p,
                    actorAbility:get("goldCost")
                ) then
                    ActorFrameUtil:showTipText(
                        actor,
                        "|cffff0000金币不足,还差:" .. tostring(actorAbility:get("goldCost") - PlayerUtil:getGold(p))
                    )
                    return false
                end
                if not PlayerUtil:hasEnoughState(
                    p,
                    nil,
                    actorAbility:get("lumberCost")
                ) then
                    ActorFrameUtil:showTipText(
                        actor,
                        "|cffff0000木材不足,还差:" .. tostring(actorAbility:get("lumberCost") - PlayerUtil:getLumber(p))
                    )
                    return false
                end
                if actorAbility.numberOverlay then
                    if actorAbility.numberOverlay < 1 then
                        PlayerUtil:message("没有库存了!", 10, p)
                        ActorFrameUtil:showTipText(actor, "|cffff0000库存不足")
                        return false
                    else
                    end
                end
                SyncUtil.syncObjData(
                    "_sl_:buyActorItem",
                    {
                        i = actor.uuid,
                        u = h2i(unit)
                    }
                )
                return true
            end
            actorAbilityType.onAction = function(____, actorAbility)
                local issueOrderUnitSync = actorAbility.issueOrderUnitSync
                actorAbility.issueOrderUnitSync = nil
                if IsHandle(issueOrderUnitSync) then
                    ____exports.default:_sl_buyActorItemByActorAbility(actorAbility, issueOrderUnitSync, actorItemTypeId)
                else
                    if isEmbedJapi then
                        print("网络卡顿,请购买物品的玩家重新点击购买!")
                    else
                        print("网络卡顿,或购买资源不足!")
                    end
                    return
                end
            end
            ActorTypeUtil:registerActorType(actorAbilityType)
            return actorAbilityType
        end
    )
end
function ActorTypeShopUtil._sl_buyActorItemByActorAbility(self, actorAbility, issueOrderUnitSync, actorItemTypeId)
    if PlayerUtil:costEnoughState(
        GetOwningPlayer(issueOrderUnitSync),
        actorAbility:get("goldCost"),
        actorAbility:get("lumberCost")
    ) then
        if actorAbility.numberOverlay then
            if actorAbility.numberOverlay < 1 then
                PlayerUtil:message(
                    "|cffff0000没有库存了!",
                    10,
                    GetOwningPlayer(issueOrderUnitSync)
                )
                return false
            end
            actorAbility.numberOverlay = actorAbility.numberOverlay - 1
        end
        local buyingUnit = issueOrderUnitSync
        local actorItem = ActorItemUtil:addActorItemForUnit(actorItemTypeId, buyingUnit)
        if actorItem:get("stackMax", 0) > 1 and actorItem:get("destroyOnNoUses") == true then
            actorItem:setUses(actorItem:get("uses", 1))
        end
        local ____opt_0 = actorItem:get("onBuy")
        if ____opt_0 ~= nil then
            ____opt_0(nil, actorItem, buyingUnit)
        end
    else
        log.errorWithTraceBack("购买物品的资源消耗不足！请保证技能校验资源与实际资源需求是一样的！")
    end
end
function ActorTypeShopUtil._sl_initBuyActorItem(self)
    if ____exports.default._sl_inited then
        return
    end
    ____exports.default._sl_inited = true
    SyncUtil.onSyncObjData(
        "_sl_:buyActorItem",
        function(____, p, obj)
            local actorAbility = Actor.allActors[obj.i]
            if actorAbility == nil then
                log.errorWithTraceBack("售卖技能演员为null!")
                return
            end
            if not IsHandle(actorAbility.issueOrderUnitSync) then
                actorAbility.issueOrderUnitSync = i2h(obj.u)
            end
        end
    )
end
ActorTypeShopUtil.cache = __TS__New(Cache)
ActorTypeShopUtil._sl_baseSellingAbilityClass = "太阳演员物品技能售卖"
ActorTypeShopUtil._sl_inited = false
return ____exports
