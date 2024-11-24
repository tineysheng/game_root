local ____lualib = require("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ObjectKeys = ____lualib.__TS__ObjectKeys
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 4,["14"] = 4,["15"] = 13,["16"] = 13,["17"] = 13,["19"] = 13,["20"] = 55,["21"] = 55,["22"] = 55,["24"] = 56,["25"] = 57,["26"] = 58,["29"] = 61,["30"] = 62,["31"] = 63,["33"] = 65,["34"] = 55,["35"] = 75,["36"] = 75,["37"] = 75,["39"] = 76,["40"] = 77,["41"] = 78,["43"] = 80,["44"] = 75,["45"] = 88,["46"] = 89,["49"] = 92,["50"] = 93,["51"] = 94,["52"] = 95,["53"] = 96,["54"] = 97,["56"] = 99,["59"] = 88,["60"] = 109,["61"] = 109,["62"] = 109,["64"] = 110,["65"] = 111,["66"] = 112,["68"] = 114,["69"] = 109,["70"] = 122,["71"] = 122,["72"] = 122,["74"] = 123,["75"] = 124,["76"] = 125,["78"] = 127,["79"] = 122,["80"] = 136,["81"] = 136,["82"] = 136,["84"] = 137,["85"] = 138,["86"] = 139,["87"] = 140,["88"] = 141,["90"] = 143,["91"] = 144,["92"] = 136,["93"] = 152,["94"] = 152,["95"] = 152,["97"] = 153,["98"] = 154,["99"] = 155,["101"] = 157,["102"] = 152,["103"] = 165,["104"] = 166,["107"] = 169,["108"] = 170,["109"] = 171,["110"] = 172,["111"] = 173,["112"] = 174,["114"] = 176,["117"] = 165,["118"] = 188,["119"] = 188,["120"] = 188,["122"] = 189,["123"] = 190,["124"] = 191,["125"] = 192,["126"] = 193,["128"] = 195,["129"] = 196,["130"] = 188,["131"] = 205,["132"] = 205,["133"] = 205,["135"] = 206,["136"] = 207,["137"] = 208,["138"] = 209,["139"] = 210,["141"] = 212,["142"] = 213,["143"] = 205,["144"] = 222,["145"] = 222,["146"] = 222,["148"] = 223,["149"] = 224,["150"] = 225,["151"] = 226,["152"] = 227,["154"] = 229,["155"] = 230,["156"] = 222,["157"] = 239,["158"] = 239,["159"] = 239,["161"] = 240,["162"] = 241,["163"] = 242,["164"] = 243,["165"] = 244,["167"] = 246,["168"] = 247,["169"] = 239,["170"] = 253,["171"] = 254,["172"] = 255,["173"] = 256,["174"] = 257,["176"] = 254,["177"] = 253,["178"] = 265,["179"] = 266,["180"] = 267,["181"] = 268,["182"] = 269,["184"] = 266,["185"] = 265,["186"] = 278,["187"] = 279,["188"] = 280,["189"] = 281,["191"] = 283,["192"] = 284,["194"] = 285,["195"] = 286,["197"] = 288,["198"] = 289,["200"] = 291,["205"] = 295,["206"] = 278,["207"] = 302,["208"] = 303,["211"] = 306,["212"] = 307,["213"] = 308,["216"] = 302,["217"] = 317,["218"] = 318,["221"] = 321,["222"] = 322,["223"] = 323,["226"] = 317,["227"] = 332,["228"] = 333,["231"] = 336,["232"] = 337,["234"] = 339,["235"] = 340,["237"] = 342,["238"] = 343,["239"] = 344,["242"] = 347,["243"] = 332,["244"] = 353,["245"] = 354,["246"] = 355,["248"] = 357,["249"] = 358,["251"] = 360,["252"] = 361,["253"] = 362,["254"] = 363,["256"] = 365,["257"] = 366,["258"] = 367,["261"] = 370,["262"] = 353,["263"] = 384,["264"] = 385,["265"] = 386,["266"] = 384,["267"] = 395,["268"] = 396,["269"] = 397,["270"] = 395,["271"] = 406,["272"] = 407,["273"] = 408,["274"] = 409,["275"] = 406,["276"] = 418,["277"] = 419,["278"] = 420,["279"] = 418,["280"] = 429,["281"] = 430,["282"] = 431,["283"] = 429,["284"] = 440,["285"] = 441,["286"] = 442,["287"] = 443,["288"] = 440,["289"] = 15,["290"] = 15,["291"] = 15,["292"] = 15,["293"] = 15,["294"] = 15,["295"] = 15,["296"] = 15,["297"] = 15,["298"] = 15,["299"] = 15,["300"] = 15,["301"] = 15,["302"] = 15,["303"] = 15,["304"] = 15,["305"] = 15,["306"] = 15,["307"] = 15,["308"] = 15,["309"] = 15,["310"] = 15,["311"] = 15,["312"] = 15,["313"] = 15,["314"] = 15,["315"] = 15,["316"] = 15,["317"] = 15,["318"] = 15,["319"] = 15,["320"] = 15});
local ____exports = {}
local ____DataBase = require("solar.solar-common.common.DataBase")
local DataBase = ____DataBase.default
local ____HandleUtil = require("solar.solar-common.util.lang.HandleUtil")
local HandleUtil = ____HandleUtil.default
local ____UnitUtil = require("solar.solar-common.util.unit.UnitUtil")
local UnitUtil = ____UnitUtil.default
local ____PlayerUtil = require("solar.solar-common.util.game.PlayerUtil")
local PlayerUtil = ____PlayerUtil.default
____exports.default = __TS__Class()
local AttributeUtil = ____exports.default
AttributeUtil.name = "AttributeUtil"
function AttributeUtil.prototype.____constructor(self)
end
function AttributeUtil.getUnitAttribute(self, unitHandle, createDefault)
    if createDefault == nil then
        createDefault = false
    end
    if isDebug and createDefault and not UnitUtil.isHero(unitHandle) then
        if not UnitAlive(unitHandle) or not HandleUtil:isUnitHandle(unitHandle) then
            log.errorWithTraceBack(("警告：你正在给一个死亡的单位创建属性: " .. GetUnitName(unitHandle)) .. " 如果只是查询数据请将createDefault参数传false")
        end
    end
    local solarData = db:getUnitSolarData(unitHandle, createDefault)
    if createDefault and not solarData._SL_solarAttribute then
        solarData._SL_solarAttribute = {}
    end
    return solarData and solarData._SL_solarAttribute
