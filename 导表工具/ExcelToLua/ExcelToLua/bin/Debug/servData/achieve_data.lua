local achieve_data = {}

--======================ACHIEVE_INFO==========================
achieve_data.ACHIEVE_INFO = {
	["1"] = {id = "1",name_id = "97041",brief_id = "98007",level = 1,pre_achieve = "-1",post_achieve = "2",type = 7,condition = 1,reward_count = 1,reward_type1 = 3,
		reward_item1 = "15098",reward_count1 = 350,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--竞技战斗1次
	["2"] = {id = "2",name_id = "97041",brief_id = "98007",level = 1,pre_achieve = "1",post_achieve = "3",type = 7,condition = 5,reward_count = 1,reward_type1 = 3,
		reward_item1 = "15098",reward_count1 = 500,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--竞技战斗5次
	["3"] = {id = "3",name_id = "97041",brief_id = "98007",level = 1,pre_achieve = "2",post_achieve = "4",type = 7,condition = 10,reward_count = 1,reward_type1 = 3,
		reward_item1 = "15098",reward_count1 = 600,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--竞技战斗10次
	["4"] = {id = "4",name_id = "97041",brief_id = "98007",level = 1,pre_achieve = "3",post_achieve = "5",type = 7,condition = 20,reward_count = 1,reward_type1 = 3,
		reward_item1 = "15098",reward_count1 = 700,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--竞技战斗20次
	["5"] = {id = "5",name_id = "97041",brief_id = "98007",level = 1,pre_achieve = "4",post_achieve = "6",type = 7,condition = 50,reward_count = 1,reward_type1 = 3,
		reward_item1 = "15098",reward_count1 = 850,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--竞技战斗50次
	["6"] = {id = "6",name_id = "97041",brief_id = "98007",level = 1,pre_achieve = "5",post_achieve = "7",type = 7,condition = 100,reward_count = 1,reward_type1 = 3,
		reward_item1 = "15098",reward_count1 = 950,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--竞技战斗100次
	["7"] = {id = "7",name_id = "97041",brief_id = "98007",level = 1,pre_achieve = "6",post_achieve = "8",type = 7,condition = 200,reward_count = 1,reward_type1 = 3,
		reward_item1 = "15098",reward_count1 = 1000,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--竞技战斗200次
	["8"] = {id = "8",name_id = "97041",brief_id = "98007",level = 1,pre_achieve = "7",post_achieve = "9",type = 7,condition = 300,reward_count = 1,reward_type1 = 3,
		reward_item1 = "15098",reward_count1 = 1200,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--竞技战斗300次
	["9"] = {id = "9",name_id = "97041",brief_id = "98007",level = 1,pre_achieve = "8",post_achieve = "-1",type = 7,condition = 500,reward_count = 1,reward_type1 = 3,
		reward_item1 = "15098",reward_count1 = 1350,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--竞技战斗500次
	["10"] = {id = "10",name_id = "97042",brief_id = "98008",level = 1,pre_achieve = "-1",post_achieve = "11",type = 15,condition = 1,reward_count = 1,reward_type1 = 2,
		reward_item1 = "1001",reward_count1 = 50,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--竞技胜利1次
	["11"] = {id = "11",name_id = "97042",brief_id = "98008",level = 1,pre_achieve = "10",post_achieve = "12",type = 15,condition = 3,reward_count = 1,reward_type1 = 2,
		reward_item1 = "1001",reward_count1 = 50,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--竞技胜利3次
	["12"] = {id = "12",name_id = "97042",brief_id = "98008",level = 1,pre_achieve = "11",post_achieve = "13",type = 15,condition = 8,reward_count = 1,reward_type1 = 2,
		reward_item1 = "1001",reward_count1 = 100,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--竞技胜利8次
	["13"] = {id = "13",name_id = "97042",brief_id = "98008",level = 1,pre_achieve = "12",post_achieve = "14",type = 15,condition = 15,reward_count = 1,reward_type1 = 2,
		reward_item1 = "1001",reward_count1 = 100,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--竞技胜利15次
	["14"] = {id = "14",name_id = "97042",brief_id = "98008",level = 1,pre_achieve = "13",post_achieve = "15",type = 15,condition = 30,reward_count = 1,reward_type1 = 2,
		reward_item1 = "1001",reward_count1 = 150,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--竞技胜利30次
	["15"] = {id = "15",name_id = "97042",brief_id = "98008",level = 1,pre_achieve = "14",post_achieve = "16",type = 15,condition = 50,reward_count = 1,reward_type1 = 2,
		reward_item1 = "1001",reward_count1 = 150,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--竞技胜利50次
	["16"] = {id = "16",name_id = "97042",brief_id = "98008",level = 1,pre_achieve = "15",post_achieve = "17",type = 15,condition = 80,reward_count = 1,reward_type1 = 2,
		reward_item1 = "1001",reward_count1 = 200,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--竞技胜利80次
	["17"] = {id = "17",name_id = "97042",brief_id = "98008",level = 1,pre_achieve = "16",post_achieve = "18",type = 15,condition = 120,reward_count = 1,reward_type1 = 2,
		reward_item1 = "1001",reward_count1 = 200,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--竞技胜利120次
	["18"] = {id = "18",name_id = "97042",brief_id = "98008",level = 1,pre_achieve = "17",post_achieve = "-1",type = 15,condition = 200,reward_count = 1,reward_type1 = 2,
		reward_item1 = "1001",reward_count1 = 300,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--竞技胜利200次
	["19"] = {id = "19",name_id = "97043",brief_id = "98009",level = 1,pre_achieve = "-1",post_achieve = "20",type = 12,condition = 5,reward_count = 1,reward_type1 = 2,
		reward_item1 = "1000",reward_count1 = 800,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--卡牌升级5次
	["20"] = {id = "20",name_id = "97043",brief_id = "98009",level = 1,pre_achieve = "19",post_achieve = "21",type = 12,condition = 10,reward_count = 1,reward_type1 = 2,
		reward_item1 = "1000",reward_count1 = 1500,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--卡牌升级10次
	["21"] = {id = "21",name_id = "97043",brief_id = "98009",level = 1,pre_achieve = "20",post_achieve = "22",type = 12,condition = 20,reward_count = 1,reward_type1 = 2,
		reward_item1 = "1000",reward_count1 = 3000,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--卡牌升级20次
	["22"] = {id = "22",name_id = "97043",brief_id = "98009",level = 1,pre_achieve = "21",post_achieve = "23",type = 12,condition = 50,reward_count = 1,reward_type1 = 2,
		reward_item1 = "1000",reward_count1 = 5000,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--卡牌升级50次
	["23"] = {id = "23",name_id = "97043",brief_id = "98009",level = 1,pre_achieve = "22",post_achieve = "24",type = 12,condition = 80,reward_count = 1,reward_type1 = 2,
		reward_item1 = "1000",reward_count1 = 10000,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--卡牌升级80次
	["24"] = {id = "24",name_id = "97043",brief_id = "98009",level = 1,pre_achieve = "23",post_achieve = "25",type = 12,condition = 120,reward_count = 1,reward_type1 = 2,
		reward_item1 = "1000",reward_count1 = 15000,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--卡牌升级120次
	["25"] = {id = "25",name_id = "97043",brief_id = "98009",level = 1,pre_achieve = "24",post_achieve = "26",type = 12,condition = 150,reward_count = 1,reward_type1 = 2,
		reward_item1 = "1000",reward_count1 = 20000,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--卡牌升级150次
	["26"] = {id = "26",name_id = "97043",brief_id = "98009",level = 1,pre_achieve = "25",post_achieve = "27",type = 12,condition = 200,reward_count = 1,reward_type1 = 2,
		reward_item1 = "1000",reward_count1 = 30000,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--卡牌升级200次
	["27"] = {id = "27",name_id = "97043",brief_id = "98009",level = 1,pre_achieve = "26",post_achieve = "-1",type = 12,condition = 300,reward_count = 1,reward_type1 = 2,
		reward_item1 = "1000",reward_count1 = 50000,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--卡牌升级300次
	["28"] = {id = "28",name_id = "97044",brief_id = "98010",level = 1,pre_achieve = "-1",post_achieve = "29",type = 14,condition = 1,reward_count = 1,reward_type1 = 3,
		reward_item1 = "15024",reward_count1 = 5,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--卡牌突破1次
	["29"] = {id = "29",name_id = "97044",brief_id = "98010",level = 1,pre_achieve = "28",post_achieve = "30",type = 14,condition = 3,reward_count = 1,reward_type1 = 3,
		reward_item1 = "15024",reward_count1 = 10,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--卡牌突破3次
	["30"] = {id = "30",name_id = "97044",brief_id = "98010",level = 1,pre_achieve = "29",post_achieve = "31",type = 14,condition = 8,reward_count = 1,reward_type1 = 3,
		reward_item1 = "15024",reward_count1 = 15,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--卡牌突破8次
	["31"] = {id = "31",name_id = "97044",brief_id = "98010",level = 1,pre_achieve = "30",post_achieve = "32",type = 14,condition = 15,reward_count = 1,reward_type1 = 3,
		reward_item1 = "15024",reward_count1 = 20,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--卡牌突破15次
	["32"] = {id = "32",name_id = "97044",brief_id = "98010",level = 1,pre_achieve = "31",post_achieve = "33",type = 14,condition = 30,reward_count = 1,reward_type1 = 3,
		reward_item1 = "15024",reward_count1 = 25,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--卡牌突破30次
	["33"] = {id = "33",name_id = "97044",brief_id = "98010",level = 1,pre_achieve = "32",post_achieve = "34",type = 14,condition = 50,reward_count = 1,reward_type1 = 3,
		reward_item1 = "15024",reward_count1 = 30,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--卡牌突破50次
	["34"] = {id = "34",name_id = "97044",brief_id = "98010",level = 1,pre_achieve = "33",post_achieve = "35",type = 14,condition = 80,reward_count = 1,reward_type1 = 3,
		reward_item1 = "15024",reward_count1 = 35,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--卡牌突破80次
	["35"] = {id = "35",name_id = "97044",brief_id = "98010",level = 1,pre_achieve = "34",post_achieve = "36",type = 14,condition = 120,reward_count = 1,reward_type1 = 3,
		reward_item1 = "15024",reward_count1 = 40,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--卡牌突破120次
	["36"] = {id = "36",name_id = "97044",brief_id = "98010",level = 1,pre_achieve = "35",post_achieve = "-1",type = 14,condition = 200,reward_count = 1,reward_type1 = 3,
		reward_item1 = "15024",reward_count1 = 45,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--卡牌突破200次
	["37"] = {id = "37",name_id = "97060",brief_id = "98011",level = 1,pre_achieve = "-1",post_achieve = "38",type = 10,condition = 5,reward_count = 1,reward_type1 = 2,
		reward_item1 = "1001",reward_count1 = 100,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--解锁5种卡牌
	["38"] = {id = "38",name_id = "97060",brief_id = "98011",level = 1,pre_achieve = "37",post_achieve = "39",type = 10,condition = 10,reward_count = 1,reward_type1 = 2,
		reward_item1 = "1001",reward_count1 = 200,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--解锁10种卡牌
	["39"] = {id = "39",name_id = "97060",brief_id = "98011",level = 1,pre_achieve = "38",post_achieve = "40",type = 10,condition = 15,reward_count = 1,reward_type1 = 2,
		reward_item1 = "1001",reward_count1 = 300,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--解锁15种卡牌
	["40"] = {id = "40",name_id = "97060",brief_id = "98011",level = 1,pre_achieve = "39",post_achieve = "41",type = 10,condition = 20,reward_count = 1,reward_type1 = 2,
		reward_item1 = "1001",reward_count1 = 350,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--解锁20种卡牌
	["41"] = {id = "41",name_id = "97060",brief_id = "98011",level = 1,pre_achieve = "40",post_achieve = "42",type = 10,condition = 25,reward_count = 1,reward_type1 = 2,
		reward_item1 = "1001",reward_count1 = 400,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--解锁25种卡牌
	["42"] = {id = "42",name_id = "97060",brief_id = "98011",level = 1,pre_achieve = "41",post_achieve = "43",type = 10,condition = 30,reward_count = 1,reward_type1 = 2,
		reward_item1 = "1001",reward_count1 = 400,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--解锁30种卡牌
	["43"] = {id = "43",name_id = "97060",brief_id = "98011",level = 1,pre_achieve = "42",post_achieve = "44",type = 10,condition = 35,reward_count = 1,reward_type1 = 2,
		reward_item1 = "1001",reward_count1 = 400,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--解锁35种卡牌
	["44"] = {id = "44",name_id = "97060",brief_id = "98011",level = 1,pre_achieve = "43",post_achieve = "45",type = 10,condition = 40,reward_count = 1,reward_type1 = 2,
		reward_item1 = "1001",reward_count1 = 400,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--解锁40种卡牌
	["45"] = {id = "45",name_id = "97060",brief_id = "98011",level = 1,pre_achieve = "44",post_achieve = "-1",type = 10,condition = 50,reward_count = 1,reward_type1 = 2,
		reward_item1 = "1001",reward_count1 = 400,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--解锁50种卡牌
	["46"] = {id = "46",name_id = "98015",brief_id = "98012",level = 1,pre_achieve = "-1",post_achieve = "47",type = 16,condition = 1,reward_count = 1,reward_type1 = 2,
		reward_item1 = "1000",reward_count1 = 1500,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--主角突破+1
	["47"] = {id = "47",name_id = "98015",brief_id = "98012",level = 1,pre_achieve = "46",post_achieve = "48",type = 16,condition = 2,reward_count = 1,reward_type1 = 2,
		reward_item1 = "1000",reward_count1 = 2500,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--主角突破+2
	["48"] = {id = "48",name_id = "98015",brief_id = "98012",level = 1,pre_achieve = "47",post_achieve = "49",type = 16,condition = 3,reward_count = 1,reward_type1 = 2,
		reward_item1 = "1000",reward_count1 = 4000,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--主角突破+3
	["49"] = {id = "49",name_id = "98015",brief_id = "98012",level = 1,pre_achieve = "48",post_achieve = "50",type = 16,condition = 4,reward_count = 1,reward_type1 = 2,
		reward_item1 = "1000",reward_count1 = 8000,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--主角突破+4
	["50"] = {id = "50",name_id = "98015",brief_id = "98012",level = 1,pre_achieve = "49",post_achieve = "51",type = 16,condition = 5,reward_count = 1,reward_type1 = 2,
		reward_item1 = "1000",reward_count1 = 15000,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--主角突破+5
	["51"] = {id = "51",name_id = "98015",brief_id = "98012",level = 1,pre_achieve = "50",post_achieve = "52",type = 16,condition = 6,reward_count = 1,reward_type1 = 2,
		reward_item1 = "1000",reward_count1 = 40000,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--主角突破+6
	["52"] = {id = "52",name_id = "98015",brief_id = "98012",level = 1,pre_achieve = "51",post_achieve = "53",type = 16,condition = 7,reward_count = 1,reward_type1 = 2,
		reward_item1 = "1000",reward_count1 = 50000,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--主角突破+7
	["53"] = {id = "53",name_id = "98015",brief_id = "98012",level = 1,pre_achieve = "52",post_achieve = "54",type = 16,condition = 8,reward_count = 1,reward_type1 = 2,
		reward_item1 = "1000",reward_count1 = 80000,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--主角突破+8
	["54"] = {id = "54",name_id = "98015",brief_id = "98012",level = 1,pre_achieve = "53",post_achieve = "55",type = 16,condition = 9,reward_count = 1,reward_type1 = 2,
		reward_item1 = "1000",reward_count1 = 100000,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--主角突破+9
	["55"] = {id = "55",name_id = "98015",brief_id = "98012",level = 1,pre_achieve = "54",post_achieve = "-1",type = 16,condition = 10,reward_count = 1,reward_type1 = 2,
		reward_item1 = "1000",reward_count1 = 200000,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--主角突破+10
	["56"] = {id = "56",name_id = "98016",brief_id = "98013",level = 1,pre_achieve = "-1",post_achieve = "57",type = 17,condition = 2,reward_count = 1,reward_type1 = 3,
		reward_item1 = "15061",reward_count1 = 1,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--金币熔炉升级到2级
	["57"] = {id = "57",name_id = "98016",brief_id = "98013",level = 1,pre_achieve = "56",post_achieve = "58",type = 17,condition = 3,reward_count = 1,reward_type1 = 3,
		reward_item1 = "15062",reward_count1 = 1,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--金币熔炉升级到3级
	["58"] = {id = "58",name_id = "98016",brief_id = "98013",level = 1,pre_achieve = "57",post_achieve = "59",type = 17,condition = 5,reward_count = 1,reward_type1 = 3,
		reward_item1 = "15065",reward_count1 = 1,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--金币熔炉升级到5级
	["59"] = {id = "59",name_id = "98016",brief_id = "98013",level = 1,pre_achieve = "58",post_achieve = "60",type = 17,condition = 7,reward_count = 1,reward_type1 = 3,
		reward_item1 = "15066",reward_count1 = 1,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--金币熔炉升级到7级
	["60"] = {id = "60",name_id = "98016",brief_id = "98013",level = 1,pre_achieve = "59",post_achieve = "61",type = 17,condition = 10,reward_count = 1,reward_type1 = 3,
		reward_item1 = "15067",reward_count1 = 1,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--金币熔炉升级到10级
	["61"] = {id = "61",name_id = "98016",brief_id = "98013",level = 1,pre_achieve = "60",post_achieve = "62",type = 17,condition = 15,reward_count = 1,reward_type1 = 3,
		reward_item1 = "15070",reward_count1 = 1,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--金币熔炉升级到15级
	["62"] = {id = "62",name_id = "98016",brief_id = "98013",level = 1,pre_achieve = "61",post_achieve = "63",type = 17,condition = 20,reward_count = 1,reward_type1 = 3,
		reward_item1 = "15071",reward_count1 = 1,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--金币熔炉升级到20级
	["63"] = {id = "63",name_id = "98016",brief_id = "98013",level = 1,pre_achieve = "62",post_achieve = "64",type = 17,condition = 25,reward_count = 1,reward_type1 = 3,
		reward_item1 = "15075",reward_count1 = 1,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--金币熔炉升级到25级
	["64"] = {id = "64",name_id = "98016",brief_id = "98013",level = 1,pre_achieve = "63",post_achieve = "-1",type = 17,condition = 30,reward_count = 1,reward_type1 = 3,
		reward_item1 = "15079",reward_count1 = 1,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--金币熔炉升级到30级
	["65"] = {id = "65",name_id = "98017",brief_id = "98014",level = 1,pre_achieve = "-1",post_achieve = "66",type = 18,condition = 2,reward_count = 1,reward_type1 = 3,
		reward_item1 = "15062",reward_count1 = 1,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--蓝晶熔炉升级到2级
	["66"] = {id = "66",name_id = "98017",brief_id = "98014",level = 1,pre_achieve = "65",post_achieve = "67",type = 18,condition = 3,reward_count = 1,reward_type1 = 3,
		reward_item1 = "15065",reward_count1 = 1,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--蓝晶熔炉升级到3级
	["67"] = {id = "67",name_id = "98017",brief_id = "98014",level = 1,pre_achieve = "66",post_achieve = "68",type = 18,condition = 5,reward_count = 1,reward_type1 = 3,
		reward_item1 = "15066",reward_count1 = 1,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--蓝晶熔炉升级到5级
	["68"] = {id = "68",name_id = "98017",brief_id = "98014",level = 1,pre_achieve = "67",post_achieve = "69",type = 18,condition = 7,reward_count = 1,reward_type1 = 3,
		reward_item1 = "15067",reward_count1 = 1,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--蓝晶熔炉升级到7级
	["69"] = {id = "69",name_id = "98017",brief_id = "98014",level = 1,pre_achieve = "68",post_achieve = "70",type = 18,condition = 10,reward_count = 1,reward_type1 = 3,
		reward_item1 = "15070",reward_count1 = 1,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--蓝晶熔炉升级到10级
	["70"] = {id = "70",name_id = "98017",brief_id = "98014",level = 1,pre_achieve = "69",post_achieve = "71",type = 18,condition = 15,reward_count = 1,reward_type1 = 3,
		reward_item1 = "15071",reward_count1 = 1,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--蓝晶熔炉升级到15级
	["71"] = {id = "71",name_id = "98017",brief_id = "98014",level = 1,pre_achieve = "70",post_achieve = "72",type = 18,condition = 20,reward_count = 1,reward_type1 = 3,
		reward_item1 = "15075",reward_count1 = 1,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--蓝晶熔炉升级到20级
	["72"] = {id = "72",name_id = "98017",brief_id = "98014",level = 1,pre_achieve = "71",post_achieve = "73",type = 18,condition = 25,reward_count = 1,reward_type1 = 3,
		reward_item1 = "15079",reward_count1 = 1,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1},--蓝晶熔炉升级到25级
	["73"] = {id = "73",name_id = "98017",brief_id = "98014",level = 1,pre_achieve = "72",post_achieve = "-1",type = 18,condition = 30,reward_count = 1,reward_type1 = 3,
		reward_item1 = "15083",reward_count1 = 1,reward_type2 = -1,reward_item2 = "-1",reward_count2 = -1}--蓝晶熔炉升级到30级
}
return achieve_data