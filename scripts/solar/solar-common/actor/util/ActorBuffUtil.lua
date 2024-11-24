local ____lualib = require("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__InstanceOf = ____lualib.__TS__InstanceOf
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 10,["17"] = 10,["18"] = 10,["20"] = 10,["21"] = 16,["22"] = 17,["23"] = 17,["24"] = 18,["25"] = 19,["27"] = 17,["28"] = 16,["29"] = 27,["30"] = 28,["31"] = 28,["32"] = 29,["33"] = 30,["35"] = 28,["36"] = 27,["37"] = 38,["38"] = 39,["39"] = 39,["40"] = 40,["41"] = 41,["43"] = 39,["44"] = 38,["45"] = 57,["46"] = 58,["47"] = 59,["48"] = 60,["49"] = 61,["51"] = 64,["52"] = 65,["53"] = 66,["54"] = 68,["55"] = 69,["56"] = 70,["57"] = 71,["58"] = 71,["59"] = 71,["60"] = 72,["61"] = 71,["62"] = 71,["66"] = 78,["67"] = 79,["69"] = 82,["70"] = 82,["71"] = 82,["72"] = 82,["73"] = 82,["74"] = 82,["75"] = 82,["76"] = 57,["77"] = 92,["78"] = 93,["80"] = 94,["81"] = 94,["82"] = 95,["83"] = 96,["86"] = 99,["87"] = 100,["88"] = 101,["90"] = 103,["91"] = 94,["94"] = 105,["95"] = 92,["96"] = 113,["97"] = 114,["98"] = 115,["99"] = 116,["100"] = 117,["101"] = 118,["105"] = 122,["106"] = 113,["107"] = 131,["108"] = 132,["109"] = 131,["110"] = 142,["111"] = 143,["112"] = 144,["113"] = 145,["115"] = 142,["116"] = 153,["117"] = 154,["118"] = 155,["119"] = 153,["120"] = 194,["121"] = 195,["122"] = 197,["123"] = 198,["124"] = 199,["125"] = 200,["126"] = 201,["127"] = 202,["131"] = 197,["133"] = 209,["134"] = 210,["135"] = 211,["136"] = 212,["137"] = 213,["140"] = 209,["142"] = 194,["143"] = 224,["144"] = 225,["145"] = 226,["148"] = 229,["149"] = 230,["150"] = 231,["151"] = 232,["152"] = 233,["156"] = 237,["157"] = 224,["158"] = 253,["159"] = 254,["160"] = 255,["163"] = 258,["164"] = 259,["165"] = 260,["166"] = 261,["170"] = 253,["171"] = 273,["172"] = 274,["174"] = 274,["176"] = 273,["177"] = 282,["178"] = 282,["179"] = 282,["181"] = 283,["182"] = 284,["185"] = 287,["186"] = 288,["187"] = 289,["188"] = 290,["191"] = 293,["192"] = 293,["196"] = 282,["197"] = 304,["198"] = 305,["199"] = 306,["202"] = 309,["203"] = 310,["204"] = 310,["205"] = 311,["208"] = 304});
local ____exports = {}
local ____ActorBuff = require("solar.solar-common.actor.ActorBuff")
local ActorBuff = ____ActorBuff.default
local ____Actor = require("solar.solar-common.actor.Actor")
local Actor = ____Actor.default
local ____DataBase = require("solar.solar-common.common.DataBase")
local DataBase = ____DataBase.default
local ____BaseUtil = require("solar.solar-common.util.BaseUtil")
local BaseUtil = ____BaseUtil.default
____exports.default = __TS__Class()
local ActorBuffUtil = ____exports.default
ActorBuffUtil.name = "ActorBuffUtil"
function ActorBuffUtil.prototype.____constructor(self)
end
function ActorBuffUtil.addAnyActorBuffCreatedListener(self, onActorBuffCreatedListener)
    local ____Actor__sl_anyActorCreatedListeners_0 = Actor._sl_anyActorCreatedListeners
    ____Actor__sl_anyActorCreatedListeners_0[#____Actor__sl_anyActorCreatedListeners_0 + 1] = function(____, buff)
        if __TS__InstanceOf(buff, ActorBuff) then
            onActorBuffCreatedListener(nil, buff)
        end
    end
end
function ActorBuffUtil.addAnyActorBuffLevelChangeListener(self, onActorBuffLevelChangeListener)
    local ____Actor__sl_anyActorLevelChangeListeners_1 = Actor._sl_anyActorLevelChangeListeners
    ____Actor__sl_anyActorLevelChangeListeners_1[#____Actor__sl_anyActorLevelChangeListeners_1 + 1] = function(____, buff, delta)
        if __TS__InstanceOf(buff, ActorBuff) then
            onActorBuffLevelChangeListener(nil, buff, delta)
        end
    end
end
function ActorBuffUtil.addAnyActorBuffDestroyListener(self, onActorBuffDestroyListener)
    local ____Actor__sl_anyActorDestroyListeners_2 = Actor._sl_anyActorDestroyListeners
    ____Actor__sl_anyActorDestroyListeners_2[#____Actor__sl_anyActorDestroyListeners_2 + 1] = function(____, buff)
        if __TS__InstanceOf(buff, ActorBuff) then
            onActorBuffDestroyListener(nil, buff)
        end
    end
end
function ActorBuffUtil.addActorBuff(self, unit, actorTypeId, creator, initActorBuff)
    local actorType = DataBase:getSolarActorType(actorTypeId)
    if not actorType then
        log.errorWithTraceBack("buff不存在!请先使用registerActorType注册演员类型! id=" .. actorTypeId)
        return nil
    end
    local oldUnitBuff = ____exports.default:getUnitActorBuff(unit, actorTypeId)
    if oldUnitBuff then
        if actorType.levelMax and actorType.levelMax ~= 0 then
            if actorType.levelMax == -1 or oldUnitBuff.level < actorType.levelMax then
                oldUnitBuff.level = oldUnitBuff.level + 1
                if actorType.levelDurMode == true then
                    BaseUtil.runLater(
                        actorType.dur,
                        function()
                            oldUnitBuff.level = oldUnitBuff.level - 1
                        end
                    )
                end
            end
        end
        oldUnitBuff:updateDurStartTime()
        return oldUnitBuff
    end
    return __TS__New(
        ActorBuff,
        actorTypeId,
        unit,
        creator,
        initActorBuff
    )
end
function ActorBuffUtil.getPlayerUnitBuff(self, player, buffTypeId)
    GroupEnumUnitsOfPlayer(_sl_tempGroup3, player, nil)
    do
        local i = 0
        while i <= 1000000 do
            local unitHandle = FirstOfGroup(_sl_tempGroup3)
            if not IsHandle(unitHandle) then
                break
            end
            local buff = ____exports.default:getUnitActorBuff(unitHandle, buffTypeId)
            if (buff and buff.buffType.id) == buffTypeId then
                return buff
            end
            GroupRemoveUnit(_sl_tempGroup3, unitHandle)
            i = i + 1
        end
    end
    return nil
end
function ActorBuffUtil.getUnitActorBuff(self, unit, actorTypeId)
    local actorBuffs = ____exports.default:getUnitActorBuffs(unit)
    if actorBuffs then
        for ____, actorBuff in ipairs(actorBuffs) do
            if actorBuff.actorTypeId == actorTypeId then
                return actorBuff
            end
        end
    end
    return nil
end
function ActorBuffUtil.isUnitHasActorBuff(self, unit, actorTypeId)
    return ____exports.default:getUnitActorBuff(unit, actorTypeId) ~= nil
end
function ActorBuffUtil.ifUnitHasActorBuff(self, unit, callBack, actorTypeId)
    local actorBuff = ____exports.default:getUnitActorBuff(unit, actorTypeId)
    if actorBuff then
        callBack(nil, actorBuff)
    end
end
function ActorBuffUtil.getUnitActorBuffs(self, unit)
    local unitSolarData = DataBase:getUnitSolarData(unit, false)
    return unitSolarData and unitSolarData._SL_solarActorBuffs
end
function ActorBuffUtil.forAllActorBuffs(self, callback, actorBuffTypeId)
    if actorBuffTypeId then
        DataBase:forUnitSolarDatas(function(____, id, solarData)
            local _SL_solarActorBuffSet = solarData and solarData._SL_solarActorBuffs
            if _SL_solarActorBuffSet then
                for ____, actorBuff in ipairs(_SL_solarActorBuffSet) do
                    if (actorBuff and actorBuff.actorType.id) == actorBuffTypeId then
                        callback(nil, actorBuff)
                    end
                end
            end
        end)
    else
        DataBase:forUnitSolarDatas(function(____, id, solarData)
            local _SL_solarActorBuffSet = solarData and solarData._SL_solarActorBuffs
            if _SL_solarActorBuffSet then
                for ____, actorBuff in ipairs(_SL_solarActorBuffSet) do
                    callback(nil, actorBuff)
                end
            end
        end)
    end
end
function ActorBuffUtil.getUnitActorBuffsByClass(self, unit, clazz)
    local actorBuffSet = ____exports.default:getUnitActorBuffs(unit)
    if not actorBuffSet then
        return
    end
    local result = {}
    for ____, actorBuff in ipairs(actorBuffSet) do
        if actorBuff then
            if clazz == nil or clazz == actorBuff:get("class") then
                result[#result + 1] = actorBuff
            end
        end
    end
    return result
end
function ActorBuffUtil.forUnitActorBuffs(self, unit, callback, clazz)
    local actorBuffSet = ____exports.default:getUnitActorBuffs(unit)
    if not actorBuffSet then
        return
    end
    for ____, actorBuff in ipairs(actorBuffSet) do
        if actorBuff then
            if clazz == nil or clazz == actorBuff:get("class") then
                callback(nil, actorBuff)
            end
        end
    end
end
function ActorBuffUtil.clearUnitActorBuff(self, unit, actorBuffTypeId)
    local ____opt_13 = ____exports.default:getUnitActorBuff(unit, actorBuffTypeId)
    if ____opt_13 ~= nil then
        ____opt_13:destroy()
    end
end
function ActorBuffUtil.clearUnitActorBuffs(self, unit, onlyDeBuff)
    if onlyDeBuff == nil then
        onlyDeBuff = false
    end
    local actorBuffs = ____exports.default:getUnitActorBuffs(unit)
    if not actorBuffs then
        return
    end
    for ____, actorBuff in ipairs(actorBuffs) do
        if onlyDeBuff then
            if actorBuff and actorBuff.actorType.isDebuff then
                actorBuff:destroy()
            end
        else
            if actorBuff ~= nil then
                actorBuff:destroy()
            end
        end
    end
end
function ActorBuffUtil.clearUnitActorBuffsByClass(self, unit, clazz)
    local actorBuffs = ____exports.default:getUnitActorBuffs(unit)
    if not actorBuffs then
        return
    end
    for ____, actorBuff in ipairs(actorBuffs) do
        local ____opt_19 = actorBuff and actorBuff.actorType
        if (____opt_19 and ____opt_19.class) == clazz then
            actorBuff:destroy()
        end
    end
end
return ____exports
