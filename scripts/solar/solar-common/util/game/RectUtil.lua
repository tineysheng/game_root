local ____lualib = require("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 4,["10"] = 4,["11"] = 4,["13"] = 4,["14"] = 14,["15"] = 15,["16"] = 15,["17"] = 15,["18"] = 15,["19"] = 15,["20"] = 15,["21"] = 15,["22"] = 14,["23"] = 25,["24"] = 26,["25"] = 25,["26"] = 33,["27"] = 33,["28"] = 34,["29"] = 35,["30"] = 36,["32"] = 38,["33"] = 39,["34"] = 40,["35"] = 41,["37"] = 42,["38"] = 42,["39"] = 43,["40"] = 44,["41"] = 45,["43"] = 47,["44"] = 48,["46"] = 50,["47"] = 51,["49"] = 53,["50"] = 54,["52"] = 42,["55"] = 57,["56"] = 33,["57"] = 64,["58"] = 65,["59"] = 65,["60"] = 65,["61"] = 65,["62"] = 66,["63"] = 66,["64"] = 66,["65"] = 66,["66"] = 67,["67"] = 64,["68"] = 74,["70"] = 75,["71"] = 75,["72"] = 76,["73"] = 76,["74"] = 76,["75"] = 76,["76"] = 77,["77"] = 77,["78"] = 77,["79"] = 77,["80"] = 78,["81"] = 79,["83"] = 75,["86"] = 82,["87"] = 74,["88"] = 88,["90"] = 89,["91"] = 89,["92"] = 90,["93"] = 90,["94"] = 90,["95"] = 90,["96"] = 91,["97"] = 91,["98"] = 91,["99"] = 91,["100"] = 92,["101"] = 94,["103"] = 89,["106"] = 97,["107"] = 88,["108"] = 104,["109"] = 105,["110"] = 105,["111"] = 105,["112"] = 105,["113"] = 104,["114"] = 111,["115"] = 112,["116"] = 112,["117"] = 112,["118"] = 112,["119"] = 111,["120"] = 122,["121"] = 123,["122"] = 122,["123"] = 132,["124"] = 133,["125"] = 132,["126"] = 142,["127"] = 143,["128"] = 142,["129"] = 150,["130"] = 151,["131"] = 150});
local ____exports = {}
local ____rect = require("solar.solar-common.w3ts.handles.rect")
local Rectangle = ____rect.Rectangle
____exports.default = __TS__Class()
local RectUtil = ____exports.default
RectUtil.name = "RectUtil"
function RectUtil.prototype.____constructor(self)
end
function RectUtil.GetRectFromCircle(centerX, centerY, radius)
    return __TS__New(
        Rectangle,
        centerX - radius,
        centerY - radius,
        centerX + radius,
        centerY + radius
    )
end
function RectUtil.createRect(x, y, width, height)
    return Rect(x - width * 0.5, y - height * 0.5, x + width * 0.5, y + height * 0.5)
end
function RectUtil.createRectByVecs(...)
    local vecs = {...}
    if vecs == nil or #vecs < 2 then
        log.errorWithTraceBack("必须传入2个或以上的坐标点")
        return nil
    end
    local minX = vecs[1].x
    local minY = vecs[1].y
    local maxX = vecs[1].x
    local maxY = vecs[1].y
    do
        local i = 1
        while i < #vecs do
            local vec = vecs[i + 1]
            if vec.x < minX then
                minX = vec.x
            end
            if vec.x > maxX then
                maxX = vec.x
            end
            if vec.y < minY then
                minY = vec.y
            end
            if vec.y > maxY then
                maxY = vec.y
            end
            i = i + 1
        end
    end
    return Rect(minX, minY, maxX, maxY)
end
function RectUtil.getRandomXYInRect(qy)
    local x = GetRandomInt(
        GetRectMinX(qy),
        GetRectMaxX(qy)
    )
    local y = GetRandomInt(
        GetRectMinY(qy),
        GetRectMaxY(qy)
    )
    return {x = x, y = y}
end
function RectUtil.getRandomDeepWaterXYInRect(region)
    do
        local i = 0
        while i < 1000000 do
            local x = GetRandomInt(
                GetRectMinX(region),
                GetRectMaxX(region)
            )
            local y = GetRandomInt(
                GetRectMinY(region),
                GetRectMaxY(region)
            )
            if not IsTerrainPathable(x, y, PATHING_TYPE_FLOATABILITY) and IsTerrainPathable(x, y, PATHING_TYPE_WALKABILITY) then
                return {x = x, y = y}
            end
            i = i + 1
        end
    end
    return nil
end
function RectUtil.getRandomLandXYInRect(region)
    do
        local i = 0
        while i < 1000000 do
            local x = GetRandomInt(
                GetRectMinX(region),
                GetRectMaxX(region)
            )
            local y = GetRandomInt(
                GetRectMinY(region),
                GetRectMaxY(region)
            )
            if IsTerrainPathable(x, y, PATHING_TYPE_FLOATABILITY) and not IsTerrainPathable(x, y, PATHING_TYPE_WALKABILITY) then
                return {x = x, y = y}
            end
            i = i + 1
        end
    end
    return nil
end
function RectUtil.getRandomXInRect(qy)
    return GetRandomInt(
        GetRectMinX(qy),
        GetRectMaxX(qy)
    )
end
function RectUtil.getRandomYInRect(qy)
    return GetRandomInt(
        GetRectMinY(qy),
        GetRectMaxY(qy)
    )
end
function RectUtil.isContainsCoords(r, x, y)
    return GetRectMinX(r) <= x and x <= GetRectMaxX(r) and GetRectMinY(r) <= y and y <= GetRectMaxY(r)
end
function RectUtil.isInPlayableArea(x, y)
    return GetRectMinX(bj_mapInitialPlayableArea) <= x and x <= GetRectMaxX(bj_mapInitialPlayableArea) and GetRectMinY(bj_mapInitialPlayableArea) <= y and y <= GetRectMaxY(bj_mapInitialPlayableArea)
end
function RectUtil.getRectWidth(r)
    return GetRectMaxX(r) - GetRectMinX(r)
end
function RectUtil.getRectHeight(r)
    return GetRectMaxY(r) - GetRectMinY(r)
end
return ____exports
