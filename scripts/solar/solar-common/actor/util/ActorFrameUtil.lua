local ____lualib = require("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__InstanceOf = ____lualib.__TS__InstanceOf
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 1,["9"] = 1,["10"] = 3,["11"] = 3,["12"] = 4,["13"] = 4,["14"] = 5,["15"] = 5,["16"] = 6,["17"] = 6,["18"] = 7,["19"] = 7,["20"] = 8,["21"] = 8,["22"] = 9,["23"] = 9,["24"] = 10,["25"] = 10,["26"] = 11,["27"] = 11,["28"] = 16,["29"] = 16,["30"] = 16,["32"] = 16,["33"] = 34,["34"] = 34,["35"] = 34,["37"] = 35,["38"] = 34,["39"] = 38,["40"] = 38,["41"] = 38,["43"] = 39,["44"] = 38,["45"] = 42,["46"] = 42,["47"] = 42,["49"] = 43,["50"] = 42,["51"] = 53,["52"] = 53,["53"] = 53,["55"] = 54,["58"] = 57,["59"] = 58,["60"] = 59,["61"] = 60,["62"] = 61,["63"] = 61,["64"] = 61,["65"] = 62,["66"] = 63,["67"] = 63,["68"] = 63,["69"] = 63,["70"] = 63,["71"] = 63,["72"] = 63,["73"] = 61,["74"] = 61,["75"] = 61,["76"] = 61,["77"] = 65,["78"] = 65,["79"] = 65,["80"] = 66,["81"] = 67,["82"] = 68,["83"] = 65,["84"] = 65,["85"] = 53,["86"] = 78,["87"] = 79,["90"] = 82,["91"] = 83,["92"] = 84,["93"] = 85,["94"] = 88,["95"] = 90,["96"] = 91,["97"] = 92,["98"] = 93,["99"] = 94,["101"] = 96,["103"] = 98,["104"] = 99,["105"] = 100,["106"] = 101,["108"] = 103,["109"] = 104,["111"] = 107,["112"] = 108,["113"] = 109,["114"] = 110,["115"] = 111,["116"] = 112,["118"] = 114,["119"] = 115,["121"] = 117,["122"] = 118,["123"] = 119,["124"] = 120,["125"] = 121,["127"] = 123,["128"] = 124,["130"] = 126,["131"] = 127,["132"] = 128,["133"] = 129,["134"] = 130,["136"] = 132,["137"] = 133,["139"] = 135,["140"] = 136,["141"] = 78,["142"] = 139,["143"] = 140,["144"] = 142,["145"] = 143,["146"] = 144,["147"] = 144,["148"] = 144,["149"] = 144,["150"] = 148,["151"] = 149,["152"] = 150,["153"] = 151,["155"] = 153,["157"] = 155,["158"] = 159,["159"] = 160,["160"] = 161,["161"] = 161,["162"] = 161,["163"] = 161,["165"] = 167,["166"] = 168,["167"] = 169,["168"] = 169,["169"] = 169,["170"] = 169,["173"] = 176,["174"] = 177,["175"] = 178,["176"] = 178,["177"] = 178,["178"] = 178,["179"] = 182,["180"] = 183,["181"] = 184,["182"] = 185,["184"] = 187,["186"] = 189,["187"] = 193,["188"] = 194,["189"] = 194,["190"] = 194,["191"] = 194,["192"] = 199,["193"] = 200,["194"] = 201,["195"] = 201,["196"] = 201,["197"] = 201,["200"] = 208,["201"] = 209,["202"] = 210,["203"] = 210,["204"] = 210,["205"] = 210,["206"] = 214,["207"] = 215,["208"] = 215,["209"] = 215,["210"] = 215,["211"] = 220,["212"] = 221,["213"] = 221,["214"] = 221,["215"] = 221,["217"] = 226,["218"] = 139,["219"] = 230,["220"] = 231,["223"] = 234,["224"] = 235,["225"] = 236,["226"] = 237,["227"] = 230,["228"] = 240,["229"] = 242,["232"] = 246,["233"] = 246,["234"] = 246,["235"] = 246,["236"] = 246,["237"] = 246,["238"] = 246,["239"] = 246,["240"] = 247,["241"] = 248,["242"] = 249,["243"] = 250,["244"] = 251,["245"] = 251,["246"] = 251,["247"] = 251,["248"] = 251,["249"] = 251,["250"] = 251,["251"] = 253,["252"] = 254,["253"] = 255,["254"] = 255,["255"] = 255,["256"] = 255,["257"] = 255,["258"] = 255,["259"] = 255,["260"] = 257,["261"] = 258,["262"] = 259,["263"] = 259,["264"] = 259,["265"] = 259,["266"] = 259,["267"] = 259,["268"] = 259,["269"] = 263,["270"] = 264,["271"] = 265,["272"] = 266,["273"] = 267,["274"] = 267,["275"] = 267,["276"] = 267,["277"] = 267,["278"] = 267,["279"] = 267,["280"] = 268,["281"] = 268,["282"] = 268,["283"] = 268,["284"] = 268,["285"] = 268,["286"] = 268,["287"] = 270,["288"] = 271,["289"] = 272,["290"] = 273,["291"] = 274,["292"] = 274,["293"] = 274,["294"] = 274,["295"] = 274,["296"] = 274,["297"] = 274,["298"] = 275,["299"] = 275,["300"] = 275,["301"] = 275,["302"] = 275,["303"] = 275,["304"] = 275,["305"] = 277,["306"] = 278,["307"] = 279,["308"] = 280,["309"] = 281,["310"] = 281,["311"] = 281,["312"] = 281,["313"] = 281,["314"] = 281,["315"] = 281,["316"] = 282,["317"] = 282,["318"] = 282,["319"] = 282,["320"] = 282,["321"] = 282,["322"] = 282,["323"] = 285,["324"] = 286,["325"] = 287,["326"] = 289,["327"] = 290,["328"] = 290,["329"] = 290,["330"] = 290,["331"] = 290,["332"] = 290,["333"] = 290,["334"] = 291,["335"] = 293,["336"] = 293,["337"] = 293,["338"] = 293,["339"] = 293,["340"] = 293,["341"] = 293,["342"] = 293,["343"] = 294,["344"] = 294,["345"] = 294,["346"] = 294,["347"] = 294,["348"] = 294,["349"] = 294,["350"] = 294,["351"] = 297,["352"] = 299,["353"] = 299,["354"] = 299,["355"] = 299,["356"] = 299,["357"] = 299,["358"] = 299,["359"] = 299,["360"] = 299,["361"] = 299,["362"] = 299,["363"] = 299,["364"] = 299,["365"] = 299,["366"] = 240,["367"] = 316,["368"] = 317,["370"] = 318,["371"] = 318,["372"] = 318,["373"] = 318,["374"] = 318,["375"] = 318,["376"] = 318,["377"] = 318,["378"] = 318,["379"] = 318,["380"] = 319,["381"] = 320,["382"] = 321,["384"] = 324,["385"] = 325,["387"] = 330,["388"] = 316});
local ____exports = {}
local ____frame = require("solar.solar-common.w3ts.handles.frame")
local Frame = ____frame.Frame
local ____FramePoint = require("solar.solar-common.constant.FramePoint")
local FramePoint = ____FramePoint.default
local ____BaseUtil = require("solar.solar-common.util.BaseUtil")
local BaseUtil = ____BaseUtil.default
local ____SolarConfig = require("solar.solar-common.common.SolarConfig")
local SolarConfig = ____SolarConfig.default
local ____TextUtil = require("solar.solar-common.util.text.TextUtil")
local TextUtil = ____TextUtil.default
local ____ActorItem = require("solar.solar-common.actor.ActorItem")
local ActorItem = ____ActorItem.default
local ____ActorAbility = require("solar.solar-common.actor.ActorAbility")
local ActorAbility = ____ActorAbility.default
local ____TipFrameUtil = require("solar.solar-common.util.frame.TipFrameUtil")
local TipFrameUtil = ____TipFrameUtil.default
local ____SyncUtil = require("solar.solar-common.util.net.SyncUtil")
local SyncUtil = ____SyncUtil.default
local ____ActorBuff = require("solar.solar-common.actor.ActorBuff")
local ActorBuff = ____ActorBuff.default
____exports.default = __TS__Class()
local ActorFrameUtil = ____exports.default
ActorFrameUtil.name = "ActorFrameUtil"
function ActorFrameUtil.prototype.____constructor(self)
end
function ActorFrameUtil.showWarnText(self, actor, tipText, dur, showPlayer)
    if dur == nil then
        dur = 1
    end
    ____exports.default:showTipText(actor, SolarConfig.defaultWarnTextColor .. tipText, dur, showPlayer)
