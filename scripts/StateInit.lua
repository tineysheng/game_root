local ____lualib = require("lualib_bundle")
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 1,["7"] = 1,["8"] = 4,["9"] = 5});
local ____exports = {}
local ____init_ability = require("xlsx.init_actor.init_ability")
local InitAbility = ____init_ability.InitAbility
function ____exports.default(self)
    __TS__New(InitAbility)
end
return ____exports
