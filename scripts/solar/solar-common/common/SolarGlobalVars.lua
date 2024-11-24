local ____lualib = require("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 4,["14"] = 4,["15"] = 7,["16"] = 7,["17"] = 7,["19"] = 7,["20"] = 16,["21"] = 16,["22"] = 16,["24"] = 16,["25"] = 16,["27"] = 17,["28"] = 18,["29"] = 18,["30"] = 18,["31"] = 19,["32"] = 18,["33"] = 18,["34"] = 16,["35"] = 24,["36"] = 25,["37"] = 26,["39"] = 28,["40"] = 29,["41"] = 30,["42"] = 31,["43"] = 32,["44"] = 33,["45"] = 34,["46"] = 35,["47"] = 36,["49"] = 31,["50"] = 39,["51"] = 40,["52"] = 24,["53"] = 47,["54"] = 48,["55"] = 49,["56"] = 50,["57"] = 51,["58"] = 52,["59"] = 53,["60"] = 54,["62"] = 56,["63"] = 57,["65"] = 59,["66"] = 60,["68"] = 62,["69"] = 63,["70"] = 64,["71"] = 66,["72"] = 64,["73"] = 68,["74"] = 69,["75"] = 70,["77"] = 72,["78"] = 68,["79"] = 74,["80"] = 76,["81"] = 47,["82"] = 80,["83"] = 82,["84"] = 80,["85"] = 8,["86"] = 9,["87"] = 88});
local ____exports = {}
local ____DataBase = require("solar.solar-common.common.DataBase")
local DataBase = ____DataBase.default
local ____FourCC = require("solar.solar-common.common.FourCC")
local FourCC = ____FourCC.default
local ____SolarEvent = require("solar.solar-common.common.SolarEvent")
local SolarEvent = ____SolarEvent.default
local ____SupportReload = require("solar.solar-common.decorator.SupportReload")
local SupportReload = ____SupportReload.default
____exports.default = __TS__Class()
local SolarGlobalVars = ____exports.default
SolarGlobalVars.name = "SolarGlobalVars"
function SolarGlobalVars.prototype.____constructor(self)
end
function SolarGlobalVars.init(self, ____debug, egp_enable)
    if ____debug == nil then
        ____debug = isDebug
    end
    if egp_enable == nil then
        egp_enable = ____debug
    end
    ____exports.default:printLogo()
    se:playerChat(
        "-sl-version",
        function()
            BJDebugMsg("当前游戏的太阳TS框架版本号为:" .. tostring(_sl_version))
        end
    )
end
function SolarGlobalVars.init0(self)
    if ____exports.default.isInit then
        return true
    end
    ____exports.default.isInit = true
    _G.FourCC = FourCC.string2id
    _G.id2string = FourCC.id2string
    _G.asyncExec = function(asyncPlayer, fun)
        if asyncPlayer == GetLocalPlayer() then
            local old = isAsync
            isAsync = true
            fun(nil)
            isAsync = old
        end
    end
    ____exports.default:initBaseVars()
    return true
end
function SolarGlobalVars.initBaseVars(self)
    gameName = "太阳TS地图"
    _sl_version = 6.3
    isBigAttributeMode = false
    handleReuseMinTime = 2.99
    isAsync = false
    if settings == nil then
        settings = {fontPath = "Fonts\\dfst-m3u.ttf"}
    end
    if gv == nil then
        gv = {}
    end
    if globals == nil then
        globals = _G
    end
    db = DataBase
    sd = DataBase.sd
    _G.deleteKey = function(obj, key)
        obj[key] = nil
    end
    _G.IsHandle = function(h)
        if h == nil or h == 0 then
            return false
        end
        return true
    end
    se = __TS__New(SolarEvent)
    _G.SupportReload = SupportReload
end
function SolarGlobalVars.printLogo(self)
    print(____exports.default.logoText)
end
SolarGlobalVars.isInit = false
SolarGlobalVars.justInvoke = ____exports.default:init0()
SolarGlobalVars.logoText = (((((("\n     ________      ________     ___          ________     ________\n" .. "    |\\   ____\\    |\\   __  \\   |\\  \\        |\\   __  \\   |\\   __  \\\n") .. "    \\ \\  \\___|_   \\ \\  \\|\\  \\  \\ \\  \\       \\ \\  \\|\\  \\  \\ \\  \\|\\  \\\n") .. "     \\ \\_____  \\   \\ \\  \\\\\\  \\  \\ \\  \\       \\ \\   __  \\  \\ \\   _  _\\\n") .. "      \\|____|\\  \\   \\ \\  \\\\\\  \\  \\ \\  \\       \\ \\  \\ \\  \\  \\ \\  \\\\  \\|\n") .. "        ____\\_\\  \\   \\ \\  \\\\\\  \\  \\ \\  \\____   \\ \\  \\ \\  \\  \\ \\  \\\\  \\\n") .. "       |\\_________\\   \\ \\_______\\  \\ \\_______\\  \\ \\__\\ \\__\\  \\ \\__\\\\ _\\\n") .. "       \\|_________|    \\|_______|   \\|_______|   \\|__|\\|__|   \\|__|\\|__|\n"
return ____exports