end
function ActorFrameUtil.showFailText(self, actor, tipText, dur, showPlayer)
    if dur == nil then
        dur = 1
    end
    ____exports.default:showTipText(actor, SolarConfig.defaultFailTextColor .. tipText, dur, showPlayer)
end
function ActorFrameUtil.showSuccessText(self, actor, tipText, dur, showPlayer)
    if dur == nil then
        dur = 1
    end
    ____exports.default:showTipText(actor, SolarConfig.defaultSuccessTextColor .. tipText, dur, showPlayer)
end
function ActorFrameUtil.showTipText(self, actor, tipText, dur, showPlayer)
    if dur == nil then
        dur = 1
    end
    if showPlayer ~= nil and GetLocalPlayer() ~= showPlayer then
        return
    end
    local frame = TipFrameUtil._sl_tipTextFrameObjectPool:borrowObject()
    frame:setText(tipText)
    frame.visible = true
    DzFrameShow(frame.backdropFrame.handle, true)
    BaseUtil.runLater(
        0.03,
        function(count, maxCount)
            local y = 0.01 + 0.002 * count
            frame:setPoint(
                FramePoint.bottom,
                actor:getRootFrameControl().rootFrame.handle,
                FramePoint.top,
                0,
                y
            )
        end,
        30,
        true
    )
    BaseUtil.runLater(
        dur,
        function()
            frame.visible = false
            DzFrameShow(frame.backdropFrame.handle, false)
            TipFrameUtil._sl_tipTextFrameObjectPool:returnObject(frame)
        end
    )
