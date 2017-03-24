--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:f0e642f0a4875cf45ecdbead4438209d:e52e885bd482c15d2bf709ce5b3acdcc:f195f46a52c1b43409141c64626c2781$
--
-- local sheetInfo = require("mysheet")
-- local myImageSheet = graphics.newImageSheet( "mysheet.png", sheetInfo:getSheet() )
-- local sprite = display.newSprite( myImageSheet , {frames={sheetInfo:getFrameIndex("sprite")}} )
--

local SheetInfo = {}

SheetInfo.sheet =
{
    frames = {
    
        {
            -- IMG00000
            x=1,
            y=649,
            width=56,
            height=86,

            sourceX = 25,
            sourceY = 14,
            sourceWidth = 100,
            sourceHeight = 100
        },
        {
            -- IMG00001
            x=1,
            y=737,
            width=56,
            height=86,

            sourceX = 25,
            sourceY = 14,
            sourceWidth = 100,
            sourceHeight = 100
        },
        {
            -- IMG00002
            x=1,
            y=289,
            width=56,
            height=88,

            sourceX = 24,
            sourceY = 12,
            sourceWidth = 100,
            sourceHeight = 100
        },
        {
            -- IMG00003
            x=1,
            y=379,
            width=56,
            height=88,

            sourceX = 24,
            sourceY = 12,
            sourceWidth = 100,
            sourceHeight = 100
        },
        {
            -- IMG00004
            x=1,
            y=1,
            width=56,
            height=94,

            sourceX = 25,
            sourceY = 6,
            sourceWidth = 100,
            sourceHeight = 100
        },
        {
            -- IMG00005
            x=1,
            y=97,
            width=56,
            height=94,

            sourceX = 24,
            sourceY = 6,
            sourceWidth = 100,
            sourceHeight = 100
        },
        {
            -- IMG00006
            x=1,
            y=825,
            width=56,
            height=84,

            sourceX = 25,
            sourceY = 16,
            sourceWidth = 100,
            sourceHeight = 100
        },
        {
            -- IMG00007
            x=1,
            y=911,
            width=56,
            height=84,

            sourceX = 25,
            sourceY = 16,
            sourceWidth = 100,
            sourceHeight = 100
        },
        {
            -- IMG00008
            x=1,
            y=469,
            width=56,
            height=88,

            sourceX = 24,
            sourceY = 12,
            sourceWidth = 100,
            sourceHeight = 100
        },
        {
            -- IMG00009
            x=1,
            y=559,
            width=56,
            height=88,

            sourceX = 24,
            sourceY = 12,
            sourceWidth = 100,
            sourceHeight = 100
        },
        {
            -- IMG00010
            x=1,
            y=997,
            width=54,
            height=94,

            sourceX = 25,
            sourceY = 6,
            sourceWidth = 100,
            sourceHeight = 100
        },
        {
            -- IMG00011
            x=1,
            y=193,
            width=56,
            height=94,

            sourceX = 24,
            sourceY = 6,
            sourceWidth = 100,
            sourceHeight = 100
        },
    },
    
    sheetContentWidth = 58,
    sheetContentHeight = 1092
}

SheetInfo.frameIndex =
{

    ["IMG00000"] = 1,
    ["IMG00001"] = 2,
    ["IMG00002"] = 3,
    ["IMG00003"] = 4,
    ["IMG00004"] = 5,
    ["IMG00005"] = 6,
    ["IMG00006"] = 7,
    ["IMG00007"] = 8,
    ["IMG00008"] = 9,
    ["IMG00009"] = 10,
    ["IMG00010"] = 11,
    ["IMG00011"] = 12,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
