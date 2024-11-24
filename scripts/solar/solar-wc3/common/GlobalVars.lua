local ____lualib = require("lualib_bundle")
local __TS__New = ____lualib.__TS__New
local __TS__Class = ____lualib.__TS__Class
local __TS__StringStartsWith = ____lualib.__TS__StringStartsWith
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 6,["19"] = 6,["20"] = 7,["21"] = 7,["22"] = 8,["23"] = 8,["24"] = 9,["25"] = 9,["26"] = 10,["27"] = 10,["28"] = 11,["29"] = 11,["30"] = 12,["31"] = 12,["32"] = 13,["33"] = 13,["34"] = 14,["35"] = 14,["36"] = 15,["37"] = 15,["38"] = 16,["39"] = 16,["40"] = 17,["41"] = 17,["42"] = 18,["43"] = 18,["44"] = 20,["45"] = 21,["46"] = 22,["47"] = 23,["48"] = 24,["49"] = 25,["50"] = 26,["51"] = 27,["52"] = 28,["53"] = 29,["54"] = 30,["55"] = 32,["56"] = 32,["57"] = 32,["59"] = 32,["60"] = 42,["61"] = 42,["62"] = 42,["64"] = 42,["65"] = 42,["67"] = 43,["70"] = 46,["71"] = 48,["72"] = 49,["73"] = 50,["74"] = 51,["75"] = 53,["76"] = 54,["78"] = 56,["81"] = 59,["83"] = 61,["84"] = 62,["85"] = 42,["86"] = 65,["87"] = 66,["90"] = 69,["91"] = 72,["92"] = 73,["93"] = 74,["94"] = 75,["96"] = 78,["97"] = 80,["98"] = 81,["100"] = 84,["101"] = 85,["103"] = 88,["104"] = 65,["105"] = 92,["106"] = 93,["107"] = 94,["109"] = 96,["112"] = 98,["115"] = 101,["116"] = 102,["117"] = 103,["119"] = 105,["120"] = 107,["121"] = 108,["122"] = 109,["123"] = 110,["124"] = 111,["125"] = 112,["126"] = 113,["127"] = 115,["128"] = 117,["131"] = 120,["132"] = 122,["133"] = 124,["136"] = 128,["137"] = 131,["138"] = 133,["139"] = 135,["140"] = 137,["141"] = 138,["142"] = 139,["143"] = 140,["144"] = 141,["145"] = 142,["146"] = 142,["148"] = 143,["149"] = 92,["150"] = 147,["151"] = 149,["153"] = 151,["154"] = 152,["156"] = 155,["160"] = 147,["161"] = 162,["162"] = 163,["163"] = 164,["164"] = 166,["165"] = 167,["166"] = 166,["167"] = 170,["168"] = 171,["169"] = 173,["170"] = 174,["171"] = 175,["173"] = 178,["174"] = 180,["175"] = 181,["176"] = 182,["178"] = 187,["179"] = 188,["180"] = 162,["181"] = 192,["182"] = 193,["183"] = 194,["184"] = 195,["185"] = 196,["186"] = 197,["187"] = 198,["188"] = 199,["189"] = 202,["190"] = 203,["191"] = 204,["192"] = 205,["193"] = 206,["194"] = 207,["195"] = 209,["196"] = 211,["197"] = 212,["198"] = 211,["199"] = 215,["200"] = 216,["201"] = 217,["202"] = 218,["205"] = 221,["206"] = 223,["207"] = 224,["210"] = 228,["211"] = 216,["212"] = 230,["213"] = 231,["214"] = 232,["215"] = 233,["218"] = 236,["219"] = 238,["220"] = 239,["223"] = 242,["224"] = 231,["225"] = 244,["226"] = 245,["230"] = 248,["231"] = 248,["232"] = 249,["233"] = 250,["237"] = 248,["240"] = 244,["241"] = 256,["242"] = 258,["243"] = 259,["244"] = 256,["245"] = 262,["246"] = 264,["247"] = 265,["249"] = 262,["250"] = 268,["251"] = 269,["252"] = 270,["253"] = 271,["254"] = 272,["255"] = 273,["256"] = 269,["257"] = 276,["258"] = 277,["259"] = 278,["261"] = 280,["262"] = 281,["263"] = 282,["265"] = 284,["266"] = 276,["267"] = 192,["268"] = 33,["269"] = 34,["270"] = 35});
local ____exports = {}
local ____SolveLuaAsyn = require("solar.solar-wc3.lib.compatible.SolveLuaAsyn")
local SolveLuaAsyn = ____SolveLuaAsyn.default
local ____BaseUtil = require("solar.solar-common.util.BaseUtil")
local BaseUtil = ____BaseUtil.default
local ____EmbedJapi = require("solar.solar-wc3.lib.compatible.EmbedJapi")
local EmbedJapi = ____EmbedJapi.default
local ____DzApiHelper = require("solar.solar-wc3.lib.compatible.DzApiHelper")
local DzApiHelper = ____DzApiHelper.default
local ____Constant = require("solar.solar-common.constant.Constant")
local Constant = ____Constant.default
local ____Log = require("solar.solar-wc3.common.Log")
local Log = ____Log.default
local ____Develop = require("solar.solar-wc3.common.Develop")
local Develop = ____Develop.default
local ____Es = require("solar.solar-wc3.lib.compatible.Es")
local Es = ____Es.default
local ____ErrorMsgHelper = require("solar.solar-common.common.ErrorMsgHelper")
local ErrorMsgHelper = ____ErrorMsgHelper.default
local ____IDAdapter = require("solar.solar-wc3.lib.compatible.IDAdapter")
local IDAdapter = ____IDAdapter.default
local ____YDWE = require("solar.solar-wc3.lib.compatible.YDWE")
local YDWE = ____YDWE.default
local ____SolarDataClearState = require("solar.solar-common.attribute.SolarDataClearState")
local SolarDataClearState = ____SolarDataClearState.default
local ____YiYiEnv = require("solar.solar-wc3.lib.compatible.yiyi.YiYiEnv")
local YiYiEnv = ____YiYiEnv.default
local ____SolarReload = require("solar.solar-common.common.SolarReload")
local SolarReload = ____SolarReload.default
local ____SolarGlobalVars = require("solar.solar-common.common.SolarGlobalVars")
local SolarGlobalVars = ____SolarGlobalVars.default
local ____KKImplementEmbedJapi = require("solar.solar-wc3.lib.compatible.kk.KKImplementEmbedJapi")
local KKImplementEmbedJapi = ____KKImplementEmbedJapi.default
local ____ErrorFrame = require("solar.solar-common.common.ErrorFrame")
local ErrorFrame = ____ErrorFrame.default
local ____KKApiHelper = require("solar.solar-wc3.lib.compatible.kk.KKApiHelper")
local KKApiHelper = ____KKApiHelper.default
local CJ = require("jass.common")
local globals = require("jass.globals")
local japi = require("jass.japi")
local ai = require("jass.ai")
local slk = require("jass.slk")
local runtime = require("jass.runtime")
local jConsole = require("jass.console")
local jDebug = require("jass.debug")
local jMessage = require("jass.message")
local storm = require("jass.storm")
_G.log = __TS__New(Log)
____exports.default = __TS__Class()
local GlobalVars = ____exports.default
GlobalVars.name = "GlobalVars"
function GlobalVars.prototype.____constructor(self)
end
function GlobalVars.init(self, ____debug, egp_enable)
    if ____debug == nil then
        ____debug = isDebug
    end
    if egp_enable == nil then
        egp_enable = ____debug
    end
    if _G.GlobalVars_init then
        return
    end
    SolarGlobalVars:init(____debug, egp_enable)
    _G.isDebug = ____debug
    Develop._sl_egp_enable = egp_enable
    if isDebug then
        Develop:open()
        if DzTriggerRegisterSyncData then
            SolarReload:init()
        else
            log.debug("本地Dzapi环境不存在！未启动热加载模块！")
        end
    else
        Develop:close()
    end
    ErrorFrame:init()
    _G.GlobalVars_init = true
