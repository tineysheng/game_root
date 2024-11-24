local ____lualib = require("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__New = ____lualib.__TS__New
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 6,["20"] = 6,["21"] = 12,["22"] = 12,["23"] = 12,["24"] = 12,["25"] = 23,["26"] = 12,["27"] = 25,["28"] = 26,["29"] = 28,["30"] = 29,["31"] = 30,["33"] = 32,["34"] = 32,["35"] = 34,["36"] = 35,["37"] = 37,["38"] = 37,["40"] = 39,["41"] = 40,["42"] = 40,["43"] = 40,["44"] = 40,["45"] = 40,["47"] = 12,["48"] = 45,["49"] = 46,["50"] = 47,["52"] = 23,["53"] = 52,["54"] = 12,["55"] = 52,["56"] = 56,["57"] = 57,["58"] = 57,["59"] = 57,["60"] = 58,["63"] = 62,["64"] = 63,["67"] = 67,["68"] = 67,["69"] = 67,["70"] = 68,["71"] = 69,["72"] = 70,["74"] = 72,["75"] = 67,["76"] = 67,["77"] = 57,["78"] = 57,["79"] = 56,["80"] = 88,["81"] = 89,["82"] = 91,["83"] = 92,["84"] = 93,["85"] = 94,["86"] = 94,["87"] = 94,["88"] = 95,["89"] = 94,["90"] = 94,["91"] = 94,["93"] = 99,["94"] = 100,["95"] = 101,["96"] = 102,["97"] = 103,["99"] = 88,["100"] = 107,["101"] = 108,["102"] = 107,["103"] = 114,["104"] = 115,["106"] = 115,["108"] = 114,["109"] = 121,["110"] = 122,["111"] = 121,["112"] = 128,["113"] = 129,["114"] = 128,["115"] = 135,["116"] = 136,["117"] = 12,["118"] = 139,["119"] = 141,["120"] = 142,["121"] = 143,["124"] = 135,["129"] = 82});
local ____exports = {}
local ____DataBase = require("solar.solar-common.common.DataBase")
local DataBase = ____DataBase.default
local ____STimer = require("solar.solar-common.tool.STimer")
local STimer = ____STimer.default
local ____Actor = require("solar.solar-common.actor.Actor")
local Actor = ____Actor.default
local ____BaseUtil = require("solar.solar-common.util.BaseUtil")
local BaseUtil = ____BaseUtil.default
local ____TargetAttach = require("solar.solar-common.constant.TargetAttach")
local TargetAttach = ____TargetAttach.default
local ____ArrayUtil = require("solar.solar-common.util.lang.ArrayUtil")
local ArrayUtil = ____ArrayUtil.default
____exports.default = __TS__Class()
local ActorBuff = ____exports.default
ActorBuff.name = "ActorBuff"
__TS__ClassExtends(ActorBuff, Actor)
function ActorBuff.prototype.____constructor(self, actorTypeId, unit, creator, initActorBuff)
    Actor.prototype.____constructor(self, actorTypeId)
    self.unit = unit
    self.creator = creator
    local solarData = DataBase:getUnitSolarData(unit)
    if not solarData._SL_solarActorBuffs then
        solarData._SL_solarActorBuffs = {}
    end
    local ____solarData__SL_solarActorBuffs_0 = solarData._SL_solarActorBuffs
    ____solarData__SL_solarActorBuffs_0[#____solarData__SL_solarActorBuffs_0 + 1] = self
    self:updateDurStartTime()
    self:update()
    if initActorBuff ~= nil then
        initActorBuff(nil, self)
    end
    if self:get("modelAttach") ~= nil and #self:get("modelAttach") > 4 then
        self.effect = AddSpecialEffectTarget(
            self:get("modelAttach"),
            unit,
            self:get("modelAttachTarget", TargetAttach.origin)
        )
    end
    Actor.prototype._sl_init(self)
    local dur = self:get("dur")
    if dur ~= nil and dur > 0 then
        self:initDur(dur)
    end
end
function ActorBuff.prototype.get(self, key, defaultValue)
    return Actor.prototype.get(self, key, defaultValue)
end
function ActorBuff.prototype.initDur(self, dur)
    BaseUtil.runLater(
        dur,
        function()
            if self._sl_isDestroyed then
                return
            end
            if self:getRemainingTime() <= 0 then
                self:destroy()
                return
            end
            BaseUtil.onTimer(
                1,
                function(____, count)
                    if self:getRemainingTime() <= 0 then
                        self:destroy()
                        return false
                    end
                    return true
                end
            )
        end
    )
end
function ActorBuff.prototype.setTimerInterval(self, timeS)
    self:set("interval", timeS)
    if timeS > 0 then
        if self._sl_intervalTimer == nil then
            self._sl_intervalTimer = __TS__New(STimer)
            self._sl_intervalTimer:start(
                timeS,
                function()
                    self:interval()
                end,
                true
            )
        end
        self._sl_intervalTimer.timeout = timeS
    elseif self._sl_intervalTimer then
        log.errorWithTraceBack("buff间隔必须 > 0")
        self._sl_intervalTimer:destroy()
        self._sl_intervalTimer = nil
    end
end
function ActorBuff.prototype.updateDurStartTime(self)
    self.durStartTime = _g_time / 1000
end
function ActorBuff.prototype.update(self)
    local ____opt_3 = self:get("onUpdate")
    if ____opt_3 ~= nil then
        ____opt_3(nil, self)
    end
end
function ActorBuff.prototype.getDieTime(self)
    return self.durStartTime + self:get("dur", 0)
end
function ActorBuff.prototype.getRemainingTime(self)
    return self.durStartTime + self:get("dur", 0) - _g_time / 1000
end
function ActorBuff.prototype.destroy(self)
    local unit = self.unit
    Actor.prototype.destroy(self)
    if self._sl_isDestroyed and IsHandle(unit) then
        local solarData = DataBase:getUnitSolarData(unit, false)
        if solarData and solarData._SL_solarActorBuffs then
            ArrayUtil:removeElement(solarData and solarData._SL_solarActorBuffs, self)
        end
    end
end
__TS__SetDescriptor(
    ActorBuff.prototype,
    "actorType",
    {get = function(self)
        return self._actorType
    end},
    true
)
return ____exports
