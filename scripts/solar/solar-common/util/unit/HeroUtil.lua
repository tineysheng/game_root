local ____lualib = require("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__Number = ____lualib.__TS__Number
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 3,["8"] = 3,["9"] = 3,["11"] = 3,["12"] = 8,["13"] = 9,["14"] = 8,["15"] = 16,["16"] = 17,["17"] = 18,["18"] = 19,["19"] = 16,["20"] = 26,["21"] = 27,["22"] = 28,["23"] = 29,["24"] = 30,["25"] = 30,["26"] = 30,["28"] = 30,["29"] = 26,["30"] = 38,["31"] = 39,["32"] = 40,["33"] = 41,["34"] = 41,["35"] = 41,["36"] = 41,["37"] = 41,["38"] = 38,["39"] = 59,["40"] = 59,["41"] = 59,["43"] = 59,["44"] = 59,["46"] = 60,["47"] = 61,["48"] = 61,["49"] = 61,["50"] = 61,["51"] = 62,["53"] = 64,["54"] = 65,["55"] = 65,["56"] = 65,["57"] = 65,["58"] = 66,["60"] = 68,["61"] = 69,["62"] = 69,["63"] = 69,["64"] = 69,["65"] = 70,["67"] = 59,["68"] = 92,["69"] = 92,["70"] = 92,["72"] = 92,["73"] = 92,["75"] = 93,["76"] = 94,["77"] = 94,["78"] = 94,["79"] = 94,["80"] = 95,["82"] = 97,["83"] = 98,["84"] = 98,["85"] = 98,["86"] = 98,["87"] = 99,["89"] = 101,["90"] = 102,["91"] = 102,["92"] = 102,["93"] = 102,["94"] = 103,["96"] = 92,["97"] = 115,["98"] = 116,["99"] = 117,["100"] = 118,["101"] = 119,["103"] = 121,["104"] = 121,["105"] = 121,["106"] = 121,["107"] = 121,["108"] = 122,["109"] = 122,["110"] = 122,["111"] = 122,["112"] = 122,["113"] = 123,["114"] = 123,["115"] = 123,["116"] = 123,["117"] = 123,["119"] = 115,["120"] = 134,["121"] = 136,["122"] = 137,["123"] = 137,["124"] = 137,["125"] = 137,["126"] = 138,["127"] = 139,["128"] = 140,["129"] = 140,["130"] = 140,["131"] = 140,["132"] = 141,["133"] = 142,["134"] = 143,["135"] = 143,["136"] = 143,["137"] = 143,["138"] = 144,["140"] = 134,["141"] = 153,["142"] = 154,["143"] = 154,["144"] = 154,["145"] = 154,["146"] = 155,["147"] = 153,["148"] = 163,["149"] = 164,["150"] = 164,["151"] = 164,["152"] = 164,["153"] = 165,["154"] = 163,["155"] = 173,["156"] = 174,["157"] = 174,["158"] = 174,["159"] = 174,["160"] = 175,["161"] = 173,["162"] = 182,["163"] = 182,["164"] = 182,["166"] = 183,["167"] = 184,["168"] = 185,["169"] = 186,["170"] = 187,["171"] = 188,["172"] = 189,["174"] = 191,["175"] = 182,["176"] = 198,["177"] = 199,["178"] = 200,["179"] = 201,["180"] = 198,["181"] = 208,["182"] = 209,["183"] = 210,["184"] = 211,["185"] = 212,["186"] = 213,["187"] = 214,["188"] = 215,["190"] = 217,["191"] = 208,["192"] = 225,["193"] = 225,["194"] = 225,["196"] = 226,["197"] = 227,["198"] = 228,["199"] = 229,["200"] = 225,["201"] = 239,["202"] = 239,["203"] = 239,["205"] = 239,["206"] = 239,["208"] = 239,["209"] = 239,["211"] = 240,["212"] = 241,["213"] = 242,["215"] = 244,["216"] = 245,["218"] = 247,["219"] = 248,["221"] = 250,["222"] = 239});
local ____exports = {}
____exports.default = __TS__Class()
local HeroUtil = ____exports.default
HeroUtil.name = "HeroUtil"
function HeroUtil.prototype.____constructor(self)
end
function HeroUtil.isHero(self, handle)
    return IsHeroUnitId(GetUnitTypeId(handle))
end
function HeroUtil.getHeroPrimary(self, handle)
    local objIdStr = id2string(GetUnitTypeId(handle))
    local obj = _g_objs.unit[objIdStr]
    return obj.Primary
end
function HeroUtil.getHeroPrimaryPlus(self, handle)
    local objIdStr = id2string(GetUnitTypeId(handle))
    local obj = _g_objs.unit[objIdStr]
    local primaryPlus = obj[obj.Primary .. "plus"]
    local ____primaryPlus_0 = primaryPlus
    if ____primaryPlus_0 == nil then
        ____primaryPlus_0 = "0"
    end
    return __TS__Number(____primaryPlus_0)
end
function HeroUtil.getHeroPlus(self, handle)
    local objIdStr = id2string(GetUnitTypeId(handle))
    local obj = _g_objs.unit[objIdStr]
    return {
        __TS__Number(obj.STRplus),
        __TS__Number(obj.AGIplus),
        __TS__Number(obj.INTplus)
    }