end
function GlobalVars.initOnMain(self)
    if ____exports.default._sl_isInitOnMain then
        return
    end
    ____exports.default:set2G(globals)
    InitBlizzardGlobals()
    if isEmbedJapi then
        EmbedJapi:initInEnd()
        print("初始化内置Japi环境")
    end
    SolveLuaAsyn.init()
    if is_11Platform then
        YiYiEnv:initInEnd()
    end
    if DzGetActivePatron ~= nil then
        KKImplementEmbedJapi:init()
    end
    ____exports.default._sl_isInitOnMain = true
end
function GlobalVars.init0(self)
    if ____exports.default.isInit then
        return true
    end
    ____exports.default.isInit = true
    do
        pcall(function()
            require("env_vars")
        end)
    end
    isDebug = storm.load(tostring(local_map_dir_path) .. "/src/App.ts") ~= nil and storm.load("war3mapunits.doo") ~= nil
    if isDebug then
        runtime.console = true
    end
    ____exports.default:initBaseLuaEnv()
    ____exports.default:set2G(jDebug)
    ____exports.default:set2G(CJ)
    ____exports.default:set2G(ai)
    ____exports.default:set2G(japi)
    _g_objs = slk
    ____exports.default:set2G(jMessage)
    for gk in pairs(DzApiHelper) do
        if __TS__StringStartsWith(gk, "Dz") then
            _G[gk] = DzApiHelper[gk]
        end
    end
    for gk in pairs(KKApiHelper) do
        if __TS__StringStartsWith(gk, "Dz") or __TS__StringStartsWith(gk, "KK") then
            _G[gk] = KKApiHelper[gk]
        end
    end
    ____exports.default:initBaseVars()
    require("blizzard")
    require("solar_addons")
    SolveLuaAsyn.SolveMathAsyn()
    BaseUtil.init()
    Constant:init()
    IDAdapter.init()
    YDWE:_sl_init()
    SolarDataClearState:_sl_hookClearHandle()
    if DzLoadToc ~= nil then
        DzLoadToc("solar_asset\\ui\\base.toc")
    end
    return true
