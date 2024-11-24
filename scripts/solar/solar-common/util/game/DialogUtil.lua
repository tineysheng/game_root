local ____lualib = require("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 1,["7"] = 1,["8"] = 2,["9"] = 2,["10"] = 17,["11"] = 17,["12"] = 17,["14"] = 17,["15"] = 24,["16"] = 25,["17"] = 26,["18"] = 27,["20"] = 29,["21"] = 30,["22"] = 31,["23"] = 32,["24"] = 36,["25"] = 38,["26"] = 39,["27"] = 40,["28"] = 40,["29"] = 40,["30"] = 41,["31"] = 42,["34"] = 45,["35"] = 46,["36"] = 47,["40"] = 50,["41"] = 50,["43"] = 50,["45"] = 40,["46"] = 40,["48"] = 54,["49"] = 55,["50"] = 56,["51"] = 24,["52"] = 67,["53"] = 67,["54"] = 68,["55"] = 69,["56"] = 70,["58"] = 71,["59"] = 71,["60"] = 72,["61"] = 73,["62"] = 73,["63"] = 73,["65"] = 73,["67"] = 73,["68"] = 74,["69"] = 75,["70"] = 71,["73"] = 81,["74"] = 81,["75"] = 81,["76"] = 81,["77"] = 81,["78"] = 82,["79"] = 67,["80"] = 94,["81"] = 94,["82"] = 102,["83"] = 95,["84"] = 96,["85"] = 97,["86"] = 98,["87"] = 99,["88"] = 97,["89"] = 101,["90"] = 102,["91"] = 102,["92"] = 102,["93"] = 103,["94"] = 104,["95"] = 105,["97"] = 107,["98"] = 107,["99"] = 107,["100"] = 107,["101"] = 108,["102"] = 102,["103"] = 102,["105"] = 110,["106"] = 110,["107"] = 111,["108"] = 112,["109"] = 112,["110"] = 112,["112"] = 112,["114"] = 112,["115"] = 113,["116"] = 114,["117"] = 110,["120"] = 121,["121"] = 121,["122"] = 121,["123"] = 121,["124"] = 121,["125"] = 123,["126"] = 94,["127"] = 21});
local ____exports = {}
local ____BaseUtil = require("solar.solar-common.util.BaseUtil")
local BaseUtil = ____BaseUtil.default
local ____KeyCode = require("solar.solar-common.constant.KeyCode")
local KeyCode = ____KeyCode.default
____exports.default = __TS__Class()
local DialogUtil = ____exports.default
DialogUtil.name = "DialogUtil"
function DialogUtil.prototype.____constructor(self)
end
function DialogUtil.getBaseDialog(self, playerId)
    if isAsync then
        log.errorWithTraceBack("不能在异步环境使用此对话框！")
        return nil
    end
    local baseDialogData = ____exports.default._sl_base_dialog_datas[playerId]
    if baseDialogData == nil then
        local dialog = DialogCreate()
        baseDialogData = {dialog = dialog, buttons = {}}
        ____exports.default._sl_base_dialog_datas[playerId] = baseDialogData
        local trigger = CreateTrigger()
        TriggerRegisterDialogEvent(trigger, dialog)
        TriggerAddAction(
            trigger,
            function()
                local dialogData = ____exports.default._sl_base_dialog_datas[GetPlayerId(GetTriggerPlayer())]
                if dialogData == nil then
                    return
                end
                local button = GetClickedButton()
                local buttonData = dialogData.buttons[GetHandleId(button)]
                if buttonData == nil then
                    return
                end
                local ____this_1
                ____this_1 = dialogData
                local ____opt_0 = ____this_1.onClickButtonCallBack
                if ____opt_0 ~= nil then
                    ____opt_0(____this_1, buttonData._sl_index, buttonData._sl_text)
                end
            end
        )
    end
    local baseDialog = baseDialogData.dialog
    DialogClear(baseDialog)
    return baseDialogData
end
function DialogUtil.show(self, playerId, title, onClickButtonCallBack, ...)
    local buttonTexts = {...}
    local baseDialogData = ____exports.default:getBaseDialog(playerId)
    baseDialogData.onClickButtonCallBack = onClickButtonCallBack
    DialogSetMessage(baseDialogData.dialog, title)
    do
        local i = 0
        while i < #buttonTexts do
            local buttonText = buttonTexts[i + 1]
            local ____temp_2
            if i < 10 then
                ____temp_2 = KeyCode["VK_" .. tostring(i + 1)]
            else
                ____temp_2 = 0
            end
            local hotKey = ____temp_2
            local button = DialogAddButton(baseDialogData.dialog, buttonText, hotKey)
            baseDialogData.buttons[GetHandleId(button)] = {_sl_index = i, _sl_text = buttonText}
            i = i + 1
        end
    end
    DialogDisplay(
        Player(playerId),
        baseDialogData.dialog,
        true
    )
    return baseDialogData.dialog
end
function DialogUtil.showWithTimeLimit(self, playerId, title, lifeTime, onClickButtonCallBack, ...)
    local buttonTexts = {...}
    local tl
    local baseDialogData = ____exports.default:getBaseDialog(playerId)
    local dialog = baseDialogData.dialog
    baseDialogData.onClickButtonCallBack = function(____, index, text)
        tl:destroy()
        onClickButtonCallBack(nil, index, text)
    end
    DialogSetMessage(dialog, title)
    tl = BaseUtil.onTimer(
        1,
        function(____, c)
            if c > lifeTime then
                onClickButtonCallBack(nil, 0, buttonTexts[1])
                return false
            end
            DialogSetMessage(
                dialog,
                ((title .. " （|cffff0000剩余") .. tostring(lifeTime - c)) .. "|r）"
            )
            return true
        end
    )
    do
        local i = 0
        while i < #buttonTexts do
            local buttonText = buttonTexts[i + 1]
            local ____temp_3
            if i < 10 then
                ____temp_3 = KeyCode["VK_" .. tostring(i + 1)]
            else
                ____temp_3 = 0
            end
            local hotKey = ____temp_3
            local button = DialogAddButton(dialog, buttonText, hotKey)
            baseDialogData.buttons[GetHandleId(button)] = {_sl_index = i, _sl_text = buttonText}
            i = i + 1
        end
    end
    DialogDisplay(
        Player(playerId),
        dialog,
        true
    )
    return dialog
end
DialogUtil._sl_base_dialog_datas = {}
return ____exports