end
function AttributeUtil.getUnitTypeAttribute(self, unitTypeId, createDefault)
    if createDefault == nil then
        createDefault = false
    end
    local solarData = db:getUnitTypeSolarData(unitTypeId, createDefault)
    if createDefault and not solarData._SL_solarAttribute then
        solarData._SL_solarAttribute = {}
    end
    return solarData and solarData._SL_solarAttribute
end
function AttributeUtil.addUnitAttribute(self, unitHandle, addAttribute)
    if not addAttribute then
        return
    end
    local baseAttribute = ____exports.default:getUnitAttribute(unitHandle, true)
    for key in pairs(addAttribute) do
        if type(addAttribute[key]) == "number" then
            baseAttribute[key] = (baseAttribute[key] or 0) + addAttribute[key]
        elseif baseAttribute[key] == nil then
            baseAttribute[key] = addAttribute[key]
        else
            print("未覆盖单位旧属性值:" .. key)
        end
    end
end
function AttributeUtil.getItemAttribute(self, itemHandle, createDefault)
    if createDefault == nil then
        createDefault = false
    end
    local solarData = db:getItemSolarData(itemHandle, createDefault)
    if createDefault and not solarData._SL_solarAttribute then
        solarData._SL_solarAttribute = {}
    end
    return solarData and solarData._SL_solarAttribute
end
function AttributeUtil.getItemTypeAttribute(self, itemTypeId, createDefault)
    if createDefault == nil then
        createDefault = false
    end
    local solarData = db:getItemTypeSolarData(itemTypeId, createDefault)
    if createDefault and not solarData._SL_solarAttribute then
        solarData._SL_solarAttribute = {}
    end
    return solarData and solarData._SL_solarAttribute
end
function AttributeUtil.setItemTypeAttribute(self, itemTypeId, attribute, allowCover)
    if allowCover == nil then
        allowCover = false
    end
    local solarData = db:getItemTypeSolarData(itemTypeId)
    local oldAttribute = solarData._SL_solarAttribute
    if oldAttribute and not allowCover then
        log.errorWithTraceBack("此物品类型已有属性了，无法覆盖所有属性!可直接修改已有属性的对应词条!" .. itemTypeId)
        return oldAttribute
    end
    solarData._SL_solarAttribute = attribute
    return oldAttribute
