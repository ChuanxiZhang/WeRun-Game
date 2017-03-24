--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:8599c4ac62e69587282ce742de1a5424:66251c3bba2825f72ed1f6da1bfc1a41:ff647030f58afe978c919ad69a79a67d$
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
            -- IMG00000_副本
            x=1,
            y=521,
            width=108,
            height=96,

            sourceX = 14,
            sourceY = 16,
            sourceWidth = 130,
            sourceHeight = 130
        },
        {
            -- IMG00001_副本
            x=1,
            y=95,
            width=114,
            height=94,

            sourceX = 12,
            sourceY = 15,
            sourceWidth = 130,
            sourceHeight = 130
        },
        {
            -- IMG00002_副本
            x=1,
            y=619,
            width=104,
            height=112,

            sourceX = 14,
            sourceY = 16,
            sourceWidth = 130,
            sourceHeight = 130
        },
        {
            -- IMG00003_副本
            x=1,
            y=191,
            width=110,
            height=96,

            sourceX = 12,
            sourceY = 15,
            sourceWidth = 130,
            sourceHeight = 130
        },
        {
            -- IMG00004_副本
            x=1,
            y=1,
            width=118,
            height=92,

            sourceX = 10,
            sourceY = 15,
            sourceWidth = 130,
            sourceHeight = 130
        },
        {
            -- IMG00005_副本
            x=1,
            y=289,
            width=108,
            height=114,

            sourceX = 12,
            sourceY = 14,
            sourceWidth = 130,
            sourceHeight = 130
        },
        {
            -- IMG00011_副本
            x=1,
            y=405,
            width=108,
            height=114,

            sourceX = 12,
            sourceY = 14,
            sourceWidth = 130,
            sourceHeight = 130
        },
    },
    
    sheetContentWidth = 120,
    sheetContentHeight = 732
}

SheetInfo.frameIndex =
{

    ["IMG00000_副本"] = 1,
    ["IMG00001_副本"] = 2,
    ["IMG00002_副本"] = 3,
    ["IMG00003_副本"] = 4,
    ["IMG00004_副本"] = 5,
    ["IMG00005_副本"] = 6,
    ["IMG00011_副本"] = 7,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
