local ____lualib = require("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__InstanceOf = ____lualib.__TS__InstanceOf
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 4,["14"] = 4,["15"] = 5,["16"] = 5,["17"] = 6,["18"] = 6,["19"] = 7,["20"] = 7,["21"] = 8,["22"] = 8,["23"] = 9,["24"] = 9,["25"] = 10,["26"] = 10,["27"] = 11,["28"] = 11,["29"] = 13,["30"] = 13,["31"] = 15,["32"] = 15,["33"] = 17,["34"] = 17,["35"] = 19,["36"] = 19,["37"] = 19,["39"] = 32,["40"] = 33,["43"] = 36,["46"] = 39,["47"] = 40,["48"] = 41,["49"] = 42,["50"] = 39,["51"] = 45,["52"] = 46,["53"] = 47,["56"] = 51,["58"] = 45,["59"] = 54,["60"] = 56,["61"] = 57,["62"] = 58,["63"] = 59,["65"] = 64,["66"] = 65,["67"] = 67,["68"] = 68,["69"] = 69,["70"] = 70,["71"] = 71,["76"] = 77,["77"] = 56,["80"] = 85,["81"] = 85,["83"] = 86,["84"] = 86,["85"] = 87,["86"] = 88,["87"] = 89,["88"] = 90,["89"] = 91,["90"] = 92,["91"] = 91,["92"] = 94,["93"] = 86,["96"] = 85,["100"] = 100,["101"] = 100,["102"] = 101,["103"] = 102,["104"] = 103,["105"] = 104,["106"] = 105,["107"] = 104,["108"] = 107,["109"] = 100,["112"] = 110,["113"] = 111,["114"] = 112,["116"] = 110,["117"] = 115,["118"] = 115,["119"] = 115,["120"] = 116,["121"] = 117,["122"] = 118,["123"] = 119,["125"] = 115,["126"] = 115,["127"] = 31,["128"] = 125,["129"] = 126,["130"] = 127,["132"] = 129,["133"] = 130,["134"] = 131,["136"] = 133,["137"] = 134,["138"] = 125,["139"] = 137,["140"] = 138,["141"] = 139,["144"] = 142,["145"] = 143,["146"] = 144,["147"] = 145,["148"] = 146,["150"] = 137,["151"] = 150,["152"] = 151,["153"] = 152,["156"] = 155,["157"] = 156,["158"] = 157,["161"] = 160,["162"] = 161,["163"] = 162,["164"] = 150,["165"] = 165,["166"] = 166,["167"] = 167,["168"] = 168,["169"] = 165,["170"] = 172,["171"] = 174,["173"] = 175,["174"] = 175,["175"] = 176,["176"] = 177,["177"] = 178,["178"] = 179,["179"] = 180,["180"] = 181,["183"] = 184,["184"] = 186,["185"] = 187,["186"] = 188,["187"] = 189,["188"] = 190,["190"] = 192,["191"] = 193,["192"] = 194,["193"] = 195,["195"] = 197,["198"] = 175,["201"] = 172,["202"] = 204,["204"] = 206,["205"] = 206,["207"] = 207,["208"] = 208,["209"] = 209,["210"] = 210,["211"] = 211,["212"] = 212,["214"] = 214,["216"] = 216,["217"] = 217,["218"] = 218,["219"] = 219,["220"] = 220,["223"] = 223,["224"] = 225,["225"] = 226,["226"] = 227,["227"] = 228,["228"] = 229,["230"] = 231,["231"] = 232,["232"] = 233,["233"] = 234,["235"] = 236,["240"] = 206,["243"] = 204,["244"] = 243,["245"] = 245,["247"] = 246,["248"] = 247,["249"] = 248,["251"] = 250,["252"] = 251,["255"] = 254,["256"] = 255,["257"] = 256,["259"] = 258,["260"] = 259,["261"] = 260,["262"] = 261,["263"] = 262,["265"] = 264,["267"] = 267,["268"] = 268,["269"] = 269,["270"] = 270,["272"] = 272,["273"] = 273,["274"] = 274,["276"] = 276,["277"] = 277,["281"] = 243,["282"] = 24,["283"] = 26,["284"] = 27,["285"] = 28});
local ____exports = {}
local ____FrameCallbackUtil = require("solar.solar-common.util.frame.FrameCallbackUtil")
local FrameCallbackUtil = ____FrameCallbackUtil.default
local ____ActorItemUtil = require("solar.solar-common.actor.util.ActorItemUtil")
local ActorItemUtil = ____ActorItemUtil.default
local ____AbilityButtonUtil = require("solar.solar-common.util.ability.AbilityButtonUtil")
local AbilityButtonUtil = ____AbilityButtonUtil.default
local ____ActorAbilityUtil = require("solar.solar-common.actor.util.ActorAbilityUtil")
local ActorAbilityUtil = ____ActorAbilityUtil.default
local ____frame = require("solar.solar-common.w3ts.handles.frame")
local Frame = ____frame.Frame
local ____ActorUnit = require("solar.solar-common.actor.ActorUnit")
local ActorUnit = ____ActorUnit.default
local ____CameraUtil = require("solar.solar-common.util.game.CameraUtil")
local CameraUtil = ____CameraUtil.default
local ____FramePoint = require("solar.solar-common.constant.FramePoint")
local FramePoint = ____FramePoint.default
local ____SingletonUtil = require("solar.solar-common.util.lang.SingletonUtil")
local SingletonUtil = ____SingletonUtil.default
local ____GameUtil = require("solar.solar-common.util.game.GameUtil")
local GameUtil = ____GameUtil.default
local ____ActorFrameUtil = require("solar.solar-common.actor.util.ActorFrameUtil")
local ActorFrameUtil = ____ActorFrameUtil.default
local ____InputUtil = require("solar.solar-common.util.system.InputUtil")
local InputUtil = ____InputUtil.default
local ____ActorAbility = require("solar.solar-common.actor.ActorAbility")
local ActorAbility = ____ActorAbility.default
local ____MessageUtil = require("solar.solar-common.util.system.MessageUtil")
local MessageUtil = ____MessageUtil.default
____exports.default = __TS__Class()
local SolarActorFrameState = ____exports.default
SolarActorFrameState.name = "SolarActorFrameState"
function SolarActorFrameState.prototype.____constructor(self)
    if SingletonUtil:notFirstTime(____exports.default) then
        print("不能重复new SolarActorFrameState()")
        return
    end
    if DzFrameGetCommandBarButton == nil then
        return
    end
    FrameCallbackUtil:addFrameSetUpdateCallback(function()
        ____exports.default:updateItemFrame()
        ____exports.default:updateAbilityFrame()
        ____exports.default:updateUnitFrame()
    end)
    InputUtil:onMouseRightButtonReleased(function()
        if ____exports.default.mouseFocusActor then
            if ____exports.default.mouseFocusActor:isDisable() or ____exports.default.mouseFocusActor:isHide() then
                return
            end
            ____exports.default.mouseFocusActor:localClick(2, 0, 0)
        end
    end)
    if isEmbedJapi then
        MessageUtil:addWindowEventCallBack(function(eventId)
            if eventId == 1 then
                local actor = ____exports.default.mouseFocusActor
                if actor == nil then
                end
                if actor ~= nil and __TS__InstanceOf(actor, ActorAbility) then
                    if actor:isPassive() or actor:isDisable() or actor:isHide() then
                        local sceneX = InputUtil:getMouseSceneX()
                        local sceneY = InputUtil:getMouseSceneY()
                        local xyObj = AbilityButtonUtil:getPosBySceneXY(sceneX, sceneY)
                        if xyObj ~= nil then
                            return true
                        end
                    end
                end
            end
            return false
        end)
    end
    do
        local x = 0
        while x <= 3 do
            do
                local y = 0
                while y <= 2 do
                    local cmdButton = DzFrameGetCommandBarButton(y, x)
                    local cmdButtonFrame = Frame:fromHandle(cmdButton)
                    local fx = x
                    local fy = y
                    cmdButtonFrame:addOnMouseEnter(function()
                        ____exports.default.showAbilityTooltip(fx, fy)
                    end)
                    cmdButtonFrame:addOnMouseLeave(____exports.default.hideTooltip)
                    y = y + 1
                end
            end
            x = x + 1
        end
    end
    do
        local i = 0
        while i < 6 do
            local cmdButton = DzFrameGetItemBarButton(i)
            local cmdButtonFrame = Frame:fromHandle(cmdButton)
            local fi = i
            cmdButtonFrame:addOnMouseEnter(function()
                ____exports.default.showItemTooltip(fi)
            end)
            cmdButtonFrame:addOnMouseLeave(____exports.default.hideTooltip)
            i = i + 1
        end
    end
    se:onUnitSelected(function(e)
        if ____exports.default._sl_mouseFocusItemIndex >= 0 then
            ____exports.default.showItemTooltip(____exports.default._sl_mouseFocusItemIndex)
        end
    end)
    se:on(
        "刷新UI",
        function()
            if ____exports.default._sl_mouseFocusItemIndex >= 0 then
                ____exports.default.showItemTooltip(____exports.default._sl_mouseFocusItemIndex)
            elseif ____exports.default.mouseFocusActor ~= nil then
                ActorFrameUtil:showTooltip(____exports.default.mouseFocusActor)
            end
        end
    )