end
function ActorFrameUtil.showTooltip(self, actor)
    if actor == nil then
        return
    end
    ____exports.default:_sl_initTooltip()
    local tooltip = DzFrameGetTooltip()
    DzFrameClearAllPoints(tooltip)
    DzFrameSetAbsolutePoint(tooltip, FramePoint.bottomLeft, 0.81, 0)
    local tooltipFrames = ____exports.default._sl_tooltipFrames
    tooltipFrames.name:setText(actor:getName())
    local hotKey = actor:get("hotKey")
    if hotKey ~= nil and #hotKey > 0 and __TS__InstanceOf(actor, ActorAbility) and not actor:isPassive() then
        tooltipFrames.hotKey:setText(("(|cffeeee00" .. hotKey) .. "|r)")
        tooltipFrames.hotKey.visible = true
    else
        tooltipFrames.hotKey.visible = false
    end
    tooltipFrames.icon:setTexture(actor:getIcon())
    if actor:isDisable() and actor:get("requiredTip") ~= nil then
        tooltipFrames.requiredTip:setText("|cffffff00需要:|n - " .. actor:get("requiredTip"))
        tooltipFrames.requiredTip.visible = true
    else
        tooltipFrames.requiredTip:setText("")
        tooltipFrames.requiredTip.visible = false
    end
    local labelInfos = ____exports.default:getActorLabelInfo(actor)
    if #labelInfos > 0 then
        tooltipFrames.labelIcon1:setTexture(labelInfos[1].icon)
        tooltipFrames.label1:setText(labelInfos[1].text)
        tooltipFrames.labelIcon1.visible = true
        tooltipFrames.label1.visible = true
    else
        tooltipFrames.labelIcon1.visible = false
        tooltipFrames.label1.visible = false
    end
    if #labelInfos > 1 then
        tooltipFrames.labelIcon2:setTexture(labelInfos[2].icon)
        tooltipFrames.label2:setText(labelInfos[2].text)
        tooltipFrames.labelIcon2.visible = true
        tooltipFrames.label2.visible = true
    else
        tooltipFrames.labelIcon2.visible = false
        tooltipFrames.label2.visible = false
    end
    if #labelInfos > 2 then
        tooltipFrames.labelIcon3:setTexture(labelInfos[3].icon)
        tooltipFrames.label3:setText(labelInfos[3].text)
        tooltipFrames.labelIcon3.visible = true
        tooltipFrames.label3.visible = true
    else
        tooltipFrames.labelIcon3.visible = false
        tooltipFrames.label3.visible = false
    end
    tooltipFrames.describe:setText(actor:getDescribe(true))
    tooltipFrames.root.visible = true
