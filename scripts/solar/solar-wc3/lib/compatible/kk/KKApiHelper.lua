local ____lualib = require("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 2,["7"] = 2,["8"] = 2,["10"] = 2,["11"] = 6,["12"] = 7,["13"] = 7,["14"] = 7,["15"] = 7,["16"] = 7,["17"] = 7,["18"] = 7,["19"] = 7,["20"] = 7,["21"] = 7,["22"] = 6,["23"] = 11,["24"] = 12,["25"] = 12,["26"] = 12,["27"] = 12,["28"] = 12,["29"] = 12,["30"] = 12,["31"] = 12,["32"] = 12,["33"] = 12,["34"] = 11,["35"] = 16,["36"] = 17,["37"] = 17,["38"] = 17,["39"] = 17,["40"] = 17,["41"] = 17,["42"] = 17,["43"] = 17,["44"] = 17,["45"] = 17,["46"] = 16,["47"] = 21,["48"] = 22,["49"] = 22,["50"] = 22,["51"] = 22,["52"] = 22,["53"] = 22,["54"] = 22,["55"] = 22,["56"] = 22,["57"] = 22,["58"] = 21,["59"] = 26,["60"] = 27,["61"] = 27,["62"] = 27,["63"] = 27,["64"] = 27,["65"] = 27,["66"] = 27,["67"] = 27,["68"] = 27,["69"] = 27,["70"] = 26,["71"] = 31,["72"] = 32,["73"] = 32,["74"] = 32,["75"] = 32,["76"] = 32,["77"] = 32,["78"] = 32,["79"] = 32,["80"] = 32,["81"] = 32,["82"] = 31,["83"] = 36,["84"] = 37,["85"] = 37,["86"] = 37,["87"] = 37,["88"] = 37,["89"] = 37,["90"] = 37,["91"] = 37,["92"] = 37,["93"] = 37,["94"] = 36,["95"] = 41,["96"] = 42,["97"] = 42,["98"] = 42,["99"] = 42,["100"] = 42,["101"] = 42,["102"] = 42,["103"] = 42,["104"] = 42,["105"] = 42,["106"] = 41,["107"] = 45,["108"] = 46,["109"] = 45,["110"] = 49,["111"] = 50,["112"] = 49,["113"] = 53,["114"] = 54,["115"] = 53,["116"] = 57,["117"] = 58,["118"] = 58,["119"] = 58,["120"] = 58,["121"] = 58,["122"] = 58,["123"] = 58,["124"] = 58,["125"] = 58,["126"] = 58,["127"] = 57,["128"] = 61,["129"] = 62,["130"] = 62,["131"] = 62,["132"] = 62,["133"] = 62,["134"] = 62,["135"] = 62,["136"] = 62,["137"] = 62,["138"] = 62,["139"] = 61,["140"] = 65,["141"] = 66,["142"] = 66,["143"] = 66,["144"] = 66,["145"] = 66,["146"] = 66,["147"] = 66,["148"] = 66,["149"] = 66,["150"] = 66,["151"] = 65,["152"] = 69,["153"] = 70,["154"] = 70,["155"] = 70,["156"] = 70,["157"] = 70,["158"] = 70,["159"] = 70,["160"] = 70,["161"] = 70,["162"] = 70,["163"] = 69,["164"] = 73,["165"] = 74,["166"] = 74,["167"] = 74,["168"] = 74,["169"] = 74,["170"] = 74,["171"] = 74,["172"] = 74,["173"] = 74,["174"] = 74,["175"] = 73,["176"] = 77,["177"] = 78,["178"] = 78,["179"] = 78,["180"] = 78,["181"] = 78,["182"] = 78,["183"] = 78,["184"] = 78,["185"] = 78,["186"] = 78,["187"] = 77,["188"] = 82,["189"] = 83,["190"] = 83,["191"] = 83,["192"] = 83,["193"] = 83,["194"] = 83,["195"] = 83,["196"] = 83,["197"] = 83,["198"] = 83,["199"] = 82,["200"] = 87,["201"] = 88,["202"] = 88,["203"] = 88,["204"] = 88,["205"] = 88,["206"] = 88,["207"] = 88,["208"] = 88,["209"] = 88,["210"] = 88,["211"] = 87,["212"] = 93,["213"] = 96,["214"] = 96,["215"] = 96,["216"] = 96,["217"] = 96,["218"] = 96,["219"] = 96,["220"] = 96,["221"] = 96,["222"] = 96,["223"] = 93,["224"] = 100,["225"] = 103,["226"] = 103,["227"] = 103,["228"] = 103,["229"] = 103,["230"] = 103,["231"] = 103,["232"] = 103,["233"] = 103,["234"] = 103,["235"] = 100,["236"] = 107,["237"] = 108,["238"] = 108,["239"] = 108,["240"] = 108,["241"] = 108,["242"] = 108,["243"] = 108,["244"] = 108,["245"] = 108,["246"] = 108,["247"] = 107});
local ____exports = {}
____exports.default = __TS__Class()
local KKApiHelper = ____exports.default
KKApiHelper.name = "KKApiHelper"
function KKApiHelper.prototype.____constructor(self)
end
function KKApiHelper.KKApiGetServerValueLimitLeft(whichPlayer, key)
    return RequestExtraIntegerData(
        82,
        whichPlayer,
        key,
        nil,
        false,
        0,
        0,
        0
    )
end
function KKApiHelper.KKApiRequestBackendLogic(whichPlayer, key, groupkey)
    return RequestExtraBooleanData(
        83,
        whichPlayer,
        key,
        groupkey,
        false,
        0,
        0,
        0
    )
end
function KKApiHelper.KKApiCheckBackendLogicExists(whichPlayer, key)
    return RequestExtraBooleanData(
        84,
        whichPlayer,
        key,
        nil,
        false,
        0,
        0,
        0
    )
end
function KKApiHelper.KKApiGetBackendLogicIntResult(whichPlayer, key)
    return RequestExtraIntegerData(
        85,
        whichPlayer,
        key,
        nil,
        false,
        0,
        0,
        0
    )
end
function KKApiHelper.KKApiGetBackendLogicStrResult(whichPlayer, key)
    return RequestExtraStringData(
        86,
        whichPlayer,
        key,
        nil,
        false,
        0,
        0,
        0
    )
end
function KKApiHelper.KKApiGetBackendLogicUpdateTime(whichPlayer, key)
    return RequestExtraIntegerData(
        87,
        whichPlayer,
        key,
        nil,
        false,
        0,
        0,
        0
    )
end
function KKApiHelper.KKApiGetBackendLogicGroup(whichPlayer, key)
    return RequestExtraStringData(
        88,
        whichPlayer,
        key,
        nil,
        false,
        0,
        0,
        0
    )
end
function KKApiHelper.KKApiRemoveBackendLogicResult(whichPlayer, key)
    return RequestExtraBooleanData(
        89,
        whichPlayer,
        key,
        nil,
        false,
        0,
        0,
        0
    )
end
function KKApiHelper.KKApiTriggerRegisterBackendLogicUpdata(trig)
    DzTriggerRegisterSyncData(trig, "DZBLU", true)
end
function KKApiHelper.KKApiTriggerRegisterBackendLogicDelete(trig)
    DzTriggerRegisterSyncData(trig, "DZBLD", true)
end
function KKApiHelper.KKApiGetSyncBackendLogic()
    return DzGetTriggerSyncData()
end
function KKApiHelper.KKApiIsGameMode()
    return RequestExtraBooleanData(
        90,
        nil,
        nil,
        nil,
        false,
        0,
        0,
        0
    )
end
function KKApiHelper.KKApiInitializeGameKey(whichPlayer, setIndex, k, data)
    return RequestExtraBooleanData(
        91,
        whichPlayer,
        ((("[{\"name\":\"" .. data) .. "\",\"key\":\"") .. k) .. "\"}]",
        nil,
        false,
        setIndex,
        0,
        0
    )
end
function KKApiHelper.KKApiPlayerGUID(whichPlayer)
    return RequestExtraStringData(
        93,
        whichPlayer,
        nil,
        nil,
        false,
        0,
        0,
        0
    )
end
function KKApiHelper.KKApiIsTaskInProgress(whichPlayer, setIndex, taskstat)
    return RequestExtraIntegerData(
        94,
        whichPlayer,
        nil,
        nil,
        false,
        setIndex,
        0,
        0
    ) == taskstat
end
function KKApiHelper.KKApiQueryTaskCurrentProgress(whichPlayer, setIndex)
    return RequestExtraIntegerData(
        95,
        whichPlayer,
        nil,
        nil,
        false,
        setIndex,
        0,
        0
    )
end
function KKApiHelper.KKApiQueryTaskTotalProgress(whichPlayer, setIndex)
    return RequestExtraIntegerData(
        96,
        whichPlayer,
        nil,
        nil,
        false,
        setIndex,
        0,
        0
    )
end
function KKApiHelper.KKApiIsAchievementCompleted(whichPlayer, id)
    return RequestExtraBooleanData(
        98,
        whichPlayer,
        id,
        nil,
        false,
        0,
        0,
        0
    )
end
function KKApiHelper.KKApiAchievementPoints(whichPlayer)
    return RequestExtraIntegerData(
        99,
        whichPlayer,
        nil,
        nil,
        false,
        0,
        0,
        0
    )
end
function KKApiHelper.KKApiBeginBatchSaveArchive(whichPlayer)
    return RequestExtraBooleanData(
        102,
        whichPlayer,
        nil,
        nil,
        false,
        0,
        0,
        0
    )
end
function KKApiHelper.KKApiAddBatchSaveArchive(whichPlayer, key, value, caseInsensitive)
    return RequestExtraBooleanData(
        103,
        whichPlayer,
        key,
        value,
        caseInsensitive,
        0,
        0,
        0
    )
end
function KKApiHelper.KKApiEndBatchSaveArchive(whichPlayer, abandon)
    return RequestExtraBooleanData(
        104,
        whichPlayer,
        nil,
        nil,
        abandon,
        0,
        0,
        0
    )
end
return ____exports