end
function SolarActorFrameState.getMouseFocusItem(self)
    if ____exports.default._sl_mouseFocusItemIndex < 0 then
        return nil
    end
    local u = selection()
    if not IsHandle(u) then
        return nil
    end
    local item = UnitItemInSlot(u, ____exports.default._sl_mouseFocusItemIndex)
    return ActorItemUtil:getActorItem(item)
end
function SolarActorFrameState.showItemTooltip(i)
    local u = selection()
    if not IsHandle(u) then
        return
    end
    ____exports.default._sl_mouseFocusItemIndex = i
    local item = UnitItemInSlot(u, i)
    local actorItem = ActorItemUtil:getActorItem(item)
    if actorItem ~= nil then
        ActorFrameUtil:showTooltip(actorItem)
    end
end
function SolarActorFrameState.showAbilityTooltip(x, y)
    local ability, order = button(x, y)
    if ability == nil or ability == 0 then
        return
    end
    local abilityIdStr = id2string(ability)
    local actorAbility = ActorAbilityUtil:getActorAbility(abilityIdStr)
    if actorAbility == nil then
        return
    end
    ____exports.default._sl_mouseFocusItemIndex = -1
    ____exports.default.mouseFocusActor = actorAbility
    ActorFrameUtil:showTooltip(actorAbility)
