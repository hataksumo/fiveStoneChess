local drop_group_data = {}

--======================DROP_GROUP_INFO==========================
drop_group_data.DROP_GROUP_INFO = {
	["1"] = {id = "1", group_id = "1", random_type = 2, item_type = 4, item_id = "1023", count_lower = 1, count_upper = 1, weight = 580},--飞矛手
	["2"] = {id = "2", group_id = "1", random_type = 2, item_type = 4, item_id = "1395", count_lower = 1, count_upper = 1, weight = 580},--喵喵守卫
	["3"] = {id = "3", group_id = "1", random_type = 2, item_type = 4, item_id = "1495", count_lower = 1, count_upper = 1, weight = 580},--左护法
	["4"] = {id = "4", group_id = "1", random_type = 2, item_type = 4, item_id = "1239", count_lower = 1, count_upper = 1, weight = 580},--暴风步兵
	["5"] = {id = "5", group_id = "1", random_type = 2, item_type = 4, item_id = "1045", count_lower = 1, count_upper = 1, weight = 580},--小花
	["6"] = {id = "6", group_id = "1", random_type = 2, item_type = 4, item_id = "1261", count_lower = 1, count_upper = 1, weight = 28},--斯巴达
	["7"] = {id = "7", group_id = "1", random_type = 2, item_type = 4, item_id = "1127", count_lower = 1, count_upper = 1, weight = 580},--力士
	["8"] = {id = "8", group_id = "1", random_type = 2, item_type = 3, item_id = "15002", count_lower = 5, count_upper = 5, weight = 1160},--飞矛手
	["9"] = {id = "9", group_id = "1", random_type = 2, item_type = 3, item_id = "15044", count_lower = 5, count_upper = 5, weight = 1160},--喵喵守卫
	["10"] = {id = "10", group_id = "1", random_type = 2, item_type = 3, item_id = "15094", count_lower = 5, count_upper = 5, weight = 1160},--左护法
	["11"] = {id = "11", group_id = "1", random_type = 2, item_type = 3, item_id = "15033", count_lower = 5, count_upper = 5, weight = 1160},--暴风步兵
	["12"] = {id = "12", group_id = "1", random_type = 2, item_type = 3, item_id = "15004", count_lower = 5, count_upper = 5, weight = 1160},--小花
	["13"] = {id = "13", group_id = "1", random_type = 2, item_type = 3, item_id = "15035", count_lower = 5, count_upper = 5, weight = 56},--斯巴达
	["14"] = {id = "14", group_id = "1", random_type = 2, item_type = 3, item_id = "15012", count_lower = 5, count_upper = 5, weight = 1160},--力士
	["15"] = {id = "15", group_id = "1", random_type = 2, item_type = 3, item_id = "15002", count_lower = 3, count_upper = 3, weight = 1160},--飞矛手
	["16"] = {id = "16", group_id = "1", random_type = 2, item_type = 3, item_id = "15044", count_lower = 3, count_upper = 3, weight = 1160},--喵喵守卫
	["17"] = {id = "17", group_id = "1", random_type = 2, item_type = 3, item_id = "15094", count_lower = 3, count_upper = 3, weight = 1160},--左护法
	["18"] = {id = "18", group_id = "1", random_type = 2, item_type = 3, item_id = "15033", count_lower = 3, count_upper = 3, weight = 1160},--暴风步兵
	["19"] = {id = "19", group_id = "1", random_type = 2, item_type = 3, item_id = "15004", count_lower = 3, count_upper = 3, weight = 1160},--小花
	["20"] = {id = "20", group_id = "1", random_type = 2, item_type = 3, item_id = "15035", count_lower = 3, count_upper = 3, weight = 56},--斯巴达
	["21"] = {id = "21", group_id = "1", random_type = 2, item_type = 3, item_id = "15012", count_lower = 3, count_upper = 3, weight = 1160},--力士
	["22"] = {id = "22", group_id = "1", random_type = 2, item_type = 3, item_id = "15002", count_lower = 2, count_upper = 2, weight = 1160},--飞矛手
	["23"] = {id = "23", group_id = "1", random_type = 2, item_type = 3, item_id = "15044", count_lower = 2, count_upper = 2, weight = 1160},--喵喵守卫
	["24"] = {id = "24", group_id = "1", random_type = 2, item_type = 3, item_id = "15094", count_lower = 2, count_upper = 2, weight = 1160},--左护法
	["25"] = {id = "25", group_id = "1", random_type = 2, item_type = 3, item_id = "15033", count_lower = 2, count_upper = 2, weight = 1160},--暴风步兵
	["26"] = {id = "26", group_id = "1", random_type = 2, item_type = 3, item_id = "15004", count_lower = 2, count_upper = 2, weight = 1160},--小花
	["27"] = {id = "27", group_id = "1", random_type = 2, item_type = 3, item_id = "15035", count_lower = 2, count_upper = 2, weight = 56},--斯巴达
	["28"] = {id = "28", group_id = "1", random_type = 2, item_type = 3, item_id = "15012", count_lower = 2, count_upper = 2, weight = 1160},--力士
	["29"] = {id = "29", group_id = "1", random_type = 2, item_type = 3, item_id = "15002", count_lower = 1, count_upper = 1, weight = 1160},--飞矛手
	["30"] = {id = "30", group_id = "1", random_type = 2, item_type = 3, item_id = "15044", count_lower = 1, count_upper = 1, weight = 1160},--喵喵守卫
	["31"] = {id = "31", group_id = "1", random_type = 2, item_type = 3, item_id = "15094", count_lower = 1, count_upper = 1, weight = 1160},--左护法
	["32"] = {id = "32", group_id = "1", random_type = 2, item_type = 3, item_id = "15033", count_lower = 1, count_upper = 1, weight = 1160},--暴风步兵
	["33"] = {id = "33", group_id = "1", random_type = 2, item_type = 3, item_id = "15004", count_lower = 1, count_upper = 1, weight = 1160},--小花
	["34"] = {id = "34", group_id = "1", random_type = 2, item_type = 3, item_id = "15035", count_lower = 1, count_upper = 1, weight = 56},--斯巴达
	["35"] = {id = "35", group_id = "1", random_type = 2, item_type = 3, item_id = "15012", count_lower = 1, count_upper = 1, weight = 1160},--力士
	["36"] = {id = "36", group_id = "1", random_type = 2, item_type = 3, item_id = "15103", count_lower = 100, count_upper = 10, weight = 580},--主角碎片
	["37"] = {id = "37", group_id = "1", random_type = 2, item_type = 3, item_id = "15103", count_lower = 5, count_upper = 5, weight = 1160},--主角碎片
	["38"] = {id = "38", group_id = "1", random_type = 2, item_type = 3, item_id = "15103", count_lower = 3, count_upper = 3, weight = 1160},--主角碎片
	["39"] = {id = "39", group_id = "1", random_type = 2, item_type = 3, item_id = "15103", count_lower = 2, count_upper = 2, weight = 1160},--主角碎片
	["40"] = {id = "40", group_id = "1", random_type = 2, item_type = 3, item_id = "15103", count_lower = 1, count_upper = 1, weight = 1160},--主角碎片
	["41"] = {id = "41", group_id = "1", random_type = 2, item_type = 2, item_id = "1000", count_lower = 23, count_upper = 135, weight = 63208},--金币
	["42"] = {id = "42", group_id = "2", random_type = 2, item_type = 4, item_id = "1023", count_lower = 1, count_upper = 1, weight = 580},--飞矛手
	["43"] = {id = "43", group_id = "2", random_type = 2, item_type = 4, item_id = "1395", count_lower = 1, count_upper = 1, weight = 580},--喵喵守卫
	["44"] = {id = "44", group_id = "2", random_type = 2, item_type = 4, item_id = "1495", count_lower = 1, count_upper = 1, weight = 580},--左护法
	["45"] = {id = "45", group_id = "2", random_type = 2, item_type = 4, item_id = "1239", count_lower = 1, count_upper = 1, weight = 580},--暴风步兵
	["46"] = {id = "46", group_id = "2", random_type = 2, item_type = 4, item_id = "1045", count_lower = 1, count_upper = 1, weight = 580},--小花
	["47"] = {id = "47", group_id = "2", random_type = 2, item_type = 4, item_id = "1261", count_lower = 1, count_upper = 1, weight = 28},--斯巴达
	["48"] = {id = "48", group_id = "2", random_type = 2, item_type = 4, item_id = "1127", count_lower = 1, count_upper = 1, weight = 580},--力士
	["49"] = {id = "49", group_id = "2", random_type = 2, item_type = 3, item_id = "15002", count_lower = 5, count_upper = 5, weight = 1160},--飞矛手
	["50"] = {id = "50", group_id = "2", random_type = 2, item_type = 3, item_id = "15044", count_lower = 5, count_upper = 5, weight = 1160},--喵喵守卫
	["51"] = {id = "51", group_id = "2", random_type = 2, item_type = 3, item_id = "15094", count_lower = 5, count_upper = 5, weight = 1160},--左护法
	["52"] = {id = "52", group_id = "2", random_type = 2, item_type = 3, item_id = "15033", count_lower = 5, count_upper = 5, weight = 1160},--暴风步兵
	["53"] = {id = "53", group_id = "2", random_type = 2, item_type = 3, item_id = "15004", count_lower = 5, count_upper = 5, weight = 1160},--小花
	["54"] = {id = "54", group_id = "2", random_type = 2, item_type = 3, item_id = "15035", count_lower = 5, count_upper = 5, weight = 56},--斯巴达
	["55"] = {id = "55", group_id = "2", random_type = 2, item_type = 3, item_id = "15012", count_lower = 5, count_upper = 5, weight = 1160},--力士
	["56"] = {id = "56", group_id = "2", random_type = 2, item_type = 3, item_id = "15002", count_lower = 3, count_upper = 3, weight = 1160},--飞矛手
	["57"] = {id = "57", group_id = "2", random_type = 2, item_type = 3, item_id = "15044", count_lower = 3, count_upper = 3, weight = 1160},--喵喵守卫
	["58"] = {id = "58", group_id = "2", random_type = 2, item_type = 3, item_id = "15094", count_lower = 3, count_upper = 3, weight = 1160},--左护法
	["59"] = {id = "59", group_id = "2", random_type = 2, item_type = 3, item_id = "15033", count_lower = 3, count_upper = 3, weight = 1160},--暴风步兵
	["60"] = {id = "60", group_id = "2", random_type = 2, item_type = 3, item_id = "15004", count_lower = 3, count_upper = 3, weight = 1160},--小花
	["61"] = {id = "61", group_id = "2", random_type = 2, item_type = 3, item_id = "15035", count_lower = 3, count_upper = 3, weight = 56},--斯巴达
	["62"] = {id = "62", group_id = "2", random_type = 2, item_type = 3, item_id = "15012", count_lower = 3, count_upper = 3, weight = 1160},--力士
	["63"] = {id = "63", group_id = "2", random_type = 2, item_type = 3, item_id = "15002", count_lower = 2, count_upper = 2, weight = 1160},--飞矛手
	["64"] = {id = "64", group_id = "2", random_type = 2, item_type = 3, item_id = "15044", count_lower = 2, count_upper = 2, weight = 1160},--喵喵守卫
	["65"] = {id = "65", group_id = "2", random_type = 2, item_type = 3, item_id = "15094", count_lower = 2, count_upper = 2, weight = 1160},--左护法
	["66"] = {id = "66", group_id = "2", random_type = 2, item_type = 3, item_id = "15033", count_lower = 2, count_upper = 2, weight = 1160},--暴风步兵
	["67"] = {id = "67", group_id = "2", random_type = 2, item_type = 3, item_id = "15004", count_lower = 2, count_upper = 2, weight = 1160},--小花
	["68"] = {id = "68", group_id = "2", random_type = 2, item_type = 3, item_id = "15035", count_lower = 2, count_upper = 2, weight = 56},--斯巴达
	["69"] = {id = "69", group_id = "2", random_type = 2, item_type = 3, item_id = "15012", count_lower = 2, count_upper = 2, weight = 1160},--力士
	["70"] = {id = "70", group_id = "2", random_type = 2, item_type = 3, item_id = "15002", count_lower = 1, count_upper = 1, weight = 1160},--飞矛手
	["71"] = {id = "71", group_id = "2", random_type = 2, item_type = 3, item_id = "15044", count_lower = 1, count_upper = 1, weight = 1160},--喵喵守卫
	["72"] = {id = "72", group_id = "2", random_type = 2, item_type = 3, item_id = "15094", count_lower = 1, count_upper = 1, weight = 1160},--左护法
	["73"] = {id = "73", group_id = "2", random_type = 2, item_type = 3, item_id = "15033", count_lower = 1, count_upper = 1, weight = 1160},--暴风步兵
	["74"] = {id = "74", group_id = "2", random_type = 2, item_type = 3, item_id = "15004", count_lower = 1, count_upper = 1, weight = 1160},--小花
	["75"] = {id = "75", group_id = "2", random_type = 2, item_type = 3, item_id = "15035", count_lower = 1, count_upper = 1, weight = 56},--斯巴达
	["76"] = {id = "76", group_id = "2", random_type = 2, item_type = 3, item_id = "15012", count_lower = 1, count_upper = 1, weight = 1160},--力士
	["77"] = {id = "77", group_id = "2", random_type = 2, item_type = 4, item_id = "1162", count_lower = 1, count_upper = 1, weight = 119},--小炮
	["78"] = {id = "78", group_id = "2", random_type = 2, item_type = 4, item_id = "1001", count_lower = 1, count_upper = 1, weight = 28},--骑士
	["79"] = {id = "79", group_id = "2", random_type = 2, item_type = 4, item_id = "1428", count_lower = 1, count_upper = 1, weight = 28},--投棘者
	["80"] = {id = "80", group_id = "2", random_type = 2, item_type = 4, item_id = "1206", count_lower = 1, count_upper = 1, weight = 119},--牛头酋长
	["81"] = {id = "81", group_id = "2", random_type = 2, item_type = 4, item_id = "1373", count_lower = 1, count_upper = 1, weight = 119},--泰兰
	["82"] = {id = "82", group_id = "2", random_type = 2, item_type = 4, item_id = "1217", count_lower = 1, count_upper = 1, weight = 119},--卡亚
	["83"] = {id = "83", group_id = "2", random_type = 2, item_type = 3, item_id = "15017", count_lower = 5, count_upper = 5, weight = 239},--小炮
	["84"] = {id = "84", group_id = "2", random_type = 2, item_type = 3, item_id = "15000", count_lower = 5, count_upper = 5, weight = 56},--骑士
	["85"] = {id = "85", group_id = "2", random_type = 2, item_type = 3, item_id = "15052", count_lower = 5, count_upper = 5, weight = 56},--投棘者
	["86"] = {id = "86", group_id = "2", random_type = 2, item_type = 3, item_id = "15021", count_lower = 5, count_upper = 5, weight = 239},--牛头酋长
	["87"] = {id = "87", group_id = "2", random_type = 2, item_type = 3, item_id = "15042", count_lower = 5, count_upper = 5, weight = 239},--泰兰
	["88"] = {id = "88", group_id = "2", random_type = 2, item_type = 3, item_id = "15022", count_lower = 5, count_upper = 5, weight = 239},--卡亚
	["89"] = {id = "89", group_id = "2", random_type = 2, item_type = 3, item_id = "15017", count_lower = 3, count_upper = 3, weight = 239},--小炮
	["90"] = {id = "90", group_id = "2", random_type = 2, item_type = 3, item_id = "15000", count_lower = 3, count_upper = 3, weight = 56},--骑士
	["91"] = {id = "91", group_id = "2", random_type = 2, item_type = 3, item_id = "15052", count_lower = 3, count_upper = 3, weight = 56},--投棘者
	["92"] = {id = "92", group_id = "2", random_type = 2, item_type = 3, item_id = "15021", count_lower = 3, count_upper = 3, weight = 239},--牛头酋长
	["93"] = {id = "93", group_id = "2", random_type = 2, item_type = 3, item_id = "15042", count_lower = 3, count_upper = 3, weight = 239},--泰兰
	["94"] = {id = "94", group_id = "2", random_type = 2, item_type = 3, item_id = "15022", count_lower = 3, count_upper = 3, weight = 239},--卡亚
	["95"] = {id = "95", group_id = "2", random_type = 2, item_type = 3, item_id = "15017", count_lower = 2, count_upper = 2, weight = 239},--小炮
	["96"] = {id = "96", group_id = "2", random_type = 2, item_type = 3, item_id = "15000", count_lower = 2, count_upper = 2, weight = 56},--骑士
	["97"] = {id = "97", group_id = "2", random_type = 2, item_type = 3, item_id = "15052", count_lower = 2, count_upper = 2, weight = 56},--投棘者
	["98"] = {id = "98", group_id = "2", random_type = 2, item_type = 3, item_id = "15021", count_lower = 2, count_upper = 2, weight = 239},--牛头酋长
	["99"] = {id = "99", group_id = "2", random_type = 2, item_type = 3, item_id = "15042", count_lower = 2, count_upper = 2, weight = 239},--泰兰
	["100"] = {id = "100", group_id = "2", random_type = 2, item_type = 3, item_id = "15022", count_lower = 2, count_upper = 2, weight = 239},--卡亚
	["101"] = {id = "101", group_id = "2", random_type = 2, item_type = 3, item_id = "15017", count_lower = 1, count_upper = 1, weight = 239},--小炮
	["102"] = {id = "102", group_id = "2", random_type = 2, item_type = 3, item_id = "15000", count_lower = 1, count_upper = 1, weight = 56},--骑士
	["103"] = {id = "103", group_id = "2", random_type = 2, item_type = 3, item_id = "15052", count_lower = 1, count_upper = 1, weight = 56},--投棘者
	["104"] = {id = "104", group_id = "2", random_type = 2, item_type = 3, item_id = "15021", count_lower = 1, count_upper = 1, weight = 239},--牛头酋长
	["105"] = {id = "105", group_id = "2", random_type = 2, item_type = 3, item_id = "15042", count_lower = 1, count_upper = 1, weight = 239},--泰兰
	["106"] = {id = "106", group_id = "2", random_type = 2, item_type = 3, item_id = "15022", count_lower = 1, count_upper = 1, weight = 239},--卡亚
	["107"] = {id = "107", group_id = "2", random_type = 2, item_type = 3, item_id = "15103", count_lower = 10, count_upper = 10, weight = 580},--主角碎片
	["108"] = {id = "108", group_id = "2", random_type = 2, item_type = 3, item_id = "15103", count_lower = 5, count_upper = 5, weight = 1160},--主角碎片
	["109"] = {id = "109", group_id = "2", random_type = 2, item_type = 3, item_id = "15103", count_lower = 3, count_upper = 3, weight = 1160},--主角碎片
	["110"] = {id = "110", group_id = "2", random_type = 2, item_type = 3, item_id = "15103", count_lower = 2, count_upper = 2, weight = 1160},--主角碎片
	["111"] = {id = "111", group_id = "2", random_type = 2, item_type = 3, item_id = "15103", count_lower = 1, count_upper = 1, weight = 1160},--主角碎片
	["112"] = {id = "112", group_id = "2", random_type = 2, item_type = 2, item_id = "1000", count_lower = 31, count_upper = 181, weight = 58404},--金币
	["113"] = {id = "113", group_id = "3", random_type = 2, item_type = 4, item_id = "1023", count_lower = 1, count_upper = 1, weight = 580},--飞矛手
	["114"] = {id = "114", group_id = "3", random_type = 2, item_type = 4, item_id = "1395", count_lower = 1, count_upper = 1, weight = 580},--喵喵守卫
	["115"] = {id = "115", group_id = "3", random_type = 2, item_type = 4, item_id = "1495", count_lower = 1, count_upper = 1, weight = 580},--左护法
	["116"] = {id = "116", group_id = "3", random_type = 2, item_type = 4, item_id = "1239", count_lower = 1, count_upper = 1, weight = 580},--暴风步兵
	["117"] = {id = "117", group_id = "3", random_type = 2, item_type = 4, item_id = "1045", count_lower = 1, count_upper = 1, weight = 580},--小花
	["118"] = {id = "118", group_id = "3", random_type = 2, item_type = 4, item_id = "1261", count_lower = 1, count_upper = 1, weight = 28},--斯巴达
	["119"] = {id = "119", group_id = "3", random_type = 2, item_type = 4, item_id = "1127", count_lower = 1, count_upper = 1, weight = 580},--力士
	["120"] = {id = "120", group_id = "3", random_type = 2, item_type = 3, item_id = "15002", count_lower = 5, count_upper = 5, weight = 1160},--飞矛手
	["121"] = {id = "121", group_id = "3", random_type = 2, item_type = 3, item_id = "15044", count_lower = 5, count_upper = 5, weight = 1160},--喵喵守卫
	["122"] = {id = "122", group_id = "3", random_type = 2, item_type = 3, item_id = "15094", count_lower = 5, count_upper = 5, weight = 1160},--左护法
	["123"] = {id = "123", group_id = "3", random_type = 2, item_type = 3, item_id = "15033", count_lower = 5, count_upper = 5, weight = 1160},--暴风步兵
	["124"] = {id = "124", group_id = "3", random_type = 2, item_type = 3, item_id = "15004", count_lower = 5, count_upper = 5, weight = 1160},--小花
	["125"] = {id = "125", group_id = "3", random_type = 2, item_type = 3, item_id = "15035", count_lower = 5, count_upper = 5, weight = 56},--斯巴达
	["126"] = {id = "126", group_id = "3", random_type = 2, item_type = 3, item_id = "15012", count_lower = 5, count_upper = 5, weight = 1160},--力士
	["127"] = {id = "127", group_id = "3", random_type = 2, item_type = 3, item_id = "15002", count_lower = 3, count_upper = 3, weight = 1160},--飞矛手
	["128"] = {id = "128", group_id = "3", random_type = 2, item_type = 3, item_id = "15044", count_lower = 3, count_upper = 3, weight = 1160},--喵喵守卫
	["129"] = {id = "129", group_id = "3", random_type = 2, item_type = 3, item_id = "15094", count_lower = 3, count_upper = 3, weight = 1160},--左护法
	["130"] = {id = "130", group_id = "3", random_type = 2, item_type = 3, item_id = "15033", count_lower = 3, count_upper = 3, weight = 1160},--暴风步兵
	["131"] = {id = "131", group_id = "3", random_type = 2, item_type = 3, item_id = "15004", count_lower = 3, count_upper = 3, weight = 1160},--小花
	["132"] = {id = "132", group_id = "3", random_type = 2, item_type = 3, item_id = "15035", count_lower = 3, count_upper = 3, weight = 56},--斯巴达
	["133"] = {id = "133", group_id = "3", random_type = 2, item_type = 3, item_id = "15012", count_lower = 3, count_upper = 3, weight = 1160},--力士
	["134"] = {id = "134", group_id = "3", random_type = 2, item_type = 3, item_id = "15002", count_lower = 2, count_upper = 2, weight = 1160},--飞矛手
	["135"] = {id = "135", group_id = "3", random_type = 2, item_type = 3, item_id = "15044", count_lower = 2, count_upper = 2, weight = 1160},--喵喵守卫
	["136"] = {id = "136", group_id = "3", random_type = 2, item_type = 3, item_id = "15094", count_lower = 2, count_upper = 2, weight = 1160},--左护法
	["137"] = {id = "137", group_id = "3", random_type = 2, item_type = 3, item_id = "15033", count_lower = 2, count_upper = 2, weight = 1160},--暴风步兵
	["138"] = {id = "138", group_id = "3", random_type = 2, item_type = 3, item_id = "15004", count_lower = 2, count_upper = 2, weight = 1160},--小花
	["139"] = {id = "139", group_id = "3", random_type = 2, item_type = 3, item_id = "15035", count_lower = 2, count_upper = 2, weight = 56},--斯巴达
	["140"] = {id = "140", group_id = "3", random_type = 2, item_type = 3, item_id = "15012", count_lower = 2, count_upper = 2, weight = 1160},--力士
	["141"] = {id = "141", group_id = "3", random_type = 2, item_type = 3, item_id = "15002", count_lower = 1, count_upper = 1, weight = 1160},--飞矛手
	["142"] = {id = "142", group_id = "3", random_type = 2, item_type = 3, item_id = "15044", count_lower = 1, count_upper = 1, weight = 1160},--喵喵守卫
	["143"] = {id = "143", group_id = "3", random_type = 2, item_type = 3, item_id = "15094", count_lower = 1, count_upper = 1, weight = 1160},--左护法
	["144"] = {id = "144", group_id = "3", random_type = 2, item_type = 3, item_id = "15033", count_lower = 1, count_upper = 1, weight = 1160},--暴风步兵
	["145"] = {id = "145", group_id = "3", random_type = 2, item_type = 3, item_id = "15004", count_lower = 1, count_upper = 1, weight = 1160},--小花
	["146"] = {id = "146", group_id = "3", random_type = 2, item_type = 3, item_id = "15035", count_lower = 1, count_upper = 1, weight = 56},--斯巴达
	["147"] = {id = "147", group_id = "3", random_type = 2, item_type = 3, item_id = "15012", count_lower = 1, count_upper = 1, weight = 1160},--力士
	["148"] = {id = "148", group_id = "3", random_type = 2, item_type = 4, item_id = "1162", count_lower = 1, count_upper = 1, weight = 119},--小炮
	["149"] = {id = "149", group_id = "3", random_type = 2, item_type = 4, item_id = "1001", count_lower = 1, count_upper = 1, weight = 28},--骑士
	["150"] = {id = "150", group_id = "3", random_type = 2, item_type = 4, item_id = "1428", count_lower = 1, count_upper = 1, weight = 28},--投棘者
	["151"] = {id = "151", group_id = "3", random_type = 2, item_type = 4, item_id = "1206", count_lower = 1, count_upper = 1, weight = 119},--牛头酋长
	["152"] = {id = "152", group_id = "3", random_type = 2, item_type = 4, item_id = "1373", count_lower = 1, count_upper = 1, weight = 119},--泰兰
	["153"] = {id = "153", group_id = "3", random_type = 2, item_type = 4, item_id = "1217", count_lower = 1, count_upper = 1, weight = 119},--卡亚
	["154"] = {id = "154", group_id = "3", random_type = 2, item_type = 3, item_id = "15017", count_lower = 5, count_upper = 5, weight = 239},--小炮
	["155"] = {id = "155", group_id = "3", random_type = 2, item_type = 3, item_id = "15000", count_lower = 5, count_upper = 5, weight = 56},--骑士
	["156"] = {id = "156", group_id = "3", random_type = 2, item_type = 3, item_id = "15052", count_lower = 5, count_upper = 5, weight = 56},--投棘者
	["157"] = {id = "157", group_id = "3", random_type = 2, item_type = 3, item_id = "15021", count_lower = 5, count_upper = 5, weight = 239},--牛头酋长
	["158"] = {id = "158", group_id = "3", random_type = 2, item_type = 3, item_id = "15042", count_lower = 5, count_upper = 5, weight = 239},--泰兰
	["159"] = {id = "159", group_id = "3", random_type = 2, item_type = 3, item_id = "15022", count_lower = 5, count_upper = 5, weight = 239},--卡亚
	["160"] = {id = "160", group_id = "3", random_type = 2, item_type = 3, item_id = "15017", count_lower = 3, count_upper = 3, weight = 239},--小炮
	["161"] = {id = "161", group_id = "3", random_type = 2, item_type = 3, item_id = "15000", count_lower = 3, count_upper = 3, weight = 56},--骑士
	["162"] = {id = "162", group_id = "3", random_type = 2, item_type = 3, item_id = "15052", count_lower = 3, count_upper = 3, weight = 56},--投棘者
	["163"] = {id = "163", group_id = "3", random_type = 2, item_type = 3, item_id = "15021", count_lower = 3, count_upper = 3, weight = 239},--牛头酋长
	["164"] = {id = "164", group_id = "3", random_type = 2, item_type = 3, item_id = "15042", count_lower = 3, count_upper = 3, weight = 239},--泰兰
	["165"] = {id = "165", group_id = "3", random_type = 2, item_type = 3, item_id = "15022", count_lower = 3, count_upper = 3, weight = 239},--卡亚
	["166"] = {id = "166", group_id = "3", random_type = 2, item_type = 3, item_id = "15017", count_lower = 2, count_upper = 2, weight = 239},--小炮
	["167"] = {id = "167", group_id = "3", random_type = 2, item_type = 3, item_id = "15000", count_lower = 2, count_upper = 2, weight = 56},--骑士
	["168"] = {id = "168", group_id = "3", random_type = 2, item_type = 3, item_id = "15052", count_lower = 2, count_upper = 2, weight = 56},--投棘者
	["169"] = {id = "169", group_id = "3", random_type = 2, item_type = 3, item_id = "15021", count_lower = 2, count_upper = 2, weight = 239},--牛头酋长
	["170"] = {id = "170", group_id = "3", random_type = 2, item_type = 3, item_id = "15042", count_lower = 2, count_upper = 2, weight = 239},--泰兰
	["171"] = {id = "171", group_id = "3", random_type = 2, item_type = 3, item_id = "15022", count_lower = 2, count_upper = 2, weight = 239},--卡亚
	["172"] = {id = "172", group_id = "3", random_type = 2, item_type = 3, item_id = "15017", count_lower = 1, count_upper = 1, weight = 239},--小炮
	["173"] = {id = "173", group_id = "3", random_type = 2, item_type = 3, item_id = "15000", count_lower = 1, count_upper = 1, weight = 56},--骑士
	["174"] = {id = "174", group_id = "3", random_type = 2, item_type = 3, item_id = "15052", count_lower = 1, count_upper = 1, weight = 56},--投棘者
	["175"] = {id = "175", group_id = "3", random_type = 2, item_type = 3, item_id = "15021", count_lower = 1, count_upper = 1, weight = 239},--牛头酋长
	["176"] = {id = "176", group_id = "3", random_type = 2, item_type = 3, item_id = "15042", count_lower = 1, count_upper = 1, weight = 239},--泰兰
	["177"] = {id = "177", group_id = "3", random_type = 2, item_type = 3, item_id = "15022", count_lower = 1, count_upper = 1, weight = 239},--卡亚
	["178"] = {id = "178", group_id = "3", random_type = 2, item_type = 4, item_id = "1173", count_lower = 1, count_upper = 1, weight = 580},--铠甲熊
	["179"] = {id = "179", group_id = "3", random_type = 2, item_type = 4, item_id = "1484", count_lower = 1, count_upper = 1, weight = 580},--右护法
	["180"] = {id = "180", group_id = "3", random_type = 2, item_type = 4, item_id = "1417", count_lower = 1, count_upper = 1, weight = 119},--小鹿
	["181"] = {id = "181", group_id = "3", random_type = 2, item_type = 4, item_id = "1250", count_lower = 1, count_upper = 1, weight = 119},--鹰身人
	["182"] = {id = "182", group_id = "3", random_type = 2, item_type = 4, item_id = "1151", count_lower = 1, count_upper = 1, weight = 119},--飞斧泰坦
	["183"] = {id = "183", group_id = "3", random_type = 2, item_type = 4, item_id = "1351", count_lower = 1, count_upper = 1, weight = 28},--守护泰坦
	["184"] = {id = "184", group_id = "3", random_type = 2, item_type = 4, item_id = "1195", count_lower = 1, count_upper = 1, weight = 119},--小恩
	["185"] = {id = "185", group_id = "3", random_type = 2, item_type = 4, item_id = "1561", count_lower = 1, count_upper = 1, weight = 28},--祖母
	["186"] = {id = "186", group_id = "3", random_type = 2, item_type = 3, item_id = "15018", count_lower = 5, count_upper = 5, weight = 1160},--铠甲熊
	["187"] = {id = "187", group_id = "3", random_type = 2, item_type = 3, item_id = "15095", count_lower = 5, count_upper = 5, weight = 1160},--右护法
	["188"] = {id = "188", group_id = "3", random_type = 2, item_type = 3, item_id = "15046", count_lower = 5, count_upper = 5, weight = 239},--小鹿
	["189"] = {id = "189", group_id = "3", random_type = 2, item_type = 3, item_id = "15034", count_lower = 5, count_upper = 5, weight = 239},--鹰身人
	["190"] = {id = "190", group_id = "3", random_type = 2, item_type = 3, item_id = "15016", count_lower = 5, count_upper = 5, weight = 239},--飞斧泰坦
	["191"] = {id = "191", group_id = "3", random_type = 2, item_type = 3, item_id = "15041", count_lower = 5, count_upper = 5, weight = 56},--守护泰坦
	["192"] = {id = "192", group_id = "3", random_type = 2, item_type = 3, item_id = "15020", count_lower = 5, count_upper = 5, weight = 239},--小恩
	["193"] = {id = "193", group_id = "3", random_type = 2, item_type = 3, item_id = "15102", count_lower = 5, count_upper = 5, weight = 56},--祖母
	["194"] = {id = "194", group_id = "3", random_type = 2, item_type = 3, item_id = "15018", count_lower = 3, count_upper = 3, weight = 1160},--铠甲熊
	["195"] = {id = "195", group_id = "3", random_type = 2, item_type = 3, item_id = "15095", count_lower = 3, count_upper = 3, weight = 1160},--右护法
	["196"] = {id = "196", group_id = "3", random_type = 2, item_type = 3, item_id = "15046", count_lower = 3, count_upper = 3, weight = 239},--小鹿
	["197"] = {id = "197", group_id = "3", random_type = 2, item_type = 3, item_id = "15034", count_lower = 3, count_upper = 3, weight = 239},--鹰身人
	["198"] = {id = "198", group_id = "3", random_type = 2, item_type = 3, item_id = "15016", count_lower = 3, count_upper = 3, weight = 239},--飞斧泰坦
	["199"] = {id = "199", group_id = "3", random_type = 2, item_type = 3, item_id = "15041", count_lower = 3, count_upper = 3, weight = 56},--守护泰坦
	["200"] = {id = "200", group_id = "3", random_type = 2, item_type = 3, item_id = "15020", count_lower = 3, count_upper = 3, weight = 239},--小恩
	["201"] = {id = "201", group_id = "3", random_type = 2, item_type = 3, item_id = "15102", count_lower = 3, count_upper = 3, weight = 56},--祖母
	["202"] = {id = "202", group_id = "3", random_type = 2, item_type = 3, item_id = "15018", count_lower = 2, count_upper = 2, weight = 1160},--铠甲熊
	["203"] = {id = "203", group_id = "3", random_type = 2, item_type = 3, item_id = "15095", count_lower = 2, count_upper = 2, weight = 1160},--右护法
	["204"] = {id = "204", group_id = "3", random_type = 2, item_type = 3, item_id = "15046", count_lower = 2, count_upper = 2, weight = 239},--小鹿
	["205"] = {id = "205", group_id = "3", random_type = 2, item_type = 3, item_id = "15034", count_lower = 2, count_upper = 2, weight = 239},--鹰身人
	["206"] = {id = "206", group_id = "3", random_type = 2, item_type = 3, item_id = "15016", count_lower = 2, count_upper = 2, weight = 239},--飞斧泰坦
	["207"] = {id = "207", group_id = "3", random_type = 2, item_type = 3, item_id = "15041", count_lower = 2, count_upper = 2, weight = 56},--守护泰坦
	["208"] = {id = "208", group_id = "3", random_type = 2, item_type = 3, item_id = "15020", count_lower = 2, count_upper = 2, weight = 239},--小恩
	["209"] = {id = "209", group_id = "3", random_type = 2, item_type = 3, item_id = "15102", count_lower = 2, count_upper = 2, weight = 56},--祖母
	["210"] = {id = "210", group_id = "3", random_type = 2, item_type = 3, item_id = "15018", count_lower = 1, count_upper = 1, weight = 1160},--铠甲熊
	["211"] = {id = "211", group_id = "3", random_type = 2, item_type = 3, item_id = "15095", count_lower = 1, count_upper = 1, weight = 1160},--右护法
	["212"] = {id = "212", group_id = "3", random_type = 2, item_type = 3, item_id = "15046", count_lower = 1, count_upper = 1, weight = 239},--小鹿
	["213"] = {id = "213", group_id = "3", random_type = 2, item_type = 3, item_id = "15034", count_lower = 1, count_upper = 1, weight = 239},--鹰身人
	["214"] = {id = "214", group_id = "3", random_type = 2, item_type = 3, item_id = "15016", count_lower = 1, count_upper = 1, weight = 239},--飞斧泰坦
	["215"] = {id = "215", group_id = "3", random_type = 2, item_type = 3, item_id = "15041", count_lower = 1, count_upper = 1, weight = 56},--守护泰坦
	["216"] = {id = "216", group_id = "3", random_type = 2, item_type = 3, item_id = "15020", count_lower = 1, count_upper = 1, weight = 239},--小恩
	["217"] = {id = "217", group_id = "3", random_type = 2, item_type = 3, item_id = "15102", count_lower = 1, count_upper = 1, weight = 56},--祖母
	["218"] = {id = "218", group_id = "3", random_type = 2, item_type = 3, item_id = "15103", count_lower = 10, count_upper = 10, weight = 580},--主角碎片
	["219"] = {id = "219", group_id = "3", random_type = 2, item_type = 3, item_id = "15103", count_lower = 5, count_upper = 5, weight = 1160},--主角碎片
	["220"] = {id = "220", group_id = "3", random_type = 2, item_type = 3, item_id = "15103", count_lower = 3, count_upper = 3, weight = 1160},--主角碎片
	["221"] = {id = "221", group_id = "3", random_type = 2, item_type = 3, item_id = "15103", count_lower = 2, count_upper = 2, weight = 1160},--主角碎片
	["222"] = {id = "222", group_id = "3", random_type = 2, item_type = 3, item_id = "15103", count_lower = 1, count_upper = 1, weight = 1160},--主角碎片
	["223"] = {id = "223", group_id = "3", random_type = 2, item_type = 2, item_id = "1000", count_lower = 54, count_upper = 309, weight = 48380},--金币
	["224"] = {id = "224", group_id = "4", random_type = 2, item_type = 4, item_id = "1023", count_lower = 1, count_upper = 1, weight = 580},--飞矛手
	["225"] = {id = "225", group_id = "4", random_type = 2, item_type = 4, item_id = "1395", count_lower = 1, count_upper = 1, weight = 580},--喵喵守卫
	["226"] = {id = "226", group_id = "4", random_type = 2, item_type = 4, item_id = "1495", count_lower = 1, count_upper = 1, weight = 580},--左护法
	["227"] = {id = "227", group_id = "4", random_type = 2, item_type = 4, item_id = "1239", count_lower = 1, count_upper = 1, weight = 580},--暴风步兵
	["228"] = {id = "228", group_id = "4", random_type = 2, item_type = 4, item_id = "1045", count_lower = 1, count_upper = 1, weight = 580},--小花
	["229"] = {id = "229", group_id = "4", random_type = 2, item_type = 4, item_id = "1261", count_lower = 1, count_upper = 1, weight = 28},--斯巴达
	["230"] = {id = "230", group_id = "4", random_type = 2, item_type = 4, item_id = "1127", count_lower = 1, count_upper = 1, weight = 580},--力士
	["231"] = {id = "231", group_id = "4", random_type = 2, item_type = 3, item_id = "15002", count_lower = 5, count_upper = 5, weight = 1160},--飞矛手
	["232"] = {id = "232", group_id = "4", random_type = 2, item_type = 3, item_id = "15044", count_lower = 5, count_upper = 5, weight = 1160},--喵喵守卫
	["233"] = {id = "233", group_id = "4", random_type = 2, item_type = 3, item_id = "15094", count_lower = 5, count_upper = 5, weight = 1160},--左护法
	["234"] = {id = "234", group_id = "4", random_type = 2, item_type = 3, item_id = "15033", count_lower = 5, count_upper = 5, weight = 1160},--暴风步兵
	["235"] = {id = "235", group_id = "4", random_type = 2, item_type = 3, item_id = "15004", count_lower = 5, count_upper = 5, weight = 1160},--小花
	["236"] = {id = "236", group_id = "4", random_type = 2, item_type = 3, item_id = "15035", count_lower = 5, count_upper = 5, weight = 56},--斯巴达
	["237"] = {id = "237", group_id = "4", random_type = 2, item_type = 3, item_id = "15012", count_lower = 5, count_upper = 5, weight = 1160},--力士
	["238"] = {id = "238", group_id = "4", random_type = 2, item_type = 3, item_id = "15002", count_lower = 3, count_upper = 3, weight = 1160},--飞矛手
	["239"] = {id = "239", group_id = "4", random_type = 2, item_type = 3, item_id = "15044", count_lower = 3, count_upper = 3, weight = 1160},--喵喵守卫
	["240"] = {id = "240", group_id = "4", random_type = 2, item_type = 3, item_id = "15094", count_lower = 3, count_upper = 3, weight = 1160},--左护法
	["241"] = {id = "241", group_id = "4", random_type = 2, item_type = 3, item_id = "15033", count_lower = 3, count_upper = 3, weight = 1160},--暴风步兵
	["242"] = {id = "242", group_id = "4", random_type = 2, item_type = 3, item_id = "15004", count_lower = 3, count_upper = 3, weight = 1160},--小花
	["243"] = {id = "243", group_id = "4", random_type = 2, item_type = 3, item_id = "15035", count_lower = 3, count_upper = 3, weight = 56},--斯巴达
	["244"] = {id = "244", group_id = "4", random_type = 2, item_type = 3, item_id = "15012", count_lower = 3, count_upper = 3, weight = 1160},--力士
	["245"] = {id = "245", group_id = "4", random_type = 2, item_type = 3, item_id = "15002", count_lower = 2, count_upper = 2, weight = 1160},--飞矛手
	["246"] = {id = "246", group_id = "4", random_type = 2, item_type = 3, item_id = "15044", count_lower = 2, count_upper = 2, weight = 1160},--喵喵守卫
	["247"] = {id = "247", group_id = "4", random_type = 2, item_type = 3, item_id = "15094", count_lower = 2, count_upper = 2, weight = 1160},--左护法
	["248"] = {id = "248", group_id = "4", random_type = 2, item_type = 3, item_id = "15033", count_lower = 2, count_upper = 2, weight = 1160},--暴风步兵
	["249"] = {id = "249", group_id = "4", random_type = 2, item_type = 3, item_id = "15004", count_lower = 2, count_upper = 2, weight = 1160},--小花
	["250"] = {id = "250", group_id = "4", random_type = 2, item_type = 3, item_id = "15035", count_lower = 2, count_upper = 2, weight = 56},--斯巴达
	["251"] = {id = "251", group_id = "4", random_type = 2, item_type = 3, item_id = "15012", count_lower = 2, count_upper = 2, weight = 1160},--力士
	["252"] = {id = "252", group_id = "4", random_type = 2, item_type = 3, item_id = "15002", count_lower = 1, count_upper = 1, weight = 1160},--飞矛手
	["253"] = {id = "253", group_id = "4", random_type = 2, item_type = 3, item_id = "15044", count_lower = 1, count_upper = 1, weight = 1160},--喵喵守卫
	["254"] = {id = "254", group_id = "4", random_type = 2, item_type = 3, item_id = "15094", count_lower = 1, count_upper = 1, weight = 1160},--左护法
	["255"] = {id = "255", group_id = "4", random_type = 2, item_type = 3, item_id = "15033", count_lower = 1, count_upper = 1, weight = 1160},--暴风步兵
	["256"] = {id = "256", group_id = "4", random_type = 2, item_type = 3, item_id = "15004", count_lower = 1, count_upper = 1, weight = 1160},--小花
	["257"] = {id = "257", group_id = "4", random_type = 2, item_type = 3, item_id = "15035", count_lower = 1, count_upper = 1, weight = 56},--斯巴达
	["258"] = {id = "258", group_id = "4", random_type = 2, item_type = 3, item_id = "15012", count_lower = 1, count_upper = 1, weight = 1160},--力士
	["259"] = {id = "259", group_id = "4", random_type = 2, item_type = 4, item_id = "1162", count_lower = 1, count_upper = 1, weight = 119},--小炮
	["260"] = {id = "260", group_id = "4", random_type = 2, item_type = 4, item_id = "1001", count_lower = 1, count_upper = 1, weight = 28},--骑士
	["261"] = {id = "261", group_id = "4", random_type = 2, item_type = 4, item_id = "1428", count_lower = 1, count_upper = 1, weight = 28},--投棘者
	["262"] = {id = "262", group_id = "4", random_type = 2, item_type = 4, item_id = "1206", count_lower = 1, count_upper = 1, weight = 119},--牛头酋长
	["263"] = {id = "263", group_id = "4", random_type = 2, item_type = 4, item_id = "1373", count_lower = 1, count_upper = 1, weight = 119},--泰兰
	["264"] = {id = "264", group_id = "4", random_type = 2, item_type = 4, item_id = "1217", count_lower = 1, count_upper = 1, weight = 119},--卡亚
	["265"] = {id = "265", group_id = "4", random_type = 2, item_type = 3, item_id = "15017", count_lower = 5, count_upper = 5, weight = 239},--小炮
	["266"] = {id = "266", group_id = "4", random_type = 2, item_type = 3, item_id = "15000", count_lower = 5, count_upper = 5, weight = 56},--骑士
	["267"] = {id = "267", group_id = "4", random_type = 2, item_type = 3, item_id = "15052", count_lower = 5, count_upper = 5, weight = 56},--投棘者
	["268"] = {id = "268", group_id = "4", random_type = 2, item_type = 3, item_id = "15021", count_lower = 5, count_upper = 5, weight = 239},--牛头酋长
	["269"] = {id = "269", group_id = "4", random_type = 2, item_type = 3, item_id = "15042", count_lower = 5, count_upper = 5, weight = 239},--泰兰
	["270"] = {id = "270", group_id = "4", random_type = 2, item_type = 3, item_id = "15022", count_lower = 5, count_upper = 5, weight = 239},--卡亚
	["271"] = {id = "271", group_id = "4", random_type = 2, item_type = 3, item_id = "15017", count_lower = 3, count_upper = 3, weight = 239},--小炮
	["272"] = {id = "272", group_id = "4", random_type = 2, item_type = 3, item_id = "15000", count_lower = 3, count_upper = 3, weight = 56},--骑士
	["273"] = {id = "273", group_id = "4", random_type = 2, item_type = 3, item_id = "15052", count_lower = 3, count_upper = 3, weight = 56},--投棘者
	["274"] = {id = "274", group_id = "4", random_type = 2, item_type = 3, item_id = "15021", count_lower = 3, count_upper = 3, weight = 239},--牛头酋长
	["275"] = {id = "275", group_id = "4", random_type = 2, item_type = 3, item_id = "15042", count_lower = 3, count_upper = 3, weight = 239},--泰兰
	["276"] = {id = "276", group_id = "4", random_type = 2, item_type = 3, item_id = "15022", count_lower = 3, count_upper = 3, weight = 239},--卡亚
	["277"] = {id = "277", group_id = "4", random_type = 2, item_type = 3, item_id = "15017", count_lower = 2, count_upper = 2, weight = 239},--小炮
	["278"] = {id = "278", group_id = "4", random_type = 2, item_type = 3, item_id = "15000", count_lower = 2, count_upper = 2, weight = 56},--骑士
	["279"] = {id = "279", group_id = "4", random_type = 2, item_type = 3, item_id = "15052", count_lower = 2, count_upper = 2, weight = 56},--投棘者
	["280"] = {id = "280", group_id = "4", random_type = 2, item_type = 3, item_id = "15021", count_lower = 2, count_upper = 2, weight = 239},--牛头酋长
	["281"] = {id = "281", group_id = "4", random_type = 2, item_type = 3, item_id = "15042", count_lower = 2, count_upper = 2, weight = 239},--泰兰
	["282"] = {id = "282", group_id = "4", random_type = 2, item_type = 3, item_id = "15022", count_lower = 2, count_upper = 2, weight = 239},--卡亚
	["283"] = {id = "283", group_id = "4", random_type = 2, item_type = 3, item_id = "15017", count_lower = 1, count_upper = 1, weight = 239},--小炮
	["284"] = {id = "284", group_id = "4", random_type = 2, item_type = 3, item_id = "15000", count_lower = 1, count_upper = 1, weight = 56},--骑士
	["285"] = {id = "285", group_id = "4", random_type = 2, item_type = 3, item_id = "15052", count_lower = 1, count_upper = 1, weight = 56},--投棘者
	["286"] = {id = "286", group_id = "4", random_type = 2, item_type = 3, item_id = "15021", count_lower = 1, count_upper = 1, weight = 239},--牛头酋长
	["287"] = {id = "287", group_id = "4", random_type = 2, item_type = 3, item_id = "15042", count_lower = 1, count_upper = 1, weight = 239},--泰兰
	["288"] = {id = "288", group_id = "4", random_type = 2, item_type = 3, item_id = "15022", count_lower = 1, count_upper = 1, weight = 239},--卡亚
	["289"] = {id = "289", group_id = "4", random_type = 2, item_type = 4, item_id = "1173", count_lower = 1, count_upper = 1, weight = 580},--铠甲熊
	["290"] = {id = "290", group_id = "4", random_type = 2, item_type = 4, item_id = "1484", count_lower = 1, count_upper = 1, weight = 580},--右护法
	["291"] = {id = "291", group_id = "4", random_type = 2, item_type = 4, item_id = "1417", count_lower = 1, count_upper = 1, weight = 119},--小鹿
	["292"] = {id = "292", group_id = "4", random_type = 2, item_type = 4, item_id = "1250", count_lower = 1, count_upper = 1, weight = 119},--鹰身人
	["293"] = {id = "293", group_id = "4", random_type = 2, item_type = 4, item_id = "1151", count_lower = 1, count_upper = 1, weight = 119},--飞斧泰坦
	["294"] = {id = "294", group_id = "4", random_type = 2, item_type = 4, item_id = "1351", count_lower = 1, count_upper = 1, weight = 28},--守护泰坦
	["295"] = {id = "295", group_id = "4", random_type = 2, item_type = 4, item_id = "1195", count_lower = 1, count_upper = 1, weight = 119},--小恩
	["296"] = {id = "296", group_id = "4", random_type = 2, item_type = 4, item_id = "1561", count_lower = 1, count_upper = 1, weight = 28},--祖母
	["297"] = {id = "297", group_id = "4", random_type = 2, item_type = 3, item_id = "15018", count_lower = 5, count_upper = 5, weight = 1160},--铠甲熊
	["298"] = {id = "298", group_id = "4", random_type = 2, item_type = 3, item_id = "15095", count_lower = 5, count_upper = 5, weight = 1160},--右护法
	["299"] = {id = "299", group_id = "4", random_type = 2, item_type = 3, item_id = "15046", count_lower = 5, count_upper = 5, weight = 239},--小鹿
	["300"] = {id = "300", group_id = "4", random_type = 2, item_type = 3, item_id = "15034", count_lower = 5, count_upper = 5, weight = 239},--鹰身人
	["301"] = {id = "301", group_id = "4", random_type = 2, item_type = 3, item_id = "15016", count_lower = 5, count_upper = 5, weight = 239},--飞斧泰坦
	["302"] = {id = "302", group_id = "4", random_type = 2, item_type = 3, item_id = "15041", count_lower = 5, count_upper = 5, weight = 56},--守护泰坦
	["303"] = {id = "303", group_id = "4", random_type = 2, item_type = 3, item_id = "15020", count_lower = 5, count_upper = 5, weight = 239},--小恩
	["304"] = {id = "304", group_id = "4", random_type = 2, item_type = 3, item_id = "15102", count_lower = 5, count_upper = 5, weight = 56},--祖母
	["305"] = {id = "305", group_id = "4", random_type = 2, item_type = 3, item_id = "15018", count_lower = 3, count_upper = 3, weight = 1160},--铠甲熊
	["306"] = {id = "306", group_id = "4", random_type = 2, item_type = 3, item_id = "15095", count_lower = 3, count_upper = 3, weight = 1160},--右护法
	["307"] = {id = "307", group_id = "4", random_type = 2, item_type = 3, item_id = "15046", count_lower = 3, count_upper = 3, weight = 239},--小鹿
	["308"] = {id = "308", group_id = "4", random_type = 2, item_type = 3, item_id = "15034", count_lower = 3, count_upper = 3, weight = 239},--鹰身人
	["309"] = {id = "309", group_id = "4", random_type = 2, item_type = 3, item_id = "15016", count_lower = 3, count_upper = 3, weight = 239},--飞斧泰坦
	["310"] = {id = "310", group_id = "4", random_type = 2, item_type = 3, item_id = "15041", count_lower = 3, count_upper = 3, weight = 56},--守护泰坦
	["311"] = {id = "311", group_id = "4", random_type = 2, item_type = 3, item_id = "15020", count_lower = 3, count_upper = 3, weight = 239},--小恩
	["312"] = {id = "312", group_id = "4", random_type = 2, item_type = 3, item_id = "15102", count_lower = 3, count_upper = 3, weight = 56},--祖母
	["313"] = {id = "313", group_id = "4", random_type = 2, item_type = 3, item_id = "15018", count_lower = 2, count_upper = 2, weight = 1160},--铠甲熊
	["314"] = {id = "314", group_id = "4", random_type = 2, item_type = 3, item_id = "15095", count_lower = 2, count_upper = 2, weight = 1160},--右护法
	["315"] = {id = "315", group_id = "4", random_type = 2, item_type = 3, item_id = "15046", count_lower = 2, count_upper = 2, weight = 239},--小鹿
	["316"] = {id = "316", group_id = "4", random_type = 2, item_type = 3, item_id = "15034", count_lower = 2, count_upper = 2, weight = 239},--鹰身人
	["317"] = {id = "317", group_id = "4", random_type = 2, item_type = 3, item_id = "15016", count_lower = 2, count_upper = 2, weight = 239},--飞斧泰坦
	["318"] = {id = "318", group_id = "4", random_type = 2, item_type = 3, item_id = "15041", count_lower = 2, count_upper = 2, weight = 56},--守护泰坦
	["319"] = {id = "319", group_id = "4", random_type = 2, item_type = 3, item_id = "15020", count_lower = 2, count_upper = 2, weight = 239},--小恩
	["320"] = {id = "320", group_id = "4", random_type = 2, item_type = 3, item_id = "15102", count_lower = 2, count_upper = 2, weight = 56},--祖母
	["321"] = {id = "321", group_id = "4", random_type = 2, item_type = 3, item_id = "15018", count_lower = 1, count_upper = 1, weight = 1160},--铠甲熊
	["322"] = {id = "322", group_id = "4", random_type = 2, item_type = 3, item_id = "15095", count_lower = 1, count_upper = 1, weight = 1160},--右护法
	["323"] = {id = "323", group_id = "4", random_type = 2, item_type = 3, item_id = "15046", count_lower = 1, count_upper = 1, weight = 239},--小鹿
	["324"] = {id = "324", group_id = "4", random_type = 2, item_type = 3, item_id = "15034", count_lower = 1, count_upper = 1, weight = 239},--鹰身人
	["325"] = {id = "325", group_id = "4", random_type = 2, item_type = 3, item_id = "15016", count_lower = 1, count_upper = 1, weight = 239},--飞斧泰坦
	["326"] = {id = "326", group_id = "4", random_type = 2, item_type = 3, item_id = "15041", count_lower = 1, count_upper = 1, weight = 56},--守护泰坦
	["327"] = {id = "327", group_id = "4", random_type = 2, item_type = 3, item_id = "15020", count_lower = 1, count_upper = 1, weight = 239},--小恩
	["328"] = {id = "328", group_id = "4", random_type = 2, item_type = 3, item_id = "15102", count_lower = 1, count_upper = 1, weight = 56},--祖母
	["329"] = {id = "329", group_id = "4", random_type = 2, item_type = 4, item_id = "1406", count_lower = 1, count_upper = 1, weight = 580},--粉红女巫
	["330"] = {id = "330", group_id = "4", random_type = 2, item_type = 4, item_id = "1034", count_lower = 1, count_upper = 1, weight = 580},--雪人
	["331"] = {id = "331", group_id = "4", random_type = 2, item_type = 4, item_id = "1078", count_lower = 1, count_upper = 1, weight = 119},--忍者
	["332"] = {id = "332", group_id = "4", random_type = 2, item_type = 4, item_id = "1539", count_lower = 1, count_upper = 1, weight = 119},--魅魔
	["333"] = {id = "333", group_id = "4", random_type = 2, item_type = 4, item_id = "1439", count_lower = 1, count_upper = 1, weight = 28},--宝石法师
	["334"] = {id = "334", group_id = "4", random_type = 2, item_type = 4, item_id = "1384", count_lower = 1, count_upper = 1, weight = 119},--喵夫人
	["335"] = {id = "335", group_id = "4", random_type = 2, item_type = 4, item_id = "1228", count_lower = 1, count_upper = 1, weight = 28},--白幽灵
	["336"] = {id = "336", group_id = "4", random_type = 2, item_type = 3, item_id = "15045", count_lower = 5, count_upper = 5, weight = 1160},--粉红女巫
	["337"] = {id = "337", group_id = "4", random_type = 2, item_type = 3, item_id = "15003", count_lower = 5, count_upper = 5, weight = 1160},--雪人
	["338"] = {id = "338", group_id = "4", random_type = 2, item_type = 3, item_id = "15007", count_lower = 5, count_upper = 5, weight = 239},--忍者
	["339"] = {id = "339", group_id = "4", random_type = 2, item_type = 3, item_id = "15100", count_lower = 5, count_upper = 5, weight = 239},--魅魔
	["340"] = {id = "340", group_id = "4", random_type = 2, item_type = 3, item_id = "15053", count_lower = 5, count_upper = 5, weight = 56},--宝石法师
	["341"] = {id = "341", group_id = "4", random_type = 2, item_type = 3, item_id = "15043", count_lower = 5, count_upper = 5, weight = 239},--喵夫人
	["342"] = {id = "342", group_id = "4", random_type = 2, item_type = 3, item_id = "15023", count_lower = 5, count_upper = 5, weight = 56},--白幽灵
	["343"] = {id = "343", group_id = "4", random_type = 2, item_type = 3, item_id = "15045", count_lower = 3, count_upper = 3, weight = 1160},--粉红女巫
	["344"] = {id = "344", group_id = "4", random_type = 2, item_type = 3, item_id = "15003", count_lower = 3, count_upper = 3, weight = 1160},--雪人
	["345"] = {id = "345", group_id = "4", random_type = 2, item_type = 3, item_id = "15007", count_lower = 3, count_upper = 3, weight = 239},--忍者
	["346"] = {id = "346", group_id = "4", random_type = 2, item_type = 3, item_id = "15100", count_lower = 3, count_upper = 3, weight = 239},--魅魔
	["347"] = {id = "347", group_id = "4", random_type = 2, item_type = 3, item_id = "15053", count_lower = 3, count_upper = 3, weight = 56},--宝石法师
	["348"] = {id = "348", group_id = "4", random_type = 2, item_type = 3, item_id = "15043", count_lower = 3, count_upper = 3, weight = 239},--喵夫人
	["349"] = {id = "349", group_id = "4", random_type = 2, item_type = 3, item_id = "15023", count_lower = 3, count_upper = 3, weight = 56},--白幽灵
	["350"] = {id = "350", group_id = "4", random_type = 2, item_type = 3, item_id = "15045", count_lower = 2, count_upper = 2, weight = 1160},--粉红女巫
	["351"] = {id = "351", group_id = "4", random_type = 2, item_type = 3, item_id = "15003", count_lower = 2, count_upper = 2, weight = 1160},--雪人
	["352"] = {id = "352", group_id = "4", random_type = 2, item_type = 3, item_id = "15007", count_lower = 2, count_upper = 2, weight = 239},--忍者
	["353"] = {id = "353", group_id = "4", random_type = 2, item_type = 3, item_id = "15100", count_lower = 2, count_upper = 2, weight = 239},--魅魔
	["354"] = {id = "354", group_id = "4", random_type = 2, item_type = 3, item_id = "15053", count_lower = 2, count_upper = 2, weight = 56},--宝石法师
	["355"] = {id = "355", group_id = "4", random_type = 2, item_type = 3, item_id = "15043", count_lower = 2, count_upper = 2, weight = 239},--喵夫人
	["356"] = {id = "356", group_id = "4", random_type = 2, item_type = 3, item_id = "15023", count_lower = 2, count_upper = 2, weight = 56},--白幽灵
	["357"] = {id = "357", group_id = "4", random_type = 2, item_type = 3, item_id = "15045", count_lower = 1, count_upper = 1, weight = 1160},--粉红女巫
	["358"] = {id = "358", group_id = "4", random_type = 2, item_type = 3, item_id = "15003", count_lower = 1, count_upper = 1, weight = 1160},--雪人
	["359"] = {id = "359", group_id = "4", random_type = 2, item_type = 3, item_id = "15007", count_lower = 1, count_upper = 1, weight = 239},--忍者
	["360"] = {id = "360", group_id = "4", random_type = 2, item_type = 3, item_id = "15100", count_lower = 1, count_upper = 1, weight = 239},--魅魔
	["361"] = {id = "361", group_id = "4", random_type = 2, item_type = 3, item_id = "15053", count_lower = 1, count_upper = 1, weight = 56},--宝石法师
	["362"] = {id = "362", group_id = "4", random_type = 2, item_type = 3, item_id = "15043", count_lower = 1, count_upper = 1, weight = 239},--喵夫人
	["363"] = {id = "363", group_id = "4", random_type = 2, item_type = 3, item_id = "15023", count_lower = 1, count_upper = 1, weight = 56},--白幽灵
	["364"] = {id = "364", group_id = "4", random_type = 2, item_type = 3, item_id = "15103", count_lower = 10, count_upper = 10, weight = 580},--主角碎片
	["365"] = {id = "365", group_id = "4", random_type = 2, item_type = 3, item_id = "15103", count_lower = 5, count_upper = 5, weight = 1160},--主角碎片
	["366"] = {id = "366", group_id = "4", random_type = 2, item_type = 3, item_id = "15103", count_lower = 3, count_upper = 3, weight = 1160},--主角碎片
	["367"] = {id = "367", group_id = "4", random_type = 2, item_type = 3, item_id = "15103", count_lower = 2, count_upper = 2, weight = 1160},--主角碎片
	["368"] = {id = "368", group_id = "4", random_type = 2, item_type = 3, item_id = "15103", count_lower = 1, count_upper = 1, weight = 1160},--主角碎片
	["369"] = {id = "369", group_id = "4", random_type = 2, item_type = 2, item_id = "1000", count_lower = 101, count_upper = 574, weight = 34211},--金币
	["370"] = {id = "370", group_id = "5", random_type = 2, item_type = 4, item_id = "1023", count_lower = 1, count_upper = 1, weight = 580},--飞矛手
	["371"] = {id = "371", group_id = "5", random_type = 2, item_type = 4, item_id = "1395", count_lower = 1, count_upper = 1, weight = 580},--喵喵守卫
	["372"] = {id = "372", group_id = "5", random_type = 2, item_type = 4, item_id = "1495", count_lower = 1, count_upper = 1, weight = 580},--左护法
	["373"] = {id = "373", group_id = "5", random_type = 2, item_type = 4, item_id = "1239", count_lower = 1, count_upper = 1, weight = 580},--暴风步兵
	["374"] = {id = "374", group_id = "5", random_type = 2, item_type = 4, item_id = "1045", count_lower = 1, count_upper = 1, weight = 580},--小花
	["375"] = {id = "375", group_id = "5", random_type = 2, item_type = 4, item_id = "1261", count_lower = 1, count_upper = 1, weight = 28},--斯巴达
	["376"] = {id = "376", group_id = "5", random_type = 2, item_type = 4, item_id = "1127", count_lower = 1, count_upper = 1, weight = 580},--力士
	["377"] = {id = "377", group_id = "5", random_type = 2, item_type = 3, item_id = "15002", count_lower = 5, count_upper = 5, weight = 1160},--飞矛手
	["378"] = {id = "378", group_id = "5", random_type = 2, item_type = 3, item_id = "15044", count_lower = 5, count_upper = 5, weight = 1160},--喵喵守卫
	["379"] = {id = "379", group_id = "5", random_type = 2, item_type = 3, item_id = "15094", count_lower = 5, count_upper = 5, weight = 1160},--左护法
	["380"] = {id = "380", group_id = "5", random_type = 2, item_type = 3, item_id = "15033", count_lower = 5, count_upper = 5, weight = 1160},--暴风步兵
	["381"] = {id = "381", group_id = "5", random_type = 2, item_type = 3, item_id = "15004", count_lower = 5, count_upper = 5, weight = 1160},--小花
	["382"] = {id = "382", group_id = "5", random_type = 2, item_type = 3, item_id = "15035", count_lower = 5, count_upper = 5, weight = 56},--斯巴达
	["383"] = {id = "383", group_id = "5", random_type = 2, item_type = 3, item_id = "15012", count_lower = 5, count_upper = 5, weight = 1160},--力士
	["384"] = {id = "384", group_id = "5", random_type = 2, item_type = 3, item_id = "15002", count_lower = 3, count_upper = 3, weight = 1160},--飞矛手
	["385"] = {id = "385", group_id = "5", random_type = 2, item_type = 3, item_id = "15044", count_lower = 3, count_upper = 3, weight = 1160},--喵喵守卫
	["386"] = {id = "386", group_id = "5", random_type = 2, item_type = 3, item_id = "15094", count_lower = 3, count_upper = 3, weight = 1160},--左护法
	["387"] = {id = "387", group_id = "5", random_type = 2, item_type = 3, item_id = "15033", count_lower = 3, count_upper = 3, weight = 1160},--暴风步兵
	["388"] = {id = "388", group_id = "5", random_type = 2, item_type = 3, item_id = "15004", count_lower = 3, count_upper = 3, weight = 1160},--小花
	["389"] = {id = "389", group_id = "5", random_type = 2, item_type = 3, item_id = "15035", count_lower = 3, count_upper = 3, weight = 56},--斯巴达
	["390"] = {id = "390", group_id = "5", random_type = 2, item_type = 3, item_id = "15012", count_lower = 3, count_upper = 3, weight = 1160},--力士
	["391"] = {id = "391", group_id = "5", random_type = 2, item_type = 3, item_id = "15002", count_lower = 2, count_upper = 2, weight = 1160},--飞矛手
	["392"] = {id = "392", group_id = "5", random_type = 2, item_type = 3, item_id = "15044", count_lower = 2, count_upper = 2, weight = 1160},--喵喵守卫
	["393"] = {id = "393", group_id = "5", random_type = 2, item_type = 3, item_id = "15094", count_lower = 2, count_upper = 2, weight = 1160},--左护法
	["394"] = {id = "394", group_id = "5", random_type = 2, item_type = 3, item_id = "15033", count_lower = 2, count_upper = 2, weight = 1160},--暴风步兵
	["395"] = {id = "395", group_id = "5", random_type = 2, item_type = 3, item_id = "15004", count_lower = 2, count_upper = 2, weight = 1160},--小花
	["396"] = {id = "396", group_id = "5", random_type = 2, item_type = 3, item_id = "15035", count_lower = 2, count_upper = 2, weight = 56},--斯巴达
	["397"] = {id = "397", group_id = "5", random_type = 2, item_type = 3, item_id = "15012", count_lower = 2, count_upper = 2, weight = 1160},--力士
	["398"] = {id = "398", group_id = "5", random_type = 2, item_type = 3, item_id = "15002", count_lower = 1, count_upper = 1, weight = 1160},--飞矛手
	["399"] = {id = "399", group_id = "5", random_type = 2, item_type = 3, item_id = "15044", count_lower = 1, count_upper = 1, weight = 1160},--喵喵守卫
	["400"] = {id = "400", group_id = "5", random_type = 2, item_type = 3, item_id = "15094", count_lower = 1, count_upper = 1, weight = 1160},--左护法
	["401"] = {id = "401", group_id = "5", random_type = 2, item_type = 3, item_id = "15033", count_lower = 1, count_upper = 1, weight = 1160},--暴风步兵
	["402"] = {id = "402", group_id = "5", random_type = 2, item_type = 3, item_id = "15004", count_lower = 1, count_upper = 1, weight = 1160},--小花
	["403"] = {id = "403", group_id = "5", random_type = 2, item_type = 3, item_id = "15035", count_lower = 1, count_upper = 1, weight = 56},--斯巴达
	["404"] = {id = "404", group_id = "5", random_type = 2, item_type = 3, item_id = "15012", count_lower = 1, count_upper = 1, weight = 1160},--力士
	["405"] = {id = "405", group_id = "5", random_type = 2, item_type = 4, item_id = "1162", count_lower = 1, count_upper = 1, weight = 119},--小炮
	["406"] = {id = "406", group_id = "5", random_type = 2, item_type = 4, item_id = "1001", count_lower = 1, count_upper = 1, weight = 28},--骑士
	["407"] = {id = "407", group_id = "5", random_type = 2, item_type = 4, item_id = "1428", count_lower = 1, count_upper = 1, weight = 28},--投棘者
	["408"] = {id = "408", group_id = "5", random_type = 2, item_type = 4, item_id = "1206", count_lower = 1, count_upper = 1, weight = 119},--牛头酋长
	["409"] = {id = "409", group_id = "5", random_type = 2, item_type = 4, item_id = "1373", count_lower = 1, count_upper = 1, weight = 119},--泰兰
	["410"] = {id = "410", group_id = "5", random_type = 2, item_type = 4, item_id = "1217", count_lower = 1, count_upper = 1, weight = 119},--卡亚
	["411"] = {id = "411", group_id = "5", random_type = 2, item_type = 3, item_id = "15017", count_lower = 5, count_upper = 5, weight = 239},--小炮
	["412"] = {id = "412", group_id = "5", random_type = 2, item_type = 3, item_id = "15000", count_lower = 5, count_upper = 5, weight = 56},--骑士
	["413"] = {id = "413", group_id = "5", random_type = 2, item_type = 3, item_id = "15052", count_lower = 5, count_upper = 5, weight = 56},--投棘者
	["414"] = {id = "414", group_id = "5", random_type = 2, item_type = 3, item_id = "15021", count_lower = 5, count_upper = 5, weight = 239},--牛头酋长
	["415"] = {id = "415", group_id = "5", random_type = 2, item_type = 3, item_id = "15042", count_lower = 5, count_upper = 5, weight = 239},--泰兰
	["416"] = {id = "416", group_id = "5", random_type = 2, item_type = 3, item_id = "15022", count_lower = 5, count_upper = 5, weight = 239},--卡亚
	["417"] = {id = "417", group_id = "5", random_type = 2, item_type = 3, item_id = "15017", count_lower = 3, count_upper = 3, weight = 239},--小炮
	["418"] = {id = "418", group_id = "5", random_type = 2, item_type = 3, item_id = "15000", count_lower = 3, count_upper = 3, weight = 56},--骑士
	["419"] = {id = "419", group_id = "5", random_type = 2, item_type = 3, item_id = "15052", count_lower = 3, count_upper = 3, weight = 56},--投棘者
	["420"] = {id = "420", group_id = "5", random_type = 2, item_type = 3, item_id = "15021", count_lower = 3, count_upper = 3, weight = 239},--牛头酋长
	["421"] = {id = "421", group_id = "5", random_type = 2, item_type = 3, item_id = "15042", count_lower = 3, count_upper = 3, weight = 239},--泰兰
	["422"] = {id = "422", group_id = "5", random_type = 2, item_type = 3, item_id = "15022", count_lower = 3, count_upper = 3, weight = 239},--卡亚
	["423"] = {id = "423", group_id = "5", random_type = 2, item_type = 3, item_id = "15017", count_lower = 2, count_upper = 2, weight = 239},--小炮
	["424"] = {id = "424", group_id = "5", random_type = 2, item_type = 3, item_id = "15000", count_lower = 2, count_upper = 2, weight = 56},--骑士
	["425"] = {id = "425", group_id = "5", random_type = 2, item_type = 3, item_id = "15052", count_lower = 2, count_upper = 2, weight = 56},--投棘者
	["426"] = {id = "426", group_id = "5", random_type = 2, item_type = 3, item_id = "15021", count_lower = 2, count_upper = 2, weight = 239},--牛头酋长
	["427"] = {id = "427", group_id = "5", random_type = 2, item_type = 3, item_id = "15042", count_lower = 2, count_upper = 2, weight = 239},--泰兰
	["428"] = {id = "428", group_id = "5", random_type = 2, item_type = 3, item_id = "15022", count_lower = 2, count_upper = 2, weight = 239},--卡亚
	["429"] = {id = "429", group_id = "5", random_type = 2, item_type = 3, item_id = "15017", count_lower = 1, count_upper = 1, weight = 239},--小炮
	["430"] = {id = "430", group_id = "5", random_type = 2, item_type = 3, item_id = "15000", count_lower = 1, count_upper = 1, weight = 56},--骑士
	["431"] = {id = "431", group_id = "5", random_type = 2, item_type = 3, item_id = "15052", count_lower = 1, count_upper = 1, weight = 56},--投棘者
	["432"] = {id = "432", group_id = "5", random_type = 2, item_type = 3, item_id = "15021", count_lower = 1, count_upper = 1, weight = 239},--牛头酋长
	["433"] = {id = "433", group_id = "5", random_type = 2, item_type = 3, item_id = "15042", count_lower = 1, count_upper = 1, weight = 239},--泰兰
	["434"] = {id = "434", group_id = "5", random_type = 2, item_type = 3, item_id = "15022", count_lower = 1, count_upper = 1, weight = 239},--卡亚
	["435"] = {id = "435", group_id = "5", random_type = 2, item_type = 4, item_id = "1173", count_lower = 1, count_upper = 1, weight = 580},--铠甲熊
	["436"] = {id = "436", group_id = "5", random_type = 2, item_type = 4, item_id = "1484", count_lower = 1, count_upper = 1, weight = 580},--右护法
	["437"] = {id = "437", group_id = "5", random_type = 2, item_type = 4, item_id = "1417", count_lower = 1, count_upper = 1, weight = 119},--小鹿
	["438"] = {id = "438", group_id = "5", random_type = 2, item_type = 4, item_id = "1250", count_lower = 1, count_upper = 1, weight = 119},--鹰身人
	["439"] = {id = "439", group_id = "5", random_type = 2, item_type = 4, item_id = "1151", count_lower = 1, count_upper = 1, weight = 119},--飞斧泰坦
	["440"] = {id = "440", group_id = "5", random_type = 2, item_type = 4, item_id = "1351", count_lower = 1, count_upper = 1, weight = 28},--守护泰坦
	["441"] = {id = "441", group_id = "5", random_type = 2, item_type = 4, item_id = "1195", count_lower = 1, count_upper = 1, weight = 119},--小恩
	["442"] = {id = "442", group_id = "5", random_type = 2, item_type = 4, item_id = "1561", count_lower = 1, count_upper = 1, weight = 28},--祖母
	["443"] = {id = "443", group_id = "5", random_type = 2, item_type = 3, item_id = "15018", count_lower = 5, count_upper = 5, weight = 1160},--铠甲熊
	["444"] = {id = "444", group_id = "5", random_type = 2, item_type = 3, item_id = "15095", count_lower = 5, count_upper = 5, weight = 1160},--右护法
	["445"] = {id = "445", group_id = "5", random_type = 2, item_type = 3, item_id = "15046", count_lower = 5, count_upper = 5, weight = 239},--小鹿
	["446"] = {id = "446", group_id = "5", random_type = 2, item_type = 3, item_id = "15034", count_lower = 5, count_upper = 5, weight = 239},--鹰身人
	["447"] = {id = "447", group_id = "5", random_type = 2, item_type = 3, item_id = "15016", count_lower = 5, count_upper = 5, weight = 239},--飞斧泰坦
	["448"] = {id = "448", group_id = "5", random_type = 2, item_type = 3, item_id = "15041", count_lower = 5, count_upper = 5, weight = 56},--守护泰坦
	["449"] = {id = "449", group_id = "5", random_type = 2, item_type = 3, item_id = "15020", count_lower = 5, count_upper = 5, weight = 239},--小恩
	["450"] = {id = "450", group_id = "5", random_type = 2, item_type = 3, item_id = "15102", count_lower = 5, count_upper = 5, weight = 56},--祖母
	["451"] = {id = "451", group_id = "5", random_type = 2, item_type = 3, item_id = "15018", count_lower = 3, count_upper = 3, weight = 1160},--铠甲熊
	["452"] = {id = "452", group_id = "5", random_type = 2, item_type = 3, item_id = "15095", count_lower = 3, count_upper = 3, weight = 1160},--右护法
	["453"] = {id = "453", group_id = "5", random_type = 2, item_type = 3, item_id = "15046", count_lower = 3, count_upper = 3, weight = 239},--小鹿
	["454"] = {id = "454", group_id = "5", random_type = 2, item_type = 3, item_id = "15034", count_lower = 3, count_upper = 3, weight = 239},--鹰身人
	["455"] = {id = "455", group_id = "5", random_type = 2, item_type = 3, item_id = "15016", count_lower = 3, count_upper = 3, weight = 239},--飞斧泰坦
	["456"] = {id = "456", group_id = "5", random_type = 2, item_type = 3, item_id = "15041", count_lower = 3, count_upper = 3, weight = 56},--守护泰坦
	["457"] = {id = "457", group_id = "5", random_type = 2, item_type = 3, item_id = "15020", count_lower = 3, count_upper = 3, weight = 239},--小恩
	["458"] = {id = "458", group_id = "5", random_type = 2, item_type = 3, item_id = "15102", count_lower = 3, count_upper = 3, weight = 56},--祖母
	["459"] = {id = "459", group_id = "5", random_type = 2, item_type = 3, item_id = "15018", count_lower = 2, count_upper = 2, weight = 1160},--铠甲熊
	["460"] = {id = "460", group_id = "5", random_type = 2, item_type = 3, item_id = "15095", count_lower = 2, count_upper = 2, weight = 1160},--右护法
	["461"] = {id = "461", group_id = "5", random_type = 2, item_type = 3, item_id = "15046", count_lower = 2, count_upper = 2, weight = 239},--小鹿
	["462"] = {id = "462", group_id = "5", random_type = 2, item_type = 3, item_id = "15034", count_lower = 2, count_upper = 2, weight = 239},--鹰身人
	["463"] = {id = "463", group_id = "5", random_type = 2, item_type = 3, item_id = "15016", count_lower = 2, count_upper = 2, weight = 239},--飞斧泰坦
	["464"] = {id = "464", group_id = "5", random_type = 2, item_type = 3, item_id = "15041", count_lower = 2, count_upper = 2, weight = 56},--守护泰坦
	["465"] = {id = "465", group_id = "5", random_type = 2, item_type = 3, item_id = "15020", count_lower = 2, count_upper = 2, weight = 239},--小恩
	["466"] = {id = "466", group_id = "5", random_type = 2, item_type = 3, item_id = "15102", count_lower = 2, count_upper = 2, weight = 56},--祖母
	["467"] = {id = "467", group_id = "5", random_type = 2, item_type = 3, item_id = "15018", count_lower = 1, count_upper = 1, weight = 1160},--铠甲熊
	["468"] = {id = "468", group_id = "5", random_type = 2, item_type = 3, item_id = "15095", count_lower = 1, count_upper = 1, weight = 1160},--右护法
	["469"] = {id = "469", group_id = "5", random_type = 2, item_type = 3, item_id = "15046", count_lower = 1, count_upper = 1, weight = 239},--小鹿
	["470"] = {id = "470", group_id = "5", random_type = 2, item_type = 3, item_id = "15034", count_lower = 1, count_upper = 1, weight = 239},--鹰身人
	["471"] = {id = "471", group_id = "5", random_type = 2, item_type = 3, item_id = "15016", count_lower = 1, count_upper = 1, weight = 239},--飞斧泰坦
	["472"] = {id = "472", group_id = "5", random_type = 2, item_type = 3, item_id = "15041", count_lower = 1, count_upper = 1, weight = 56},--守护泰坦
	["473"] = {id = "473", group_id = "5", random_type = 2, item_type = 3, item_id = "15020", count_lower = 1, count_upper = 1, weight = 239},--小恩
	["474"] = {id = "474", group_id = "5", random_type = 2, item_type = 3, item_id = "15102", count_lower = 1, count_upper = 1, weight = 56},--祖母
	["475"] = {id = "475", group_id = "5", random_type = 2, item_type = 4, item_id = "1406", count_lower = 1, count_upper = 1, weight = 580},--粉红女巫
	["476"] = {id = "476", group_id = "5", random_type = 2, item_type = 4, item_id = "1034", count_lower = 1, count_upper = 1, weight = 580},--雪人
	["477"] = {id = "477", group_id = "5", random_type = 2, item_type = 4, item_id = "1078", count_lower = 1, count_upper = 1, weight = 119},--忍者
	["478"] = {id = "478", group_id = "5", random_type = 2, item_type = 4, item_id = "1539", count_lower = 1, count_upper = 1, weight = 119},--魅魔
	["479"] = {id = "479", group_id = "5", random_type = 2, item_type = 4, item_id = "1439", count_lower = 1, count_upper = 1, weight = 28},--宝石法师
	["480"] = {id = "480", group_id = "5", random_type = 2, item_type = 4, item_id = "1384", count_lower = 1, count_upper = 1, weight = 119},--喵夫人
	["481"] = {id = "481", group_id = "5", random_type = 2, item_type = 4, item_id = "1228", count_lower = 1, count_upper = 1, weight = 28},--白幽灵
	["482"] = {id = "482", group_id = "5", random_type = 2, item_type = 3, item_id = "15045", count_lower = 5, count_upper = 5, weight = 1160},--粉红女巫
	["483"] = {id = "483", group_id = "5", random_type = 2, item_type = 3, item_id = "15003", count_lower = 5, count_upper = 5, weight = 1160},--雪人
	["484"] = {id = "484", group_id = "5", random_type = 2, item_type = 3, item_id = "15007", count_lower = 5, count_upper = 5, weight = 239},--忍者
	["485"] = {id = "485", group_id = "5", random_type = 2, item_type = 3, item_id = "15100", count_lower = 5, count_upper = 5, weight = 239},--魅魔
	["486"] = {id = "486", group_id = "5", random_type = 2, item_type = 3, item_id = "15053", count_lower = 5, count_upper = 5, weight = 56},--宝石法师
	["487"] = {id = "487", group_id = "5", random_type = 2, item_type = 3, item_id = "15043", count_lower = 5, count_upper = 5, weight = 239},--喵夫人
	["488"] = {id = "488", group_id = "5", random_type = 2, item_type = 3, item_id = "15023", count_lower = 5, count_upper = 5, weight = 56},--白幽灵
	["489"] = {id = "489", group_id = "5", random_type = 2, item_type = 3, item_id = "15045", count_lower = 3, count_upper = 3, weight = 1160},--粉红女巫
	["490"] = {id = "490", group_id = "5", random_type = 2, item_type = 3, item_id = "15003", count_lower = 3, count_upper = 3, weight = 1160},--雪人
	["491"] = {id = "491", group_id = "5", random_type = 2, item_type = 3, item_id = "15007", count_lower = 3, count_upper = 3, weight = 239},--忍者
	["492"] = {id = "492", group_id = "5", random_type = 2, item_type = 3, item_id = "15100", count_lower = 3, count_upper = 3, weight = 239},--魅魔
	["493"] = {id = "493", group_id = "5", random_type = 2, item_type = 3, item_id = "15053", count_lower = 3, count_upper = 3, weight = 56},--宝石法师
	["494"] = {id = "494", group_id = "5", random_type = 2, item_type = 3, item_id = "15043", count_lower = 3, count_upper = 3, weight = 239},--喵夫人
	["495"] = {id = "495", group_id = "5", random_type = 2, item_type = 3, item_id = "15023", count_lower = 3, count_upper = 3, weight = 56},--白幽灵
	["496"] = {id = "496", group_id = "5", random_type = 2, item_type = 3, item_id = "15045", count_lower = 2, count_upper = 2, weight = 1160},--粉红女巫
	["497"] = {id = "497", group_id = "5", random_type = 2, item_type = 3, item_id = "15003", count_lower = 2, count_upper = 2, weight = 1160},--雪人
	["498"] = {id = "498", group_id = "5", random_type = 2, item_type = 3, item_id = "15007", count_lower = 2, count_upper = 2, weight = 239},--忍者
	["499"] = {id = "499", group_id = "5", random_type = 2, item_type = 3, item_id = "15100", count_lower = 2, count_upper = 2, weight = 239},--魅魔
	["500"] = {id = "500", group_id = "5", random_type = 2, item_type = 3, item_id = "15053", count_lower = 2, count_upper = 2, weight = 56},--宝石法师
	["501"] = {id = "501", group_id = "5", random_type = 2, item_type = 3, item_id = "15043", count_lower = 2, count_upper = 2, weight = 239},--喵夫人
	["502"] = {id = "502", group_id = "5", random_type = 2, item_type = 3, item_id = "15023", count_lower = 2, count_upper = 2, weight = 56},--白幽灵
	["503"] = {id = "503", group_id = "5", random_type = 2, item_type = 3, item_id = "15045", count_lower = 1, count_upper = 1, weight = 1160},--粉红女巫
	["504"] = {id = "504", group_id = "5", random_type = 2, item_type = 3, item_id = "15003", count_lower = 1, count_upper = 1, weight = 1160},--雪人
	["505"] = {id = "505", group_id = "5", random_type = 2, item_type = 3, item_id = "15007", count_lower = 1, count_upper = 1, weight = 239},--忍者
	["506"] = {id = "506", group_id = "5", random_type = 2, item_type = 3, item_id = "15100", count_lower = 1, count_upper = 1, weight = 239},--魅魔
	["507"] = {id = "507", group_id = "5", random_type = 2, item_type = 3, item_id = "15053", count_lower = 1, count_upper = 1, weight = 56},--宝石法师
	["508"] = {id = "508", group_id = "5", random_type = 2, item_type = 3, item_id = "15043", count_lower = 1, count_upper = 1, weight = 239},--喵夫人
	["509"] = {id = "509", group_id = "5", random_type = 2, item_type = 3, item_id = "15023", count_lower = 1, count_upper = 1, weight = 56},--白幽灵
	["510"] = {id = "510", group_id = "5", random_type = 2, item_type = 4, item_id = "1056", count_lower = 1, count_upper = 1, weight = 1160},--空投者
	["511"] = {id = "511", group_id = "5", random_type = 2, item_type = 4, item_id = "1067", count_lower = 1, count_upper = 1, weight = 1160},--小树妖
	["512"] = {id = "512", group_id = "5", random_type = 2, item_type = 4, item_id = "1450", count_lower = 1, count_upper = 1, weight = 239},--蓝电法师
	["513"] = {id = "513", group_id = "5", random_type = 2, item_type = 4, item_id = "1272", count_lower = 1, count_upper = 1, weight = 239},--樱花武士
	["514"] = {id = "514", group_id = "5", random_type = 2, item_type = 4, item_id = "1340", count_lower = 1, count_upper = 1, weight = 56},--古尔丹
	["515"] = {id = "515", group_id = "5", random_type = 2, item_type = 4, item_id = "1105", count_lower = 1, count_upper = 1, weight = 239},--风暴女
	["516"] = {id = "516", group_id = "5", random_type = 2, item_type = 4, item_id = "1089", count_lower = 1, count_upper = 1, weight = 239},--阴阳师
	["517"] = {id = "517", group_id = "5", random_type = 2, item_type = 4, item_id = "1294", count_lower = 1, count_upper = 1, weight = 56},--黑岩
	["518"] = {id = "518", group_id = "5", random_type = 2, item_type = 3, item_id = "15005", count_lower = 5, count_upper = 5, weight = 1160},--空投者
	["519"] = {id = "519", group_id = "5", random_type = 2, item_type = 3, item_id = "15006", count_lower = 5, count_upper = 5, weight = 1160},--小树妖
	["520"] = {id = "520", group_id = "5", random_type = 2, item_type = 3, item_id = "15054", count_lower = 5, count_upper = 5, weight = 239},--蓝电法师
	["521"] = {id = "521", group_id = "5", random_type = 2, item_type = 3, item_id = "15036", count_lower = 5, count_upper = 5, weight = 239},--樱花武士
	["522"] = {id = "522", group_id = "5", random_type = 2, item_type = 3, item_id = "15040", count_lower = 5, count_upper = 5, weight = 56},--古尔丹
	["523"] = {id = "523", group_id = "5", random_type = 2, item_type = 3, item_id = "15010", count_lower = 5, count_upper = 5, weight = 239},--风暴女
	["524"] = {id = "524", group_id = "5", random_type = 2, item_type = 3, item_id = "15008", count_lower = 5, count_upper = 5, weight = 239},--阴阳师
	["525"] = {id = "525", group_id = "5", random_type = 2, item_type = 3, item_id = "15037", count_lower = 5, count_upper = 5, weight = 56},--黑岩
	["526"] = {id = "526", group_id = "5", random_type = 2, item_type = 3, item_id = "15005", count_lower = 3, count_upper = 3, weight = 1160},--空投者
	["527"] = {id = "527", group_id = "5", random_type = 2, item_type = 3, item_id = "15006", count_lower = 3, count_upper = 3, weight = 1160},--小树妖
	["528"] = {id = "528", group_id = "5", random_type = 2, item_type = 3, item_id = "15054", count_lower = 3, count_upper = 3, weight = 239},--蓝电法师
	["529"] = {id = "529", group_id = "5", random_type = 2, item_type = 3, item_id = "15036", count_lower = 3, count_upper = 3, weight = 239},--樱花武士
	["530"] = {id = "530", group_id = "5", random_type = 2, item_type = 3, item_id = "15040", count_lower = 3, count_upper = 3, weight = 56},--古尔丹
	["531"] = {id = "531", group_id = "5", random_type = 2, item_type = 3, item_id = "15010", count_lower = 3, count_upper = 3, weight = 239},--风暴女
	["532"] = {id = "532", group_id = "5", random_type = 2, item_type = 3, item_id = "15008", count_lower = 3, count_upper = 3, weight = 239},--阴阳师
	["533"] = {id = "533", group_id = "5", random_type = 2, item_type = 3, item_id = "15037", count_lower = 3, count_upper = 3, weight = 56},--黑岩
	["534"] = {id = "534", group_id = "5", random_type = 2, item_type = 3, item_id = "15005", count_lower = 2, count_upper = 2, weight = 1160},--空投者
	["535"] = {id = "535", group_id = "5", random_type = 2, item_type = 3, item_id = "15006", count_lower = 2, count_upper = 2, weight = 1160},--小树妖
	["536"] = {id = "536", group_id = "5", random_type = 2, item_type = 3, item_id = "15054", count_lower = 2, count_upper = 2, weight = 239},--蓝电法师
	["537"] = {id = "537", group_id = "5", random_type = 2, item_type = 3, item_id = "15036", count_lower = 2, count_upper = 2, weight = 239},--樱花武士
	["538"] = {id = "538", group_id = "5", random_type = 2, item_type = 3, item_id = "15040", count_lower = 2, count_upper = 2, weight = 56},--古尔丹
	["539"] = {id = "539", group_id = "5", random_type = 2, item_type = 3, item_id = "15010", count_lower = 2, count_upper = 2, weight = 239},--风暴女
	["540"] = {id = "540", group_id = "5", random_type = 2, item_type = 3, item_id = "15008", count_lower = 2, count_upper = 2, weight = 239},--阴阳师
	["541"] = {id = "541", group_id = "5", random_type = 2, item_type = 3, item_id = "15037", count_lower = 2, count_upper = 2, weight = 56},--黑岩
	["542"] = {id = "542", group_id = "5", random_type = 2, item_type = 3, item_id = "15005", count_lower = 1, count_upper = 1, weight = 1160},--空投者
	["543"] = {id = "543", group_id = "5", random_type = 2, item_type = 3, item_id = "15006", count_lower = 1, count_upper = 1, weight = 1160},--小树妖
	["544"] = {id = "544", group_id = "5", random_type = 2, item_type = 3, item_id = "15054", count_lower = 1, count_upper = 1, weight = 239},--蓝电法师
	["545"] = {id = "545", group_id = "5", random_type = 2, item_type = 3, item_id = "15036", count_lower = 1, count_upper = 1, weight = 239},--樱花武士
	["546"] = {id = "546", group_id = "5", random_type = 2, item_type = 3, item_id = "15040", count_lower = 1, count_upper = 1, weight = 56},--古尔丹
	["547"] = {id = "547", group_id = "5", random_type = 2, item_type = 3, item_id = "15010", count_lower = 1, count_upper = 1, weight = 239},--风暴女
	["548"] = {id = "548", group_id = "5", random_type = 2, item_type = 3, item_id = "15008", count_lower = 1, count_upper = 1, weight = 239},--阴阳师
	["549"] = {id = "549", group_id = "5", random_type = 2, item_type = 3, item_id = "15037", count_lower = 1, count_upper = 1, weight = 56},--黑岩
	["550"] = {id = "550", group_id = "5", random_type = 2, item_type = 2, item_id = "1000", count_lower = 265, count_upper = 1507, weight = 17271},--金币
	["551"] = {id = "551", group_id = "6", random_type = 2, item_type = 4, item_id = "1023", count_lower = 1, count_upper = 1, weight = 580},--飞矛手
	["552"] = {id = "552", group_id = "6", random_type = 2, item_type = 4, item_id = "1395", count_lower = 1, count_upper = 1, weight = 580},--喵喵守卫
	["553"] = {id = "553", group_id = "6", random_type = 2, item_type = 4, item_id = "1495", count_lower = 1, count_upper = 1, weight = 580},--左护法
	["554"] = {id = "554", group_id = "6", random_type = 2, item_type = 4, item_id = "1239", count_lower = 1, count_upper = 1, weight = 580},--暴风步兵
	["555"] = {id = "555", group_id = "6", random_type = 2, item_type = 4, item_id = "1045", count_lower = 1, count_upper = 1, weight = 580},--小花
	["556"] = {id = "556", group_id = "6", random_type = 2, item_type = 4, item_id = "1261", count_lower = 1, count_upper = 1, weight = 28},--斯巴达
	["557"] = {id = "557", group_id = "6", random_type = 2, item_type = 4, item_id = "1127", count_lower = 1, count_upper = 1, weight = 580},--力士
	["558"] = {id = "558", group_id = "6", random_type = 2, item_type = 3, item_id = "15002", count_lower = 5, count_upper = 5, weight = 1160},--飞矛手
	["559"] = {id = "559", group_id = "6", random_type = 2, item_type = 3, item_id = "15044", count_lower = 5, count_upper = 5, weight = 1160},--喵喵守卫
	["560"] = {id = "560", group_id = "6", random_type = 2, item_type = 3, item_id = "15094", count_lower = 5, count_upper = 5, weight = 1160},--左护法
	["561"] = {id = "561", group_id = "6", random_type = 2, item_type = 3, item_id = "15033", count_lower = 5, count_upper = 5, weight = 1160},--暴风步兵
	["562"] = {id = "562", group_id = "6", random_type = 2, item_type = 3, item_id = "15004", count_lower = 5, count_upper = 5, weight = 1160},--小花
	["563"] = {id = "563", group_id = "6", random_type = 2, item_type = 3, item_id = "15035", count_lower = 5, count_upper = 5, weight = 56},--斯巴达
	["564"] = {id = "564", group_id = "6", random_type = 2, item_type = 3, item_id = "15012", count_lower = 5, count_upper = 5, weight = 1160},--力士
	["565"] = {id = "565", group_id = "6", random_type = 2, item_type = 3, item_id = "15002", count_lower = 3, count_upper = 3, weight = 1160},--飞矛手
	["566"] = {id = "566", group_id = "6", random_type = 2, item_type = 3, item_id = "15044", count_lower = 3, count_upper = 3, weight = 1160},--喵喵守卫
	["567"] = {id = "567", group_id = "6", random_type = 2, item_type = 3, item_id = "15094", count_lower = 3, count_upper = 3, weight = 1160},--左护法
	["568"] = {id = "568", group_id = "6", random_type = 2, item_type = 3, item_id = "15033", count_lower = 3, count_upper = 3, weight = 1160},--暴风步兵
	["569"] = {id = "569", group_id = "6", random_type = 2, item_type = 3, item_id = "15004", count_lower = 3, count_upper = 3, weight = 1160},--小花
	["570"] = {id = "570", group_id = "6", random_type = 2, item_type = 3, item_id = "15035", count_lower = 3, count_upper = 3, weight = 56},--斯巴达
	["571"] = {id = "571", group_id = "6", random_type = 2, item_type = 3, item_id = "15012", count_lower = 3, count_upper = 3, weight = 1160},--力士
	["572"] = {id = "572", group_id = "6", random_type = 2, item_type = 3, item_id = "15002", count_lower = 2, count_upper = 2, weight = 1160},--飞矛手
	["573"] = {id = "573", group_id = "6", random_type = 2, item_type = 3, item_id = "15044", count_lower = 2, count_upper = 2, weight = 1160},--喵喵守卫
	["574"] = {id = "574", group_id = "6", random_type = 2, item_type = 3, item_id = "15094", count_lower = 2, count_upper = 2, weight = 1160},--左护法
	["575"] = {id = "575", group_id = "6", random_type = 2, item_type = 3, item_id = "15033", count_lower = 2, count_upper = 2, weight = 1160},--暴风步兵
	["576"] = {id = "576", group_id = "6", random_type = 2, item_type = 3, item_id = "15004", count_lower = 2, count_upper = 2, weight = 1160},--小花
	["577"] = {id = "577", group_id = "6", random_type = 2, item_type = 3, item_id = "15035", count_lower = 2, count_upper = 2, weight = 56},--斯巴达
	["578"] = {id = "578", group_id = "6", random_type = 2, item_type = 3, item_id = "15012", count_lower = 2, count_upper = 2, weight = 1160},--力士
	["579"] = {id = "579", group_id = "6", random_type = 2, item_type = 3, item_id = "15002", count_lower = 1, count_upper = 1, weight = 1160},--飞矛手
	["580"] = {id = "580", group_id = "6", random_type = 2, item_type = 3, item_id = "15044", count_lower = 1, count_upper = 1, weight = 1160},--喵喵守卫
	["581"] = {id = "581", group_id = "6", random_type = 2, item_type = 3, item_id = "15094", count_lower = 1, count_upper = 1, weight = 1160},--左护法
	["582"] = {id = "582", group_id = "6", random_type = 2, item_type = 3, item_id = "15033", count_lower = 1, count_upper = 1, weight = 1160},--暴风步兵
	["583"] = {id = "583", group_id = "6", random_type = 2, item_type = 3, item_id = "15004", count_lower = 1, count_upper = 1, weight = 1160},--小花
	["584"] = {id = "584", group_id = "6", random_type = 2, item_type = 3, item_id = "15035", count_lower = 1, count_upper = 1, weight = 56},--斯巴达
	["585"] = {id = "585", group_id = "6", random_type = 2, item_type = 3, item_id = "15012", count_lower = 1, count_upper = 1, weight = 1160},--力士
	["586"] = {id = "586", group_id = "6", random_type = 2, item_type = 4, item_id = "1162", count_lower = 1, count_upper = 1, weight = 119},--小炮
	["587"] = {id = "587", group_id = "6", random_type = 2, item_type = 4, item_id = "1001", count_lower = 1, count_upper = 1, weight = 28},--骑士
	["588"] = {id = "588", group_id = "6", random_type = 2, item_type = 4, item_id = "1428", count_lower = 1, count_upper = 1, weight = 28},--投棘者
	["589"] = {id = "589", group_id = "6", random_type = 2, item_type = 4, item_id = "1206", count_lower = 1, count_upper = 1, weight = 119},--牛头酋长
	["590"] = {id = "590", group_id = "6", random_type = 2, item_type = 4, item_id = "1373", count_lower = 1, count_upper = 1, weight = 119},--泰兰
	["591"] = {id = "591", group_id = "6", random_type = 2, item_type = 4, item_id = "1217", count_lower = 1, count_upper = 1, weight = 119},--卡亚
	["592"] = {id = "592", group_id = "6", random_type = 2, item_type = 3, item_id = "15017", count_lower = 5, count_upper = 5, weight = 239},--小炮
	["593"] = {id = "593", group_id = "6", random_type = 2, item_type = 3, item_id = "15000", count_lower = 5, count_upper = 5, weight = 56},--骑士
	["594"] = {id = "594", group_id = "6", random_type = 2, item_type = 3, item_id = "15052", count_lower = 5, count_upper = 5, weight = 56},--投棘者
	["595"] = {id = "595", group_id = "6", random_type = 2, item_type = 3, item_id = "15021", count_lower = 5, count_upper = 5, weight = 239},--牛头酋长
	["596"] = {id = "596", group_id = "6", random_type = 2, item_type = 3, item_id = "15042", count_lower = 5, count_upper = 5, weight = 239},--泰兰
	["597"] = {id = "597", group_id = "6", random_type = 2, item_type = 3, item_id = "15022", count_lower = 5, count_upper = 5, weight = 239},--卡亚
	["598"] = {id = "598", group_id = "6", random_type = 2, item_type = 3, item_id = "15017", count_lower = 3, count_upper = 3, weight = 239},--小炮
	["599"] = {id = "599", group_id = "6", random_type = 2, item_type = 3, item_id = "15000", count_lower = 3, count_upper = 3, weight = 56},--骑士
	["600"] = {id = "600", group_id = "6", random_type = 2, item_type = 3, item_id = "15052", count_lower = 3, count_upper = 3, weight = 56},--投棘者
	["601"] = {id = "601", group_id = "6", random_type = 2, item_type = 3, item_id = "15021", count_lower = 3, count_upper = 3, weight = 239},--牛头酋长
	["602"] = {id = "602", group_id = "6", random_type = 2, item_type = 3, item_id = "15042", count_lower = 3, count_upper = 3, weight = 239},--泰兰
	["603"] = {id = "603", group_id = "6", random_type = 2, item_type = 3, item_id = "15022", count_lower = 3, count_upper = 3, weight = 239},--卡亚
	["604"] = {id = "604", group_id = "6", random_type = 2, item_type = 3, item_id = "15017", count_lower = 2, count_upper = 2, weight = 239},--小炮
	["605"] = {id = "605", group_id = "6", random_type = 2, item_type = 3, item_id = "15000", count_lower = 2, count_upper = 2, weight = 56},--骑士
	["606"] = {id = "606", group_id = "6", random_type = 2, item_type = 3, item_id = "15052", count_lower = 2, count_upper = 2, weight = 56},--投棘者
	["607"] = {id = "607", group_id = "6", random_type = 2, item_type = 3, item_id = "15021", count_lower = 2, count_upper = 2, weight = 239},--牛头酋长
	["608"] = {id = "608", group_id = "6", random_type = 2, item_type = 3, item_id = "15042", count_lower = 2, count_upper = 2, weight = 239},--泰兰
	["609"] = {id = "609", group_id = "6", random_type = 2, item_type = 3, item_id = "15022", count_lower = 2, count_upper = 2, weight = 239},--卡亚
	["610"] = {id = "610", group_id = "6", random_type = 2, item_type = 3, item_id = "15017", count_lower = 1, count_upper = 1, weight = 239},--小炮
	["611"] = {id = "611", group_id = "6", random_type = 2, item_type = 3, item_id = "15000", count_lower = 1, count_upper = 1, weight = 56},--骑士
	["612"] = {id = "612", group_id = "6", random_type = 2, item_type = 3, item_id = "15052", count_lower = 1, count_upper = 1, weight = 56},--投棘者
	["613"] = {id = "613", group_id = "6", random_type = 2, item_type = 3, item_id = "15021", count_lower = 1, count_upper = 1, weight = 239},--牛头酋长
	["614"] = {id = "614", group_id = "6", random_type = 2, item_type = 3, item_id = "15042", count_lower = 1, count_upper = 1, weight = 239},--泰兰
	["615"] = {id = "615", group_id = "6", random_type = 2, item_type = 3, item_id = "15022", count_lower = 1, count_upper = 1, weight = 239},--卡亚
	["616"] = {id = "616", group_id = "6", random_type = 2, item_type = 4, item_id = "1173", count_lower = 1, count_upper = 1, weight = 580},--铠甲熊
	["617"] = {id = "617", group_id = "6", random_type = 2, item_type = 4, item_id = "1484", count_lower = 1, count_upper = 1, weight = 580},--右护法
	["618"] = {id = "618", group_id = "6", random_type = 2, item_type = 4, item_id = "1417", count_lower = 1, count_upper = 1, weight = 119},--小鹿
	["619"] = {id = "619", group_id = "6", random_type = 2, item_type = 4, item_id = "1250", count_lower = 1, count_upper = 1, weight = 119},--鹰身人
	["620"] = {id = "620", group_id = "6", random_type = 2, item_type = 4, item_id = "1151", count_lower = 1, count_upper = 1, weight = 119},--飞斧泰坦
	["621"] = {id = "621", group_id = "6", random_type = 2, item_type = 4, item_id = "1351", count_lower = 1, count_upper = 1, weight = 28},--守护泰坦
	["622"] = {id = "622", group_id = "6", random_type = 2, item_type = 4, item_id = "1195", count_lower = 1, count_upper = 1, weight = 119},--小恩
	["623"] = {id = "623", group_id = "6", random_type = 2, item_type = 4, item_id = "1561", count_lower = 1, count_upper = 1, weight = 28},--祖母
	["624"] = {id = "624", group_id = "6", random_type = 2, item_type = 3, item_id = "15018", count_lower = 5, count_upper = 5, weight = 1160},--铠甲熊
	["625"] = {id = "625", group_id = "6", random_type = 2, item_type = 3, item_id = "15095", count_lower = 5, count_upper = 5, weight = 1160},--右护法
	["626"] = {id = "626", group_id = "6", random_type = 2, item_type = 3, item_id = "15046", count_lower = 5, count_upper = 5, weight = 239},--小鹿
	["627"] = {id = "627", group_id = "6", random_type = 2, item_type = 3, item_id = "15034", count_lower = 5, count_upper = 5, weight = 239},--鹰身人
	["628"] = {id = "628", group_id = "6", random_type = 2, item_type = 3, item_id = "15016", count_lower = 5, count_upper = 5, weight = 239},--飞斧泰坦
	["629"] = {id = "629", group_id = "6", random_type = 2, item_type = 3, item_id = "15041", count_lower = 5, count_upper = 5, weight = 56},--守护泰坦
	["630"] = {id = "630", group_id = "6", random_type = 2, item_type = 3, item_id = "15020", count_lower = 5, count_upper = 5, weight = 239},--小恩
	["631"] = {id = "631", group_id = "6", random_type = 2, item_type = 3, item_id = "15102", count_lower = 5, count_upper = 5, weight = 56},--祖母
	["632"] = {id = "632", group_id = "6", random_type = 2, item_type = 3, item_id = "15018", count_lower = 3, count_upper = 3, weight = 1160},--铠甲熊
	["633"] = {id = "633", group_id = "6", random_type = 2, item_type = 3, item_id = "15095", count_lower = 3, count_upper = 3, weight = 1160},--右护法
	["634"] = {id = "634", group_id = "6", random_type = 2, item_type = 3, item_id = "15046", count_lower = 3, count_upper = 3, weight = 239},--小鹿
	["635"] = {id = "635", group_id = "6", random_type = 2, item_type = 3, item_id = "15034", count_lower = 3, count_upper = 3, weight = 239},--鹰身人
	["636"] = {id = "636", group_id = "6", random_type = 2, item_type = 3, item_id = "15016", count_lower = 3, count_upper = 3, weight = 239},--飞斧泰坦
	["637"] = {id = "637", group_id = "6", random_type = 2, item_type = 3, item_id = "15041", count_lower = 3, count_upper = 3, weight = 56},--守护泰坦
	["638"] = {id = "638", group_id = "6", random_type = 2, item_type = 3, item_id = "15020", count_lower = 3, count_upper = 3, weight = 239},--小恩
	["639"] = {id = "639", group_id = "6", random_type = 2, item_type = 3, item_id = "15102", count_lower = 3, count_upper = 3, weight = 56},--祖母
	["640"] = {id = "640", group_id = "6", random_type = 2, item_type = 3, item_id = "15018", count_lower = 2, count_upper = 2, weight = 1160},--铠甲熊
	["641"] = {id = "641", group_id = "6", random_type = 2, item_type = 3, item_id = "15095", count_lower = 2, count_upper = 2, weight = 1160},--右护法
	["642"] = {id = "642", group_id = "6", random_type = 2, item_type = 3, item_id = "15046", count_lower = 2, count_upper = 2, weight = 239},--小鹿
	["643"] = {id = "643", group_id = "6", random_type = 2, item_type = 3, item_id = "15034", count_lower = 2, count_upper = 2, weight = 239},--鹰身人
	["644"] = {id = "644", group_id = "6", random_type = 2, item_type = 3, item_id = "15016", count_lower = 2, count_upper = 2, weight = 239},--飞斧泰坦
	["645"] = {id = "645", group_id = "6", random_type = 2, item_type = 3, item_id = "15041", count_lower = 2, count_upper = 2, weight = 56},--守护泰坦
	["646"] = {id = "646", group_id = "6", random_type = 2, item_type = 3, item_id = "15020", count_lower = 2, count_upper = 2, weight = 239},--小恩
	["647"] = {id = "647", group_id = "6", random_type = 2, item_type = 3, item_id = "15102", count_lower = 2, count_upper = 2, weight = 56},--祖母
	["648"] = {id = "648", group_id = "6", random_type = 2, item_type = 3, item_id = "15018", count_lower = 1, count_upper = 1, weight = 1160},--铠甲熊
	["649"] = {id = "649", group_id = "6", random_type = 2, item_type = 3, item_id = "15095", count_lower = 1, count_upper = 1, weight = 1160},--右护法
	["650"] = {id = "650", group_id = "6", random_type = 2, item_type = 3, item_id = "15046", count_lower = 1, count_upper = 1, weight = 239},--小鹿
	["651"] = {id = "651", group_id = "6", random_type = 2, item_type = 3, item_id = "15034", count_lower = 1, count_upper = 1, weight = 239},--鹰身人
	["652"] = {id = "652", group_id = "6", random_type = 2, item_type = 3, item_id = "15016", count_lower = 1, count_upper = 1, weight = 239},--飞斧泰坦
	["653"] = {id = "653", group_id = "6", random_type = 2, item_type = 3, item_id = "15041", count_lower = 1, count_upper = 1, weight = 56},--守护泰坦
	["654"] = {id = "654", group_id = "6", random_type = 2, item_type = 3, item_id = "15020", count_lower = 1, count_upper = 1, weight = 239},--小恩
	["655"] = {id = "655", group_id = "6", random_type = 2, item_type = 3, item_id = "15102", count_lower = 1, count_upper = 1, weight = 56},--祖母
	["656"] = {id = "656", group_id = "6", random_type = 2, item_type = 4, item_id = "1406", count_lower = 1, count_upper = 1, weight = 580},--粉红女巫
	["657"] = {id = "657", group_id = "6", random_type = 2, item_type = 4, item_id = "1034", count_lower = 1, count_upper = 1, weight = 580},--雪人
	["658"] = {id = "658", group_id = "6", random_type = 2, item_type = 4, item_id = "1078", count_lower = 1, count_upper = 1, weight = 119},--忍者
	["659"] = {id = "659", group_id = "6", random_type = 2, item_type = 4, item_id = "1539", count_lower = 1, count_upper = 1, weight = 119},--魅魔
	["660"] = {id = "660", group_id = "6", random_type = 2, item_type = 4, item_id = "1439", count_lower = 1, count_upper = 1, weight = 28},--宝石法师
	["661"] = {id = "661", group_id = "6", random_type = 2, item_type = 4, item_id = "1384", count_lower = 1, count_upper = 1, weight = 119},--喵夫人
	["662"] = {id = "662", group_id = "6", random_type = 2, item_type = 4, item_id = "1228", count_lower = 1, count_upper = 1, weight = 28},--白幽灵
	["663"] = {id = "663", group_id = "6", random_type = 2, item_type = 3, item_id = "15045", count_lower = 5, count_upper = 5, weight = 1160},--粉红女巫
	["664"] = {id = "664", group_id = "6", random_type = 2, item_type = 3, item_id = "15003", count_lower = 5, count_upper = 5, weight = 1160},--雪人
	["665"] = {id = "665", group_id = "6", random_type = 2, item_type = 3, item_id = "15007", count_lower = 5, count_upper = 5, weight = 239},--忍者
	["666"] = {id = "666", group_id = "6", random_type = 2, item_type = 3, item_id = "15100", count_lower = 5, count_upper = 5, weight = 239},--魅魔
	["667"] = {id = "667", group_id = "6", random_type = 2, item_type = 3, item_id = "15053", count_lower = 5, count_upper = 5, weight = 56},--宝石法师
	["668"] = {id = "668", group_id = "6", random_type = 2, item_type = 3, item_id = "15043", count_lower = 5, count_upper = 5, weight = 239},--喵夫人
	["669"] = {id = "669", group_id = "6", random_type = 2, item_type = 3, item_id = "15023", count_lower = 5, count_upper = 5, weight = 56},--白幽灵
	["670"] = {id = "670", group_id = "6", random_type = 2, item_type = 3, item_id = "15045", count_lower = 3, count_upper = 3, weight = 1160},--粉红女巫
	["671"] = {id = "671", group_id = "6", random_type = 2, item_type = 3, item_id = "15003", count_lower = 3, count_upper = 3, weight = 1160},--雪人
	["672"] = {id = "672", group_id = "6", random_type = 2, item_type = 3, item_id = "15007", count_lower = 3, count_upper = 3, weight = 239},--忍者
	["673"] = {id = "673", group_id = "6", random_type = 2, item_type = 3, item_id = "15100", count_lower = 3, count_upper = 3, weight = 239},--魅魔
	["674"] = {id = "674", group_id = "6", random_type = 2, item_type = 3, item_id = "15053", count_lower = 3, count_upper = 3, weight = 56},--宝石法师
	["675"] = {id = "675", group_id = "6", random_type = 2, item_type = 3, item_id = "15043", count_lower = 3, count_upper = 3, weight = 239},--喵夫人
	["676"] = {id = "676", group_id = "6", random_type = 2, item_type = 3, item_id = "15023", count_lower = 3, count_upper = 3, weight = 56},--白幽灵
	["677"] = {id = "677", group_id = "6", random_type = 2, item_type = 3, item_id = "15045", count_lower = 2, count_upper = 2, weight = 1160},--粉红女巫
	["678"] = {id = "678", group_id = "6", random_type = 2, item_type = 3, item_id = "15003", count_lower = 2, count_upper = 2, weight = 1160},--雪人
	["679"] = {id = "679", group_id = "6", random_type = 2, item_type = 3, item_id = "15007", count_lower = 2, count_upper = 2, weight = 239},--忍者
	["680"] = {id = "680", group_id = "6", random_type = 2, item_type = 3, item_id = "15100", count_lower = 2, count_upper = 2, weight = 239},--魅魔
	["681"] = {id = "681", group_id = "6", random_type = 2, item_type = 3, item_id = "15053", count_lower = 2, count_upper = 2, weight = 56},--宝石法师
	["682"] = {id = "682", group_id = "6", random_type = 2, item_type = 3, item_id = "15043", count_lower = 2, count_upper = 2, weight = 239},--喵夫人
	["683"] = {id = "683", group_id = "6", random_type = 2, item_type = 3, item_id = "15023", count_lower = 2, count_upper = 2, weight = 56},--白幽灵
	["684"] = {id = "684", group_id = "6", random_type = 2, item_type = 3, item_id = "15045", count_lower = 1, count_upper = 1, weight = 1160},--粉红女巫
	["685"] = {id = "685", group_id = "6", random_type = 2, item_type = 3, item_id = "15003", count_lower = 1, count_upper = 1, weight = 1160},--雪人
	["686"] = {id = "686", group_id = "6", random_type = 2, item_type = 3, item_id = "15007", count_lower = 1, count_upper = 1, weight = 239},--忍者
	["687"] = {id = "687", group_id = "6", random_type = 2, item_type = 3, item_id = "15100", count_lower = 1, count_upper = 1, weight = 239},--魅魔
	["688"] = {id = "688", group_id = "6", random_type = 2, item_type = 3, item_id = "15053", count_lower = 1, count_upper = 1, weight = 56},--宝石法师
	["689"] = {id = "689", group_id = "6", random_type = 2, item_type = 3, item_id = "15043", count_lower = 1, count_upper = 1, weight = 239},--喵夫人
	["690"] = {id = "690", group_id = "6", random_type = 2, item_type = 3, item_id = "15023", count_lower = 1, count_upper = 1, weight = 56},--白幽灵
	["691"] = {id = "691", group_id = "6", random_type = 2, item_type = 4, item_id = "1056", count_lower = 1, count_upper = 1, weight = 1160},--空投者
	["692"] = {id = "692", group_id = "6", random_type = 2, item_type = 4, item_id = "1067", count_lower = 1, count_upper = 1, weight = 1160},--小树妖
	["693"] = {id = "693", group_id = "6", random_type = 2, item_type = 4, item_id = "1450", count_lower = 1, count_upper = 1, weight = 239},--蓝电法师
	["694"] = {id = "694", group_id = "6", random_type = 2, item_type = 4, item_id = "1272", count_lower = 1, count_upper = 1, weight = 239},--樱花武士
	["695"] = {id = "695", group_id = "6", random_type = 2, item_type = 4, item_id = "1340", count_lower = 1, count_upper = 1, weight = 56},--古尔丹
	["696"] = {id = "696", group_id = "6", random_type = 2, item_type = 4, item_id = "1105", count_lower = 1, count_upper = 1, weight = 239},--风暴女
	["697"] = {id = "697", group_id = "6", random_type = 2, item_type = 4, item_id = "1089", count_lower = 1, count_upper = 1, weight = 239},--阴阳师
	["698"] = {id = "698", group_id = "6", random_type = 2, item_type = 4, item_id = "1294", count_lower = 1, count_upper = 1, weight = 56},--黑岩
	["699"] = {id = "699", group_id = "6", random_type = 2, item_type = 3, item_id = "15005", count_lower = 5, count_upper = 5, weight = 1160},--空投者
	["700"] = {id = "700", group_id = "6", random_type = 2, item_type = 3, item_id = "15006", count_lower = 5, count_upper = 5, weight = 1160},--小树妖
	["701"] = {id = "701", group_id = "6", random_type = 2, item_type = 3, item_id = "15054", count_lower = 5, count_upper = 5, weight = 239},--蓝电法师
	["702"] = {id = "702", group_id = "6", random_type = 2, item_type = 3, item_id = "15036", count_lower = 5, count_upper = 5, weight = 239},--樱花武士
	["703"] = {id = "703", group_id = "6", random_type = 2, item_type = 3, item_id = "15040", count_lower = 5, count_upper = 5, weight = 56},--古尔丹
	["704"] = {id = "704", group_id = "6", random_type = 2, item_type = 3, item_id = "15010", count_lower = 5, count_upper = 5, weight = 239},--风暴女
	["705"] = {id = "705", group_id = "6", random_type = 2, item_type = 3, item_id = "15008", count_lower = 5, count_upper = 5, weight = 239},--阴阳师
	["706"] = {id = "706", group_id = "6", random_type = 2, item_type = 3, item_id = "15037", count_lower = 5, count_upper = 5, weight = 56},--黑岩
	["707"] = {id = "707", group_id = "6", random_type = 2, item_type = 3, item_id = "15005", count_lower = 3, count_upper = 3, weight = 1160},--空投者
	["708"] = {id = "708", group_id = "6", random_type = 2, item_type = 3, item_id = "15006", count_lower = 3, count_upper = 3, weight = 1160},--小树妖
	["709"] = {id = "709", group_id = "6", random_type = 2, item_type = 3, item_id = "15054", count_lower = 3, count_upper = 3, weight = 239},--蓝电法师
	["710"] = {id = "710", group_id = "6", random_type = 2, item_type = 3, item_id = "15036", count_lower = 3, count_upper = 3, weight = 239},--樱花武士
	["711"] = {id = "711", group_id = "6", random_type = 2, item_type = 3, item_id = "15040", count_lower = 3, count_upper = 3, weight = 56},--古尔丹
	["712"] = {id = "712", group_id = "6", random_type = 2, item_type = 3, item_id = "15010", count_lower = 3, count_upper = 3, weight = 239},--风暴女
	["713"] = {id = "713", group_id = "6", random_type = 2, item_type = 3, item_id = "15008", count_lower = 3, count_upper = 3, weight = 239},--阴阳师
	["714"] = {id = "714", group_id = "6", random_type = 2, item_type = 3, item_id = "15037", count_lower = 3, count_upper = 3, weight = 56},--黑岩
	["715"] = {id = "715", group_id = "6", random_type = 2, item_type = 3, item_id = "15005", count_lower = 2, count_upper = 2, weight = 1160},--空投者
	["716"] = {id = "716", group_id = "6", random_type = 2, item_type = 3, item_id = "15006", count_lower = 2, count_upper = 2, weight = 1160},--小树妖
	["717"] = {id = "717", group_id = "6", random_type = 2, item_type = 3, item_id = "15054", count_lower = 2, count_upper = 2, weight = 239},--蓝电法师
	["718"] = {id = "718", group_id = "6", random_type = 2, item_type = 3, item_id = "15036", count_lower = 2, count_upper = 2, weight = 239},--樱花武士
	["719"] = {id = "719", group_id = "6", random_type = 2, item_type = 3, item_id = "15040", count_lower = 2, count_upper = 2, weight = 56},--古尔丹
	["720"] = {id = "720", group_id = "6", random_type = 2, item_type = 3, item_id = "15010", count_lower = 2, count_upper = 2, weight = 239},--风暴女
	["721"] = {id = "721", group_id = "6", random_type = 2, item_type = 3, item_id = "15008", count_lower = 2, count_upper = 2, weight = 239},--阴阳师
	["722"] = {id = "722", group_id = "6", random_type = 2, item_type = 3, item_id = "15037", count_lower = 2, count_upper = 2, weight = 56},--黑岩
	["723"] = {id = "723", group_id = "6", random_type = 2, item_type = 3, item_id = "15005", count_lower = 1, count_upper = 1, weight = 1160},--空投者
	["724"] = {id = "724", group_id = "6", random_type = 2, item_type = 3, item_id = "15006", count_lower = 1, count_upper = 1, weight = 1160},--小树妖
	["725"] = {id = "725", group_id = "6", random_type = 2, item_type = 3, item_id = "15054", count_lower = 1, count_upper = 1, weight = 239},--蓝电法师
	["726"] = {id = "726", group_id = "6", random_type = 2, item_type = 3, item_id = "15036", count_lower = 1, count_upper = 1, weight = 239},--樱花武士
	["727"] = {id = "727", group_id = "6", random_type = 2, item_type = 3, item_id = "15040", count_lower = 1, count_upper = 1, weight = 56},--古尔丹
	["728"] = {id = "728", group_id = "6", random_type = 2, item_type = 3, item_id = "15010", count_lower = 1, count_upper = 1, weight = 239},--风暴女
	["729"] = {id = "729", group_id = "6", random_type = 2, item_type = 3, item_id = "15008", count_lower = 1, count_upper = 1, weight = 239},--阴阳师
	["730"] = {id = "730", group_id = "6", random_type = 2, item_type = 3, item_id = "15037", count_lower = 1, count_upper = 1, weight = 56},--黑岩
	["731"] = {id = "731", group_id = "6", random_type = 2, item_type = 4, item_id = "1012", count_lower = 1, count_upper = 1, weight = 60},--酒桶
	["732"] = {id = "732", group_id = "6", random_type = 2, item_type = 4, item_id = "1305", count_lower = 1, count_upper = 1, weight = 60},--大嘴
	["733"] = {id = "733", group_id = "6", random_type = 2, item_type = 4, item_id = "1184", count_lower = 1, count_upper = 1, weight = 14},--狂暴巨人
	["734"] = {id = "734", group_id = "6", random_type = 2, item_type = 4, item_id = "1550", count_lower = 1, count_upper = 1, weight = 60},--死神
	["735"] = {id = "735", group_id = "6", random_type = 2, item_type = 4, item_id = "1327", count_lower = 1, count_upper = 1, weight = 14},--刚刀
	["736"] = {id = "736", group_id = "6", random_type = 2, item_type = 3, item_id = "15001", count_lower = 5, count_upper = 5, weight = 119},--酒桶
	["737"] = {id = "737", group_id = "6", random_type = 2, item_type = 3, item_id = "15038", count_lower = 5, count_upper = 5, weight = 119},--大嘴
	["738"] = {id = "738", group_id = "6", random_type = 2, item_type = 3, item_id = "15019", count_lower = 5, count_upper = 5, weight = 28},--狂暴巨人
	["739"] = {id = "739", group_id = "6", random_type = 2, item_type = 3, item_id = "15101", count_lower = 5, count_upper = 5, weight = 119},--死神
	["740"] = {id = "740", group_id = "6", random_type = 2, item_type = 3, item_id = "15039", count_lower = 5, count_upper = 5, weight = 28},--刚刀
	["741"] = {id = "741", group_id = "6", random_type = 2, item_type = 3, item_id = "15001", count_lower = 3, count_upper = 3, weight = 239},--酒桶
	["742"] = {id = "742", group_id = "6", random_type = 2, item_type = 3, item_id = "15038", count_lower = 3, count_upper = 3, weight = 239},--大嘴
	["743"] = {id = "743", group_id = "6", random_type = 2, item_type = 3, item_id = "15019", count_lower = 3, count_upper = 3, weight = 56},--狂暴巨人
	["744"] = {id = "744", group_id = "6", random_type = 2, item_type = 3, item_id = "15101", count_lower = 3, count_upper = 3, weight = 239},--死神
	["745"] = {id = "745", group_id = "6", random_type = 2, item_type = 3, item_id = "15039", count_lower = 3, count_upper = 3, weight = 56},--刚刀
	["746"] = {id = "746", group_id = "6", random_type = 2, item_type = 3, item_id = "15001", count_lower = 2, count_upper = 2, weight = 239},--酒桶
	["747"] = {id = "747", group_id = "6", random_type = 2, item_type = 3, item_id = "15038", count_lower = 2, count_upper = 2, weight = 239},--大嘴
	["748"] = {id = "748", group_id = "6", random_type = 2, item_type = 3, item_id = "15019", count_lower = 2, count_upper = 2, weight = 56},--狂暴巨人
	["749"] = {id = "749", group_id = "6", random_type = 2, item_type = 3, item_id = "15101", count_lower = 2, count_upper = 2, weight = 239},--死神
	["750"] = {id = "750", group_id = "6", random_type = 2, item_type = 3, item_id = "15039", count_lower = 2, count_upper = 2, weight = 56},--刚刀
	["751"] = {id = "751", group_id = "6", random_type = 2, item_type = 3, item_id = "15001", count_lower = 1, count_upper = 1, weight = 239},--酒桶
	["752"] = {id = "752", group_id = "6", random_type = 2, item_type = 3, item_id = "15038", count_lower = 1, count_upper = 1, weight = 239},--大嘴
	["753"] = {id = "753", group_id = "6", random_type = 2, item_type = 3, item_id = "15019", count_lower = 1, count_upper = 1, weight = 56},--狂暴巨人
	["754"] = {id = "754", group_id = "6", random_type = 2, item_type = 3, item_id = "15101", count_lower = 1, count_upper = 1, weight = 239},--死神
	["755"] = {id = "755", group_id = "6", random_type = 2, item_type = 3, item_id = "15039", count_lower = 1, count_upper = 1, weight = 56},--刚刀
	["756"] = {id = "756", group_id = "6", random_type = 2, item_type = 3, item_id = "15093", count_lower = 1, count_upper = 1, weight = 10},--炎魔
	["757"] = {id = "757", group_id = "6", random_type = 2, item_type = 3, item_id = "15103", count_lower = 10, count_upper = 10, weight = 580},--主角碎片
	["758"] = {id = "758", group_id = "6", random_type = 2, item_type = 3, item_id = "15103", count_lower = 5, count_upper = 5, weight = 1160},--主角碎片
	["759"] = {id = "759", group_id = "6", random_type = 2, item_type = 3, item_id = "15103", count_lower = 3, count_upper = 3, weight = 1160},--主角碎片
	["760"] = {id = "760", group_id = "6", random_type = 2, item_type = 3, item_id = "15103", count_lower = 2, count_upper = 2, weight = 1160},--主角碎片
	["761"] = {id = "761", group_id = "6", random_type = 2, item_type = 3, item_id = "15103", count_lower = 1, count_upper = 1, weight = 1160},--主角碎片
	["762"] = {id = "762", group_id = "6", random_type = 2, item_type = 2, item_id = "1000", count_lower = 457, count_upper = 2594, weight = 14153},--金币
	["763"] = {id = "763", group_id = "7", random_type = 2, item_type = 4, item_id = "1023", count_lower = 1, count_upper = 1, weight = 580},--飞矛手
	["764"] = {id = "764", group_id = "7", random_type = 2, item_type = 4, item_id = "1395", count_lower = 1, count_upper = 1, weight = 580},--喵喵守卫
	["765"] = {id = "765", group_id = "7", random_type = 2, item_type = 4, item_id = "1495", count_lower = 1, count_upper = 1, weight = 580},--左护法
	["766"] = {id = "766", group_id = "7", random_type = 2, item_type = 4, item_id = "1239", count_lower = 1, count_upper = 1, weight = 580},--暴风步兵
	["767"] = {id = "767", group_id = "7", random_type = 2, item_type = 4, item_id = "1045", count_lower = 1, count_upper = 1, weight = 580},--小花
	["768"] = {id = "768", group_id = "7", random_type = 2, item_type = 4, item_id = "1261", count_lower = 1, count_upper = 1, weight = 28},--斯巴达
	["769"] = {id = "769", group_id = "7", random_type = 2, item_type = 4, item_id = "1127", count_lower = 1, count_upper = 1, weight = 580},--力士
	["770"] = {id = "770", group_id = "7", random_type = 2, item_type = 3, item_id = "15002", count_lower = 5, count_upper = 5, weight = 1160},--飞矛手
	["771"] = {id = "771", group_id = "7", random_type = 2, item_type = 3, item_id = "15044", count_lower = 5, count_upper = 5, weight = 1160},--喵喵守卫
	["772"] = {id = "772", group_id = "7", random_type = 2, item_type = 3, item_id = "15094", count_lower = 5, count_upper = 5, weight = 1160},--左护法
	["773"] = {id = "773", group_id = "7", random_type = 2, item_type = 3, item_id = "15033", count_lower = 5, count_upper = 5, weight = 1160},--暴风步兵
	["774"] = {id = "774", group_id = "7", random_type = 2, item_type = 3, item_id = "15004", count_lower = 5, count_upper = 5, weight = 1160},--小花
	["775"] = {id = "775", group_id = "7", random_type = 2, item_type = 3, item_id = "15035", count_lower = 5, count_upper = 5, weight = 56},--斯巴达
	["776"] = {id = "776", group_id = "7", random_type = 2, item_type = 3, item_id = "15012", count_lower = 5, count_upper = 5, weight = 1160},--力士
	["777"] = {id = "777", group_id = "7", random_type = 2, item_type = 3, item_id = "15002", count_lower = 3, count_upper = 3, weight = 1160},--飞矛手
	["778"] = {id = "778", group_id = "7", random_type = 2, item_type = 3, item_id = "15044", count_lower = 3, count_upper = 3, weight = 1160},--喵喵守卫
	["779"] = {id = "779", group_id = "7", random_type = 2, item_type = 3, item_id = "15094", count_lower = 3, count_upper = 3, weight = 1160},--左护法
	["780"] = {id = "780", group_id = "7", random_type = 2, item_type = 3, item_id = "15033", count_lower = 3, count_upper = 3, weight = 1160},--暴风步兵
	["781"] = {id = "781", group_id = "7", random_type = 2, item_type = 3, item_id = "15004", count_lower = 3, count_upper = 3, weight = 1160},--小花
	["782"] = {id = "782", group_id = "7", random_type = 2, item_type = 3, item_id = "15035", count_lower = 3, count_upper = 3, weight = 56},--斯巴达
	["783"] = {id = "783", group_id = "7", random_type = 2, item_type = 3, item_id = "15012", count_lower = 3, count_upper = 3, weight = 1160},--力士
	["784"] = {id = "784", group_id = "7", random_type = 2, item_type = 3, item_id = "15002", count_lower = 2, count_upper = 2, weight = 1160},--飞矛手
	["785"] = {id = "785", group_id = "7", random_type = 2, item_type = 3, item_id = "15044", count_lower = 2, count_upper = 2, weight = 1160},--喵喵守卫
	["786"] = {id = "786", group_id = "7", random_type = 2, item_type = 3, item_id = "15094", count_lower = 2, count_upper = 2, weight = 1160},--左护法
	["787"] = {id = "787", group_id = "7", random_type = 2, item_type = 3, item_id = "15033", count_lower = 2, count_upper = 2, weight = 1160},--暴风步兵
	["788"] = {id = "788", group_id = "7", random_type = 2, item_type = 3, item_id = "15004", count_lower = 2, count_upper = 2, weight = 1160},--小花
	["789"] = {id = "789", group_id = "7", random_type = 2, item_type = 3, item_id = "15035", count_lower = 2, count_upper = 2, weight = 56},--斯巴达
	["790"] = {id = "790", group_id = "7", random_type = 2, item_type = 3, item_id = "15012", count_lower = 2, count_upper = 2, weight = 1160},--力士
	["791"] = {id = "791", group_id = "7", random_type = 2, item_type = 3, item_id = "15002", count_lower = 1, count_upper = 1, weight = 1160},--飞矛手
	["792"] = {id = "792", group_id = "7", random_type = 2, item_type = 3, item_id = "15044", count_lower = 1, count_upper = 1, weight = 1160},--喵喵守卫
	["793"] = {id = "793", group_id = "7", random_type = 2, item_type = 3, item_id = "15094", count_lower = 1, count_upper = 1, weight = 1160},--左护法
	["794"] = {id = "794", group_id = "7", random_type = 2, item_type = 3, item_id = "15033", count_lower = 1, count_upper = 1, weight = 1160},--暴风步兵
	["795"] = {id = "795", group_id = "7", random_type = 2, item_type = 3, item_id = "15004", count_lower = 1, count_upper = 1, weight = 1160},--小花
	["796"] = {id = "796", group_id = "7", random_type = 2, item_type = 3, item_id = "15035", count_lower = 1, count_upper = 1, weight = 56},--斯巴达
	["797"] = {id = "797", group_id = "7", random_type = 2, item_type = 3, item_id = "15012", count_lower = 1, count_upper = 1, weight = 1160},--力士
	["798"] = {id = "798", group_id = "7", random_type = 2, item_type = 4, item_id = "1162", count_lower = 1, count_upper = 1, weight = 119},--小炮
	["799"] = {id = "799", group_id = "7", random_type = 2, item_type = 4, item_id = "1001", count_lower = 1, count_upper = 1, weight = 28},--骑士
	["800"] = {id = "800", group_id = "7", random_type = 2, item_type = 4, item_id = "1428", count_lower = 1, count_upper = 1, weight = 28},--投棘者
	["801"] = {id = "801", group_id = "7", random_type = 2, item_type = 4, item_id = "1206", count_lower = 1, count_upper = 1, weight = 119},--牛头酋长
	["802"] = {id = "802", group_id = "7", random_type = 2, item_type = 4, item_id = "1373", count_lower = 1, count_upper = 1, weight = 119},--泰兰
	["803"] = {id = "803", group_id = "7", random_type = 2, item_type = 4, item_id = "1217", count_lower = 1, count_upper = 1, weight = 119},--卡亚
	["804"] = {id = "804", group_id = "7", random_type = 2, item_type = 3, item_id = "15017", count_lower = 5, count_upper = 5, weight = 239},--小炮
	["805"] = {id = "805", group_id = "7", random_type = 2, item_type = 3, item_id = "15000", count_lower = 5, count_upper = 5, weight = 56},--骑士
	["806"] = {id = "806", group_id = "7", random_type = 2, item_type = 3, item_id = "15052", count_lower = 5, count_upper = 5, weight = 56},--投棘者
	["807"] = {id = "807", group_id = "7", random_type = 2, item_type = 3, item_id = "15021", count_lower = 5, count_upper = 5, weight = 239},--牛头酋长
	["808"] = {id = "808", group_id = "7", random_type = 2, item_type = 3, item_id = "15042", count_lower = 5, count_upper = 5, weight = 239},--泰兰
	["809"] = {id = "809", group_id = "7", random_type = 2, item_type = 3, item_id = "15022", count_lower = 5, count_upper = 5, weight = 239},--卡亚
	["810"] = {id = "810", group_id = "7", random_type = 2, item_type = 3, item_id = "15017", count_lower = 3, count_upper = 3, weight = 239},--小炮
	["811"] = {id = "811", group_id = "7", random_type = 2, item_type = 3, item_id = "15000", count_lower = 3, count_upper = 3, weight = 56},--骑士
	["812"] = {id = "812", group_id = "7", random_type = 2, item_type = 3, item_id = "15052", count_lower = 3, count_upper = 3, weight = 56},--投棘者
	["813"] = {id = "813", group_id = "7", random_type = 2, item_type = 3, item_id = "15021", count_lower = 3, count_upper = 3, weight = 239},--牛头酋长
	["814"] = {id = "814", group_id = "7", random_type = 2, item_type = 3, item_id = "15042", count_lower = 3, count_upper = 3, weight = 239},--泰兰
	["815"] = {id = "815", group_id = "7", random_type = 2, item_type = 3, item_id = "15022", count_lower = 3, count_upper = 3, weight = 239},--卡亚
	["816"] = {id = "816", group_id = "7", random_type = 2, item_type = 3, item_id = "15017", count_lower = 2, count_upper = 2, weight = 239},--小炮
	["817"] = {id = "817", group_id = "7", random_type = 2, item_type = 3, item_id = "15000", count_lower = 2, count_upper = 2, weight = 56},--骑士
	["818"] = {id = "818", group_id = "7", random_type = 2, item_type = 3, item_id = "15052", count_lower = 2, count_upper = 2, weight = 56},--投棘者
	["819"] = {id = "819", group_id = "7", random_type = 2, item_type = 3, item_id = "15021", count_lower = 2, count_upper = 2, weight = 239},--牛头酋长
	["820"] = {id = "820", group_id = "7", random_type = 2, item_type = 3, item_id = "15042", count_lower = 2, count_upper = 2, weight = 239},--泰兰
	["821"] = {id = "821", group_id = "7", random_type = 2, item_type = 3, item_id = "15022", count_lower = 2, count_upper = 2, weight = 239},--卡亚
	["822"] = {id = "822", group_id = "7", random_type = 2, item_type = 3, item_id = "15017", count_lower = 1, count_upper = 1, weight = 239},--小炮
	["823"] = {id = "823", group_id = "7", random_type = 2, item_type = 3, item_id = "15000", count_lower = 1, count_upper = 1, weight = 56},--骑士
	["824"] = {id = "824", group_id = "7", random_type = 2, item_type = 3, item_id = "15052", count_lower = 1, count_upper = 1, weight = 56},--投棘者
	["825"] = {id = "825", group_id = "7", random_type = 2, item_type = 3, item_id = "15021", count_lower = 1, count_upper = 1, weight = 239},--牛头酋长
	["826"] = {id = "826", group_id = "7", random_type = 2, item_type = 3, item_id = "15042", count_lower = 1, count_upper = 1, weight = 239},--泰兰
	["827"] = {id = "827", group_id = "7", random_type = 2, item_type = 3, item_id = "15022", count_lower = 1, count_upper = 1, weight = 239},--卡亚
	["828"] = {id = "828", group_id = "7", random_type = 2, item_type = 4, item_id = "1173", count_lower = 1, count_upper = 1, weight = 580},--铠甲熊
	["829"] = {id = "829", group_id = "7", random_type = 2, item_type = 4, item_id = "1484", count_lower = 1, count_upper = 1, weight = 580},--右护法
	["830"] = {id = "830", group_id = "7", random_type = 2, item_type = 4, item_id = "1417", count_lower = 1, count_upper = 1, weight = 119},--小鹿
	["831"] = {id = "831", group_id = "7", random_type = 2, item_type = 4, item_id = "1250", count_lower = 1, count_upper = 1, weight = 119},--鹰身人
	["832"] = {id = "832", group_id = "7", random_type = 2, item_type = 4, item_id = "1151", count_lower = 1, count_upper = 1, weight = 119},--飞斧泰坦
	["833"] = {id = "833", group_id = "7", random_type = 2, item_type = 4, item_id = "1351", count_lower = 1, count_upper = 1, weight = 28},--守护泰坦
	["834"] = {id = "834", group_id = "7", random_type = 2, item_type = 4, item_id = "1195", count_lower = 1, count_upper = 1, weight = 119},--小恩
	["835"] = {id = "835", group_id = "7", random_type = 2, item_type = 4, item_id = "1561", count_lower = 1, count_upper = 1, weight = 28},--祖母
	["836"] = {id = "836", group_id = "7", random_type = 2, item_type = 3, item_id = "15018", count_lower = 5, count_upper = 5, weight = 1160},--铠甲熊
	["837"] = {id = "837", group_id = "7", random_type = 2, item_type = 3, item_id = "15095", count_lower = 5, count_upper = 5, weight = 1160},--右护法
	["838"] = {id = "838", group_id = "7", random_type = 2, item_type = 3, item_id = "15046", count_lower = 5, count_upper = 5, weight = 239},--小鹿
	["839"] = {id = "839", group_id = "7", random_type = 2, item_type = 3, item_id = "15034", count_lower = 5, count_upper = 5, weight = 239},--鹰身人
	["840"] = {id = "840", group_id = "7", random_type = 2, item_type = 3, item_id = "15016", count_lower = 5, count_upper = 5, weight = 239},--飞斧泰坦
	["841"] = {id = "841", group_id = "7", random_type = 2, item_type = 3, item_id = "15041", count_lower = 5, count_upper = 5, weight = 56},--守护泰坦
	["842"] = {id = "842", group_id = "7", random_type = 2, item_type = 3, item_id = "15020", count_lower = 5, count_upper = 5, weight = 239},--小恩
	["843"] = {id = "843", group_id = "7", random_type = 2, item_type = 3, item_id = "15102", count_lower = 5, count_upper = 5, weight = 56},--祖母
	["844"] = {id = "844", group_id = "7", random_type = 2, item_type = 3, item_id = "15018", count_lower = 3, count_upper = 3, weight = 1160},--铠甲熊
	["845"] = {id = "845", group_id = "7", random_type = 2, item_type = 3, item_id = "15095", count_lower = 3, count_upper = 3, weight = 1160},--右护法
	["846"] = {id = "846", group_id = "7", random_type = 2, item_type = 3, item_id = "15046", count_lower = 3, count_upper = 3, weight = 239},--小鹿
	["847"] = {id = "847", group_id = "7", random_type = 2, item_type = 3, item_id = "15034", count_lower = 3, count_upper = 3, weight = 239},--鹰身人
	["848"] = {id = "848", group_id = "7", random_type = 2, item_type = 3, item_id = "15016", count_lower = 3, count_upper = 3, weight = 239},--飞斧泰坦
	["849"] = {id = "849", group_id = "7", random_type = 2, item_type = 3, item_id = "15041", count_lower = 3, count_upper = 3, weight = 56},--守护泰坦
	["850"] = {id = "850", group_id = "7", random_type = 2, item_type = 3, item_id = "15020", count_lower = 3, count_upper = 3, weight = 239},--小恩
	["851"] = {id = "851", group_id = "7", random_type = 2, item_type = 3, item_id = "15102", count_lower = 3, count_upper = 3, weight = 56},--祖母
	["852"] = {id = "852", group_id = "7", random_type = 2, item_type = 3, item_id = "15018", count_lower = 2, count_upper = 2, weight = 1160},--铠甲熊
	["853"] = {id = "853", group_id = "7", random_type = 2, item_type = 3, item_id = "15095", count_lower = 2, count_upper = 2, weight = 1160},--右护法
	["854"] = {id = "854", group_id = "7", random_type = 2, item_type = 3, item_id = "15046", count_lower = 2, count_upper = 2, weight = 239},--小鹿
	["855"] = {id = "855", group_id = "7", random_type = 2, item_type = 3, item_id = "15034", count_lower = 2, count_upper = 2, weight = 239},--鹰身人
	["856"] = {id = "856", group_id = "7", random_type = 2, item_type = 3, item_id = "15016", count_lower = 2, count_upper = 2, weight = 239},--飞斧泰坦
	["857"] = {id = "857", group_id = "7", random_type = 2, item_type = 3, item_id = "15041", count_lower = 2, count_upper = 2, weight = 56},--守护泰坦
	["858"] = {id = "858", group_id = "7", random_type = 2, item_type = 3, item_id = "15020", count_lower = 2, count_upper = 2, weight = 239},--小恩
	["859"] = {id = "859", group_id = "7", random_type = 2, item_type = 3, item_id = "15102", count_lower = 2, count_upper = 2, weight = 56},--祖母
	["860"] = {id = "860", group_id = "7", random_type = 2, item_type = 3, item_id = "15018", count_lower = 1, count_upper = 1, weight = 1160},--铠甲熊
	["861"] = {id = "861", group_id = "7", random_type = 2, item_type = 3, item_id = "15095", count_lower = 1, count_upper = 1, weight = 1160},--右护法
	["862"] = {id = "862", group_id = "7", random_type = 2, item_type = 3, item_id = "15046", count_lower = 1, count_upper = 1, weight = 239},--小鹿
	["863"] = {id = "863", group_id = "7", random_type = 2, item_type = 3, item_id = "15034", count_lower = 1, count_upper = 1, weight = 239},--鹰身人
	["864"] = {id = "864", group_id = "7", random_type = 2, item_type = 3, item_id = "15016", count_lower = 1, count_upper = 1, weight = 239},--飞斧泰坦
	["865"] = {id = "865", group_id = "7", random_type = 2, item_type = 3, item_id = "15041", count_lower = 1, count_upper = 1, weight = 56},--守护泰坦
	["866"] = {id = "866", group_id = "7", random_type = 2, item_type = 3, item_id = "15020", count_lower = 1, count_upper = 1, weight = 239},--小恩
	["867"] = {id = "867", group_id = "7", random_type = 2, item_type = 3, item_id = "15102", count_lower = 1, count_upper = 1, weight = 56},--祖母
	["868"] = {id = "868", group_id = "7", random_type = 2, item_type = 4, item_id = "1406", count_lower = 1, count_upper = 1, weight = 580},--粉红女巫
	["869"] = {id = "869", group_id = "7", random_type = 2, item_type = 4, item_id = "1034", count_lower = 1, count_upper = 1, weight = 580},--雪人
	["870"] = {id = "870", group_id = "7", random_type = 2, item_type = 4, item_id = "1078", count_lower = 1, count_upper = 1, weight = 119},--忍者
	["871"] = {id = "871", group_id = "7", random_type = 2, item_type = 4, item_id = "1539", count_lower = 1, count_upper = 1, weight = 119},--魅魔
	["872"] = {id = "872", group_id = "7", random_type = 2, item_type = 4, item_id = "1439", count_lower = 1, count_upper = 1, weight = 28},--宝石法师
	["873"] = {id = "873", group_id = "7", random_type = 2, item_type = 4, item_id = "1384", count_lower = 1, count_upper = 1, weight = 119},--喵夫人
	["874"] = {id = "874", group_id = "7", random_type = 2, item_type = 4, item_id = "1228", count_lower = 1, count_upper = 1, weight = 28},--白幽灵
	["875"] = {id = "875", group_id = "7", random_type = 2, item_type = 3, item_id = "15045", count_lower = 5, count_upper = 5, weight = 1160},--粉红女巫
	["876"] = {id = "876", group_id = "7", random_type = 2, item_type = 3, item_id = "15003", count_lower = 5, count_upper = 5, weight = 1160},--雪人
	["877"] = {id = "877", group_id = "7", random_type = 2, item_type = 3, item_id = "15007", count_lower = 5, count_upper = 5, weight = 239},--忍者
	["878"] = {id = "878", group_id = "7", random_type = 2, item_type = 3, item_id = "15100", count_lower = 5, count_upper = 5, weight = 239},--魅魔
	["879"] = {id = "879", group_id = "7", random_type = 2, item_type = 3, item_id = "15053", count_lower = 5, count_upper = 5, weight = 56},--宝石法师
	["880"] = {id = "880", group_id = "7", random_type = 2, item_type = 3, item_id = "15043", count_lower = 5, count_upper = 5, weight = 239},--喵夫人
	["881"] = {id = "881", group_id = "7", random_type = 2, item_type = 3, item_id = "15023", count_lower = 5, count_upper = 5, weight = 56},--白幽灵
	["882"] = {id = "882", group_id = "7", random_type = 2, item_type = 3, item_id = "15045", count_lower = 3, count_upper = 3, weight = 1160},--粉红女巫
	["883"] = {id = "883", group_id = "7", random_type = 2, item_type = 3, item_id = "15003", count_lower = 3, count_upper = 3, weight = 1160},--雪人
	["884"] = {id = "884", group_id = "7", random_type = 2, item_type = 3, item_id = "15007", count_lower = 3, count_upper = 3, weight = 239},--忍者
	["885"] = {id = "885", group_id = "7", random_type = 2, item_type = 3, item_id = "15100", count_lower = 3, count_upper = 3, weight = 239},--魅魔
	["886"] = {id = "886", group_id = "7", random_type = 2, item_type = 3, item_id = "15053", count_lower = 3, count_upper = 3, weight = 56},--宝石法师
	["887"] = {id = "887", group_id = "7", random_type = 2, item_type = 3, item_id = "15043", count_lower = 3, count_upper = 3, weight = 239},--喵夫人
	["888"] = {id = "888", group_id = "7", random_type = 2, item_type = 3, item_id = "15023", count_lower = 3, count_upper = 3, weight = 56},--白幽灵
	["889"] = {id = "889", group_id = "7", random_type = 2, item_type = 3, item_id = "15045", count_lower = 2, count_upper = 2, weight = 1160},--粉红女巫
	["890"] = {id = "890", group_id = "7", random_type = 2, item_type = 3, item_id = "15003", count_lower = 2, count_upper = 2, weight = 1160},--雪人
	["891"] = {id = "891", group_id = "7", random_type = 2, item_type = 3, item_id = "15007", count_lower = 2, count_upper = 2, weight = 239},--忍者
	["892"] = {id = "892", group_id = "7", random_type = 2, item_type = 3, item_id = "15100", count_lower = 2, count_upper = 2, weight = 239},--魅魔
	["893"] = {id = "893", group_id = "7", random_type = 2, item_type = 3, item_id = "15053", count_lower = 2, count_upper = 2, weight = 56},--宝石法师
	["894"] = {id = "894", group_id = "7", random_type = 2, item_type = 3, item_id = "15043", count_lower = 2, count_upper = 2, weight = 239},--喵夫人
	["895"] = {id = "895", group_id = "7", random_type = 2, item_type = 3, item_id = "15023", count_lower = 2, count_upper = 2, weight = 56},--白幽灵
	["896"] = {id = "896", group_id = "7", random_type = 2, item_type = 3, item_id = "15045", count_lower = 1, count_upper = 1, weight = 1160},--粉红女巫
	["897"] = {id = "897", group_id = "7", random_type = 2, item_type = 3, item_id = "15003", count_lower = 1, count_upper = 1, weight = 1160},--雪人
	["898"] = {id = "898", group_id = "7", random_type = 2, item_type = 3, item_id = "15007", count_lower = 1, count_upper = 1, weight = 239},--忍者
	["899"] = {id = "899", group_id = "7", random_type = 2, item_type = 3, item_id = "15100", count_lower = 1, count_upper = 1, weight = 239},--魅魔
	["900"] = {id = "900", group_id = "7", random_type = 2, item_type = 3, item_id = "15053", count_lower = 1, count_upper = 1, weight = 56},--宝石法师
	["901"] = {id = "901", group_id = "7", random_type = 2, item_type = 3, item_id = "15043", count_lower = 1, count_upper = 1, weight = 239},--喵夫人
	["902"] = {id = "902", group_id = "7", random_type = 2, item_type = 3, item_id = "15023", count_lower = 1, count_upper = 1, weight = 56},--白幽灵
	["903"] = {id = "903", group_id = "7", random_type = 2, item_type = 4, item_id = "1056", count_lower = 1, count_upper = 1, weight = 1160},--空投者
	["904"] = {id = "904", group_id = "7", random_type = 2, item_type = 4, item_id = "1067", count_lower = 1, count_upper = 1, weight = 1160},--小树妖
	["905"] = {id = "905", group_id = "7", random_type = 2, item_type = 4, item_id = "1450", count_lower = 1, count_upper = 1, weight = 239},--蓝电法师
	["906"] = {id = "906", group_id = "7", random_type = 2, item_type = 4, item_id = "1272", count_lower = 1, count_upper = 1, weight = 239},--樱花武士
	["907"] = {id = "907", group_id = "7", random_type = 2, item_type = 4, item_id = "1340", count_lower = 1, count_upper = 1, weight = 56},--古尔丹
	["908"] = {id = "908", group_id = "7", random_type = 2, item_type = 4, item_id = "1105", count_lower = 1, count_upper = 1, weight = 239},--风暴女
	["909"] = {id = "909", group_id = "7", random_type = 2, item_type = 4, item_id = "1089", count_lower = 1, count_upper = 1, weight = 239},--阴阳师
	["910"] = {id = "910", group_id = "7", random_type = 2, item_type = 4, item_id = "1294", count_lower = 1, count_upper = 1, weight = 56},--黑岩
	["911"] = {id = "911", group_id = "7", random_type = 2, item_type = 3, item_id = "15005", count_lower = 5, count_upper = 5, weight = 1160},--空投者
	["912"] = {id = "912", group_id = "7", random_type = 2, item_type = 3, item_id = "15006", count_lower = 5, count_upper = 5, weight = 1160},--小树妖
	["913"] = {id = "913", group_id = "7", random_type = 2, item_type = 3, item_id = "15054", count_lower = 5, count_upper = 5, weight = 239},--蓝电法师
	["914"] = {id = "914", group_id = "7", random_type = 2, item_type = 3, item_id = "15036", count_lower = 5, count_upper = 5, weight = 239},--樱花武士
	["915"] = {id = "915", group_id = "7", random_type = 2, item_type = 3, item_id = "15040", count_lower = 5, count_upper = 5, weight = 56},--古尔丹
	["916"] = {id = "916", group_id = "7", random_type = 2, item_type = 3, item_id = "15010", count_lower = 5, count_upper = 5, weight = 239},--风暴女
	["917"] = {id = "917", group_id = "7", random_type = 2, item_type = 3, item_id = "15008", count_lower = 5, count_upper = 5, weight = 239},--阴阳师
	["918"] = {id = "918", group_id = "7", random_type = 2, item_type = 3, item_id = "15037", count_lower = 5, count_upper = 5, weight = 56},--黑岩
	["919"] = {id = "919", group_id = "7", random_type = 2, item_type = 3, item_id = "15005", count_lower = 3, count_upper = 3, weight = 1160},--空投者
	["920"] = {id = "920", group_id = "7", random_type = 2, item_type = 3, item_id = "15006", count_lower = 3, count_upper = 3, weight = 1160},--小树妖
	["921"] = {id = "921", group_id = "7", random_type = 2, item_type = 3, item_id = "15054", count_lower = 3, count_upper = 3, weight = 239},--蓝电法师
	["922"] = {id = "922", group_id = "7", random_type = 2, item_type = 3, item_id = "15036", count_lower = 3, count_upper = 3, weight = 239},--樱花武士
	["923"] = {id = "923", group_id = "7", random_type = 2, item_type = 3, item_id = "15040", count_lower = 3, count_upper = 3, weight = 56},--古尔丹
	["924"] = {id = "924", group_id = "7", random_type = 2, item_type = 3, item_id = "15010", count_lower = 3, count_upper = 3, weight = 239},--风暴女
	["925"] = {id = "925", group_id = "7", random_type = 2, item_type = 3, item_id = "15008", count_lower = 3, count_upper = 3, weight = 239},--阴阳师
	["926"] = {id = "926", group_id = "7", random_type = 2, item_type = 3, item_id = "15037", count_lower = 3, count_upper = 3, weight = 56},--黑岩
	["927"] = {id = "927", group_id = "7", random_type = 2, item_type = 3, item_id = "15005", count_lower = 2, count_upper = 2, weight = 1160},--空投者
	["928"] = {id = "928", group_id = "7", random_type = 2, item_type = 3, item_id = "15006", count_lower = 2, count_upper = 2, weight = 1160},--小树妖
	["929"] = {id = "929", group_id = "7", random_type = 2, item_type = 3, item_id = "15054", count_lower = 2, count_upper = 2, weight = 239},--蓝电法师
	["930"] = {id = "930", group_id = "7", random_type = 2, item_type = 3, item_id = "15036", count_lower = 2, count_upper = 2, weight = 239},--樱花武士
	["931"] = {id = "931", group_id = "7", random_type = 2, item_type = 3, item_id = "15040", count_lower = 2, count_upper = 2, weight = 56},--古尔丹
	["932"] = {id = "932", group_id = "7", random_type = 2, item_type = 3, item_id = "15010", count_lower = 2, count_upper = 2, weight = 239},--风暴女
	["933"] = {id = "933", group_id = "7", random_type = 2, item_type = 3, item_id = "15008", count_lower = 2, count_upper = 2, weight = 239},--阴阳师
	["934"] = {id = "934", group_id = "7", random_type = 2, item_type = 3, item_id = "15037", count_lower = 2, count_upper = 2, weight = 56},--黑岩
	["935"] = {id = "935", group_id = "7", random_type = 2, item_type = 3, item_id = "15005", count_lower = 1, count_upper = 1, weight = 1160},--空投者
	["936"] = {id = "936", group_id = "7", random_type = 2, item_type = 3, item_id = "15006", count_lower = 1, count_upper = 1, weight = 1160},--小树妖
	["937"] = {id = "937", group_id = "7", random_type = 2, item_type = 3, item_id = "15054", count_lower = 1, count_upper = 1, weight = 239},--蓝电法师
	["938"] = {id = "938", group_id = "7", random_type = 2, item_type = 3, item_id = "15036", count_lower = 1, count_upper = 1, weight = 239},--樱花武士
	["939"] = {id = "939", group_id = "7", random_type = 2, item_type = 3, item_id = "15040", count_lower = 1, count_upper = 1, weight = 56},--古尔丹
	["940"] = {id = "940", group_id = "7", random_type = 2, item_type = 3, item_id = "15010", count_lower = 1, count_upper = 1, weight = 239},--风暴女
	["941"] = {id = "941", group_id = "7", random_type = 2, item_type = 3, item_id = "15008", count_lower = 1, count_upper = 1, weight = 239},--阴阳师
	["942"] = {id = "942", group_id = "7", random_type = 2, item_type = 3, item_id = "15037", count_lower = 1, count_upper = 1, weight = 56},--黑岩
	["943"] = {id = "943", group_id = "7", random_type = 2, item_type = 4, item_id = "1012", count_lower = 1, count_upper = 1, weight = 60},--酒桶
	["944"] = {id = "944", group_id = "7", random_type = 2, item_type = 4, item_id = "1305", count_lower = 1, count_upper = 1, weight = 60},--大嘴
	["945"] = {id = "945", group_id = "7", random_type = 2, item_type = 4, item_id = "1184", count_lower = 1, count_upper = 1, weight = 14},--狂暴巨人
	["946"] = {id = "946", group_id = "7", random_type = 2, item_type = 4, item_id = "1550", count_lower = 1, count_upper = 1, weight = 60},--死神
	["947"] = {id = "947", group_id = "7", random_type = 2, item_type = 4, item_id = "1327", count_lower = 1, count_upper = 1, weight = 14},--刚刀
	["948"] = {id = "948", group_id = "7", random_type = 2, item_type = 3, item_id = "15001", count_lower = 5, count_upper = 5, weight = 119},--酒桶
	["949"] = {id = "949", group_id = "7", random_type = 2, item_type = 3, item_id = "15038", count_lower = 5, count_upper = 5, weight = 119},--大嘴
	["950"] = {id = "950", group_id = "7", random_type = 2, item_type = 3, item_id = "15019", count_lower = 5, count_upper = 5, weight = 28},--狂暴巨人
	["951"] = {id = "951", group_id = "7", random_type = 2, item_type = 3, item_id = "15101", count_lower = 5, count_upper = 5, weight = 119},--死神
	["952"] = {id = "952", group_id = "7", random_type = 2, item_type = 3, item_id = "15039", count_lower = 5, count_upper = 5, weight = 28},--刚刀
	["953"] = {id = "953", group_id = "7", random_type = 2, item_type = 3, item_id = "15001", count_lower = 3, count_upper = 3, weight = 239},--酒桶
	["954"] = {id = "954", group_id = "7", random_type = 2, item_type = 3, item_id = "15038", count_lower = 3, count_upper = 3, weight = 239},--大嘴
	["955"] = {id = "955", group_id = "7", random_type = 2, item_type = 3, item_id = "15019", count_lower = 3, count_upper = 3, weight = 56},--狂暴巨人
	["956"] = {id = "956", group_id = "7", random_type = 2, item_type = 3, item_id = "15101", count_lower = 3, count_upper = 3, weight = 239},--死神
	["957"] = {id = "957", group_id = "7", random_type = 2, item_type = 3, item_id = "15039", count_lower = 3, count_upper = 3, weight = 56},--刚刀
	["958"] = {id = "958", group_id = "7", random_type = 2, item_type = 3, item_id = "15001", count_lower = 2, count_upper = 2, weight = 239},--酒桶
	["959"] = {id = "959", group_id = "7", random_type = 2, item_type = 3, item_id = "15038", count_lower = 2, count_upper = 2, weight = 239},--大嘴
	["960"] = {id = "960", group_id = "7", random_type = 2, item_type = 3, item_id = "15019", count_lower = 2, count_upper = 2, weight = 56},--狂暴巨人
	["961"] = {id = "961", group_id = "7", random_type = 2, item_type = 3, item_id = "15101", count_lower = 2, count_upper = 2, weight = 239},--死神
	["962"] = {id = "962", group_id = "7", random_type = 2, item_type = 3, item_id = "15039", count_lower = 2, count_upper = 2, weight = 56},--刚刀
	["963"] = {id = "963", group_id = "7", random_type = 2, item_type = 3, item_id = "15001", count_lower = 1, count_upper = 1, weight = 239},--酒桶
	["964"] = {id = "964", group_id = "7", random_type = 2, item_type = 3, item_id = "15038", count_lower = 1, count_upper = 1, weight = 239},--大嘴
	["965"] = {id = "965", group_id = "7", random_type = 2, item_type = 3, item_id = "15019", count_lower = 1, count_upper = 1, weight = 56},--狂暴巨人
	["966"] = {id = "966", group_id = "7", random_type = 2, item_type = 3, item_id = "15101", count_lower = 1, count_upper = 1, weight = 239},--死神
	["967"] = {id = "967", group_id = "7", random_type = 2, item_type = 3, item_id = "15039", count_lower = 1, count_upper = 1, weight = 56},--刚刀
	["968"] = {id = "968", group_id = "7", random_type = 2, item_type = 3, item_id = "15093", count_lower = 1, count_upper = 3, weight = 10},--炎魔
	["969"] = {id = "969", group_id = "7", random_type = 2, item_type = 3, item_id = "15103", count_lower = 10, count_upper = 20, weight = 580},--主角碎片
	["970"] = {id = "970", group_id = "7", random_type = 2, item_type = 3, item_id = "15103", count_lower = 5, count_upper = 10, weight = 1160},--主角碎片
	["971"] = {id = "971", group_id = "7", random_type = 2, item_type = 3, item_id = "15103", count_lower = 3, count_upper = 6, weight = 1160},--主角碎片
	["972"] = {id = "972", group_id = "7", random_type = 2, item_type = 3, item_id = "15103", count_lower = 2, count_upper = 4, weight = 1160},--主角碎片
	["973"] = {id = "973", group_id = "7", random_type = 2, item_type = 3, item_id = "15103", count_lower = 1, count_upper = 2, weight = 1160},--主角碎片
	["974"] = {id = "974", group_id = "7", random_type = 2, item_type = 2, item_id = "1000", count_lower = 572, count_upper = 3243, weight = 14153},--金币
	["975"] = {id = "975", group_id = "8", random_type = 1, item_type = 2, item_id = "1000", count_lower = 100, count_upper = 300, weight = 10000},--1阶固定金币
	["976"] = {id = "976", group_id = "9", random_type = 1, item_type = 2, item_id = "1000", count_lower = 125, count_upper = 375, weight = 10000},--2阶固定金币
	["977"] = {id = "977", group_id = "10", random_type = 1, item_type = 2, item_id = "1000", count_lower = 156, count_upper = 468, weight = 10000},--3阶固定金币
	["978"] = {id = "978", group_id = "11", random_type = 1, item_type = 2, item_id = "1000", count_lower = 195, count_upper = 585, weight = 10000},--4阶固定金币
	["979"] = {id = "979", group_id = "12", random_type = 1, item_type = 2, item_id = "1000", count_lower = 244, count_upper = 732, weight = 10000},--5阶固定金币
	["980"] = {id = "980", group_id = "13", random_type = 1, item_type = 2, item_id = "1000", count_lower = 305, count_upper = 915, weight = 10000},--6阶固定金币
	["981"] = {id = "981", group_id = "14", random_type = 1, item_type = 2, item_id = "1000", count_lower = 381, count_upper = 1143, weight = 10000},--7阶固定金币
	["982"] = {id = "982", group_id = "15", random_type = 1, item_type = 3, item_id = "15103", count_lower = 1110, count_upper = 1110, weight = 10000},--GM_主角碎片
	["983"] = {id = "983", group_id = "15", random_type = 1, item_type = 3, item_id = "15002", count_lower = 1110, count_upper = 1110, weight = 10000},--GM_飞矛手
	["984"] = {id = "984", group_id = "15", random_type = 1, item_type = 3, item_id = "15044", count_lower = 1110, count_upper = 1110, weight = 10000},--GM_喵喵守卫
	["985"] = {id = "985", group_id = "15", random_type = 1, item_type = 3, item_id = "15094", count_lower = 1110, count_upper = 1110, weight = 10000},--GM_左护法
	["986"] = {id = "986", group_id = "15", random_type = 1, item_type = 3, item_id = "15033", count_lower = 1110, count_upper = 1110, weight = 10000},--GM_暴风步兵
	["987"] = {id = "987", group_id = "15", random_type = 1, item_type = 3, item_id = "15004", count_lower = 410, count_upper = 410, weight = 10000},--GM_小花
	["988"] = {id = "988", group_id = "15", random_type = 1, item_type = 3, item_id = "15035", count_lower = 110, count_upper = 110, weight = 10000},--GM_斯巴达
	["989"] = {id = "989", group_id = "15", random_type = 1, item_type = 3, item_id = "15000", count_lower = 110, count_upper = 110, weight = 10000},--GM_骑士
	["990"] = {id = "990", group_id = "15", random_type = 1, item_type = 3, item_id = "15012", count_lower = 1110, count_upper = 1110, weight = 10000},--GM_力士
	["991"] = {id = "991", group_id = "15", random_type = 1, item_type = 3, item_id = "15017", count_lower = 410, count_upper = 410, weight = 10000},--GM_小炮炮
	["992"] = {id = "992", group_id = "15", random_type = 1, item_type = 3, item_id = "15052", count_lower = 110, count_upper = 110, weight = 10000},--GM_投荆者
	["993"] = {id = "993", group_id = "15", random_type = 1, item_type = 3, item_id = "15021", count_lower = 110, count_upper = 110, weight = 10000},--GM_牛头酋长
	["994"] = {id = "994", group_id = "15", random_type = 1, item_type = 3, item_id = "15042", count_lower = 110, count_upper = 110, weight = 10000},--GM_泰兰
	["995"] = {id = "995", group_id = "15", random_type = 1, item_type = 3, item_id = "15022", count_lower = 110, count_upper = 110, weight = 10000},--GM_卡亚
	["996"] = {id = "996", group_id = "15", random_type = 1, item_type = 3, item_id = "15018", count_lower = 1110, count_upper = 1110, weight = 10000},--GM_铠甲熊
	["997"] = {id = "997", group_id = "15", random_type = 1, item_type = 3, item_id = "15046", count_lower = 410, count_upper = 410, weight = 10000},--GM_小鹿
	["998"] = {id = "998", group_id = "15", random_type = 1, item_type = 3, item_id = "15095", count_lower = 1110, count_upper = 1110, weight = 10000},--GM_右护法
	["999"] = {id = "999", group_id = "15", random_type = 1, item_type = 3, item_id = "15034", count_lower = 410, count_upper = 410, weight = 10000},--GM_鹰身人
	["1000"] = {id = "1000", group_id = "15", random_type = 1, item_type = 3, item_id = "15016", count_lower = 410, count_upper = 410, weight = 10000},--GM_飞斧泰坦
	["1001"] = {id = "1001", group_id = "15", random_type = 1, item_type = 3, item_id = "15041", count_lower = 110, count_upper = 110, weight = 10000},--GM_守护泰坦
	["1002"] = {id = "1002", group_id = "15", random_type = 1, item_type = 3, item_id = "15020", count_lower = 410, count_upper = 410, weight = 10000},--GM_小恩
	["1003"] = {id = "1003", group_id = "15", random_type = 1, item_type = 3, item_id = "15102", count_lower = 410, count_upper = 410, weight = 10000},--GM_祖母
	["1004"] = {id = "1004", group_id = "15", random_type = 1, item_type = 3, item_id = "15007", count_lower = 110, count_upper = 110, weight = 10000},--GM_忍者
	["1005"] = {id = "1005", group_id = "15", random_type = 1, item_type = 3, item_id = "15045", count_lower = 1110, count_upper = 1110, weight = 10000},--GM_粉红女巫
	["1006"] = {id = "1006", group_id = "15", random_type = 1, item_type = 3, item_id = "15003", count_lower = 1110, count_upper = 1110, weight = 10000},--GM_雪人
	["1007"] = {id = "1007", group_id = "15", random_type = 1, item_type = 3, item_id = "15100", count_lower = 410, count_upper = 410, weight = 10000},--GM_魅魔
	["1008"] = {id = "1008", group_id = "15", random_type = 1, item_type = 3, item_id = "15053", count_lower = 110, count_upper = 110, weight = 10000},--GM_宝石法师
	["1009"] = {id = "1009", group_id = "15", random_type = 1, item_type = 3, item_id = "15040", count_lower = 110, count_upper = 110, weight = 10000},--GM_古尔丹
	["1010"] = {id = "1010", group_id = "15", random_type = 1, item_type = 3, item_id = "15043", count_lower = 410, count_upper = 410, weight = 10000},--GM_喵夫人
	["1011"] = {id = "1011", group_id = "15", random_type = 1, item_type = 3, item_id = "15023", count_lower = 110, count_upper = 110, weight = 10000},--GM_白幽灵
	["1012"] = {id = "1012", group_id = "15", random_type = 1, item_type = 3, item_id = "15005", count_lower = 1110, count_upper = 1110, weight = 10000},--GM_空投者
	["1013"] = {id = "1013", group_id = "15", random_type = 1, item_type = 3, item_id = "15006", count_lower = 1110, count_upper = 1110, weight = 10000},--GM_小树妖
	["1014"] = {id = "1014", group_id = "15", random_type = 1, item_type = 3, item_id = "15054", count_lower = 410, count_upper = 410, weight = 10000},--GM_蓝电法师
	["1015"] = {id = "1015", group_id = "15", random_type = 1, item_type = 3, item_id = "15036", count_lower = 410, count_upper = 410, weight = 10000},--GM_樱花武士
	["1016"] = {id = "1016", group_id = "15", random_type = 1, item_type = 3, item_id = "15010", count_lower = 410, count_upper = 410, weight = 10000},--GM_风暴女
	["1017"] = {id = "1017", group_id = "15", random_type = 1, item_type = 3, item_id = "15008", count_lower = 410, count_upper = 410, weight = 10000},--GM_阴阳师
	["1018"] = {id = "1018", group_id = "15", random_type = 1, item_type = 3, item_id = "15015", count_lower = 410, count_upper = 410, weight = 10000},--GM_洛克人
	["1019"] = {id = "1019", group_id = "15", random_type = 1, item_type = 3, item_id = "15037", count_lower = 110, count_upper = 110, weight = 10000},--GM_黑岩
	["1020"] = {id = "1020", group_id = "15", random_type = 1, item_type = 3, item_id = "15001", count_lower = 410, count_upper = 410, weight = 10000},--GM_酒桶
	["1021"] = {id = "1021", group_id = "15", random_type = 1, item_type = 3, item_id = "15038", count_lower = 410, count_upper = 410, weight = 10000},--GM_大嘴巨人
	["1022"] = {id = "1022", group_id = "15", random_type = 1, item_type = 3, item_id = "15019", count_lower = 110, count_upper = 110, weight = 10000},--GM_狂暴巨人
	["1023"] = {id = "1023", group_id = "15", random_type = 1, item_type = 3, item_id = "15093", count_lower = 10, count_upper = 10, weight = 10000},--GM_火焰领主
	["1024"] = {id = "1024", group_id = "15", random_type = 1, item_type = 3, item_id = "15092", count_lower = 110, count_upper = 110, weight = 10000},--GM_崩
	["1025"] = {id = "1025", group_id = "15", random_type = 1, item_type = 3, item_id = "15101", count_lower = 410, count_upper = 410, weight = 10000},--GM_死神
	["1026"] = {id = "1026", group_id = "15", random_type = 1, item_type = 3, item_id = "15039", count_lower = 110, count_upper = 110, weight = 10000},--GM_钢刀
	["1027"] = {id = "1027", group_id = "15", random_type = 1, item_type = 3, item_id = "15028", count_lower = 2000, count_upper = 2000, weight = 10000},--GM_盖亚突破石
	["1028"] = {id = "1028", group_id = "15", random_type = 1, item_type = 3, item_id = "15015", count_lower = 2000, count_upper = 2000, weight = 10000},--GM_英雄突破石
	["1029"] = {id = "1029", group_id = "15", random_type = 1, item_type = 3, item_id = "15029", count_lower = 2000, count_upper = 2000, weight = 10000},--GM_泰坦突破石
	["1030"] = {id = "1030", group_id = "15", random_type = 1, item_type = 3, item_id = "15055", count_lower = 2000, count_upper = 2000, weight = 10000},--GM_中立突破石
	["1031"] = {id = "1031", group_id = "15", random_type = 1, item_type = 3, item_id = "15098", count_lower = 20000, count_upper = 20000, weight = 10000},--GM_蓝晶石
	["1032"] = {id = "1032", group_id = "15", random_type = 1, item_type = 2, item_id = "1000", count_lower = 200000, count_upper = 200000, weight = 10000},--GM_金币
	["1033"] = {id = "1033", group_id = "16", random_type = 2, item_type = 4, item_id = "1023", count_lower = 1, count_upper = 1, weight = 17628},--飞矛手
	["1034"] = {id = "1034", group_id = "16", random_type = 2, item_type = 4, item_id = "1395", count_lower = 1, count_upper = 1, weight = 17628},--喵喵守卫
	["1035"] = {id = "1035", group_id = "16", random_type = 2, item_type = 4, item_id = "1495", count_lower = 1, count_upper = 1, weight = 17628},--左护法
	["1036"] = {id = "1036", group_id = "16", random_type = 2, item_type = 4, item_id = "1239", count_lower = 1, count_upper = 1, weight = 17628},--暴风步兵
	["1037"] = {id = "1037", group_id = "16", random_type = 2, item_type = 4, item_id = "1045", count_lower = 1, count_upper = 1, weight = 3629},--小花
	["1038"] = {id = "1038", group_id = "16", random_type = 2, item_type = 4, item_id = "1261", count_lower = 1, count_upper = 1, weight = 857},--斯巴达
	["1039"] = {id = "1039", group_id = "16", random_type = 2, item_type = 2, item_id = "1000", count_lower = 230, count_upper = 1350, weight = 15000},--金币
	["1040"] = {id = "1040", group_id = "16", random_type = 2, item_type = 3, item_id = "15028", count_lower = 1, count_upper = 15, weight = 2500},--盖亚_突破材料
	["1041"] = {id = "1041", group_id = "16", random_type = 2, item_type = 3, item_id = "15029", count_lower = 1, count_upper = 15, weight = 2500},--泰坦_突破材料
	["1042"] = {id = "1042", group_id = "16", random_type = 2, item_type = 3, item_id = "15051", count_lower = 1, count_upper = 15, weight = 2500},--英雄_突破材料
	["1043"] = {id = "1043", group_id = "16", random_type = 2, item_type = 3, item_id = "15055", count_lower = 1, count_upper = 15, weight = 2500},--中立_突破材料
	["1044"] = {id = "1044", group_id = "17", random_type = 2, item_type = 4, item_id = "1023", count_lower = 1, count_upper = 1, weight = 12145},--飞矛手
	["1045"] = {id = "1045", group_id = "17", random_type = 2, item_type = 4, item_id = "1395", count_lower = 1, count_upper = 1, weight = 12145},--喵喵守卫
	["1046"] = {id = "1046", group_id = "17", random_type = 2, item_type = 4, item_id = "1495", count_lower = 1, count_upper = 1, weight = 12145},--左护法
	["1047"] = {id = "1047", group_id = "17", random_type = 2, item_type = 4, item_id = "1239", count_lower = 1, count_upper = 1, weight = 12145},--暴风步兵
	["1048"] = {id = "1048", group_id = "17", random_type = 2, item_type = 4, item_id = "1045", count_lower = 1, count_upper = 1, weight = 2500},--小花
	["1049"] = {id = "1049", group_id = "17", random_type = 2, item_type = 4, item_id = "1261", count_lower = 1, count_upper = 1, weight = 590},--斯巴达
	["1050"] = {id = "1050", group_id = "17", random_type = 2, item_type = 4, item_id = "1127", count_lower = 1, count_upper = 1, weight = 12145},--力士
	["1051"] = {id = "1051", group_id = "17", random_type = 2, item_type = 4, item_id = "1162", count_lower = 1, count_upper = 1, weight = 2500},--小炮
	["1052"] = {id = "1052", group_id = "17", random_type = 2, item_type = 4, item_id = "1001", count_lower = 1, count_upper = 1, weight = 590},--骑士
	["1053"] = {id = "1053", group_id = "17", random_type = 2, item_type = 4, item_id = "1428", count_lower = 1, count_upper = 1, weight = 590},--投棘者
	["1054"] = {id = "1054", group_id = "17", random_type = 2, item_type = 4, item_id = "1206", count_lower = 1, count_upper = 1, weight = 2500},--牛头酋长
	["1055"] = {id = "1055", group_id = "17", random_type = 2, item_type = 4, item_id = "1373", count_lower = 1, count_upper = 1, weight = 2500},--泰兰
	["1056"] = {id = "1056", group_id = "17", random_type = 2, item_type = 4, item_id = "1217", count_lower = 1, count_upper = 1, weight = 2500},--卡亚
	["1057"] = {id = "1057", group_id = "17", random_type = 2, item_type = 2, item_id = "1000", count_lower = 279, count_upper = 1629, weight = 15000},--金币
	["1058"] = {id = "1058", group_id = "17", random_type = 2, item_type = 3, item_id = "15028", count_lower = 1, count_upper = 15, weight = 2500},--盖亚_突破材料
	["1059"] = {id = "1059", group_id = "17", random_type = 2, item_type = 3, item_id = "15029", count_lower = 1, count_upper = 15, weight = 2500},--泰坦_突破材料
	["1060"] = {id = "1060", group_id = "17", random_type = 2, item_type = 3, item_id = "15051", count_lower = 1, count_upper = 15, weight = 2500},--英雄_突破材料
	["1061"] = {id = "1061", group_id = "17", random_type = 2, item_type = 3, item_id = "15055", count_lower = 1, count_upper = 15, weight = 2500},--中立_突破材料
	["1062"] = {id = "1062", group_id = "18", random_type = 2, item_type = 4, item_id = "1023", count_lower = 1, count_upper = 1, weight = 8245},--飞矛手
	["1063"] = {id = "1063", group_id = "18", random_type = 2, item_type = 4, item_id = "1395", count_lower = 1, count_upper = 1, weight = 8245},--喵喵守卫
	["1064"] = {id = "1064", group_id = "18", random_type = 2, item_type = 4, item_id = "1495", count_lower = 1, count_upper = 1, weight = 8245},--左护法
	["1065"] = {id = "1065", group_id = "18", random_type = 2, item_type = 4, item_id = "1239", count_lower = 1, count_upper = 1, weight = 8245},--暴风步兵
	["1066"] = {id = "1066", group_id = "18", random_type = 2, item_type = 4, item_id = "1045", count_lower = 1, count_upper = 1, weight = 1698},--小花
	["1067"] = {id = "1067", group_id = "18", random_type = 2, item_type = 4, item_id = "1261", count_lower = 1, count_upper = 1, weight = 401},--斯巴达
	["1068"] = {id = "1068", group_id = "18", random_type = 2, item_type = 4, item_id = "1127", count_lower = 1, count_upper = 1, weight = 8245},--力士
	["1069"] = {id = "1069", group_id = "18", random_type = 2, item_type = 4, item_id = "1162", count_lower = 1, count_upper = 1, weight = 1698},--小炮
	["1070"] = {id = "1070", group_id = "18", random_type = 2, item_type = 4, item_id = "1001", count_lower = 1, count_upper = 1, weight = 401},--骑士
	["1071"] = {id = "1071", group_id = "18", random_type = 2, item_type = 4, item_id = "1428", count_lower = 1, count_upper = 1, weight = 401},--投棘者
	["1072"] = {id = "1072", group_id = "18", random_type = 2, item_type = 4, item_id = "1206", count_lower = 1, count_upper = 1, weight = 1698},--牛头酋长
	["1073"] = {id = "1073", group_id = "18", random_type = 2, item_type = 4, item_id = "1373", count_lower = 1, count_upper = 1, weight = 1698},--泰兰
	["1074"] = {id = "1074", group_id = "18", random_type = 2, item_type = 4, item_id = "1217", count_lower = 1, count_upper = 1, weight = 1698},--卡亚
	["1075"] = {id = "1075", group_id = "18", random_type = 2, item_type = 4, item_id = "1173", count_lower = 1, count_upper = 1, weight = 8245},--铠甲熊
	["1076"] = {id = "1076", group_id = "18", random_type = 2, item_type = 4, item_id = "1484", count_lower = 1, count_upper = 1, weight = 8245},--右护法
	["1077"] = {id = "1077", group_id = "18", random_type = 2, item_type = 4, item_id = "1417", count_lower = 1, count_upper = 1, weight = 1698},--小鹿
	["1078"] = {id = "1078", group_id = "18", random_type = 2, item_type = 4, item_id = "1250", count_lower = 1, count_upper = 1, weight = 1698},--鹰身人
	["1079"] = {id = "1079", group_id = "18", random_type = 2, item_type = 4, item_id = "1151", count_lower = 1, count_upper = 1, weight = 1698},--飞斧泰坦
	["1080"] = {id = "1080", group_id = "18", random_type = 2, item_type = 4, item_id = "1351", count_lower = 1, count_upper = 1, weight = 401},--守护泰坦
	["1081"] = {id = "1081", group_id = "18", random_type = 2, item_type = 4, item_id = "1195", count_lower = 1, count_upper = 1, weight = 1698},--小恩
	["1082"] = {id = "1082", group_id = "18", random_type = 2, item_type = 4, item_id = "1561", count_lower = 1, count_upper = 1, weight = 401},--祖母
	["1083"] = {id = "1083", group_id = "18", random_type = 2, item_type = 2, item_id = "1000", count_lower = 432, count_upper = 2472, weight = 15000},--金币
	["1084"] = {id = "1084", group_id = "18", random_type = 2, item_type = 3, item_id = "15028", count_lower = 1, count_upper = 15, weight = 2500},--盖亚_突破材料
	["1085"] = {id = "1085", group_id = "18", random_type = 2, item_type = 3, item_id = "15029", count_lower = 1, count_upper = 15, weight = 2500},--泰坦_突破材料
	["1086"] = {id = "1086", group_id = "18", random_type = 2, item_type = 3, item_id = "15051", count_lower = 1, count_upper = 15, weight = 2500},--英雄_突破材料
	["1087"] = {id = "1087", group_id = "18", random_type = 2, item_type = 3, item_id = "15055", count_lower = 1, count_upper = 15, weight = 2500},--中立_突破材料
	["1088"] = {id = "1088", group_id = "19", random_type = 2, item_type = 4, item_id = "1023", count_lower = 1, count_upper = 1, weight = 6350},--飞矛手
	["1089"] = {id = "1089", group_id = "19", random_type = 2, item_type = 4, item_id = "1395", count_lower = 1, count_upper = 1, weight = 6350},--喵喵守卫
	["1090"] = {id = "1090", group_id = "19", random_type = 2, item_type = 4, item_id = "1495", count_lower = 1, count_upper = 1, weight = 6350},--左护法
	["1091"] = {id = "1091", group_id = "19", random_type = 2, item_type = 4, item_id = "1239", count_lower = 1, count_upper = 1, weight = 6350},--暴风步兵
	["1092"] = {id = "1092", group_id = "19", random_type = 2, item_type = 4, item_id = "1045", count_lower = 1, count_upper = 1, weight = 1307},--小花
	["1093"] = {id = "1093", group_id = "19", random_type = 2, item_type = 4, item_id = "1261", count_lower = 1, count_upper = 1, weight = 309},--斯巴达
	["1094"] = {id = "1094", group_id = "19", random_type = 2, item_type = 4, item_id = "1127", count_lower = 1, count_upper = 1, weight = 6350},--力士
	["1095"] = {id = "1095", group_id = "19", random_type = 2, item_type = 4, item_id = "1162", count_lower = 1, count_upper = 1, weight = 1307},--小炮
	["1096"] = {id = "1096", group_id = "19", random_type = 2, item_type = 4, item_id = "1001", count_lower = 1, count_upper = 1, weight = 309},--骑士
	["1097"] = {id = "1097", group_id = "19", random_type = 2, item_type = 4, item_id = "1428", count_lower = 1, count_upper = 1, weight = 309},--投棘者
	["1098"] = {id = "1098", group_id = "19", random_type = 2, item_type = 4, item_id = "1206", count_lower = 1, count_upper = 1, weight = 1307},--牛头酋长
	["1099"] = {id = "1099", group_id = "19", random_type = 2, item_type = 4, item_id = "1373", count_lower = 1, count_upper = 1, weight = 1307},--泰兰
	["1100"] = {id = "1100", group_id = "19", random_type = 2, item_type = 4, item_id = "1217", count_lower = 1, count_upper = 1, weight = 1307},--卡亚
	["1101"] = {id = "1101", group_id = "19", random_type = 2, item_type = 4, item_id = "1173", count_lower = 1, count_upper = 1, weight = 6350},--铠甲熊
	["1102"] = {id = "1102", group_id = "19", random_type = 2, item_type = 4, item_id = "1484", count_lower = 1, count_upper = 1, weight = 6350},--右护法
	["1103"] = {id = "1103", group_id = "19", random_type = 2, item_type = 4, item_id = "1417", count_lower = 1, count_upper = 1, weight = 1307},--小鹿
	["1104"] = {id = "1104", group_id = "19", random_type = 2, item_type = 4, item_id = "1250", count_lower = 1, count_upper = 1, weight = 1307},--鹰身人
	["1105"] = {id = "1105", group_id = "19", random_type = 2, item_type = 4, item_id = "1151", count_lower = 1, count_upper = 1, weight = 1307},--飞斧泰坦
	["1106"] = {id = "1106", group_id = "19", random_type = 2, item_type = 4, item_id = "1351", count_lower = 1, count_upper = 1, weight = 309},--守护泰坦
	["1107"] = {id = "1107", group_id = "19", random_type = 2, item_type = 4, item_id = "1195", count_lower = 1, count_upper = 1, weight = 1307},--小恩
	["1108"] = {id = "1108", group_id = "19", random_type = 2, item_type = 4, item_id = "1561", count_lower = 1, count_upper = 1, weight = 309},--祖母
	["1109"] = {id = "1109", group_id = "19", random_type = 2, item_type = 4, item_id = "1406", count_lower = 1, count_upper = 1, weight = 6350},--粉红女巫
	["1110"] = {id = "1110", group_id = "19", random_type = 2, item_type = 4, item_id = "1034", count_lower = 1, count_upper = 1, weight = 6350},--雪人
	["1111"] = {id = "1111", group_id = "19", random_type = 2, item_type = 4, item_id = "1078", count_lower = 1, count_upper = 1, weight = 1307},--忍者
	["1112"] = {id = "1112", group_id = "19", random_type = 2, item_type = 4, item_id = "1539", count_lower = 1, count_upper = 1, weight = 1307},--魅魔
	["1113"] = {id = "1113", group_id = "19", random_type = 2, item_type = 4, item_id = "1439", count_lower = 1, count_upper = 1, weight = 309},--宝石法师
	["1114"] = {id = "1114", group_id = "19", random_type = 2, item_type = 4, item_id = "1384", count_lower = 1, count_upper = 1, weight = 1307},--喵夫人
	["1115"] = {id = "1115", group_id = "19", random_type = 2, item_type = 4, item_id = "1228", count_lower = 1, count_upper = 1, weight = 309},--白幽灵
	["1116"] = {id = "1116", group_id = "19", random_type = 2, item_type = 2, item_id = "1000", count_lower = 707, count_upper = 4018, weight = 15000},--金币
	["1117"] = {id = "1117", group_id = "19", random_type = 2, item_type = 3, item_id = "15028", count_lower = 1, count_upper = 15, weight = 2500},--盖亚_突破材料
	["1118"] = {id = "1118", group_id = "19", random_type = 2, item_type = 3, item_id = "15029", count_lower = 1, count_upper = 15, weight = 2500},--泰坦_突破材料
	["1119"] = {id = "1119", group_id = "19", random_type = 2, item_type = 3, item_id = "15051", count_lower = 1, count_upper = 15, weight = 2500},--英雄_突破材料
	["1120"] = {id = "1120", group_id = "19", random_type = 2, item_type = 3, item_id = "15055", count_lower = 1, count_upper = 15, weight = 2500},--中立_突破材料
	["1121"] = {id = "1121", group_id = "20", random_type = 2, item_type = 4, item_id = "1023", count_lower = 1, count_upper = 1, weight = 5091},--飞矛手
	["1122"] = {id = "1122", group_id = "20", random_type = 2, item_type = 4, item_id = "1395", count_lower = 1, count_upper = 1, weight = 5091},--喵喵守卫
	["1123"] = {id = "1123", group_id = "20", random_type = 2, item_type = 4, item_id = "1495", count_lower = 1, count_upper = 1, weight = 5091},--左护法
	["1124"] = {id = "1124", group_id = "20", random_type = 2, item_type = 4, item_id = "1239", count_lower = 1, count_upper = 1, weight = 5091},--暴风步兵
	["1125"] = {id = "1125", group_id = "20", random_type = 2, item_type = 4, item_id = "1045", count_lower = 1, count_upper = 1, weight = 1048},--小花
	["1126"] = {id = "1126", group_id = "20", random_type = 2, item_type = 4, item_id = "1261", count_lower = 1, count_upper = 1, weight = 247},--斯巴达
	["1127"] = {id = "1127", group_id = "20", random_type = 2, item_type = 4, item_id = "1127", count_lower = 1, count_upper = 1, weight = 5091},--力士
	["1128"] = {id = "1128", group_id = "20", random_type = 2, item_type = 4, item_id = "1162", count_lower = 1, count_upper = 1, weight = 1048},--小炮
	["1129"] = {id = "1129", group_id = "20", random_type = 2, item_type = 4, item_id = "1001", count_lower = 1, count_upper = 1, weight = 247},--骑士
	["1130"] = {id = "1130", group_id = "20", random_type = 2, item_type = 4, item_id = "1428", count_lower = 1, count_upper = 1, weight = 247},--投棘者
	["1131"] = {id = "1131", group_id = "20", random_type = 2, item_type = 4, item_id = "1206", count_lower = 1, count_upper = 1, weight = 1048},--牛头酋长
	["1132"] = {id = "1132", group_id = "20", random_type = 2, item_type = 4, item_id = "1373", count_lower = 1, count_upper = 1, weight = 1048},--泰兰
	["1133"] = {id = "1133", group_id = "20", random_type = 2, item_type = 4, item_id = "1217", count_lower = 1, count_upper = 1, weight = 1048},--卡亚
	["1134"] = {id = "1134", group_id = "20", random_type = 2, item_type = 4, item_id = "1173", count_lower = 1, count_upper = 1, weight = 5091},--铠甲熊
	["1135"] = {id = "1135", group_id = "20", random_type = 2, item_type = 4, item_id = "1484", count_lower = 1, count_upper = 1, weight = 5091},--右护法
	["1136"] = {id = "1136", group_id = "20", random_type = 2, item_type = 4, item_id = "1417", count_lower = 1, count_upper = 1, weight = 1048},--小鹿
	["1137"] = {id = "1137", group_id = "20", random_type = 2, item_type = 4, item_id = "1250", count_lower = 1, count_upper = 1, weight = 1048},--鹰身人
	["1138"] = {id = "1138", group_id = "20", random_type = 2, item_type = 4, item_id = "1151", count_lower = 1, count_upper = 1, weight = 1048},--飞斧泰坦
	["1139"] = {id = "1139", group_id = "20", random_type = 2, item_type = 4, item_id = "1351", count_lower = 1, count_upper = 1, weight = 247},--守护泰坦
	["1140"] = {id = "1140", group_id = "20", random_type = 2, item_type = 4, item_id = "1195", count_lower = 1, count_upper = 1, weight = 1048},--小恩
	["1141"] = {id = "1141", group_id = "20", random_type = 2, item_type = 4, item_id = "1561", count_lower = 1, count_upper = 1, weight = 247},--祖母
	["1142"] = {id = "1142", group_id = "20", random_type = 2, item_type = 4, item_id = "1406", count_lower = 1, count_upper = 1, weight = 5091},--粉红女巫
	["1143"] = {id = "1143", group_id = "20", random_type = 2, item_type = 4, item_id = "1034", count_lower = 1, count_upper = 1, weight = 5091},--雪人
	["1144"] = {id = "1144", group_id = "20", random_type = 2, item_type = 4, item_id = "1078", count_lower = 1, count_upper = 1, weight = 1048},--忍者
	["1145"] = {id = "1145", group_id = "20", random_type = 2, item_type = 4, item_id = "1539", count_lower = 1, count_upper = 1, weight = 1048},--魅魔
	["1146"] = {id = "1146", group_id = "20", random_type = 2, item_type = 4, item_id = "1439", count_lower = 1, count_upper = 1, weight = 247},--宝石法师
	["1147"] = {id = "1147", group_id = "20", random_type = 2, item_type = 4, item_id = "1384", count_lower = 1, count_upper = 1, weight = 1048},--喵夫人
	["1148"] = {id = "1148", group_id = "20", random_type = 2, item_type = 4, item_id = "1228", count_lower = 1, count_upper = 1, weight = 247},--白幽灵
	["1149"] = {id = "1149", group_id = "20", random_type = 2, item_type = 4, item_id = "1056", count_lower = 1, count_upper = 1, weight = 5091},--空投者
	["1150"] = {id = "1150", group_id = "20", random_type = 2, item_type = 4, item_id = "1067", count_lower = 1, count_upper = 1, weight = 5091},--小树妖
	["1151"] = {id = "1151", group_id = "20", random_type = 2, item_type = 4, item_id = "1450", count_lower = 1, count_upper = 1, weight = 1048},--蓝电法师
	["1152"] = {id = "1152", group_id = "20", random_type = 2, item_type = 4, item_id = "1272", count_lower = 1, count_upper = 1, weight = 1048},--樱花武士
	["1153"] = {id = "1153", group_id = "20", random_type = 2, item_type = 4, item_id = "1340", count_lower = 1, count_upper = 1, weight = 247},--古尔丹
	["1154"] = {id = "1154", group_id = "20", random_type = 2, item_type = 4, item_id = "1105", count_lower = 1, count_upper = 1, weight = 1048},--风暴女
	["1155"] = {id = "1155", group_id = "20", random_type = 2, item_type = 4, item_id = "1089", count_lower = 1, count_upper = 1, weight = 1048},--阴阳师
	["1156"] = {id = "1156", group_id = "20", random_type = 2, item_type = 4, item_id = "1294", count_lower = 1, count_upper = 1, weight = 247},--黑岩
	["1157"] = {id = "1157", group_id = "20", random_type = 2, item_type = 2, item_id = "1000", count_lower = 1590, count_upper = 9042, weight = 15000},--金币
	["1158"] = {id = "1158", group_id = "20", random_type = 2, item_type = 3, item_id = "15028", count_lower = 1, count_upper = 15, weight = 2500},--盖亚_突破材料
	["1159"] = {id = "1159", group_id = "20", random_type = 2, item_type = 3, item_id = "15029", count_lower = 1, count_upper = 15, weight = 2500},--泰坦_突破材料
	["1160"] = {id = "1160", group_id = "20", random_type = 2, item_type = 3, item_id = "15051", count_lower = 1, count_upper = 15, weight = 2500},--英雄_突破材料
	["1161"] = {id = "1161", group_id = "20", random_type = 2, item_type = 3, item_id = "15055", count_lower = 1, count_upper = 15, weight = 2500},--中立_突破材料
	["1162"] = {id = "1162", group_id = "21", random_type = 2, item_type = 4, item_id = "1023", count_lower = 1, count_upper = 1, weight = 4854},--飞矛手
	["1163"] = {id = "1163", group_id = "21", random_type = 2, item_type = 4, item_id = "1395", count_lower = 1, count_upper = 1, weight = 4854},--喵喵守卫
	["1164"] = {id = "1164", group_id = "21", random_type = 2, item_type = 4, item_id = "1495", count_lower = 1, count_upper = 1, weight = 4854},--左护法
	["1165"] = {id = "1165", group_id = "21", random_type = 2, item_type = 4, item_id = "1239", count_lower = 1, count_upper = 1, weight = 4854},--暴风步兵
	["1166"] = {id = "1166", group_id = "21", random_type = 2, item_type = 4, item_id = "1045", count_lower = 1, count_upper = 1, weight = 999},--小花
	["1167"] = {id = "1167", group_id = "21", random_type = 2, item_type = 4, item_id = "1261", count_lower = 1, count_upper = 1, weight = 236},--斯巴达
	["1168"] = {id = "1168", group_id = "21", random_type = 2, item_type = 4, item_id = "1127", count_lower = 1, count_upper = 1, weight = 4854},--力士
	["1169"] = {id = "1169", group_id = "21", random_type = 2, item_type = 4, item_id = "1162", count_lower = 1, count_upper = 1, weight = 999},--小炮
	["1170"] = {id = "1170", group_id = "21", random_type = 2, item_type = 4, item_id = "1001", count_lower = 1, count_upper = 1, weight = 236},--骑士
	["1171"] = {id = "1171", group_id = "21", random_type = 2, item_type = 4, item_id = "1428", count_lower = 1, count_upper = 1, weight = 236},--投棘者
	["1172"] = {id = "1172", group_id = "21", random_type = 2, item_type = 4, item_id = "1206", count_lower = 1, count_upper = 1, weight = 999},--牛头酋长
	["1173"] = {id = "1173", group_id = "21", random_type = 2, item_type = 4, item_id = "1373", count_lower = 1, count_upper = 1, weight = 999},--泰兰
	["1174"] = {id = "1174", group_id = "21", random_type = 2, item_type = 4, item_id = "1217", count_lower = 1, count_upper = 1, weight = 999},--卡亚
	["1175"] = {id = "1175", group_id = "21", random_type = 2, item_type = 4, item_id = "1173", count_lower = 1, count_upper = 1, weight = 4854},--铠甲熊
	["1176"] = {id = "1176", group_id = "21", random_type = 2, item_type = 4, item_id = "1484", count_lower = 1, count_upper = 1, weight = 4854},--右护法
	["1177"] = {id = "1177", group_id = "21", random_type = 2, item_type = 4, item_id = "1417", count_lower = 1, count_upper = 1, weight = 999},--小鹿
	["1178"] = {id = "1178", group_id = "21", random_type = 2, item_type = 4, item_id = "1250", count_lower = 1, count_upper = 1, weight = 999},--鹰身人
	["1179"] = {id = "1179", group_id = "21", random_type = 2, item_type = 4, item_id = "1151", count_lower = 1, count_upper = 1, weight = 999},--飞斧泰坦
	["1180"] = {id = "1180", group_id = "21", random_type = 2, item_type = 4, item_id = "1351", count_lower = 1, count_upper = 1, weight = 236},--守护泰坦
	["1181"] = {id = "1181", group_id = "21", random_type = 2, item_type = 4, item_id = "1195", count_lower = 1, count_upper = 1, weight = 999},--小恩
	["1182"] = {id = "1182", group_id = "21", random_type = 2, item_type = 4, item_id = "1561", count_lower = 1, count_upper = 1, weight = 236},--祖母
	["1183"] = {id = "1183", group_id = "21", random_type = 2, item_type = 4, item_id = "1406", count_lower = 1, count_upper = 1, weight = 4854},--粉红女巫
	["1184"] = {id = "1184", group_id = "21", random_type = 2, item_type = 4, item_id = "1034", count_lower = 1, count_upper = 1, weight = 4854},--雪人
	["1185"] = {id = "1185", group_id = "21", random_type = 2, item_type = 4, item_id = "1078", count_lower = 1, count_upper = 1, weight = 999},--忍者
	["1186"] = {id = "1186", group_id = "21", random_type = 2, item_type = 4, item_id = "1539", count_lower = 1, count_upper = 1, weight = 999},--魅魔
	["1187"] = {id = "1187", group_id = "21", random_type = 2, item_type = 4, item_id = "1439", count_lower = 1, count_upper = 1, weight = 236},--宝石法师
	["1188"] = {id = "1188", group_id = "21", random_type = 2, item_type = 4, item_id = "1384", count_lower = 1, count_upper = 1, weight = 999},--喵夫人
	["1189"] = {id = "1189", group_id = "21", random_type = 2, item_type = 4, item_id = "1228", count_lower = 1, count_upper = 1, weight = 236},--白幽灵
	["1190"] = {id = "1190", group_id = "21", random_type = 2, item_type = 4, item_id = "1056", count_lower = 1, count_upper = 1, weight = 4854},--空投者
	["1191"] = {id = "1191", group_id = "21", random_type = 2, item_type = 4, item_id = "1067", count_lower = 1, count_upper = 1, weight = 4854},--小树妖
	["1192"] = {id = "1192", group_id = "21", random_type = 2, item_type = 4, item_id = "1450", count_lower = 1, count_upper = 1, weight = 999},--蓝电法师
	["1193"] = {id = "1193", group_id = "21", random_type = 2, item_type = 4, item_id = "1272", count_lower = 1, count_upper = 1, weight = 999},--樱花武士
	["1194"] = {id = "1194", group_id = "21", random_type = 2, item_type = 4, item_id = "1340", count_lower = 1, count_upper = 1, weight = 236},--古尔丹
	["1195"] = {id = "1195", group_id = "21", random_type = 2, item_type = 4, item_id = "1105", count_lower = 1, count_upper = 1, weight = 999},--风暴女
	["1196"] = {id = "1196", group_id = "21", random_type = 2, item_type = 4, item_id = "1089", count_lower = 1, count_upper = 1, weight = 999},--阴阳师
	["1197"] = {id = "1197", group_id = "21", random_type = 2, item_type = 4, item_id = "1294", count_lower = 1, count_upper = 1, weight = 236},--黑岩
	["1198"] = {id = "1198", group_id = "21", random_type = 2, item_type = 4, item_id = "1012", count_lower = 1, count_upper = 1, weight = 999},--酒桶
	["1199"] = {id = "1199", group_id = "21", random_type = 2, item_type = 4, item_id = "1305", count_lower = 1, count_upper = 1, weight = 999},--大嘴
	["1200"] = {id = "1200", group_id = "21", random_type = 2, item_type = 4, item_id = "1184", count_lower = 1, count_upper = 1, weight = 236},--狂暴巨人
	["1201"] = {id = "1201", group_id = "21", random_type = 2, item_type = 4, item_id = "1550", count_lower = 1, count_upper = 1, weight = 999},--死神
	["1202"] = {id = "1202", group_id = "21", random_type = 2, item_type = 4, item_id = "1327", count_lower = 1, count_upper = 1, weight = 236},--刚刀
	["1203"] = {id = "1203", group_id = "21", random_type = 2, item_type = 4, item_id = "1472", count_lower = 1, count_upper = 1, weight = 28},--火焰领主
	["1204"] = {id = "1204", group_id = "21", random_type = 2, item_type = 2, item_id = "1000", count_lower = 2285, count_upper = 12970, weight = 15000},--金币
	["1205"] = {id = "1205", group_id = "21", random_type = 2, item_type = 3, item_id = "15028", count_lower = 1, count_upper = 15, weight = 2500},--盖亚_突破材料
	["1206"] = {id = "1206", group_id = "21", random_type = 2, item_type = 3, item_id = "15029", count_lower = 1, count_upper = 15, weight = 2500},--泰坦_突破材料
	["1207"] = {id = "1207", group_id = "21", random_type = 2, item_type = 3, item_id = "15051", count_lower = 1, count_upper = 15, weight = 2500},--英雄_突破材料
	["1208"] = {id = "1208", group_id = "21", random_type = 2, item_type = 3, item_id = "15055", count_lower = 1, count_upper = 15, weight = 2500},--中立_突破材料
	["1209"] = {id = "1209", group_id = "22", random_type = 2, item_type = 4, item_id = "1023", count_lower = 1, count_upper = 1, weight = 4854},--飞矛手
	["1210"] = {id = "1210", group_id = "22", random_type = 2, item_type = 4, item_id = "1395", count_lower = 1, count_upper = 1, weight = 4854},--喵喵守卫
	["1211"] = {id = "1211", group_id = "22", random_type = 2, item_type = 4, item_id = "1495", count_lower = 1, count_upper = 1, weight = 4854},--左护法
	["1212"] = {id = "1212", group_id = "22", random_type = 2, item_type = 4, item_id = "1239", count_lower = 1, count_upper = 1, weight = 4854},--暴风步兵
	["1213"] = {id = "1213", group_id = "22", random_type = 2, item_type = 4, item_id = "1045", count_lower = 1, count_upper = 1, weight = 999},--小花
	["1214"] = {id = "1214", group_id = "22", random_type = 2, item_type = 4, item_id = "1261", count_lower = 1, count_upper = 1, weight = 236},--斯巴达
	["1215"] = {id = "1215", group_id = "22", random_type = 2, item_type = 4, item_id = "1127", count_lower = 1, count_upper = 1, weight = 4854},--力士
	["1216"] = {id = "1216", group_id = "22", random_type = 2, item_type = 4, item_id = "1162", count_lower = 1, count_upper = 1, weight = 999},--小炮
	["1217"] = {id = "1217", group_id = "22", random_type = 2, item_type = 4, item_id = "1001", count_lower = 1, count_upper = 1, weight = 236},--骑士
	["1218"] = {id = "1218", group_id = "22", random_type = 2, item_type = 4, item_id = "1428", count_lower = 1, count_upper = 1, weight = 236},--投棘者
	["1219"] = {id = "1219", group_id = "22", random_type = 2, item_type = 4, item_id = "1206", count_lower = 1, count_upper = 1, weight = 999},--牛头酋长
	["1220"] = {id = "1220", group_id = "22", random_type = 2, item_type = 4, item_id = "1373", count_lower = 1, count_upper = 1, weight = 999},--泰兰
	["1221"] = {id = "1221", group_id = "22", random_type = 2, item_type = 4, item_id = "1217", count_lower = 1, count_upper = 1, weight = 999},--卡亚
	["1222"] = {id = "1222", group_id = "22", random_type = 2, item_type = 4, item_id = "1173", count_lower = 1, count_upper = 1, weight = 4854},--铠甲熊
	["1223"] = {id = "1223", group_id = "22", random_type = 2, item_type = 4, item_id = "1484", count_lower = 1, count_upper = 1, weight = 4854},--右护法
	["1224"] = {id = "1224", group_id = "22", random_type = 2, item_type = 4, item_id = "1417", count_lower = 1, count_upper = 1, weight = 999},--小鹿
	["1225"] = {id = "1225", group_id = "22", random_type = 2, item_type = 4, item_id = "1250", count_lower = 1, count_upper = 1, weight = 999},--鹰身人
	["1226"] = {id = "1226", group_id = "22", random_type = 2, item_type = 4, item_id = "1151", count_lower = 1, count_upper = 1, weight = 999},--飞斧泰坦
	["1227"] = {id = "1227", group_id = "22", random_type = 2, item_type = 4, item_id = "1351", count_lower = 1, count_upper = 1, weight = 236},--守护泰坦
	["1228"] = {id = "1228", group_id = "22", random_type = 2, item_type = 4, item_id = "1195", count_lower = 1, count_upper = 1, weight = 999},--小恩
	["1229"] = {id = "1229", group_id = "22", random_type = 2, item_type = 4, item_id = "1561", count_lower = 1, count_upper = 1, weight = 236},--祖母
	["1230"] = {id = "1230", group_id = "22", random_type = 2, item_type = 4, item_id = "1406", count_lower = 1, count_upper = 1, weight = 4854},--粉红女巫
	["1231"] = {id = "1231", group_id = "22", random_type = 2, item_type = 4, item_id = "1034", count_lower = 1, count_upper = 1, weight = 4854},--雪人
	["1232"] = {id = "1232", group_id = "22", random_type = 2, item_type = 4, item_id = "1078", count_lower = 1, count_upper = 1, weight = 999},--忍者
	["1233"] = {id = "1233", group_id = "22", random_type = 2, item_type = 4, item_id = "1539", count_lower = 1, count_upper = 1, weight = 999},--魅魔
	["1234"] = {id = "1234", group_id = "22", random_type = 2, item_type = 4, item_id = "1439", count_lower = 1, count_upper = 1, weight = 236},--宝石法师
	["1235"] = {id = "1235", group_id = "22", random_type = 2, item_type = 4, item_id = "1384", count_lower = 1, count_upper = 1, weight = 999},--喵夫人
	["1236"] = {id = "1236", group_id = "22", random_type = 2, item_type = 4, item_id = "1228", count_lower = 1, count_upper = 1, weight = 236},--白幽灵
	["1237"] = {id = "1237", group_id = "22", random_type = 2, item_type = 4, item_id = "1056", count_lower = 1, count_upper = 1, weight = 4854},--空投者
	["1238"] = {id = "1238", group_id = "22", random_type = 2, item_type = 4, item_id = "1067", count_lower = 1, count_upper = 1, weight = 4854},--小树妖
	["1239"] = {id = "1239", group_id = "22", random_type = 2, item_type = 4, item_id = "1450", count_lower = 1, count_upper = 1, weight = 999},--蓝电法师
	["1240"] = {id = "1240", group_id = "22", random_type = 2, item_type = 4, item_id = "1272", count_lower = 1, count_upper = 1, weight = 999},--樱花武士
	["1241"] = {id = "1241", group_id = "22", random_type = 2, item_type = 4, item_id = "1340", count_lower = 1, count_upper = 1, weight = 236},--古尔丹
	["1242"] = {id = "1242", group_id = "22", random_type = 2, item_type = 4, item_id = "1105", count_lower = 1, count_upper = 1, weight = 999},--风暴女
	["1243"] = {id = "1243", group_id = "22", random_type = 2, item_type = 4, item_id = "1089", count_lower = 1, count_upper = 1, weight = 999},--阴阳师
	["1244"] = {id = "1244", group_id = "22", random_type = 2, item_type = 4, item_id = "1294", count_lower = 1, count_upper = 1, weight = 236},--黑岩
	["1245"] = {id = "1245", group_id = "22", random_type = 2, item_type = 4, item_id = "1012", count_lower = 1, count_upper = 1, weight = 999},--酒桶
	["1246"] = {id = "1246", group_id = "22", random_type = 2, item_type = 4, item_id = "1305", count_lower = 1, count_upper = 1, weight = 999},--大嘴
	["1247"] = {id = "1247", group_id = "22", random_type = 2, item_type = 4, item_id = "1184", count_lower = 1, count_upper = 1, weight = 236},--狂暴巨人
	["1248"] = {id = "1248", group_id = "22", random_type = 2, item_type = 4, item_id = "1550", count_lower = 1, count_upper = 1, weight = 999},--死神
	["1249"] = {id = "1249", group_id = "22", random_type = 2, item_type = 4, item_id = "1327", count_lower = 1, count_upper = 1, weight = 236},--刚刀
	["1250"] = {id = "1250", group_id = "22", random_type = 2, item_type = 4, item_id = "1472", count_lower = 1, count_upper = 1, weight = 28},--火焰领主
	["1251"] = {id = "1251", group_id = "22", random_type = 2, item_type = 2, item_id = "1000", count_lower = 2860, count_upper = 16215, weight = 15000},--金币
	["1252"] = {id = "1252", group_id = "22", random_type = 2, item_type = 3, item_id = "15028", count_lower = 1, count_upper = 15, weight = 2500},--盖亚_突破材料
	["1253"] = {id = "1253", group_id = "22", random_type = 2, item_type = 3, item_id = "15029", count_lower = 1, count_upper = 15, weight = 2500},--泰坦_突破材料
	["1254"] = {id = "1254", group_id = "22", random_type = 2, item_type = 3, item_id = "15051", count_lower = 1, count_upper = 15, weight = 2500},--英雄_突破材料
	["1255"] = {id = "1255", group_id = "22", random_type = 2, item_type = 3, item_id = "15055", count_lower = 1, count_upper = 15, weight = 2500},--中立_突破材料
	["1256"] = {id = "1256", group_id = "23", random_type = 1, item_type = 2, item_id = "1000", count_lower = 1000, count_upper = 3000, weight = 10000},--1阶段大宝箱金
	["1257"] = {id = "1257", group_id = "24", random_type = 1, item_type = 2, item_id = "1000", count_lower = 1250, count_upper = 3750, weight = 10000},--2阶段大宝箱金
	["1258"] = {id = "1258", group_id = "25", random_type = 1, item_type = 2, item_id = "1000", count_lower = 1560, count_upper = 4680, weight = 10000},--3阶段大宝箱金
	["1259"] = {id = "1259", group_id = "26", random_type = 1, item_type = 2, item_id = "1000", count_lower = 1950, count_upper = 5850, weight = 10000},--4阶段大宝箱金
	["1260"] = {id = "1260", group_id = "27", random_type = 1, item_type = 2, item_id = "1000", count_lower = 2440, count_upper = 7320, weight = 10000},--5阶段大宝箱金
	["1261"] = {id = "1261", group_id = "28", random_type = 1, item_type = 2, item_id = "1000", count_lower = 3050, count_upper = 9150, weight = 10000},--6阶段大宝箱金
	["1262"] = {id = "1262", group_id = "29", random_type = 1, item_type = 2, item_id = "1000", count_lower = 3810, count_upper = 11430, weight = 10000},--7阶段大宝箱金
	["1263"] = {id = "1263", group_id = "30", random_type = 2, item_type = 4, item_id = "1001", count_lower = 1, count_upper = 1, weight = 1870},--骑士
	["1264"] = {id = "1264", group_id = "30", random_type = 2, item_type = 4, item_id = "1089", count_lower = 1, count_upper = 1, weight = 7920},--阴阳师
	["1265"] = {id = "1265", group_id = "30", random_type = 2, item_type = 4, item_id = "1105", count_lower = 1, count_upper = 1, weight = 7920},--风暴女
	["1266"] = {id = "1266", group_id = "30", random_type = 2, item_type = 4, item_id = "1184", count_lower = 1, count_upper = 1, weight = 1870},--狂暴巨人
	["1267"] = {id = "1267", group_id = "30", random_type = 2, item_type = 4, item_id = "1195", count_lower = 1, count_upper = 1, weight = 7920},--小恩
	["1268"] = {id = "1268", group_id = "30", random_type = 2, item_type = 4, item_id = "1206", count_lower = 1, count_upper = 1, weight = 7920},--牛头酋长
	["1269"] = {id = "1269", group_id = "30", random_type = 2, item_type = 4, item_id = "1217", count_lower = 1, count_upper = 1, weight = 7920},--卡亚
	["1270"] = {id = "1270", group_id = "30", random_type = 2, item_type = 4, item_id = "1228", count_lower = 1, count_upper = 1, weight = 1870},--白幽灵
	["1271"] = {id = "1271", group_id = "30", random_type = 2, item_type = 4, item_id = "1261", count_lower = 1, count_upper = 1, weight = 1870},--斯巴达
	["1272"] = {id = "1272", group_id = "30", random_type = 2, item_type = 4, item_id = "1294", count_lower = 1, count_upper = 1, weight = 1870},--黑岩
	["1273"] = {id = "1273", group_id = "30", random_type = 2, item_type = 4, item_id = "1327", count_lower = 1, count_upper = 1, weight = 1870},--刚刀
	["1274"] = {id = "1274", group_id = "30", random_type = 2, item_type = 4, item_id = "1340", count_lower = 1, count_upper = 1, weight = 1870},--古尔丹
	["1275"] = {id = "1275", group_id = "30", random_type = 2, item_type = 4, item_id = "1351", count_lower = 1, count_upper = 1, weight = 1870},--守护泰坦
	["1276"] = {id = "1276", group_id = "30", random_type = 2, item_type = 4, item_id = "1373", count_lower = 1, count_upper = 1, weight = 7920},--泰兰
	["1277"] = {id = "1277", group_id = "30", random_type = 2, item_type = 4, item_id = "1384", count_lower = 1, count_upper = 1, weight = 7920},--喵夫人
	["1278"] = {id = "1278", group_id = "30", random_type = 2, item_type = 4, item_id = "1428", count_lower = 1, count_upper = 1, weight = 1870},--投棘者
	["1279"] = {id = "1279", group_id = "30", random_type = 2, item_type = 4, item_id = "1439", count_lower = 1, count_upper = 1, weight = 1870},--宝石法师
	["1280"] = {id = "1280", group_id = "30", random_type = 2, item_type = 4, item_id = "1472", count_lower = 1, count_upper = 1, weight = 224},--炎魔
	["1281"] = {id = "1281", group_id = "30", random_type = 2, item_type = 4, item_id = "1550", count_lower = 1, count_upper = 1, weight = 7920},--死神
	["1282"] = {id = "1282", group_id = "30", random_type = 2, item_type = 4, item_id = "1461", count_lower = 1, count_upper = 1, weight = 7920},--嘣
	["1283"] = {id = "1283", group_id = "30", random_type = 2, item_type = 4, item_id = "1140", count_lower = 1, count_upper = 1, weight = 7920},--zero
	["1284"] = {id = "1284", group_id = "30", random_type = 2, item_type = 4, item_id = "1561", count_lower = 1, count_upper = 1, weight = 1870},--祖母
	["1285"] = {id = "1285", group_id = "31", random_type = 2, item_type = 3, item_id = "15033", count_lower = 2, count_upper = 5, weight = 20000},--暴风步兵碎片
	["1286"] = {id = "1286", group_id = "31", random_type = 2, item_type = 3, item_id = "15002", count_lower = 2, count_upper = 5, weight = 20000},--飞矛手碎片
	["1287"] = {id = "1287", group_id = "31", random_type = 2, item_type = 3, item_id = "15044", count_lower = 2, count_upper = 5, weight = 20000},--喵喵守卫碎片
	["1288"] = {id = "1288", group_id = "31", random_type = 2, item_type = 3, item_id = "15094", count_lower = 2, count_upper = 5, weight = 20000},--左护法碎片
	["1289"] = {id = "1289", group_id = "31", random_type = 2, item_type = 3, item_id = "15004", count_lower = 2, count_upper = 5, weight = 20000},--小花碎片
	["1290"] = {id = "1290", group_id = "32", random_type = 2, item_type = 4, item_id = "1023", count_lower = 1, count_upper = 1, weight = 30000},--暴风步兵整卡
	["1291"] = {id = "1291", group_id = "32", random_type = 2, item_type = 4, item_id = "1395", count_lower = 1, count_upper = 1, weight = 30000},--飞矛手整卡
	["1292"] = {id = "1292", group_id = "32", random_type = 2, item_type = 4, item_id = "1495", count_lower = 1, count_upper = 1, weight = 40000},--左护法整卡
	["1293"] = {id = "1293", group_id = "33", random_type = 2, item_type = 4, item_id = "1261", count_lower = 1, count_upper = 1, weight = 20000},--斯巴达
	["1294"] = {id = "1294", group_id = "33", random_type = 2, item_type = 4, item_id = "1045", count_lower = 1, count_upper = 1, weight = 80000},--小花
	["1295"] = {id = "1295", group_id = "34", random_type = 2, item_type = 4, item_id = "1206", count_lower = 1, count_upper = 1, weight = 50000},--牛头酋长
	["1296"] = {id = "1296", group_id = "34", random_type = 2, item_type = 4, item_id = "1373", count_lower = 1, count_upper = 1, weight = 50000},--泰兰
	["1297"] = {id = "1297", group_id = "35", random_type = 2, item_type = 4, item_id = "1162", count_lower = 1, count_upper = 1, weight = 100000},--小炮
	["1298"] = {id = "1298", group_id = "36", random_type = 2, item_type = 4, item_id = "1001", count_lower = 1, count_upper = 1, weight = 50000},--骑士
	["1299"] = {id = "1299", group_id = "36", random_type = 2, item_type = 4, item_id = "1428", count_lower = 1, count_upper = 1, weight = 50000},--投棘者
	["1300"] = {id = "1300", group_id = "37", random_type = 2, item_type = 4, item_id = "1173", count_lower = 1, count_upper = 1, weight = 40000},--小鹿
	["1301"] = {id = "1301", group_id = "37", random_type = 2, item_type = 4, item_id = "1495", count_lower = 1, count_upper = 1, weight = 30000},--鹰身人
	["1302"] = {id = "1302", group_id = "37", random_type = 2, item_type = 4, item_id = "1151", count_lower = 1, count_upper = 1, weight = 30000},--飞斧泰坦
	["1303"] = {id = "1303", group_id = "38", random_type = 2, item_type = 4, item_id = "1351", count_lower = 1, count_upper = 1, weight = 100000},--守护泰坦
	["1304"] = {id = "1304", group_id = "39", random_type = 2, item_type = 4, item_id = "1561", count_lower = 1, count_upper = 1, weight = 100000},--祖母
	["1305"] = {id = "1305", group_id = "40", random_type = 2, item_type = 4, item_id = "1078", count_lower = 1, count_upper = 1, weight = 20000},--忍者
	["1306"] = {id = "1306", group_id = "40", random_type = 2, item_type = 4, item_id = "1406", count_lower = 1, count_upper = 1, weight = 20000},--粉红女巫
	["1307"] = {id = "1307", group_id = "40", random_type = 2, item_type = 4, item_id = "1034", count_lower = 1, count_upper = 1, weight = 20000},--雪人
	["1308"] = {id = "1308", group_id = "40", random_type = 2, item_type = 4, item_id = "1539", count_lower = 1, count_upper = 1, weight = 20000},--魅魔
	["1309"] = {id = "1309", group_id = "40", random_type = 2, item_type = 4, item_id = "1439", count_lower = 1, count_upper = 1, weight = 20000},--宝石法师
	["1310"] = {id = "1310", group_id = "41", random_type = 2, item_type = 4, item_id = "1228", count_lower = 1, count_upper = 1, weight = 70000},--白幽灵
	["1311"] = {id = "1311", group_id = "42", random_type = 2, item_type = 4, item_id = "1056", count_lower = 1, count_upper = 1, weight = 25000},--空投者
	["1312"] = {id = "1312", group_id = "42", random_type = 2, item_type = 4, item_id = "1067", count_lower = 1, count_upper = 1, weight = 25000},--小树妖
	["1313"] = {id = "1313", group_id = "42", random_type = 2, item_type = 4, item_id = "1450", count_lower = 1, count_upper = 1, weight = 25000},--蓝电法师
	["1314"] = {id = "1314", group_id = "42", random_type = 2, item_type = 4, item_id = "1272", count_lower = 1, count_upper = 1, weight = 25000},--樱花武士
	["1315"] = {id = "1315", group_id = "43", random_type = 2, item_type = 4, item_id = "1105", count_lower = 1, count_upper = 1, weight = 25000},--风暴女
	["1316"] = {id = "1316", group_id = "43", random_type = 2, item_type = 4, item_id = "1089", count_lower = 1, count_upper = 1, weight = 25000},--阴阳师
	["1317"] = {id = "1317", group_id = "43", random_type = 2, item_type = 4, item_id = "1140", count_lower = 1, count_upper = 1, weight = 25000},--洛克人
	["1318"] = {id = "1318", group_id = "43", random_type = 2, item_type = 4, item_id = "1294", count_lower = 1, count_upper = 1, weight = 25000},--黑岩
	["1319"] = {id = "1319", group_id = "44", random_type = 2, item_type = 4, item_id = "1340", count_lower = 1, count_upper = 1, weight = 100000},--古尔丹
	["1320"] = {id = "1320", group_id = "45", random_type = 2, item_type = 4, item_id = "1012", count_lower = 1, count_upper = 1, weight = 50000},--酒桶
	["1321"] = {id = "1321", group_id = "45", random_type = 2, item_type = 4, item_id = "1305", count_lower = 1, count_upper = 1, weight = 50000},--大嘴巨人
	["1322"] = {id = "1322", group_id = "46", random_type = 2, item_type = 4, item_id = "1184", count_lower = 1, count_upper = 1, weight = 100000},--狂暴巨人
	["1323"] = {id = "1323", group_id = "47", random_type = 2, item_type = 4, item_id = "1472", count_lower = 1, count_upper = 1, weight = 100000},--火焰领主
	["1324"] = {id = "1324", group_id = "48", random_type = 2, item_type = 4, item_id = "1461", count_lower = 1, count_upper = 1, weight = 50000},--崩
	["1325"] = {id = "1325", group_id = "48", random_type = 2, item_type = 4, item_id = "1550", count_lower = 1, count_upper = 1, weight = 50000},--死神
	["1326"] = {id = "1326", group_id = "49", random_type = 2, item_type = 4, item_id = "1327", count_lower = 1, count_upper = 1, weight = 100000},--钢刀
	["1327"] = {id = "1327", group_id = "50", random_type = 2, item_type = 4, item_id = "1472", count_lower = 1, count_upper = 1, weight = 100000}--火焰领主
}
--=================INDEX_GROUP_ID=================
drop_group_data.INDEX_GROUP_ID = {
	["1"] = {"1", "2", "3", "4", "5", "6", "7", "8", 
		"9", "10", "11", "12", "13", "14", "15", "16", 
		"17", "18", "19", "20", "21", "22", "23", "24", 
		"25", "26", "27", "28", "29", "30", "31", "32", 
		"33", "34", "35", "36", "37", "38", "39", "40", 
		"41"},
	["2"] = {"42", "43", "44", "45", "46", "47", "48", "49", 
		"50", "51", "52", "53", "54", "55", "56", "57", 
		"58", "59", "60", "61", "62", "63", "64", "65", 
		"66", "67", "68", "69", "70", "71", "72", "73", 
		"74", "75", "76", "77", "78", "79", "80", "81", 
		"82", "83", "84", "85", "86", "87", "88", "89", 
		"90", "91", "92", "93", "94", "95", "96", "97", 
		"98", "99", "100", "101", "102", "103", "104", "105", 
		"106", "107", "108", "109", "110", "111", "112"},
	["3"] = {"113", "114", "115", "116", "117", "118", "119", "120", 
		"121", "122", "123", "124", "125", "126", "127", "128", 
		"129", "130", "131", "132", "133", "134", "135", "136", 
		"137", "138", "139", "140", "141", "142", "143", "144", 
		"145", "146", "147", "148", "149", "150", "151", "152", 
		"153", "154", "155", "156", "157", "158", "159", "160", 
		"161", "162", "163", "164", "165", "166", "167", "168", 
		"169", "170", "171", "172", "173", "174", "175", "176", 
		"177", "178", "179", "180", "181", "182", "183", "184", 
		"185", "186", "187", "188", "189", "190", "191", "192", 
		"193", "194", "195", "196", "197", "198", "199", "200", 
		"201", "202", "203", "204", "205", "206", "207", "208", 
		"209", "210", "211", "212", "213", "214", "215", "216", 
		"217", "218", "219", "220", "221", "222", "223"},
	["4"] = {"224", "225", "226", "227", "228", "229", "230", "231", 
		"232", "233", "234", "235", "236", "237", "238", "239", 
		"240", "241", "242", "243", "244", "245", "246", "247", 
		"248", "249", "250", "251", "252", "253", "254", "255", 
		"256", "257", "258", "259", "260", "261", "262", "263", 
		"264", "265", "266", "267", "268", "269", "270", "271", 
		"272", "273", "274", "275", "276", "277", "278", "279", 
		"280", "281", "282", "283", "284", "285", "286", "287", 
		"288", "289", "290", "291", "292", "293", "294", "295", 
		"296", "297", "298", "299", "300", "301", "302", "303", 
		"304", "305", "306", "307", "308", "309", "310", "311", 
		"312", "313", "314", "315", "316", "317", "318", "319", 
		"320", "321", "322", "323", "324", "325", "326", "327", 
		"328", "329", "330", "331", "332", "333", "334", "335", 
		"336", "337", "338", "339", "340", "341", "342", "343", 
		"344", "345", "346", "347", "348", "349", "350", "351", 
		"352", "353", "354", "355", "356", "357", "358", "359", 
		"360", "361", "362", "363", "364", "365", "366", "367", 
		"368", "369"},
	["5"] = {"370", "371", "372", "373", "374", "375", "376", "377", 
		"378", "379", "380", "381", "382", "383", "384", "385", 
		"386", "387", "388", "389", "390", "391", "392", "393", 
		"394", "395", "396", "397", "398", "399", "400", "401", 
		"402", "403", "404", "405", "406", "407", "408", "409", 
		"410", "411", "412", "413", "414", "415", "416", "417", 
		"418", "419", "420", "421", "422", "423", "424", "425", 
		"426", "427", "428", "429", "430", "431", "432", "433", 
		"434", "435", "436", "437", "438", "439", "440", "441", 
		"442", "443", "444", "445", "446", "447", "448", "449", 
		"450", "451", "452", "453", "454", "455", "456", "457", 
		"458", "459", "460", "461", "462", "463", "464", "465", 
		"466", "467", "468", "469", "470", "471", "472", "473", 
		"474", "475", "476", "477", "478", "479", "480", "481", 
		"482", "483", "484", "485", "486", "487", "488", "489", 
		"490", "491", "492", "493", "494", "495", "496", "497", 
		"498", "499", "500", "501", "502", "503", "504", "505", 
		"506", "507", "508", "509", "510", "511", "512", "513", 
		"514", "515", "516", "517", "518", "519", "520", "521", 
		"522", "523", "524", "525", "526", "527", "528", "529", 
		"530", "531", "532", "533", "534", "535", "536", "537", 
		"538", "539", "540", "541", "542", "543", "544", "545", 
		"546", "547", "548", "549", "550"},
	["6"] = {"551", "552", "553", "554", "555", "556", "557", "558", 
		"559", "560", "561", "562", "563", "564", "565", "566", 
		"567", "568", "569", "570", "571", "572", "573", "574", 
		"575", "576", "577", "578", "579", "580", "581", "582", 
		"583", "584", "585", "586", "587", "588", "589", "590", 
		"591", "592", "593", "594", "595", "596", "597", "598", 
		"599", "600", "601", "602", "603", "604", "605", "606", 
		"607", "608", "609", "610", "611", "612", "613", "614", 
		"615", "616", "617", "618", "619", "620", "621", "622", 
		"623", "624", "625", "626", "627", "628", "629", "630", 
		"631", "632", "633", "634", "635", "636", "637", "638", 
		"639", "640", "641", "642", "643", "644", "645", "646", 
		"647", "648", "649", "650", "651", "652", "653", "654", 
		"655", "656", "657", "658", "659", "660", "661", "662", 
		"663", "664", "665", "666", "667", "668", "669", "670", 
		"671", "672", "673", "674", "675", "676", "677", "678", 
		"679", "680", "681", "682", "683", "684", "685", "686", 
		"687", "688", "689", "690", "691", "692", "693", "694", 
		"695", "696", "697", "698", "699", "700", "701", "702", 
		"703", "704", "705", "706", "707", "708", "709", "710", 
		"711", "712", "713", "714", "715", "716", "717", "718", 
		"719", "720", "721", "722", "723", "724", "725", "726", 
		"727", "728", "729", "730", "731", "732", "733", "734", 
		"735", "736", "737", "738", "739", "740", "741", "742", 
		"743", "744", "745", "746", "747", "748", "749", "750", 
		"751", "752", "753", "754", "755", "756", "757", "758", 
		"759", "760", "761", "762"},
	["7"] = {"763", "764", "765", "766", "767", "768", "769", "770", 
		"771", "772", "773", "774", "775", "776", "777", "778", 
		"779", "780", "781", "782", "783", "784", "785", "786", 
		"787", "788", "789", "790", "791", "792", "793", "794", 
		"795", "796", "797", "798", "799", "800", "801", "802", 
		"803", "804", "805", "806", "807", "808", "809", "810", 
		"811", "812", "813", "814", "815", "816", "817", "818", 
		"819", "820", "821", "822", "823", "824", "825", "826", 
		"827", "828", "829", "830", "831", "832", "833", "834", 
		"835", "836", "837", "838", "839", "840", "841", "842", 
		"843", "844", "845", "846", "847", "848", "849", "850", 
		"851", "852", "853", "854", "855", "856", "857", "858", 
		"859", "860", "861", "862", "863", "864", "865", "866", 
		"867", "868", "869", "870", "871", "872", "873", "874", 
		"875", "876", "877", "878", "879", "880", "881", "882", 
		"883", "884", "885", "886", "887", "888", "889", "890", 
		"891", "892", "893", "894", "895", "896", "897", "898", 
		"899", "900", "901", "902", "903", "904", "905", "906", 
		"907", "908", "909", "910", "911", "912", "913", "914", 
		"915", "916", "917", "918", "919", "920", "921", "922", 
		"923", "924", "925", "926", "927", "928", "929", "930", 
		"931", "932", "933", "934", "935", "936", "937", "938", 
		"939", "940", "941", "942", "943", "944", "945", "946", 
		"947", "948", "949", "950", "951", "952", "953", "954", 
		"955", "956", "957", "958", "959", "960", "961", "962", 
		"963", "964", "965", "966", "967", "968", "969", "970", 
		"971", "972", "973", "974"},
	["8"] = {"975"},
	["9"] = {"976"},
	["10"] = {"977"},
	["11"] = {"978"},
	["12"] = {"979"},
	["13"] = {"980"},
	["14"] = {"981"},
	["15"] = {"982", "983", "984", "985", "986", "987", "988", "989", 
		"990", "991", "992", "993", "994", "995", "996", "997", 
		"998", "999", "1000", "1001", "1002", "1003", "1004", "1005", 
		"1006", "1007", "1008", "1009", "1010", "1011", "1012", "1013", 
		"1014", "1015", "1016", "1017", "1018", "1019", "1020", "1021", 
		"1022", "1023", "1024", "1025", "1026", "1027", "1028", "1029", 
		"1030", "1031", "1032"},
	["16"] = {"1033", "1034", "1035", "1036", "1037", "1038", "1039", "1040", 
		"1041", "1042", "1043"},
	["17"] = {"1044", "1045", "1046", "1047", "1048", "1049", "1050", "1051", 
		"1052", "1053", "1054", "1055", "1056", "1057", "1058", "1059", 
		"1060", "1061"},
	["18"] = {"1062", "1063", "1064", "1065", "1066", "1067", "1068", "1069", 
		"1070", "1071", "1072", "1073", "1074", "1075", "1076", "1077", 
		"1078", "1079", "1080", "1081", "1082", "1083", "1084", "1085", 
		"1086", "1087"},
	["19"] = {"1088", "1089", "1090", "1091", "1092", "1093", "1094", "1095", 
		"1096", "1097", "1098", "1099", "1100", "1101", "1102", "1103", 
		"1104", "1105", "1106", "1107", "1108", "1109", "1110", "1111", 
		"1112", "1113", "1114", "1115", "1116", "1117", "1118", "1119", 
		"1120"},
	["20"] = {"1121", "1122", "1123", "1124", "1125", "1126", "1127", "1128", 
		"1129", "1130", "1131", "1132", "1133", "1134", "1135", "1136", 
		"1137", "1138", "1139", "1140", "1141", "1142", "1143", "1144", 
		"1145", "1146", "1147", "1148", "1149", "1150", "1151", "1152", 
		"1153", "1154", "1155", "1156", "1157", "1158", "1159", "1160", 
		"1161"},
	["21"] = {"1162", "1163", "1164", "1165", "1166", "1167", "1168", "1169", 
		"1170", "1171", "1172", "1173", "1174", "1175", "1176", "1177", 
		"1178", "1179", "1180", "1181", "1182", "1183", "1184", "1185", 
		"1186", "1187", "1188", "1189", "1190", "1191", "1192", "1193", 
		"1194", "1195", "1196", "1197", "1198", "1199", "1200", "1201", 
		"1202", "1203", "1204", "1205", "1206", "1207", "1208"},
	["22"] = {"1209", "1210", "1211", "1212", "1213", "1214", "1215", "1216", 
		"1217", "1218", "1219", "1220", "1221", "1222", "1223", "1224", 
		"1225", "1226", "1227", "1228", "1229", "1230", "1231", "1232", 
		"1233", "1234", "1235", "1236", "1237", "1238", "1239", "1240", 
		"1241", "1242", "1243", "1244", "1245", "1246", "1247", "1248", 
		"1249", "1250", "1251", "1252", "1253", "1254", "1255"},
	["23"] = {"1256"},
	["24"] = {"1257"},
	["25"] = {"1258"},
	["26"] = {"1259"},
	["27"] = {"1260"},
	["28"] = {"1261"},
	["29"] = {"1262"},
	["30"] = {"1263", "1264", "1265", "1266", "1267", "1268", "1269", "1270", 
		"1271", "1272", "1273", "1274", "1275", "1276", "1277", "1278", 
		"1279", "1280", "1281", "1282", "1283", "1284"},
	["31"] = {"1285", "1286", "1287", "1288", "1289"},
	["32"] = {"1290", "1291", "1292"},
	["33"] = {"1293", "1294"},
	["34"] = {"1295", "1296"},
	["35"] = {"1297"},
	["36"] = {"1298", "1299"},
	["37"] = {"1300", "1301", "1302"},
	["38"] = {"1303"},
	["39"] = {"1304"},
	["40"] = {"1305", "1306", "1307", "1308", "1309"},
	["41"] = {"1310"},
	["42"] = {"1311", "1312", "1313", "1314"},
	["43"] = {"1315", "1316", "1317", "1318"},
	["44"] = {"1319"},
	["45"] = {"1320", "1321"},
	["46"] = {"1322"},
	["47"] = {"1323"},
	["48"] = {"1324", "1325"},
	["49"] = {"1326"},
	["50"] = {"1327"}
}
return drop_group_data