end
function AttributeUtil.getPlayerAttribute(self, playerHandle, createDefault)
    if createDefault == nil then
        createDefault = false
    end
    local solarData = db:getPlayerSolarData(playerHandle, createDefault)
    if createDefault and not solarData._SL_solarAttribute then
        solarData._SL_solarAttribute = {}
    end
    return solarData and solarData._SL_solarAttribute
end
function AttributeUtil.addPlayerAttribute(self, playerHandle, addAttribute)
    if not addAttribute then
        return
    end
    local basePlayerAttribute = ____exports.default:getPlayerAttribute(playerHandle, true)
    for key in pairs(addAttribute) do
        if type(addAttribute[key]) == "number" then
            basePlayerAttribute[key] = (basePlayerAttribute[key] or 0) + addAttribute[key]
        elseif basePlayerAttribute[key] == nil then
            basePlayerAttribute[key] = addAttribute[key]
        else
            print("未覆盖玩家旧属性值:" .. key)
        end
    end
end
function AttributeUtil.setPlayerAttribute(self, playerHandle, attribute, allowCover)
    if allowCover == nil then
        allowCover = false
    end
    local solarData = db:getPlayerSolarData(playerHandle)
    local oldAttribute = solarData._SL_solarAttribute
    if oldAttribute and not allowCover then
        log.errorWithTraceBack("此玩家已有属性了，无法覆盖所有属性!可直接修改已有属性的对应词条!" .. tostring(GetPlayerId(playerHandle)))
        return oldAttribute
    end
    solarData._SL_solarAttribute = attribute
    return oldAttribute
end
function AttributeUtil.setUnitAttribute(self, unitHandle, attribute, allowCover)
    if allowCover == nil then
        allowCover = false
    end
    local unitSolarData = db:getUnitSolarData(unitHandle)
    local oldAttribute = unitSolarData._SL_solarAttribute
    if oldAttribute and not allowCover then
        log.errorWithTraceBack("此单位已有属性了，无法覆盖所有属性!可直接修改已有属性的对应词条!" .. GetUnitName(unitHandle))
        return oldAttribute
    end
    unitSolarData._SL_solarAttribute = attribute
    return oldAttribute
end
function AttributeUtil.setUnitTypeAttribute(self, unitTypeId, attribute, allowCover)
    if allowCover == nil then
        allowCover = false
    end
    local solarData = db:getUnitTypeSolarData(unitTypeId, true)
    local oldAttribute = solarData._SL_solarAttribute
    if oldAttribute and not allowCover then
        log.errorWithTraceBack("此单位已有属性了，无法覆盖所有属性!可直接修改已有属性的对应词条!" .. unitTypeId)
        return oldAttribute
    end
    solarData._SL_solarAttribute = attribute
    return oldAttribute
end
function AttributeUtil.setItemAttribute(self, itemHandle, attribute, allowCover)
    if allowCover == nil then
        allowCover = false
    end
    local solarData = db:getItemSolarData(itemHandle)
    local oldAttribute = solarData._SL_solarAttribute
    if oldAttribute and not allowCover then
        log.errorWithTraceBack("此物品已有属性了，无法覆盖所有属性!可直接修改已有属性的对应词条!" .. GetItemName(itemHandle))
        return oldAttribute
    end
    solarData._SL_solarAttribute = attribute
    return oldAttribute
end
function AttributeUtil.forAllUnitsAttribute(self, callback)
    DataBase:forUnitSolarDatas(function(____, u, solarData)
        local solarAttribute = solarData and solarData._SL_solarAttribute
        if solarAttribute then
            callback(nil, u, solarAttribute)
        end
    end)
end
function AttributeUtil.forAllPlayerAttribute(self, callback)
    PlayerUtil:forPlayingPlayers(function(____, player)
        local playerAttribute = ____exports.default:getPlayerAttribute(player, false)
        if playerAttribute then
            callback(nil, player, playerAttribute)
        end
    end)
end
function AttributeUtil.sumAttributes(self, attributes)
    local result = {}
    if attributes == nil then
        return result
    end
    for ____, attribute in ipairs(attributes) do
        for key in pairs(attribute) do
            do
                if type(attribute[key]) ~= "number" then
                    goto __continue48
                end
                if not result[key] then
                    result[key] = 0
                end
                result[key] = result[key] + attribute[key]
            end
            ::__continue48::
        end
    end
    return result
