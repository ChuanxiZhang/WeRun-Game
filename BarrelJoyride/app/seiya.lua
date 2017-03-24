--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:7ba84bba833046d7409d1e6e4b4cfed8:19a57251dc3dd328a8f1c8a09a295c92:585d3bd0fce78a2db2077672d154580e$
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
            x=157,
            y=299,
            width=76,
            height=68,

            sourceX = 9,
            sourceY = 10,
            sourceWidth = 90,
            sourceHeight = 90
        },
        {
            -- IMG00000_副本
            x=79,
            y=449,
            width=76,
            height=68,

            sourceX = 9,
            sourceY = 10,
            sourceWidth = 90,
            sourceHeight = 90
        },
        {
            -- IMG00000_副本1
            x=157,
            y=449,
            width=76,
            height=68,

            sourceX = 9,
            sourceY = 11,
            sourceWidth = 90,
            sourceHeight = 90
        },
        {
            -- IMG00001
            x=87,
            y=69,
            width=80,
            height=66,

            sourceX = 8,
            sourceY = 10,
            sourceWidth = 90,
            sourceHeight = 90
        },
        {
            -- IMG00001_副本
            x=1,
            y=137,
            width=80,
            height=66,

            sourceX = 8,
            sourceY = 10,
            sourceWidth = 90,
            sourceHeight = 90
        },
        {
            -- IMG00001_副本2
            x=83,
            y=137,
            width=80,
            height=66,

            sourceX = 8,
            sourceY = 14,
            sourceWidth = 90,
            sourceHeight = 90
        },
        {
            -- IMG00002
            x=173,
            y=1,
            width=74,
            height=78,

            sourceX = 9,
            sourceY = 11,
            sourceWidth = 90,
            sourceHeight = 90
        },
        {
            -- IMG00002_副本
            x=79,
            y=369,
            width=74,
            height=78,

            sourceX = 9,
            sourceY = 11,
            sourceWidth = 90,
            sourceHeight = 90
        },
        {
            -- IMG00002_副本3
            x=155,
            y=369,
            width=74,
            height=78,

            sourceX = 9,
            sourceY = 1,
            sourceWidth = 90,
            sourceHeight = 90
        },
        {
            -- IMG00003
            x=169,
            y=81,
            width=78,
            height=66,

            sourceX = 7,
            sourceY = 11,
            sourceWidth = 90,
            sourceHeight = 90
        },
        {
            -- IMG00003_副本
            x=165,
            y=149,
            width=78,
            height=66,

            sourceX = 7,
            sourceY = 11,
            sourceWidth = 90,
            sourceHeight = 90
        },
        {
            -- IMG00003_副本4
            x=1,
            y=205,
            width=78,
            height=66,

            sourceX = 7,
            sourceY = 13,
            sourceWidth = 90,
            sourceHeight = 90
        },
        {
            -- IMG00004
            x=1,
            y=1,
            width=84,
            height=66,

            sourceX = 6,
            sourceY = 9,
            sourceWidth = 90,
            sourceHeight = 90
        },
        {
            -- IMG00004_副本
            x=87,
            y=1,
            width=84,
            height=66,

            sourceX = 6,
            sourceY = 9,
            sourceWidth = 90,
            sourceHeight = 90
        },
        {
            -- IMG00004_副本5
            x=1,
            y=69,
            width=84,
            height=66,

            sourceX = 6,
            sourceY = 14,
            sourceWidth = 90,
            sourceHeight = 90
        },
        {
            -- IMG00005
            x=81,
            y=205,
            width=76,
            height=80,

            sourceX = 8,
            sourceY = 10,
            sourceWidth = 90,
            sourceHeight = 90
        },
        {
            -- IMG00005_副本
            x=1,
            y=273,
            width=76,
            height=80,

            sourceX = 8,
            sourceY = 10,
            sourceWidth = 90,
            sourceHeight = 90
        },
        {
            -- IMG00005_副本6
            x=159,
            y=217,
            width=76,
            height=80,

            sourceX = 8,
            sourceY = 0,
            sourceWidth = 90,
            sourceHeight = 90
        },
        {
            -- IMG00011
            x=79,
            y=287,
            width=76,
            height=80,

            sourceX = 8,
            sourceY = 10,
            sourceWidth = 90,
            sourceHeight = 90
        },
        {
            -- IMG00011_副本
            x=1,
            y=355,
            width=76,
            height=80,

            sourceX = 8,
            sourceY = 10,
            sourceWidth = 90,
            sourceHeight = 90
        },
        {
            -- IMG00011_副本7
            x=1,
            y=437,
            width=76,
            height=80,

            sourceX = 8,
            sourceY = 0,
            sourceWidth = 90,
            sourceHeight = 90
        },
    },
    
    sheetContentWidth = 248,
    sheetContentHeight = 518
}

SheetInfo.frameIndex =
{

    ["IMG00000"] = 1,
    ["IMG00000_副本"] = 2,
    ["IMG00000_副本1"] = 3,
    ["IMG00001"] = 4,
    ["IMG00001_副本"] = 5,
    ["IMG00001_副本2"] = 6,
    ["IMG00002"] = 7,
    ["IMG00002_副本"] = 8,
    ["IMG00002_副本3"] = 9,
    ["IMG00003"] = 10,
    ["IMG00003_副本"] = 11,
    ["IMG00003_副本4"] = 12,
    ["IMG00004"] = 13,
    ["IMG00004_副本"] = 14,
    ["IMG00004_副本5"] = 15,
    ["IMG00005"] = 16,
    ["IMG00005_副本"] = 17,
    ["IMG00005_副本6"] = 18,
    ["IMG00011"] = 19,
    ["IMG00011_副本"] = 20,
    ["IMG00011_副本7"] = 21,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