end
function SolarActorFrameState.hideTooltip()
    ActorFrameUtil:hideTooltip()
    ____exports.default.mouseFocusActor = nil
    ____exports.default._sl_mouseFocusItemIndex = -1
end
function SolarActorFrameState.updateItemFrame(self)
    local unit = selection()
    do
        local i = 0
        while i < 6 do
            local item = UnitItemInSlot(unit, i)
            local actorItem = ActorItemUtil:getActorItem(item)
            if actorItem == nil then
                if ____exports.default.itemBarButtonActorFrames[i] then
                    ____exports.default.itemBarButtonActorFrames[i].rootFrame.visible = false
                    ____exports.default.itemBarButtonActorFrames[i] = nil
                end
            else
                local buttonFrame = DzFrameGetItemBarButton(i)
                local frame = actorItem:getRootFrameControl(false)
                if frame ~= ____exports.default.itemBarButtonActorFrames[i] then
                    if ____exports.default.itemBarButtonActorFrames[i] then
                        ____exports.default.itemBarButtonActorFrames[i].rootFrame.visible = false
                        ____exports.default.itemBarButtonActorFrames[i] = nil
                    end
                    if frame then
                        frame.rootFrame:clearPoints()
                        frame.rootFrame:setAllPoints(buttonFrame)
                        frame.rootFrame.visible = true
                    end
                    ____exports.default.itemBarButtonActorFrames[i] = frame
                end
            end
            i = i + 1
        end
    end