end
function AttributeUtil.add(self, attribute, _attribute)
    if not _attribute then
        return
    end
    for key in pairs(_attribute) do
        if type(_attribute[key]) == "number" then
            attribute[key] = (attribute[key] or 0) + _attribute[key]
        end
    end
end
function AttributeUtil.subtract(self, attribute, _attribute)
    if not _attribute then
        return
    end
    for key in pairs(_attribute) do
        if type(_attribute[key]) == "number" then
            attribute[key] = (attribute[key] or 0) - _attribute[key]
        end
    end
end
function AttributeUtil.multiply(self, attribute, scale, store)
    if not attribute then
        return
    end
    if scale == 0 then
        return {}
    end
    if store == nil then
        store = {}
    end
    for key in pairs(attribute) do
        if type(attribute[key]) == "number" then
            store[key] = (attribute[key] or 0) * scale
        end
    end
    return store
end
function AttributeUtil.isEquals(self, attribute, otherAttribute)
    if attribute == otherAttribute then
        return true
    end
    if attribute == nil or otherAttribute == nil then
        return false
    end
    local keys1 = __TS__ObjectKeys(attribute)
    local keys2 = __TS__ObjectKeys(otherAttribute)
    if #keys1 ~= #keys2 then
        return false
    end
    for ____, key in ipairs(keys1) do
        if attribute[key] ~= otherAttribute[key] then
            return false
        end
    end
    return true
end
function AttributeUtil.getAbilityCDP(self, unitHandle, abilityIdStr)
    local attribute = ____exports.default:getUnitAttribute(unitHandle, false)
    return attribute and attribute["ability_cd_p_" .. abilityIdStr] or 0
end
function AttributeUtil.setAbilityCDP(self, unitHandle, abilityIdStr, val)
    local attribute = ____exports.default:getUnitAttribute(unitHandle, true)
    attribute["ability_cd_p_" .. abilityIdStr] = val
end
function AttributeUtil.addAbilityCDP(self, unitHandle, abilityIdStr, val)
    local attribute = ____exports.default:getUnitAttribute(unitHandle, true)
    local key = "ability_cd_p_" .. abilityIdStr
    attribute[key] = (attribute[key] or 0) + val
end
function AttributeUtil.getAbilityCD(self, unitHandle, abilityIdStr)
    local attribute = ____exports.default:getUnitAttribute(unitHandle, false)
    return attribute and attribute["ability_cd_" .. abilityIdStr] or 0
end
function AttributeUtil.setAbilityCD(self, unitHandle, abilityIdStr, val)
    local attribute = ____exports.default:getUnitAttribute(unitHandle, true)
    attribute["ability_cd_" .. abilityIdStr] = val
end
function AttributeUtil.addAbilityCD(self, unitHandle, abilityIdStr, val)
    local attribute = ____exports.default:getUnitAttribute(unitHandle, true)
    local key = "ability_cd_" .. abilityIdStr
    attribute[key] = (attribute[key] or 0) + val
end
AttributeUtil.keyNameMap = {
    attack = "攻击",
    attack_p = "攻击增幅",
    life = "生命",
    life_p = "生命增幅",
    mana = "魔法",
    mana_p = "魔法增幅",
    def = "护甲",
    def_p = "护甲增幅",
    full_property = "全属性",
    full_property_p = "全属性增幅",
    strength = "力量",
    strength_p = "力量增幅",
    agility = "敏捷",
    agility_p = "敏捷增幅",
    intelligence = "智力",
    intelligence_p = "智力增幅",
    attackSpd_p = "攻击速度",
    move_speed = "移动速度",
    damage_cool = "攻击间隔",
    damage_range = "攻击范围",
    attack_damage_increased = "攻击增伤",
    physical_damage_increased = "物理增伤",
    magic_damage_increased = "法术增伤",
    physical_critical_chance = "物理暴击几率",
    physical_critical_damage = "物理暴击伤害",
    magic_critical_chance = "法术暴击几率",
    magic_critical_damage = "法术暴击伤害",
    damage_increased = "全伤害增幅",
    damage_reduction = "伤害减免",
    blood_sucking = "伤害吸血"
}
return ____exports
