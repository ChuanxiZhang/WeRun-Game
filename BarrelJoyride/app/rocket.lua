--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:37b0b009666ff2b13543959a594eb503:f3dab1c448a5e6a65780a48a0b6a1b34:d1245b2e8cbcfd8a7dc2506f1439f842$
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
            width=96,
            height=40,

            sourceX = 12,
            sourceY = 1,
            sourceWidth = 110,
            sourceHeight = 44
        },
        {
            -- IMG00001
            x=1,
            y=81,
            width=92,
            height=36,

            sourceX = 13,
            sourceY = 3,
            sourceWidth = 110,
            sourceHeight = 44
        },
        {
            -- IMG00002
            x=1,
            y=43,
            width=94,
            height=36,

            sourceX = 12,
            sourceY = 5,
            sourceWidth = 110,
            sourceHeight = 44
        },
        {
            -- IMG00003
            x=1,
            y=119,
            width=92,
            height=36,

            sourceX = 13,
            sourceY = 4,
            sourceWidth = 110,
            sourceHeight = 44
        },
    },
    
    sheetContentWidth = 98,
    sheetContentHeight = 156
}

SheetInfo.frameIndex =
{

    ["IMG00000"] = 1,
    ["IMG00001"] = 2,
    ["IMG00002"] = 3,
    ["IMG00003"] = 4,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