end
function HeroUtil.addHeroProperty(self, handle, addStr, addAgi, addInt)
    if addAgi == nil then
        addAgi = addStr
    end
    if addInt == nil then
        addInt = addStr
    end
    if addStr ~= 0 then
        local newVal = math.min(
            GetHeroStr(handle, false) + addStr,
            2100000000
        )
        SetHeroStr(handle, newVal, true)
    end
    if addAgi ~= 0 then
        local newVal = math.min(
            GetHeroAgi(handle, false) + addAgi,
            2100000000
        )
        SetHeroAgi(handle, newVal, true)
    end
    if addInt ~= 0 then
        local newVal = math.min(
            GetHeroInt(handle, false) + addInt,
            2100000000
        )
        SetHeroInt(handle, newVal, true)
    end
end
function HeroUtil.addHeroPropertyP(self, handle, includeBonuses, addStrP, addAgiP, addIntP)
    if addAgiP == nil then
        addAgiP = addStrP
    end
    if addIntP == nil then
        addIntP = addStrP
    end
    if addStrP ~= 0 then
        local newVal = math.min(
            GetHeroStr(handle, includeBonuses) * (1 + addStrP),
            2100000000
        )
        SetHeroStr(handle, newVal, true)
    end
    if addAgiP ~= 0 then
        local newVal = math.min(
            GetHeroAgi(handle, includeBonuses) * (1 + addAgiP),
            2100000000
        )
        SetHeroAgi(handle, newVal, true)
    end
    if addIntP ~= 0 then
        local newVal = math.min(
            GetHeroInt(handle, includeBonuses) * (1 + addIntP),
            2100000000
        )
        SetHeroInt(handle, newVal, true)
    end
end
function HeroUtil.setHeroProperty(self, handle, newStr, newAgi, newInt)
    if isBigAttributeMode then
        SetHeroStr(handle, newStr, true)
        SetHeroAgi(handle, newAgi, true)
        SetHeroInt(handle, newInt, true)
    else
        SetHeroStr(
            handle,
            math.min(newStr, 2100000000),
            true
        )
        SetHeroAgi(
            handle,
            math.min(newAgi, 2100000000),
            true
        )
        SetHeroInt(
            handle,
            math.min(newInt, 2100000000),
            true
        )
    end
end
function HeroUtil.addHeroPropertyByKey(self, handle, key, addVal)
    if key == "STR" then
        local newVal = math.min(
            GetHeroStr(handle, false) + addVal,
            2100000000
        )
        SetHeroStr(handle, newVal, true)
    elseif key == "AGI" then
        local newVal = math.min(
            GetHeroAgi(handle, false) + addVal,
            2100000000
        )
        SetHeroAgi(handle, newVal, true)
    elseif key == "INT" then
        local newVal = math.min(
            GetHeroInt(handle, false) + addVal,
            2100000000
        )
        SetHeroInt(handle, newVal, true)
    end
end
function HeroUtil.addStr(self, handle, addVal)
    local newVal = math.min(
        GetHeroStr(handle, false) + addVal,
        2100000000
    )
    SetHeroStr(handle, newVal, true)
end
function HeroUtil.addAgi(self, handle, addVal)
    local newVal = math.min(
        GetHeroAgi(handle, false) + addVal,
        2100000000
    )
    SetHeroAgi(handle, newVal, true)
end
function HeroUtil.addInt(self, handle, addVal)
    local newVal = math.min(
        GetHeroInt(handle, false) + addVal,
        2100000000
    )
    SetHeroInt(handle, newVal, true)
end
function HeroUtil.getHeroPrimaryValue(self, handle, includeBonuses)
    if includeBonuses == nil then
        includeBonuses = true
    end
    local Primary = ____exports.default:getHeroPrimary(handle)
    if Primary == "STR" then
        return GetHeroStr(handle, includeBonuses)
    elseif Primary == "AGI" then
        return GetHeroAgi(handle, includeBonuses)
    elseif Primary == "INT" then
        return GetHeroInt(handle, includeBonuses)
    end
    return 0
end
function HeroUtil.addHeroPrimary(self, handle, addVal)
    local Primary = ____exports.default:getHeroPrimary(handle)
    ____exports.default:addHeroPropertyByKey(handle, Primary, addVal)
    return 0
end
function HeroUtil.getHeroPrimaryBonusValue(self, handle)
    local Primary = ____exports.default:getHeroPrimary(handle)
    if Primary == "STR" then
        return GetHeroStr(handle, true) - GetHeroStr(handle, false)
    elseif Primary == "AGI" then
        return GetHeroAgi(handle, true) - GetHeroAgi(handle, false)
    elseif Primary == "INT" then
        return GetHeroInt(handle, true) - GetHeroInt(handle, false)
    end
    return 0
end
function HeroUtil.getFullProperty(self, handle, includeBonuses)
    if includeBonuses == nil then
        includeBonuses = true
    end
    local fullProperty = GetHeroStr(handle, includeBonuses)
    fullProperty = fullProperty + GetHeroAgi(handle, includeBonuses)
    fullProperty = fullProperty + GetHeroInt(handle, includeBonuses)
    return fullProperty
end
function HeroUtil.getPropertyWithScale(self, handle, strScale, agiScale, intScale)
    if strScale == nil then
        strScale = 0
    end
    if agiScale == nil then
        agiScale = 0
    end
    if intScale == nil then
        intScale = 0
    end
    local fullProperty = 0
    if strScale ~= 0 then
        fullProperty = fullProperty + GetHeroStr(handle, true) * strScale
    end
    if agiScale ~= 0 then
        fullProperty = fullProperty + GetHeroAgi(handle, true) * agiScale
    end
    if intScale ~= 0 then
        fullProperty = fullProperty + GetHeroInt(handle, true) * intScale
    end
    return fullProperty
end
return ____exports