end
function GlobalVars.set2G(self, obj)
    for gk in pairs(obj) do
        do
            if "table" == gk then
                goto __continue25
            end
            _G[gk] = obj[gk]
        end
        ::__continue25::
    end
end
function GlobalVars.initBaseLuaEnv(self)
    Es:init()
    targetLanguage = "lua"
    _G.print = function(...)
        jConsole.write(...)
    end
    runtime.error_handle = ErrorMsgHelper.error_handle
    runtime.handle_level = 0
    isEmbedJapi = japi.GetPluginVersion ~= nil
    if isEmbedJapi then
        EmbedJapi:init()
    end
    isEmbedBrowser = japi.InitHtml5Plugin ~= nil
    is_11Platform = japi.EXNetIsYYHighLadder ~= nil
    if is_11Platform then
        YiYiEnv:init()
    end
    require("base")
    require("json")
end
function GlobalVars.initBaseVars(self)
    isBigAttributeMode = false
    StrHpBonus = S2R(_g_objs.misc.Misc.StrHitPointBonus)
    AgiDefenseBonus = S2R(_g_objs.misc.Misc.AgiDefenseBonus)
    IntManaBonus = S2R(_g_objs.misc.Misc.IntManaBonus)
    PrimaryAttackBonus = S2R(_g_objs.misc.Misc.StrAttackBonus)
    ArmorReducesDamageFactor = S2R(_g_objs.misc.Misc.DefenseArmor)
    PawnItemRate = S2R(_g_objs.misc.Misc.PawnItemRate or "0.5")
    tempLocation = Location(0, 0)
    tempGroup = CreateGroup()
    _tempGroup = CreateGroup()
    _sl_tempGroup1 = CreateGroup()
    _sl_tempGroup2 = CreateGroup()
    _sl_tempGroup3 = CreateGroup()
    _G.globals = globals
    _G.UnitAlive = function(unit)
        return GetUnitState(unit, UNIT_STATE_LIFE) > 0.405 and not IsUnitType(unit, UNIT_TYPE_DEAD)
    end
    local old_handle_ref = handle_ref
    _G.handle_ref = function(h)
        if not IsHandle(h) then
            log.errorWithTraceBack("无法增加一个空handle的引用!")
            return
        end
        local defInfo = handledef(h)
        if not defInfo.reference or defInfo.reference <= 0 then
            log.errorWithTraceBack(("无法增加一个0引用的handle的引用!请提前增加引用。" .. "因为此handle已经是空闲的handle了，马上就会被底层重用了！") .. tostring(defInfo and defInfo.reference))
            return
        end
        old_handle_ref(h)
    end
    local old_handle_unref = handle_unref
    _G.handle_unref = function(h)
        if not IsHandle(h) then
            log.errorWithTraceBack("无法减少一个空handle的引用!")
            return
        end
        local defInfo = handledef(h)
        if not defInfo.reference or defInfo.reference <= 0 then
            log.errorWithTraceBack("无法减少一个0引用的handle的引用!请提前使用handle_ref增加引用!" .. tostring(defInfo and defInfo.reference))
            return
        end
        old_handle_unref(h)
    end
    _G.handle_clearref = function(h)
        if not IsHandle(h) then
            return
        end
        do
            local i = 0
            while i < 10000 do
                if handledef(h).reference > 0 then
                    handle_unref(h)
                else
                    return
                end
                i = i + 1
            end
        end
    end
    _G.char2number = function(char)
        local t = string
        return t.byte(char, 1)
    end
    _G.deleteKey = function(obj, key)
        if obj then
            obj[key] = nil
        end
    end
    local oldUnitDropItemSlot = UnitDropItemSlot
    _G.UnitDropItemSlot = function(whichUnit, whichItem, slot)
        gv.isUnitDropItemSlotExecIng = true
        local b = oldUnitDropItemSlot(whichUnit, whichItem, slot)
        gv.isUnitDropItemSlotExecIng = false
        return b
    end
    _G.HttpRequest = function(url, post, onResult)
        if post_message then
            return post_message(url, post, onResult)
        else
            local info = "此函数暂时未兼容你的脚本环境!"
            print(info)
            onResult(info)
        end
        return false
    end
end
GlobalVars.isInit = false
GlobalVars._sl_isInitOnMain = false
GlobalVars.justInvoke = ____exports.default:init0()
return ____exports
