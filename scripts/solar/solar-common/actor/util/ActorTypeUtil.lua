local ____lualib = require("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayIncludes = ____lualib.__TS__ArrayIncludes
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 9,["13"] = 9,["14"] = 9,["16"] = 9,["17"] = 19,["18"] = 20,["19"] = 21,["20"] = 22,["22"] = 24,["24"] = 26,["25"] = 27,["26"] = 28,["29"] = 32,["30"] = 33,["31"] = 34,["32"] = 34,["34"] = 36,["36"] = 38,["37"] = 19,["38"] = 45,["39"] = 47,["40"] = 48,["42"] = 50,["43"] = 51,["45"] = 53,["46"] = 45,["47"] = 61,["48"] = 62,["49"] = 63,["50"] = 64,["52"] = 66,["53"] = 61,["54"] = 74,["55"] = 74,["56"] = 76,["57"] = 77,["58"] = 78,["59"] = 79,["60"] = 80,["61"] = 81,["65"] = 85,["66"] = 86,["67"] = 87,["70"] = 74,["71"] = 102,["72"] = 103,["75"] = 106,["76"] = 107,["77"] = 108,["80"] = 111,["81"] = 102,["82"] = 121,["83"] = 122,["86"] = 125,["87"] = 126,["88"] = 127,["91"] = 130,["92"] = 121,["93"] = 142,["94"] = 142,["95"] = 142,["97"] = 142,["98"] = 142,["100"] = 143,["101"] = 144,["102"] = 145,["103"] = 146,["105"] = 148,["106"] = 149,["107"] = 150,["108"] = 151,["109"] = 152,["110"] = 153,["112"] = 155,["113"] = 156,["115"] = 158,["116"] = 159,["118"] = 161,["119"] = 162,["121"] = 164,["122"] = 165,["124"] = 167,["125"] = 168,["126"] = 169,["127"] = 170,["128"] = 171,["129"] = 172,["130"] = 173,["132"] = 169,["134"] = 177,["135"] = 142,["136"] = 11});
local ____exports = {}
local ____DataBase = require("solar.solar-common.common.DataBase")
local DataBase = ____DataBase.default
local ____ActorItem = require("solar.solar-common.actor.ActorItem")
local ActorItem = ____ActorItem.default
____exports.default = __TS__Class()
local ActorTypeUtil = ____exports.default
ActorTypeUtil.name = "ActorTypeUtil"
function ActorTypeUtil.prototype.____constructor(self)
end
function ActorTypeUtil.registerActorType(self, actorTypeIdOrActorType)
    local actorType = nil
    if type(actorTypeIdOrActorType) == "string" then
        actorType = {id = actorTypeIdOrActorType}
    else
        actorType = actorTypeIdOrActorType
    end
    if actorType.id == nil or actorType.id.length == 0 then
        print_r(actorType)
        log.errorWithTraceBack("ActorType id必须赋值！")
        return
    end
    if DataBase:getSolarActorType(actorType.id) == nil then
        DataBase:setSolarActorType(actorType.id, actorType)
        local ____exports_default_actorTypes_0 = ____exports.default.actorTypes
        ____exports_default_actorTypes_0[#____exports_default_actorTypes_0 + 1] = actorType
    else
        log.errorWithTraceBack((("不能重复注册ActorType:" .. tostring(actorType.id)) .. " -> ") .. tostring(actorType.name))
    end
    return actorType
end
function ActorTypeUtil.hasActorType(self, actorTypeId)
    if actorTypeId == nil or #actorTypeId == 0 then
        return false
    end
    if DataBase:getSolarActorType(actorTypeId) == nil then
        return false
    end
    return true
end
function ActorTypeUtil.getActorType(self, actorTypeId)
    if actorTypeId == nil then
        log.errorWithTraceBack("actorTypeId不能为null!")
        return nil
    end
    return DataBase:getSolarActorType(actorTypeId)
end
function ActorTypeUtil.forAllActorTypes(self, callback, ...)
    local actorTypeClass = {...}
    local index = 0
    if actorTypeClass and #actorTypeClass > 0 then
        for ____, actorType in ipairs(____exports.default.actorTypes) do
            if __TS__ArrayIncludes(actorTypeClass, actorType.class) then
                callback(nil, actorType, index)
                index = index + 1
            end
        end
    else
        for ____, actorType in ipairs(____exports.default.actorTypes) do
            callback(nil, actorType, index)
            index = index + 1
        end
    end
end
function ActorTypeUtil.setUiEnable(self, actorTypeId, uiEnable, player)
    if player ~= nil and GetLocalPlayer() ~= player then
        return
    end
    local actorType = ____exports.default:getActorType(actorTypeId)
    if actorType == nil then
        print("设置未注册的Actor图标:" .. actorTypeId)
        return
    end
    actorType.uiEnable = uiEnable
end
function ActorTypeUtil.setTypeDescribe(self, actorTypeId, describe, player)
    if player ~= nil and GetLocalPlayer() ~= player then
        return
    end
    local actorType = ____exports.default:getActorType(actorTypeId)
    if actorType == nil then
        print("设置未注册的Actor提示:" .. actorTypeId)
        return
    end
    actorType.describe = describe
end
function ActorTypeUtil.registerActorTypeFromBaseItemType(self, itemTypeIdStr, baseData, bindItemAndActor)
    if baseData == nil then
        baseData = {}
    end
    if bindItemAndActor == nil then
        bindItemAndActor = false
    end
    local itemObjInfo = _g_objs.item[itemTypeIdStr]
    if itemObjInfo == nil then
        log.errorWithTraceBack("不存在此物品id:" .. itemTypeIdStr)
        return nil
    end
    baseData.id = itemTypeIdStr
    baseData.name = itemObjInfo.Tip
    baseData.icon = itemObjInfo.Art
    baseData.describe = itemObjInfo.Ubertip
    if itemObjInfo.file then
        baseData.model = itemObjInfo.file
    end
    if itemObjInfo.pawnable then
        baseData.pawnable = itemObjInfo.pawnable == "1"
    end
    if itemObjInfo.droppable then
        baseData.droppable = itemObjInfo.droppable == "1"
    end
    if itemObjInfo.goldcost then
        baseData.goldCost = math.floor(tonumber(itemObjInfo.goldcost))
    end
    if itemObjInfo.lumbercost then
        baseData.lumberCost = math.floor(tonumber(itemObjInfo.lumbercost))
    end
    ____exports.default:registerActorType(baseData)
    if bindItemAndActor then
        se:onUnitPickupItem(function(e)
            if e.manipulatedItemTypeIdStr == itemTypeIdStr then
                RemoveItem(e.manipulatedItem)
                local actorItem = __TS__New(ActorItem, itemTypeIdStr)
                UnitAddItem(e.trigUnit, actorItem.item)
            end
        end)
    end
    return baseData
end
ActorTypeUtil.actorTypes = {}
return ____exports
