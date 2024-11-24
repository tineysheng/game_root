local ____lualib = require("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 1,["6"] = 1,["7"] = 4,["8"] = 7});
local ____exports = {}
local ____actor_ability = require("xlsx.actor_ability")
local actor_ability = ____actor_ability.default
function ____exports.default(self)
    actor_ability(nil)
end
return ____exports
