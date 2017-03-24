--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:d36c0c246198d52d0118bac112a9b3c7:659bbd9a8338393b9bedbb8e56fdbfe0:4b5871ddef250aaab496c798e5943f3d$
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
            -- bar_1
            x=1,
            y=1,
            width=39,
            height=332,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 57,
            sourceHeight = 332
        },
        {
            -- bar_2
            x=1,
            y=335,
            width=39,
            height=332,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 57,
            sourceHeight = 332
        },
    },
    
    sheetContentWidth = 41,
    sheetContentHeight = 668
}

SheetInfo.frameIndex =
{

    ["bar_1"] = 1,
    ["bar_2"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
