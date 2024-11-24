local ____lualib = require("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 1,["7"] = 1,["8"] = 2,["9"] = 2,["10"] = 8,["11"] = 8,["12"] = 8,["14"] = 8,["15"] = 17,["16"] = 18,["17"] = 19,["19"] = 21,["20"] = 22,["21"] = 23,["22"] = 25,["23"] = 26,["24"] = 27,["26"] = 30,["27"] = 31,["28"] = 32,["29"] = 33,["31"] = 35,["32"] = 36,["33"] = 36,["34"] = 37,["35"] = 38,["39"] = 43,["40"] = 44,["41"] = 45,["42"] = 46,["43"] = 47,["45"] = 49,["49"] = 53,["51"] = 54,["52"] = 54,["53"] = 55,["54"] = 56,["55"] = 57,["56"] = 57,["57"] = 58,["58"] = 59,["59"] = 60,["61"] = 62,["64"] = 54,["67"] = 66,["68"] = 17,["69"] = 75,["70"] = 76,["71"] = 77,["74"] = 80,["75"] = 81,["76"] = 82,["79"] = 75,["80"] = 92,["81"] = 93,["82"] = 94,["85"] = 97,["86"] = 98,["87"] = 99,["88"] = 100,["91"] = 103,["92"] = 92,["93"] = 113,["94"] = 114,["95"] = 115,["98"] = 118,["99"] = 119,["101"] = 120,["102"] = 121,["104"] = 123,["105"] = 124,["107"] = 126,["108"] = 127,["110"] = 129,["114"] = 131,["115"] = 113,["116"] = 138,["117"] = 139,["118"] = 140,["119"] = 141,["120"] = 143,["122"] = 143,["124"] = 143,["125"] = 144,["126"] = 145,["128"] = 148,["129"] = 149,["130"] = 150,["131"] = 151,["133"] = 153,["134"] = 154,["135"] = 154,["137"] = 154,["139"] = 154,["140"] = 155,["141"] = 156,["145"] = 161,["146"] = 162,["147"] = 163,["148"] = 164,["149"] = 165,["150"] = 166,["151"] = 167,["153"] = 169,["158"] = 174,["160"] = 175,["161"] = 175,["162"] = 176,["163"] = 177,["164"] = 178,["165"] = 178,["167"] = 178,["169"] = 178,["170"] = 179,["171"] = 180,["172"] = 181,["174"] = 183,["177"] = 175,["180"] = 187,["181"] = 138,["182"] = 196,["183"] = 197,["184"] = 198,["187"] = 201,["188"] = 202,["189"] = 203,["193"] = 196,["194"] = 214,["195"] = 215,["196"] = 216,["197"] = 217,["199"] = 219,["200"] = 220,["201"] = 221,["204"] = 224,["205"] = 214,["206"] = 230,["207"] = 231,["208"] = 231,["209"] = 230,["210"] = 237,["211"] = 238,["212"] = 238,["213"] = 237,["214"] = 244,["215"] = 245,["216"] = 245,["217"] = 244});
local ____exports = {}
local ____Actor = require("solar.solar-common.actor.Actor")
local Actor = ____Actor.default
local ____DataBase = require("solar.solar-common.common.DataBase")
local DataBase = ____DataBase.default
____exports.default = __TS__Class()
local ActorUtil = ____exports.default
ActorUtil.name = "ActorUtil"
function ActorUtil.prototype.____constructor(self)
end
function ActorUtil.getUnitAllActorList(self, unit)
    if not IsHandle(unit) then
        return nil
    end
    local actorList = nil
    local solarData = DataBase:getUnitSolarData(unit, false)
    if solarData ~= nil then
        local actor = solarData._SL_solarActorUnit
        if actor ~= nil then
            actorList = {actor}
        end
        local abilityTemplate = solarData._SL_abilityTemplate
        if abilityTemplate ~= nil then
            if actorList == nil then
                actorList = {}
            end
            for abilityTemplateKey in pairs(abilityTemplate) do
                local ____opt_0 = DataBase:getAbilityTypeSolarData(abilityTemplate[abilityTemplateKey], false)
                local actor = ____opt_0 and ____opt_0._SL_solarActorAbility
                if actor ~= nil then
                    actorList[#actorList + 1] = actor
                end
            end
        end
        local _SL_solarActorBuffSet = solarData._SL_solarActorBuffs
        if _SL_solarActorBuffSet then
            for ____, actor in ipairs(_SL_solarActorBuffSet) do
                if actorList == nil then
                    actorList = {}
                end
                actorList[#actorList + 1] = actor
            end
        end
    end
    local invSize = UnitInventorySize(unit)
    do
        local i = 0
        while i < invSize do
            local item = UnitItemInSlot(unit, i)
            if IsHandle(item) then
                local ____opt_2 = DataBase:getItemSolarData(item, false)
                local actor = ____opt_2 and ____opt_2._SL_solarActorItem
                if actor ~= nil then
                    if actorList == nil then
                        actorList = {}
                    end
                    actorList[#actorList + 1] = actor
                end
            end
            i = i + 1
        end
    end
    return actorList
end
function ActorUtil.forUnitAllActorList(self, unit, callback, clazz)
    local actorList = ____exports.default:getUnitAllActorList(unit)
    if actorList == nil then
        return
    end
    for ____, actor in ipairs(actorList) do
        if clazz == nil or clazz == actor:get("class") then
            callback(nil, actor)
        end
    end
end
function ActorUtil.getUnitAllActorListByClass(self, unit, clazz)
    local actorList = ____exports.default:getUnitAllActorList(unit)
    if actorList == nil then
        return
    end
    local result = {}
    for ____, actor in ipairs(actorList) do
        if clazz == nil or clazz == actor:get("class") then
            result[#result + 1] = actor
        end
    end
    return result
end
function ActorUtil.getUnitAllActorListAndWhere(self, unit, clazz, kind, tag)
    local actorList = ____exports.default:getUnitAllActorList(unit)
    if actorList == nil then
        return
    end
    local result = {}
    for ____, actor in ipairs(actorList) do
        do
            if clazz ~= nil and clazz ~= actor:get("class") then
                goto __continue32
            end
            if kind ~= nil and kind ~= actor:get("kind") then
                goto __continue32
            end
            if tag ~= nil and tag ~= actor:get("tag") then
                goto __continue32
            end
            result[#result + 1] = actor
        end
        ::__continue32::
    end
    return result
end
function ActorUtil.getUnitAllActorAttributes(self, unit)
    local attributeArray = nil
    local solarData = DataBase:getUnitSolarData(unit, false)
    if solarData ~= nil then
        local ____opt_4 = solarData._SL_solarActorUnit
        if ____opt_4 ~= nil then
            ____opt_4 = ____opt_4.attribute
        end
        local attribute = ____opt_4
        if attribute ~= nil then
            attributeArray = {attribute}
        end
        local abilityTemplate = solarData._SL_abilityTemplate
        if abilityTemplate ~= nil then
            if attributeArray == nil then
                attributeArray = {}
            end
            for abilityTemplateKey in pairs(abilityTemplate) do
                local ____opt_8 = DataBase:getAbilityTypeSolarData(abilityTemplate[abilityTemplateKey], false)
                local ____opt_6 = ____opt_8 and ____opt_8._SL_solarActorAbility
                if ____opt_6 ~= nil then
                    ____opt_6 = ____opt_6.attribute
                end
                local attribute = ____opt_6
                if attribute ~= nil then
                    attributeArray[#attributeArray + 1] = attribute
                end
            end
        end
        local _SL_solarActorBuffSet = solarData._SL_solarActorBuffs
        if _SL_solarActorBuffSet then
            for ____, actorBuff in ipairs(_SL_solarActorBuffSet) do
                local attribute = actorBuff.attribute
                if attribute ~= nil then
                    if attributeArray == nil then
                        attributeArray = {}
                    end
                    attributeArray[#attributeArray + 1] = attribute
                end
            end
        end
    end
    local invSize = UnitInventorySize(unit)
    do
        local i = 0
        while i < invSize do
            local item = UnitItemInSlot(unit, i)
            if IsHandle(item) then
                local ____opt_12 = DataBase:getItemSolarData(item, false)
                local ____opt_10 = ____opt_12 and ____opt_12._SL_solarActorItem
                if ____opt_10 ~= nil then
                    ____opt_10 = ____opt_10.attribute
                end
                local attribute = ____opt_10
                if attribute ~= nil then
                    if attributeArray == nil then
                        attributeArray = {}
                    end
                    attributeArray[#attributeArray + 1] = attribute
                end
            end
            i = i + 1
        end
    end
    return attributeArray
end
function ActorUtil.ifUnitHasActor(self, unit, actorTypeId, callBack)
    local unitAllActorList = ____exports.default:getUnitAllActorList(unit)
    if unitAllActorList == nil then
        return
    end
    for ____, actor in ipairs(unitAllActorList) do
        if actor.actorTypeId == actorTypeId then
            callBack(nil, actor)
            return
        end
    end
end
function ActorUtil.isUnitHasActor(self, unit, actorTypeId)
    local unitAllActorList = ____exports.default:getUnitAllActorList(unit)
    if unitAllActorList == nil then
        return false
    end
    for ____, actor in ipairs(unitAllActorList) do
        if actor.actorTypeId == actorTypeId then
            return true
        end
    end
    return false
end
function ActorUtil.addAnyActorCreatedListener(self, onActorCreatedListener)
    local ____Actor__sl_anyActorCreatedListeners_14 = Actor._sl_anyActorCreatedListeners
    ____Actor__sl_anyActorCreatedListeners_14[#____Actor__sl_anyActorCreatedListeners_14 + 1] = onActorCreatedListener
end
function ActorUtil.addAnyActorLevelChangeListener(self, onActorLevelChangeListener)
    local ____Actor__sl_anyActorLevelChangeListeners_15 = Actor._sl_anyActorLevelChangeListeners
    ____Actor__sl_anyActorLevelChangeListeners_15[#____Actor__sl_anyActorLevelChangeListeners_15 + 1] = onActorLevelChangeListener
end
function ActorUtil.addAnyActorDestroyListener(self, onActorDestroyListener)
    local ____Actor__sl_anyActorDestroyListeners_16 = Actor._sl_anyActorDestroyListeners
    ____Actor__sl_anyActorDestroyListeners_16[#____Actor__sl_anyActorDestroyListeners_16 + 1] = onActorDestroyListener
end
return ____exports