end
function ActorFrameUtil.getActorLabelInfo(self, actor)
    local labelInfo = {}
    local goldCost = actor:get("goldCost")
    if actor:get("tooltipLabel1") then
        labelInfo[#labelInfo + 1] = {
            icon = actor:get("tooltipLabelIcon1") or SolarConfig.defaultResourceGoldPath,
            text = actor:get("tooltipLabel1")
        }
    elseif goldCost and goldCost > 0 then
        local text = nil
        if __TS__InstanceOf(actor, ActorItem) then
            text = TextUtil:toCnUnit(goldCost * PawnItemRate)
        else
            text = TextUtil:toCnUnit(goldCost)
        end
        labelInfo[#labelInfo + 1] = {icon = SolarConfig.defaultResourceGoldPath, text = text}
    elseif __TS__InstanceOf(actor, ActorAbility) then
        if not actor:isPassive() and actor:get("maxCd") ~= nil and actor:get("maxCd") > 2 then
            labelInfo[#labelInfo + 1] = {
                icon = "UI\\Widgets\\ToolTips\\Human\\ToolTipStonesIcon.blp",
                text = tostring(actor:get("maxCd")) .. "秒"
            }
        end
    elseif __TS__InstanceOf(actor, ActorBuff) then
        if actor.level and actor.level ~= 1 then
            labelInfo[#labelInfo + 1] = {
                icon = "UI\\Widgets\\EscMenu\\Orc\\orc-slider-knob.blp",
                text = "Lv." .. tostring(actor.level)
            }
        end
    end
    local lumberCost = actor:get("lumberCost")
    if actor:get("tooltipLabel2") then
        labelInfo[#labelInfo + 1] = {
            icon = actor:get("tooltipLabelIcon2") or SolarConfig.defaultResourceLumberPath,
            text = actor:get("tooltipLabel2")
        }
    elseif lumberCost and lumberCost > 0 then
        local text = nil
        if __TS__InstanceOf(actor, ActorItem) then
            text = TextUtil:toCnUnit(lumberCost * PawnItemRate)
        else
            text = TextUtil:toCnUnit(lumberCost)
        end
        labelInfo[#labelInfo + 1] = {icon = SolarConfig.defaultResourceLumberPath, text = text}
    elseif actor:get("manaCost") ~= nil and actor:get("manaCost") > 0 then
        labelInfo[#labelInfo + 1] = {
            icon = "UI\\Widgets\\ToolTips\\Human\\ToolTipManaIcon.blp",
            text = tostring(actor:get("manaCost")) .. "魔法"
        }
    elseif __TS__InstanceOf(actor, ActorBuff) then
        if actor:get("tag") ~= "光环" and actor:get("dur", 0) > 3 then
            labelInfo[#labelInfo + 1] = {
                icon = "UI\\Widgets\\BattleNet\\bnet-tournament-clock.blp",
                text = tostring(math.ceil(actor:getRemainingTime())) .. "秒"
            }
        end
    end
    local foodCost = actor:get("foodCost")
    if actor:get("tooltipLabel3") then
        labelInfo[#labelInfo + 1] = {
            icon = actor:get("tooltipLabelIcon3") or "UI\\Feedback\\Resources\\ResourceUndead.blp",
            text = actor:get("tooltipLabel3")
        }
    elseif foodCost and foodCost > 0 then
        labelInfo[#labelInfo + 1] = {
            icon = "UI\\Widgets\\ToolTips\\Human\\ToolTipSupplyIcon.blp",
            text = tostring(foodCost) .. ""
        }
    elseif actor:get("killsCost") ~= nil and actor:get("killsCost") > 0 then
        labelInfo[#labelInfo + 1] = {
            icon = "UI\\Feedback\\Resources\\ResourceUndead.blp",
            text = tostring(actor:get("killsCost")) .. "杀敌数"
        }
    end
    return labelInfo
end
function ActorFrameUtil.hideTooltip(self)
    if ____exports.default._sl_tooltipFrames == nil then
        return
    end
    ____exports.default._sl_tooltipFrames.root.visible = false
    local tooltip = DzFrameGetTooltip()
    DzFrameClearAllPoints(tooltip)
    DzFrameSetAbsolutePoint(tooltip, FramePoint.bottomRight, 0.8, 0.16)
end
function ActorFrameUtil._sl_initTooltip(self)
    if ____exports.default._sl_tooltipFrames ~= nil then
        return
    end
    local root = __TS__New(
        Frame,
        "BACKDROP",
        nil,
        DzGetGameUI(),
        "_sl_border_backdrop",
        0
    )
    local gap = 0.008
    local fontSize = 0.0113
    local icon = Frame:createBackDrop(root.handle)
    icon:setSize(0.03, 0.04)
    icon:setPoint(
        FramePoint.topLeft,
        root.handle,
        FramePoint.topLeft,
        gap,
        -gap
    )
    local name = Frame:createTEXT(root.handle)
    name:setFont(fontSize)
    name:setPoint(
        FramePoint.topLeft,
        icon.handle,
        FramePoint.topRight,
        gap,
        0
    )
    local hotKey = Frame:createTEXT(root.handle)
    hotKey:setFont(fontSize)
    hotKey:setPoint(
        FramePoint.left,
        name.handle,
        FramePoint.right,
        0.001,
        0
    )
    local labelIcon1 = Frame:createBackDrop(root.handle)
    local label1 = Frame:createTEXT(root.handle)
    label1:setFont(fontSize)
    labelIcon1:setSize(0.009, 0.012)
    labelIcon1:setPoint(
        FramePoint.topLeft,
        name.handle,
        FramePoint.bottomLeft,
        0,
        -gap
    )
    label1:setPoint(
        FramePoint.left,
        labelIcon1.handle,
        FramePoint.right,
        0.002,
        0
    )
    local labelIcon2 = Frame:createBackDrop(root.handle)
    local label2 = Frame:createTEXT(root.handle)
    label2:setFont(fontSize)
    labelIcon2:setSize(0.009, 0.012)
    labelIcon2:setPoint(
        FramePoint.left,
        label1.handle,
        FramePoint.right,
        gap,
        0
    )
    label2:setPoint(
        FramePoint.left,
        labelIcon2.handle,
        FramePoint.right,
        0.002,
        0
    )
    local labelIcon3 = Frame:createBackDrop(root.handle)
    local label3 = Frame:createTEXT(root.handle)
    label3:setFont(fontSize)
    labelIcon3:setSize(0.009, 0.012)
    labelIcon3:setPoint(
        FramePoint.left,
        label2.handle,
        FramePoint.right,
        gap,
        0
    )
    label3:setPoint(
        FramePoint.left,
        labelIcon3.handle,
        FramePoint.right,
        0.002,
        0
    )
    local describe = Frame:createTEXT(root.handle)
    describe:setFont(fontSize)
    DzFrameSetSize(describe.handle, 0.2, -1)
    local requiredTip = Frame:createTEXT(root.handle)
    requiredTip:setPoint(
        FramePoint.bottomLeft,
        describe.handle,
        FramePoint.topLeft,
        0,
        gap
    )
    DzFrameSetSize(requiredTip.handle, 0.2, -1)
    DzFrameSetPoint(
        root.handle,
        FRAMEPOINT_TOPLEFT,
        requiredTip.handle,
        FRAMEPOINT_TOPLEFT,
        -gap,
        0.055
    )
    DzFrameSetPoint(
        root.handle,
        FRAMEPOINT_BOTTOMRIGHT,
        describe.handle,
        FRAMEPOINT_BOTTOMRIGHT,
        gap,
        -gap
    )
    describe:setAbsPoint(FramePoint.bottomRight, SolarConfig.defaultTooltipFrameAbsX, SolarConfig.defaultTooltipFrameAbsY)
    ____exports.default._sl_tooltipFrames = {
        root = root,
        name = name,
        hotKey = hotKey,
        icon = icon,
        requiredTip = requiredTip,
        describe = describe,
        labelIcon1 = labelIcon1,
        label1 = label1,
        labelIcon2 = labelIcon2,
        label2 = label2,
        labelIcon3 = labelIcon3,
        label3 = label3
    }
end
function ActorFrameUtil.localClickActorType(self, actorType, btn, x, y)
    isAsync = true
    local ____this_1
    ____this_1 = actorType
    local ____opt_0 = ____this_1.onLocalClick
    local b = ____opt_0 and ____opt_0(
        ____this_1,
        nil,
        btn,
        x,
        y,
        actorType
    )
    isAsync = false
    if b == false then
        return false
    end
    if actorType.onClick ~= nil then
        SyncUtil.syncObjData("_sl_:at:onClick", {i = actorType.id, b = btn})
    end
    return true
end
return ____exports
