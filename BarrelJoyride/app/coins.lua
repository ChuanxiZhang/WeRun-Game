--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:a28fee133ce3a4034ad9d22f97295b84:52350e5df38441434845050f0b2964a2:82a91599548dc38b936cf184c975a5c9$
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
            y=1,
            width=36,
            height=36,

            sourceX = 14,
            sourceY = 14,
            sourceWidth = 64,
            sourceHeight = 64
        },
        {
            -- IMG00001
            x=39,
            y=1,
            width=36,
            height=36,

            sourceX = 14,
            sourceY = 14,
            sourceWidth = 64,
            sourceHeight = 64
        },
        {
            -- IMG00002
            x=77,
            y=1,
            width=34,
            height=36,

            sourceX = 15,
            sourceY = 14,
            sourceWidth = 64,
            sourceHeight = 64
        },
        {
            -- IMG00003
            x=113,
            y=1,
            width=30,
            height=36,

            sourceX = 18,
            sourceY = 14,
            sourceWidth = 64,
            sourceHeight = 64
        },
        {
            -- IMG00004
            x=145,
            y=1,
            width=24,
            height=36,

            sourceX = 21,
            sourceY = 14,
            sourceWidth = 64,
            sourceHeight = 64
        },
        {
            -- IMG00005
            x=171,
            y=1,
            width=18,
            height=36,

            sourceX = 24,
            sourceY = 14,
            sourceWidth = 64,
            sourceHeight = 64
        },
        {
            -- IMG00006
            x=191,
            y=1,
            width=12,
            height=36,

            sourceX = 27,
            sourceY = 14,
            sourceWidth = 64,
            sourceHeight = 64
        },
        {
            -- IMG00007
            x=205,
            y=1,
            width=6,
            height=36,

            sourceX = 29,
            sourceY = 14,
            sourceWidth = 64,
            sourceHeight = 64
        },
    },
    
    sheetContentWidth = 212,
    sheetContentHeight = 38
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
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