end
function SolarActorFrameState.updateAbilityFrame(self)
    do
        local i = 1
        while i <= 12 do
            do
                local pos = AbilityButtonUtil:getPosByNumber(i)
                local button_abilityId, orderID, orderType = button(pos.x, pos.y)
                if button_abilityId == nil or button_abilityId == 0 then
                    if ____exports.default.commandBarButtonActorFrames[i] then
                        ____exports.default.commandBarButtonActorFrames[i].rootFrame.visible = false
                        ____exports.default.commandBarButtonActorFrames[i] = nil
                    end
                    goto __continue45
                end
                local actorAbility = ActorAbilityUtil:getActorAbility(id2string(button_abilityId))
                if actorAbility == nil then
                    if ____exports.default.commandBarButtonActorFrames[i] then
                        ____exports.default.commandBarButtonActorFrames[i].rootFrame.visible = false
                        ____exports.default.commandBarButtonActorFrames[i] = nil
                    end
                else
                    local buttonFrame = DzFrameGetCommandBarButton(pos.y, pos.x)
                    local frame = actorAbility:getRootFrameControl(false)
                    if frame ~= ____exports.default.commandBarButtonActorFrames[i] then
                        if ____exports.default.commandBarButtonActorFrames[i] then
                            ____exports.default.commandBarButtonActorFrames[i].rootFrame.visible = false
                            ____exports.default.commandBarButtonActorFrames[i] = nil
                        end
                        if frame then
                            frame.rootFrame:clearPoints()
                            frame.rootFrame:setAllPoints(buttonFrame)
                            frame.rootFrame.visible = true
                        end
                        ____exports.default.commandBarButtonActorFrames[i] = frame
                    end
                end
            end
            ::__continue45::
            i = i + 1
        end
    end
end
function SolarActorFrameState.updateUnitFrame(self)
    for actorUuid in pairs(ActorUnit._sl_hasFrameActorUnits) do
        do
            local actorUnit = ActorUnit._sl_hasFrameActorUnits[actorUuid]
            if actorUnit == nil or actorUnit:isDestroyed() then
                goto __continue55
            end
            local rootFrame = actorUnit:getRootFrameControl(false)
            if rootFrame == nil then
                return
            end
            if not UnitAlive(actorUnit.unit) then
                rootFrame.rootFrame.visible = false
                goto __continue55
            end
            local x = actorUnit.unitX
            local y = actorUnit.unitY
            local z = GameUtil:getTerrainHeight(x, y)
            if unit_overhead then
                z = z + unit_overhead(actorUnit.unit) - 50
            else
                z = z + 150
            end
            local scoordinates = CameraUtil:getScreenCoordinates(x, y, z)
            if scoordinates.x <= 0 or scoordinates.x >= 0.8 then
                rootFrame.rootFrame.visible = false
                goto __continue55
            end
            if scoordinates.y <= 0.13 or scoordinates.y >= 0.56 then
                rootFrame.rootFrame.visible = false
                goto __continue55
            end
            rootFrame.rootFrame:setAbsPoint(FramePoint.bottom, scoordinates.x, scoordinates.y)
            rootFrame.rootFrame.visible = true
        end
        ::__continue55::
    end
end
SolarActorFrameState.mouseFocusActor = nil
SolarActorFrameState._sl_mouseFocusItemIndex = -1
SolarActorFrameState.commandBarButtonActorFrames = {}
SolarActorFrameState.itemBarButtonActorFrames = {}
return ____exports
