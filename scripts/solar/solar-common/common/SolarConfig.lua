local ____lualib = require("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 5,["7"] = 5,["8"] = 5,["10"] = 5,["11"] = 11,["12"] = 18,["13"] = 20,["14"] = 23,["15"] = 26,["16"] = 28,["17"] = 30,["18"] = 32,["19"] = 37,["20"] = 38,["21"] = 41,["22"] = 42,["23"] = 43,["24"] = 47});
local ____exports = {}
____exports.default = __TS__Class()
local SolarConfig = ____exports.default
SolarConfig.name = "SolarConfig"
function SolarConfig.prototype.____constructor(self)
end
SolarConfig.useErrorFrame = true
SolarConfig.defaultTickPath = "UI\\Widgets\\Glues\\GlueScreen-Checkbox-Check.blp"
SolarConfig.defaultDisablePath = "solar_asset\\icon\\disable.blp"
SolarConfig.defaultResourceGoldPath = "UI\\Widgets\\ToolTips\\Human\\ToolTipGoldIcon.blp"
SolarConfig.defaultResourceLumberPath = "UI\\Widgets\\ToolTips\\Human\\ToolTipLumberIcon.blp"
SolarConfig.defaultTipBackgroundPath = "UI\\Glues\\BattleNet\\BattleNetTeamLevelBar\\Loading-BarBackground.blp"
SolarConfig.defaultAutoCastModelPath = "UI\\Feedback\\Autocast\\UI-ModalButtonOn.mdx"
SolarConfig.defaultLampEffectModelPath = "UI\\Feedback\\Autocast\\UI-ModalButtonOn.mdx"
SolarConfig.defaultTooltipFrameAbsX = 0.79
SolarConfig.defaultTooltipFrameAbsY = 0.17
SolarConfig.defaultWarnTextColor = "|cff951629"
SolarConfig.defaultSuccessTextColor = "|cff00ff00"
SolarConfig.defaultFailTextColor = "|cffff0000"
SolarConfig.reloadMode = "手动"
return ____exports
