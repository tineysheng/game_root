local ____lualib = require("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 3,["7"] = 3,["8"] = 5,["9"] = 5,["10"] = 5,["12"] = 5,["13"] = 23,["14"] = 24,["15"] = 24,["16"] = 23,["17"] = 28,["18"] = 29,["19"] = 30,["20"] = 31,["22"] = 33,["23"] = 35,["24"] = 36,["25"] = 37,["27"] = 39,["28"] = 39,["29"] = 39,["30"] = 39,["31"] = 39,["32"] = 40,["33"] = 41,["34"] = 42,["36"] = 45,["37"] = 46,["38"] = 47,["41"] = 50,["42"] = 52,["43"] = 53,["44"] = 62,["45"] = 62,["46"] = 62,["47"] = 62,["48"] = 63,["49"] = 63,["50"] = 64,["51"] = 69,["52"] = 71,["53"] = 72,["57"] = 77,["58"] = 78,["59"] = 79,["61"] = 81,["62"] = 82,["63"] = 83,["64"] = 84,["67"] = 87,["68"] = 28,["69"] = 90,["70"] = 91,["73"] = 94,["74"] = 96,["75"] = 97,["77"] = 100,["78"] = 101,["79"] = 102,["80"] = 103,["81"] = 104,["82"] = 103,["84"] = 107,["85"] = 108,["86"] = 109,["87"] = 111,["89"] = 113,["90"] = 107,["92"] = 117,["93"] = 118,["94"] = 119,["95"] = 120,["96"] = 121,["97"] = 122,["98"] = 123,["99"] = 124,["102"] = 127,["103"] = 120,["105"] = 130,["106"] = 131,["107"] = 132,["108"] = 133,["109"] = 134,["112"] = 137,["113"] = 130,["116"] = 90,["117"] = 9,["118"] = 12,["119"] = 15});
local ____exports = {}
local ____DataBase = require("solar.solar-common.common.DataBase")
local DataBase = ____DataBase.default
____exports.default = __TS__Class()
local MessageUtil = ____exports.default
MessageUtil.name = "MessageUtil"
function MessageUtil.prototype.____constructor(self)
end
function MessageUtil.addWindowEventCallBack(self, callBack)
    local ____exports_default_windowEventCallBacks_0 = ____exports.default.windowEventCallBacks
    ____exports_default_windowEventCallBacks_0[#____exports_default_windowEventCallBacks_0 + 1] = callBack
end
function MessageUtil._sl_onHookMsg(self, msg)
    local ____type = msg.type
    if ____type == nil then
        return true
    end
    if ____type == "key_down" then
    elseif ____type == "mouse_ability" then
        if msg.ability == nil then
            return true
        end
        local ____opt_1 = DataBase:getAbilityTypeSolarData(
            id2string(msg.ability),
            false
        )
        local actor = ____opt_1 and ____opt_1._SL_solarActorAbility
        if actor ~= nil then
            if actor:isPassive() or actor:isDisable() or actor:isHide() then
                return false
            end
            local b = actor:localClick(msg.code == 4 and 2 or 1, msg.x, msg.y)
            if b == false then
                return false
            end
        end
    elseif ____type == "mouse_item" then
        local order = msg.order
        local itemIndex = order - 852008
        local item = UnitItemInSlot(
            selection(),
            itemIndex
        )
        local ____opt_3 = DataBase:getItemSolarData(item, false)
        local actor = ____opt_3 and ____opt_3._SL_solarActorItem
        if actor ~= nil then
            local b = actor:localClick(msg.code == 4 and 2 or 1, msg.x, msg.y)
            if b == false then
                return false
            end
        end
    end
    local hookEventCallBacks = ____exports.default.hookEventCallBacks[____type]
    if hookEventCallBacks == nil then
        return true
    end
    for ____, callBack in ipairs(hookEventCallBacks) do
        local f = callBack(nil, msg)
        if f == false then
            return f
        end
    end
    return true
end
function MessageUtil._sl_init_message_hook(self)
    if ____exports.default._sl_isInitialized then
        return
    end
    ____exports.default._sl_isInitialized = true
    if isEmbedJapi == false and isDebug then
        print("提示：部分we注册message.hook事件会导致释放技能崩溃!(标准ydwe不会！)")
    end
    local message = require("jass.message")
    local hook = message.hook
    if hook == nil then
        message.hook = function(msg)
            return ____exports.default:_sl_onHookMsg(msg)
        end
    else
        message.hook = function(msg)
            local flag = ____exports.default:_sl_onHookMsg(msg)
            if flag == false then
                return flag
            end
            return hook(msg)
        end
    end
    if isEmbedJapi then
        local oldWindowEventCallBack = _G.WindowEventCallBack
        if oldWindowEventCallBack == nil then
            _G.WindowEventCallBack = function(eventId)
                for ____, windowEventCallBack in ipairs(____exports.default.windowEventCallBacks) do
                    local flag = windowEventCallBack(eventId)
                    if flag == true then
                        return true
                    end
                end
                return false
            end
        else
            _G.WindowEventCallBack = function(eventId)
                for ____, windowEventCallBack in ipairs(____exports.default.windowEventCallBacks) do
                    local flag = windowEventCallBack(eventId)
                    if flag == true then
                        return true
                    end
                end
                return oldWindowEventCallBack(eventId)
            end
        end
    end
end
MessageUtil.hookEventCallBacks = {}
MessageUtil.windowEventCallBacks = {}
MessageUtil._sl_isInitialized = false
return ____exports
