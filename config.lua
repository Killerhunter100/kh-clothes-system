--[[──────────────────────────────##
##─██████──████████─██████──██████##
##─██░░██──██░░░░██─██░░██──██░░██##
##─██░░██──██░░████─██░░██──██░░██##
##─██░░██──██░░██───██░░██──██░░██##
##─██░░██████░░██───██░░██████░░██##
##─██░░░░░░░░░░██───██░░░░░░░░░░██##
##─██░░██████░░██───██░░██████░░██##
##─██░░██──██░░██───██░░██──██░░██##
##─██░░██──██░░████─██░░██──██░░██##
##─██░░██──██░░░░██─██░░██──██░░██##
##─██████──████████─██████──██████##
##────────────────────────────────##]]


Config = {}



--هنا تحط رقم الرتبة--

Config.Grade1 = 0 --المستجد
Config.Grade2 = 1 --جندى
Config.GradeExtra2 = 2 --جندى اول
Config.Grade3 = 3 --عريف
Config.GradeExtra3 = 4 --رقيب
Config.Grade4 = 5 -- رئيس رقباء


Config.Outfits = {
    ["police"] = { -- Job
        ["male"] = { -- Gender
				[1] = { -- Outfits
						["pants"]       = { item = 24, texture = 0},  -- Pants
						["arms"]        = { item = 19, texture = 0},  -- Arms
						["t-shirt"]     = { item = 58, texture = 0},  -- T Shirt
						["vest"]        = { item = 0, texture = 0},  -- Body Vest
						["torso2"]      = { item = 55, texture = 0},  -- Jacket
						["shoes"]       = { item = 51, texture = 0},  -- Shoes
						["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
						["bag"]         = { item = 0, texture = 0},  -- Bag
						["hat"]         = { item = -1, texture = -1},  -- Hat
						["glass"]       = { item = 0, texture = 0},  -- Glasses
						["mask"]        = { item = 0, texture = 0},  -- Mask
				},
				[2] = {
						["pants"]       = { item = 24, texture = 0},  -- Pants
						["arms"]        = { item = 20, texture = 0},  -- Arms
						["t-shirt"]     = { item = 58, texture = 0},  -- T Shirt
						["vest"]        = { item = 0, texture = 0},  -- Body Vest
						["torso2"]      = { item = 317, texture = 0},  -- Jacket
						["shoes"]       = { item = 51, texture = 0},  -- Shoes
						["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
						["bag"]         = { item = 0, texture = 0},  -- Bag
						["hat"]         = { item = -1, texture = -1},  -- Hat
						["glass"]       = { item = 0, texture = 0},  -- Glasses
						["mask"]         = { item = 0, texture = 0},  -- Mask
				},
				[3] = {
						["pants"]       = { item = 24, texture = 0},  -- Pants
						["arms"]        = { item = 20, texture = 0},  -- Arms
						["t-shirt"]     = { item = 58, texture = 0},  -- T Shirt
						["vest"]        = { item = 0, texture = 0},  -- Body Vest
						["torso2"]      = { item = 317, texture = 3},  -- Jacket
						["shoes"]       = { item = 51, texture = 0},  -- Shoes
						["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
						["bag"]         = { item = 0, texture = 0},  -- Bag
						["hat"]         = { item = 58, texture = 0},  -- Hat
						["glass"]       = { item = 0, texture = 0},  -- Glasses
						["mask"]         = { item = 0, texture = 0},  -- Mask
				},
				[4] = {
						["pants"]       = { item = 24, texture = 0},  -- Pants
						["arms"]        = { item = 20, texture = 0},  -- Arms
						["t-shirt"]     = { item = 58, texture = 0},  -- T Shirt
						["vest"]        = { item = 0, texture = 0},  -- Body Vest
						["torso2"]      = { item = 317, texture = 8},  -- Jacket
						["shoes"]       = { item = 51, texture = 0},  -- Shoes
						["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
						["bag"]         = { item = 0, texture = 0},  -- Bag
						["hat"]         = { item = 58, texture = 3},  -- Hat
						["glass"]       = { item = 0, texture = 0},  -- Glasses
						["mask"]         = { item = 0, texture = 0},  -- Mask
				},
				[5] = {
						["pants"]       = { item = 130, texture = 1},  -- Pants
						["arms"]        = { item = 172, texture = 0},  -- Arms
						["t-shirt"]     = { item = 15, texture = 0},  -- T Shirt
						["vest"]        = { item = 15, texture = 2},  -- Body Vest
						["torso2"]      = { item = 336, texture = 3},  -- Jacket
						["shoes"]       = { item = 24, texture = 0},  -- Shoes
						["accessory"]   = { item = 133, texture = 0},  -- Neck Accessory
						["hat"]         = { item = 150, texture = 0},  -- Hat
						["glass"]       = { item = 0, texture = 0},  -- Glasses
						["mask"]         = { item = 52, texture = 0},  -- Mask
				},
        },
        ["female"] = { -- Gender
				[1] = {
						["pants"]       = { item = 133, texture = 0},  -- Pants
						["arms"]        = { item = 31, texture = 0},  -- Arms
						["t-shirt"]     = { item = 35, texture = 0},  -- T Shirt
						["vest"]        = { item = 34, texture = 0},  -- Body Vest
						["torso2"]      = { item = 48, texture = 0},  -- Jacket
						["shoes"]       = { item = 52, texture = 0},  -- Shoes
						["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
						["bag"]         = { item = 0, texture = 0},  -- Bag
						["hat"]         = { item = 0, texture = 0},  -- Hat
						["glass"]       = { item = 0, texture = 0},  -- Glasses
						["mask"]        = { item = 0, texture = 0},  -- Mask
				},
				[2] = {
						["pants"]       = { item = 133, texture = 0},  -- Pants
						["arms"]        = { item = 31, texture = 0},  -- Arms
						["t-shirt"]     = { item = 35, texture = 0},  -- T Shirt
						["vest"]        = { item = 34, texture = 0},  -- Body Vest
						["torso2"]      = { item = 327, texture = 0},  -- Jacket
						["shoes"]       = { item = 52, texture = 0},  -- Shoes
						["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
						["bag"]         = { item = 0, texture = 0},  -- Bag
						["hat"]         = { item = 0, texture = 0},  -- Hat
						["glass"]       = { item = 0, texture = 0},  -- Glasses
						["mask"]        = { item = 0, texture = 0},  -- Mask
				},
				[3] = {
						["pants"]       = { item = 133, texture = 0},  -- Pants
						["arms"]        = { item = 31, texture = 0},  -- Arms
						["t-shirt"]     = { item = 35, texture = 0},  -- T Shirt
						["vest"]        = { item = 34, texture = 0},  -- Body Vest
						["torso2"]      = { item = 327, texture = 3},  -- Jacket
						["shoes"]       = { item = 52, texture = 0},  -- Shoes
						["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
						["bag"]         = { item = 0, texture = 0},  -- Bag
						["hat"]         = { item = 0, texture = 0},  -- Hat
						["glass"]       = { item = 0, texture = 0},  -- Glasses
						["mask"]        = { item = 0, texture = 0},  -- Mask
				},
				[4] = {
						["pants"]       = { item = 133, texture = 0},  -- Pants
						["arms"]        = { item = 31, texture = 0},  -- Arms
						["t-shirt"]     = { item = 35, texture = 0},  -- T Shirt
						["vest"]        = { item = 34, texture = 0},  -- Body Vest
						["torso2"]      = { item = 327, texture = 8},  -- Jacket
						["shoes"]       = { item = 52, texture = 0},  -- Shoes
						["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
						["bag"]         = { item = 0, texture = 0},  -- Bag
						["hat"]         = { item = 0, texture = 0},  -- Hat
						["glass"]       = { item = 0, texture = 0},  -- Glasses
						["mask"]        = { item = 0, texture = 0},  -- Mask
				},
				[5] = {
						["pants"]       = { item = 135, texture = 1},  -- Pants
						["arms"]        = { item = 213, texture = 0},  -- Arms
						["t-shirt"]     = { item = 0, texture = 0},  -- T Shirt
						["vest"]        = { item = 17, texture = 2},  -- Body Vest
						["torso2"]      = { item = 327, texture = 8},  -- Jacket
						["shoes"]       = { item = 52, texture = 0},  -- Shoes
						["accessory"]   = { item = 102, texture = 0},  -- Neck Accessory
						["bag"]         = { item = 0, texture = 0},  -- Bag
						["hat"]         = { item = 149, texture = 0},  -- Hat
						["glass"]       = { item = 0, texture = 0},  -- Glasses
						["mask"]        = { item = 35, texture = 0},  -- Mask
            },
        }
    }
}