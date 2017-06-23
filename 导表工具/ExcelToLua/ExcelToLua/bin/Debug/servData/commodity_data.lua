local commodity_data = {}

--======================COMMODITY_INFO==========================
commodity_data.COMMODITY_INFO = {
	["1"] = {id="1",shop_id="100",item_icon="Icon_ShopBox01",item_type="1",item_id=15056,count="1",inventory=50,refresh_type=1,price=10,money_id=1001,
		weight="100",group_id=1,arena_level=1},--1-宝箱-铜
	["2"] = {id="2",shop_id="100",item_icon="Icon_ShopBox02",item_type="1",item_id=15057,count="1",inventory=50,refresh_type=1,price=40,money_id=1001,
		weight="100",group_id=2,arena_level=1},--1-宝箱-银
	["3"] = {id="3",shop_id="100",item_icon="Icon_ShopBox03",item_type="1",item_id=15058,count="1",inventory=50,refresh_type=1,price=240,money_id=1001,
		weight="100",group_id=3,arena_level=1},--1-宝箱-金
	["4"] = {id="4",shop_id="100",item_icon="Icon_ShopBox04",item_type="1",item_id=15059,count="1",inventory=50,refresh_type=1,price=750,money_id=1001,
		weight="100",group_id=4,arena_level=1},--1-宝箱-超
	["5"] = {id="5",shop_id="100",item_icon="Icon_ShopBox01",item_type="1",item_id=15060,count="1",inventory=50,refresh_type=1,price=15,money_id=1001,
		weight="100",group_id=5,arena_level=2},--2-宝箱-铜
	["6"] = {id="6",shop_id="100",item_icon="Icon_ShopBox02",item_type="1",item_id=15061,count="1",inventory=50,refresh_type=1,price=60,money_id=1001,
		weight="100",group_id=6,arena_level=2},--2-宝箱-银
	["7"] = {id="7",shop_id="100",item_icon="Icon_ShopBox03",item_type="1",item_id=15062,count="1",inventory=50,refresh_type=1,price=330,money_id=1001,
		weight="100",group_id=7,arena_level=2},--2-宝箱-金
	["8"] = {id="8",shop_id="100",item_icon="Icon_ShopBox04",item_type="1",item_id=15063,count="1",inventory=50,refresh_type=1,price=915,money_id=1001,
		weight="100",group_id=8,arena_level=2},--2-宝箱-超
	["9"] = {id="9",shop_id="100",item_icon="Icon_ShopBox01",item_type="1",item_id=15064,count="1",inventory=50,refresh_type=1,price=20,money_id=1001,
		weight="100",group_id=9,arena_level=3},--3-宝箱-铜
	["10"] = {id="10",shop_id="100",item_icon="Icon_ShopBox02",item_type="1",item_id=15065,count="1",inventory=50,refresh_type=1,price=85,money_id=1001,
		weight="100",group_id=10,arena_level=3},--3-宝箱-银
	["11"] = {id="11",shop_id="100",item_icon="Icon_ShopBox03",item_type="1",item_id=15066,count="1",inventory=50,refresh_type=1,price=375,money_id=1001,
		weight="100",group_id=11,arena_level=3},--3-宝箱-金
	["12"] = {id="12",shop_id="100",item_icon="Icon_ShopBox04",item_type="1",item_id=15067,count="1",inventory=50,refresh_type=1,price=990,money_id=1001,
		weight="100",group_id=12,arena_level=3},--3-宝箱-超
	["13"] = {id="13",shop_id="100",item_icon="Icon_ShopBox01",item_type="1",item_id=15068,count="1",inventory=50,refresh_type=1,price=25,money_id=1001,
		weight="100",group_id=13,arena_level=4},--4-宝箱-铜
	["14"] = {id="14",shop_id="100",item_icon="Icon_ShopBox02",item_type="1",item_id=15069,count="1",inventory=50,refresh_type=1,price=105,money_id=1001,
		weight="100",group_id=14,arena_level=4},--4-宝箱-银
	["15"] = {id="15",shop_id="100",item_icon="Icon_ShopBox03",item_type="1",item_id=15070,count="1",inventory=50,refresh_type=1,price=415,money_id=1001,
		weight="100",group_id=15,arena_level=4},--4-宝箱-金
	["16"] = {id="16",shop_id="100",item_icon="Icon_ShopBox04",item_type="1",item_id=15071,count="1",inventory=50,refresh_type=1,price=1050,money_id=1001,
		weight="100",group_id=16,arena_level=4},--4-宝箱-超
	["17"] = {id="17",shop_id="100",item_icon="Icon_ShopBox01",item_type="1",item_id=15072,count="1",inventory=50,refresh_type=1,price=35,money_id=1001,
		weight="100",group_id=17,arena_level=5},--5-宝箱-铜
	["18"] = {id="18",shop_id="100",item_icon="Icon_ShopBox02",item_type="1",item_id=15073,count="1",inventory=50,refresh_type=1,price=150,money_id=1001,
		weight="100",group_id=18,arena_level=5},--5-宝箱-银
	["19"] = {id="19",shop_id="100",item_icon="Icon_ShopBox03",item_type="1",item_id=15074,count="1",inventory=50,refresh_type=1,price=490,money_id=1001,
		weight="100",group_id=19,arena_level=5},--5-宝箱-金
	["20"] = {id="20",shop_id="100",item_icon="Icon_ShopBox04",item_type="1",item_id=15075,count="1",inventory=50,refresh_type=1,price=1180,money_id=1001,
		weight="100",group_id=20,arena_level=5},--5-宝箱-超
	["21"] = {id="21",shop_id="100",item_icon="Icon_ShopBox01",item_type="1",item_id=15076,count="1",inventory=50,refresh_type=1,price=35,money_id=1001,
		weight="100",group_id=21,arena_level=6},--6-宝箱-铜
	["22"] = {id="22",shop_id="100",item_icon="Icon_ShopBox02",item_type="1",item_id=15077,count="1",inventory=50,refresh_type=1,price=150,money_id=1001,
		weight="100",group_id=22,arena_level=6},--6-宝箱-银
	["23"] = {id="23",shop_id="100",item_icon="Icon_ShopBox03",item_type="1",item_id=15078,count="1",inventory=50,refresh_type=1,price=585,money_id=1001,
		weight="100",group_id=23,arena_level=6},--6-宝箱-金
	["24"] = {id="24",shop_id="100",item_icon="Icon_ShopBox04",item_type="1",item_id=15079,count="1",inventory=50,refresh_type=1,price=1335,money_id=1001,
		weight="100",group_id=24,arena_level=6},--6-宝箱-超
	["25"] = {id="25",shop_id="100",item_icon="Icon_ShopBox01",item_type="1",item_id=15080,count="1",inventory=50,refresh_type=1,price=36,money_id=1001,
		weight="100",group_id=25,arena_level=7},--7-宝箱-铜
	["26"] = {id="26",shop_id="100",item_icon="Icon_ShopBox02",item_type="1",item_id=15081,count="1",inventory=50,refresh_type=1,price=160,money_id=1001,
		weight="100",group_id=26,arena_level=7},--7-宝箱-银
	["27"] = {id="27",shop_id="100",item_icon="Icon_ShopBox03",item_type="1",item_id=15082,count="1",inventory=50,refresh_type=1,price=650,money_id=1001,
		weight="100",group_id=27,arena_level=7},--7-宝箱-金
	["28"] = {id="28",shop_id="100",item_icon="Icon_ShopBox04",item_type="1",item_id=15083,count="1",inventory=50,refresh_type=1,price=1430,money_id=1001,
		weight="100",group_id=28,arena_level=7},--7-宝箱-超
	["29"] = {id="29",shop_id="101",item_icon="-1",item_type="3",item_id=15024,count="2",inventory=5,refresh_type=2,price=1200,money_id=1000,
		weight="10",group_id=1,arena_level=-1},--黑市-小经验药_金
	["30"] = {id="30",shop_id="101",item_icon="-1",item_type="3",item_id=15025,count="2",inventory=3,refresh_type=2,price=5400,money_id=1000,
		weight="8",group_id=1,arena_level=-1},--黑市-中经验药_金
	["31"] = {id="31",shop_id="101",item_icon="-1",item_type="3",item_id=15026,count="2",inventory=1,refresh_type=2,price=15000,money_id=1000,
		weight="6",group_id=1,arena_level=-1},--黑市-大经验药_金
	["32"] = {id="32",shop_id="101",item_icon="-1",item_type="3",item_id=15024,count="1",inventory=5,refresh_type=2,price=15,money_id=1001,
		weight="6",group_id=1,arena_level=-1},--黑市-小经验药_钻
	["33"] = {id="33",shop_id="101",item_icon="-1",item_type="3",item_id=15025,count="1",inventory=3,refresh_type=2,price=68,money_id=1001,
		weight="6",group_id=1,arena_level=-1},--黑市-中经验药_钻
	["34"] = {id="34",shop_id="101",item_icon="-1",item_type="3",item_id=15026,count="1",inventory=1,refresh_type=2,price=198,money_id=1001,
		weight="6",group_id=1,arena_level=-1},--黑市-大经验药_钻
	["35"] = {id="35",shop_id="101",item_icon="-1",item_type="3",item_id=15051,count="2",inventory=20,refresh_type=2,price=800,money_id=1000,
		weight="6",group_id=1,arena_level=-1},--黑市-英雄突破材料_金
	["36"] = {id="36",shop_id="101",item_icon="-1",item_type="3",item_id=15055,count="2",inventory=20,refresh_type=2,price=800,money_id=1000,
		weight="6",group_id=1,arena_level=-1},--黑市-中立突破材料_金
	["37"] = {id="37",shop_id="101",item_icon="-1",item_type="3",item_id=15028,count="2",inventory=20,refresh_type=2,price=800,money_id=1000,
		weight="6",group_id=1,arena_level=-1},--黑市-盖亚突破材料_金
	["38"] = {id="38",shop_id="101",item_icon="-1",item_type="3",item_id=15029,count="2",inventory=20,refresh_type=2,price=800,money_id=1000,
		weight="6",group_id=1,arena_level=-1},--黑市-泰坦突破材料_金
	["39"] = {id="39",shop_id="101",item_icon="-1",item_type="3",item_id=15051,count="1",inventory=20,refresh_type=2,price=10,money_id=1000,
		weight="6",group_id=1,arena_level=-1},--黑市-英雄突破材料_钻
	["40"] = {id="40",shop_id="101",item_icon="-1",item_type="3",item_id=15055,count="1",inventory=20,refresh_type=2,price=10,money_id=1000,
		weight="6",group_id=1,arena_level=-1},--黑市-中立突破材料_钻
	["41"] = {id="41",shop_id="101",item_icon="-1",item_type="3",item_id=15028,count="1",inventory=20,refresh_type=2,price=10,money_id=1000,
		weight="6",group_id=1,arena_level=-1},--黑市-盖亚突破材料_钻
	["42"] = {id="42",shop_id="101",item_icon="-1",item_type="3",item_id=15029,count="1",inventory=20,refresh_type=2,price=10,money_id=1000,
		weight="6",group_id=1,arena_level=-1},--黑市-泰坦突破材料_钻
	["43"] = {id="43",shop_id="101",item_icon="-1",item_type="3",item_id=15098,count="50",inventory=1000,refresh_type=2,price=1200,money_id=1000,
		weight="10",group_id=1,arena_level=-1},--蓝晶石
	["44"] = {id="44",shop_id="101",item_icon="-1",item_type="3",item_id=15002,count="2",inventory=100,refresh_type=2,price=400,money_id=1000,
		weight="6",group_id=2,arena_level=-1},--飞矛手_金
	["45"] = {id="45",shop_id="101",item_icon="-1",item_type="3",item_id=15044,count="2",inventory=100,refresh_type=2,price=400,money_id=1000,
		weight="6",group_id=2,arena_level=-1},--喵喵守卫_金
	["46"] = {id="46",shop_id="101",item_icon="-1",item_type="3",item_id=15094,count="2",inventory=100,refresh_type=2,price=400,money_id=1000,
		weight="6",group_id=2,arena_level=-1},--左护法_金
	["47"] = {id="47",shop_id="101",item_icon="-1",item_type="3",item_id=15033,count="2",inventory=100,refresh_type=2,price=400,money_id=1000,
		weight="4",group_id=2,arena_level=-1},--暴风步兵_金
	["48"] = {id="48",shop_id="101",item_icon="-1",item_type="3",item_id=15012,count="2",inventory=100,refresh_type=2,price=400,money_id=1000,
		weight="4",group_id=2,arena_level=-1},--力士_金
	["49"] = {id="49",shop_id="101",item_icon="-1",item_type="3",item_id=15018,count="2",inventory=100,refresh_type=2,price=400,money_id=1000,
		weight="4",group_id=2,arena_level=-1},--铠甲熊_金
	["50"] = {id="50",shop_id="101",item_icon="-1",item_type="3",item_id=15095,count="2",inventory=100,refresh_type=2,price=400,money_id=1000,
		weight="4",group_id=2,arena_level=-1},--右护法_金
	["51"] = {id="51",shop_id="101",item_icon="-1",item_type="3",item_id=15045,count="2",inventory=100,refresh_type=2,price=400,money_id=1000,
		weight="4",group_id=2,arena_level=-1},--粉红女巫_金
	["52"] = {id="52",shop_id="101",item_icon="-1",item_type="3",item_id=15003,count="2",inventory=100,refresh_type=2,price=400,money_id=1000,
		weight="4",group_id=2,arena_level=-1},--雪人_金
	["53"] = {id="53",shop_id="101",item_icon="-1",item_type="3",item_id=15005,count="2",inventory=100,refresh_type=2,price=400,money_id=1000,
		weight="4",group_id=2,arena_level=-1},--空投者_金
	["54"] = {id="54",shop_id="101",item_icon="-1",item_type="3",item_id=15006,count="2",inventory=100,refresh_type=2,price=400,money_id=1000,
		weight="4",group_id=2,arena_level=-1},--小树妖_金
	["55"] = {id="55",shop_id="101",item_icon="-1",item_type="3",item_id=15002,count="1",inventory=100,refresh_type=2,price=5,money_id=1001,
		weight="6",group_id=2,arena_level=-1},--飞矛手_钻
	["56"] = {id="56",shop_id="101",item_icon="-1",item_type="3",item_id=15044,count="1",inventory=100,refresh_type=2,price=5,money_id=1001,
		weight="6",group_id=2,arena_level=-1},--喵喵守卫_钻
	["57"] = {id="57",shop_id="101",item_icon="-1",item_type="3",item_id=15094,count="1",inventory=100,refresh_type=2,price=5,money_id=1001,
		weight="6",group_id=2,arena_level=-1},--左护法_钻
	["58"] = {id="58",shop_id="101",item_icon="-1",item_type="3",item_id=15033,count="1",inventory=100,refresh_type=2,price=5,money_id=1001,
		weight="4",group_id=2,arena_level=-1},--暴风步兵_钻
	["59"] = {id="59",shop_id="101",item_icon="-1",item_type="3",item_id=15012,count="1",inventory=100,refresh_type=2,price=5,money_id=1001,
		weight="4",group_id=2,arena_level=-1},--力士_钻
	["60"] = {id="60",shop_id="101",item_icon="-1",item_type="3",item_id=15018,count="1",inventory=100,refresh_type=2,price=5,money_id=1001,
		weight="4",group_id=2,arena_level=-1},--铠甲熊_钻
	["61"] = {id="61",shop_id="101",item_icon="-1",item_type="3",item_id=15095,count="1",inventory=100,refresh_type=2,price=5,money_id=1001,
		weight="4",group_id=2,arena_level=-1},--右护法_钻
	["62"] = {id="62",shop_id="101",item_icon="-1",item_type="3",item_id=15045,count="1",inventory=100,refresh_type=2,price=5,money_id=1001,
		weight="4",group_id=2,arena_level=-1},--粉红女巫_钻
	["63"] = {id="63",shop_id="101",item_icon="-1",item_type="3",item_id=15003,count="1",inventory=100,refresh_type=2,price=5,money_id=1001,
		weight="4",group_id=2,arena_level=-1},--雪人_钻
	["64"] = {id="64",shop_id="101",item_icon="-1",item_type="3",item_id=15005,count="1",inventory=100,refresh_type=2,price=5,money_id=1001,
		weight="4",group_id=2,arena_level=-1},--空投者_钻
	["65"] = {id="65",shop_id="101",item_icon="-1",item_type="3",item_id=15006,count="1",inventory=100,refresh_type=2,price=5,money_id=1001,
		weight="4",group_id=2,arena_level=-1},--小树妖_钻
	["66"] = {id="66",shop_id="101",item_icon="-1",item_type="3",item_id=15004,count="2",inventory=20,refresh_type=2,price=2000,money_id=1000,
		weight="6",group_id=3,arena_level=-1},--小花_金
	["67"] = {id="67",shop_id="101",item_icon="-1",item_type="3",item_id=15017,count="2",inventory=20,refresh_type=2,price=2000,money_id=1000,
		weight="6",group_id=3,arena_level=-1},--小炮_金
	["68"] = {id="68",shop_id="101",item_icon="-1",item_type="3",item_id=15046,count="2",inventory=20,refresh_type=2,price=2000,money_id=1000,
		weight="6",group_id=3,arena_level=-1},--小鹿_金
	["69"] = {id="69",shop_id="101",item_icon="-1",item_type="3",item_id=15034,count="2",inventory=20,refresh_type=2,price=2000,money_id=1000,
		weight="4",group_id=3,arena_level=-1},--鹰身人_金
	["70"] = {id="70",shop_id="101",item_icon="-1",item_type="3",item_id=15016,count="2",inventory=20,refresh_type=2,price=2000,money_id=1000,
		weight="4",group_id=3,arena_level=-1},--飞斧泰坦_金
	["71"] = {id="71",shop_id="101",item_icon="-1",item_type="3",item_id=15007,count="2",inventory=20,refresh_type=2,price=2000,money_id=1000,
		weight="4",group_id=3,arena_level=-1},--忍者_金
	["72"] = {id="72",shop_id="101",item_icon="-1",item_type="3",item_id=15100,count="2",inventory=20,refresh_type=2,price=2000,money_id=1000,
		weight="4",group_id=3,arena_level=-1},--魅魔_金
	["73"] = {id="73",shop_id="101",item_icon="-1",item_type="3",item_id=15054,count="2",inventory=20,refresh_type=2,price=2000,money_id=1000,
		weight="4",group_id=3,arena_level=-1},--蓝电法师_金
	["74"] = {id="74",shop_id="101",item_icon="-1",item_type="3",item_id=15036,count="2",inventory=20,refresh_type=2,price=2000,money_id=1000,
		weight="4",group_id=3,arena_level=-1},--樱花武士_金
	["75"] = {id="75",shop_id="101",item_icon="-1",item_type="3",item_id=15001,count="2",inventory=20,refresh_type=2,price=2000,money_id=1000,
		weight="4",group_id=3,arena_level=-1},--酒桶_金
	["76"] = {id="76",shop_id="101",item_icon="-1",item_type="3",item_id=15038,count="2",inventory=20,refresh_type=2,price=2000,money_id=1000,
		weight="4",group_id=3,arena_level=-1},--大嘴_金
	["77"] = {id="77",shop_id="101",item_icon="-1",item_type="3",item_id=15004,count="1",inventory=20,refresh_type=2,price=25,money_id=1001,
		weight="6",group_id=3,arena_level=-1},--小花_钻
	["78"] = {id="78",shop_id="101",item_icon="-1",item_type="3",item_id=15017,count="1",inventory=20,refresh_type=2,price=25,money_id=1001,
		weight="6",group_id=3,arena_level=-1},--小炮_钻
	["79"] = {id="79",shop_id="101",item_icon="-1",item_type="3",item_id=15046,count="1",inventory=20,refresh_type=2,price=25,money_id=1001,
		weight="6",group_id=3,arena_level=-1},--小鹿_钻
	["80"] = {id="80",shop_id="101",item_icon="-1",item_type="3",item_id=15034,count="1",inventory=20,refresh_type=2,price=25,money_id=1001,
		weight="4",group_id=3,arena_level=-1},--鹰身人_钻
	["81"] = {id="81",shop_id="101",item_icon="-1",item_type="3",item_id=15016,count="1",inventory=20,refresh_type=2,price=25,money_id=1001,
		weight="4",group_id=3,arena_level=-1},--飞斧泰坦_钻
	["82"] = {id="82",shop_id="101",item_icon="-1",item_type="3",item_id=15007,count="1",inventory=20,refresh_type=2,price=25,money_id=1001,
		weight="4",group_id=3,arena_level=-1},--忍者_钻
	["83"] = {id="83",shop_id="101",item_icon="-1",item_type="3",item_id=15100,count="1",inventory=20,refresh_type=2,price=25,money_id=1001,
		weight="4",group_id=3,arena_level=-1},--魅魔_钻
	["84"] = {id="84",shop_id="101",item_icon="-1",item_type="3",item_id=15054,count="1",inventory=20,refresh_type=2,price=25,money_id=1001,
		weight="4",group_id=3,arena_level=-1},--蓝电法师_钻
	["85"] = {id="85",shop_id="101",item_icon="-1",item_type="3",item_id=15036,count="1",inventory=20,refresh_type=2,price=25,money_id=1001,
		weight="4",group_id=3,arena_level=-1},--樱花武士_钻
	["86"] = {id="86",shop_id="101",item_icon="-1",item_type="3",item_id=15001,count="1",inventory=20,refresh_type=2,price=25,money_id=1001,
		weight="4",group_id=3,arena_level=-1},--酒桶_钻
	["87"] = {id="87",shop_id="101",item_icon="-1",item_type="3",item_id=15038,count="1",inventory=20,refresh_type=2,price=25,money_id=1001,
		weight="4",group_id=3,arena_level=-1},--大嘴_钻
	["88"] = {id="88",shop_id="101",item_icon="-1",item_type="3",item_id=15035,count="2",inventory=5,refresh_type=2,price=10000,money_id=1000,
		weight="8",group_id=4,arena_level=-1},--斯巴达_金
	["89"] = {id="89",shop_id="101",item_icon="-1",item_type="3",item_id=15000,count="2",inventory=5,refresh_type=2,price=10000,money_id=1000,
		weight="8",group_id=4,arena_level=-1},--骑士_金
	["90"] = {id="90",shop_id="101",item_icon="-1",item_type="3",item_id=15052,count="2",inventory=5,refresh_type=2,price=10000,money_id=1000,
		weight="8",group_id=4,arena_level=-1},--投棘者_金
	["91"] = {id="91",shop_id="101",item_icon="-1",item_type="3",item_id=15041,count="2",inventory=5,refresh_type=2,price=10000,money_id=1000,
		weight="8",group_id=4,arena_level=-1},--守护泰坦_金
	["92"] = {id="92",shop_id="101",item_icon="-1",item_type="3",item_id=15053,count="2",inventory=5,refresh_type=2,price=10000,money_id=1000,
		weight="8",group_id=4,arena_level=-1},--宝石法师_金
	["93"] = {id="93",shop_id="101",item_icon="-1",item_type="3",item_id=15019,count="2",inventory=5,refresh_type=2,price=10000,money_id=1000,
		weight="8",group_id=4,arena_level=-1},--狂暴巨人_金
	["94"] = {id="94",shop_id="101",item_icon="-1",item_type="3",item_id=15035,count="1",inventory=5,refresh_type=2,price=150,money_id=1001,
		weight="8",group_id=4,arena_level=-1},--斯巴达_钻
	["95"] = {id="95",shop_id="101",item_icon="-1",item_type="3",item_id=15000,count="1",inventory=5,refresh_type=2,price=150,money_id=1001,
		weight="8",group_id=4,arena_level=-1},--骑士_钻
	["96"] = {id="96",shop_id="101",item_icon="-1",item_type="3",item_id=15052,count="1",inventory=5,refresh_type=2,price=150,money_id=1001,
		weight="8",group_id=4,arena_level=-1},--投棘者_钻
	["97"] = {id="97",shop_id="101",item_icon="-1",item_type="3",item_id=15041,count="1",inventory=5,refresh_type=2,price=150,money_id=1001,
		weight="8",group_id=4,arena_level=-1},--守护泰坦_钻
	["98"] = {id="98",shop_id="101",item_icon="-1",item_type="3",item_id=15053,count="1",inventory=5,refresh_type=2,price=150,money_id=1001,
		weight="8",group_id=4,arena_level=-1},--宝石法师_钻
	["99"] = {id="99",shop_id="101",item_icon="-1",item_type="3",item_id=15019,count="1",inventory=5,refresh_type=2,price=150,money_id=1001,
		weight="8",group_id=4,arena_level=-1},--狂暴巨人_钻
	["100"] = {id="100",shop_id="101",item_icon="-1",item_type="3",item_id=15040,count="1",inventory=5,refresh_type=2,price=200,money_id=1001,
		weight="2",group_id=4,arena_level=-1},--古尔丹_钻
	["101"] = {id="101",shop_id="101",item_icon="-1",item_type="3",item_id=15093,count="1",inventory=5,refresh_type=2,price=1500,money_id=1001,
		weight="2",group_id=4,arena_level=-1},--火焰领主_钻
	["102"] = {id="102",shop_id="101",item_icon="-1",item_type="3",item_id=15008,count="2",inventory=20,refresh_type=2,price=2500,money_id=1000,
		weight="9",group_id=5,arena_level=-1},--阴阳师碎片_金
	["103"] = {id="103",shop_id="101",item_icon="-1",item_type="3",item_id=15010,count="2",inventory=20,refresh_type=2,price=2500,money_id=1000,
		weight="9",group_id=5,arena_level=-1},--风暴女碎片_金
	["104"] = {id="104",shop_id="101",item_icon="-1",item_type="3",item_id=15022,count="2",inventory=20,refresh_type=2,price=2500,money_id=1000,
		weight="9",group_id=5,arena_level=-1},--卡亚碎片_金
	["105"] = {id="105",shop_id="101",item_icon="-1",item_type="3",item_id=15043,count="2",inventory=20,refresh_type=2,price=2500,money_id=1000,
		weight="9",group_id=5,arena_level=-1},--喵夫人碎片_金
	["106"] = {id="106",shop_id="101",item_icon="-1",item_type="3",item_id=15103,count="2",inventory=20,refresh_type=2,price=2500,money_id=1000,
		weight="9",group_id=5,arena_level=-1},--主角碎片_金
	["107"] = {id="107",shop_id="101",item_icon="-1",item_type="3",item_id=15008,count="1",inventory=20,refresh_type=2,price=30,money_id=1001,
		weight="9",group_id=5,arena_level=-1},--阴阳师碎片_钻
	["108"] = {id="108",shop_id="101",item_icon="-1",item_type="3",item_id=15010,count="1",inventory=20,refresh_type=2,price=30,money_id=1001,
		weight="9",group_id=5,arena_level=-1},--风暴女碎片_钻
	["109"] = {id="109",shop_id="101",item_icon="-1",item_type="3",item_id=15022,count="1",inventory=20,refresh_type=2,price=30,money_id=1001,
		weight="9",group_id=5,arena_level=-1},--卡亚碎片_钻
	["110"] = {id="110",shop_id="101",item_icon="-1",item_type="3",item_id=15043,count="1",inventory=20,refresh_type=2,price=30,money_id=1001,
		weight="9",group_id=5,arena_level=-1},--喵夫人碎片_钻
	["111"] = {id="111",shop_id="101",item_icon="-1",item_type="3",item_id=15037,count="1",inventory=5,refresh_type=2,price=150,money_id=1001,
		weight="2",group_id=5,arena_level=-1},--黑岩碎片_钻
	["112"] = {id="112",shop_id="101",item_icon="-1",item_type="3",item_id=15102,count="1",inventory=5,refresh_type=2,price=150,money_id=1001,
		weight="2",group_id=5,arena_level=-1},--祖母碎片_钻
	["113"] = {id="113",shop_id="101",item_icon="-1",item_type="3",item_id=15103,count="1",inventory=50,refresh_type=2,price=30,money_id=1001,
		weight="15",group_id=5,arena_level=-1},--主角碎片_钻
	["114"] = {id="114",shop_id="101",item_icon="-1",item_type="3",item_id=15021,count="2",inventory=20,refresh_type=2,price=2500,money_id=1000,
		weight="12",group_id=6,arena_level=-1},--牛头酋长碎片_金币
	["115"] = {id="115",shop_id="101",item_icon="-1",item_type="3",item_id=15042,count="2",inventory=20,refresh_type=2,price=2500,money_id=1000,
		weight="12",group_id=6,arena_level=-1},--泰兰碎片_金币
	["116"] = {id="116",shop_id="101",item_icon="-1",item_type="3",item_id=15092,count="2",inventory=20,refresh_type=2,price=2500,money_id=1000,
		weight="12",group_id=6,arena_level=-1},--嘣碎片_金币
	["117"] = {id="117",shop_id="101",item_icon="-1",item_type="3",item_id=15101,count="2",inventory=20,refresh_type=2,price=2500,money_id=1000,
		weight="12",group_id=6,arena_level=-1},--死神碎片_金币
	["118"] = {id="118",shop_id="101",item_icon="-1",item_type="3",item_id=15021,count="1",inventory=20,refresh_type=2,price=30,money_id=1001,
		weight="12",group_id=6,arena_level=-1},--牛头酋长碎片_钻石
	["119"] = {id="119",shop_id="101",item_icon="-1",item_type="3",item_id=15042,count="1",inventory=20,refresh_type=2,price=30,money_id=1001,
		weight="12",group_id=6,arena_level=-1},--泰兰碎片_钻石
	["120"] = {id="120",shop_id="101",item_icon="-1",item_type="3",item_id=15092,count="1",inventory=20,refresh_type=2,price=30,money_id=1001,
		weight="12",group_id=6,arena_level=-1},--嘣碎片_钻石
	["121"] = {id="121",shop_id="101",item_icon="-1",item_type="3",item_id=15101,count="1",inventory=20,refresh_type=2,price=30,money_id=1001,
		weight="12",group_id=6,arena_level=-1},--死神碎片_钻石
	["122"] = {id="122",shop_id="101",item_icon="-1",item_type="3",item_id=15023,count="1",inventory=5,refresh_type=2,price=150,money_id=1001,
		weight="2",group_id=6,arena_level=-1},--白幽灵碎片_钻石
	["123"] = {id="123",shop_id="101",item_icon="-1",item_type="3",item_id=15039,count="1",inventory=5,refresh_type=2,price=150,money_id=1001,
		weight="2",group_id=6,arena_level=-1},--刚刀碎片_钻石
	["124"] = {id="124",shop_id="102",item_icon="Icon_ShopJinBi01",item_type="2",item_id=1000,count="1000",inventory=-1,refresh_type=1,price=25,money_id=1001,
		weight="100",group_id=1,arena_level=-1},--金币商店
	["125"] = {id="125",shop_id="102",item_icon="Icon_ShopJinBi02",item_type="2",item_id=1000,count="5000",inventory=-1,refresh_type=1,price=120,money_id=1001,
		weight="100",group_id=2,arena_level=-1},--金币商店
	["126"] = {id="126",shop_id="102",item_icon="Icon_ShopJinBi03",item_type="2",item_id=1000,count="20000",inventory=-1,refresh_type=1,price=450,money_id=1001,
		weight="100",group_id=3,arena_level=-1},--金币商店
	["127"] = {id="127",shop_id="102",item_icon="Icon_ShopJinBi04",item_type="2",item_id=1000,count="50000",inventory=-1,refresh_type=1,price=1000,money_id=1001,
		weight="100",group_id=4,arena_level=-1},--金币商店
	["128"] = {id="128",shop_id="102",item_icon="Icon_ShopJinBi05",item_type="2",item_id=1000,count="100000",inventory=-1,refresh_type=1,price=1800,money_id=1001,
		weight="100",group_id=5,arena_level=-1},--金币商店
	["129"] = {id="129",shop_id="102",item_icon="Icon_ShopJinBi06",item_type="2",item_id=1000,count="200000",inventory=-1,refresh_type=1,price=3200,money_id=1001,
		weight="100",group_id=6,arena_level=-1}--金币商店
}
--=================INDEX_SHOP_ID_GROUP_ID=================
commodity_data.INDEX_SHOP_ID_GROUP_ID = {
	["100_1"] = {"1"},
	["100_2"] = {"2"},
	["100_3"] = {"3"},
	["100_4"] = {"4"},
	["100_5"] = {"5"},
	["100_6"] = {"6"},
	["100_7"] = {"7"},
	["100_8"] = {"8"},
	["100_9"] = {"9"},
	["100_10"] = {"10"},
	["100_11"] = {"11"},
	["100_12"] = {"12"},
	["100_13"] = {"13"},
	["100_14"] = {"14"},
	["100_15"] = {"15"},
	["100_16"] = {"16"},
	["100_17"] = {"17"},
	["100_18"] = {"18"},
	["100_19"] = {"19"},
	["100_20"] = {"20"},
	["100_21"] = {"21"},
	["100_22"] = {"22"},
	["100_23"] = {"23"},
	["100_24"] = {"24"},
	["100_25"] = {"25"},
	["100_26"] = {"26"},
	["100_27"] = {"27"},
	["100_28"] = {"28"},
	["101_1"] = {"29","30","31","32","33","34","35","36","37","38",
		"39","40","41","42","43"},
	["101_2"] = {"44","45","46","47","48","49","50","51","52","53",
		"54","55","56","57","58","59","60","61","62","63",
		"64","65"},
	["101_3"] = {"66","67","68","69","70","71","72","73","74","75",
		"76","77","78","79","80","81","82","83","84","85",
		"86","87"},
	["101_4"] = {"88","89","90","91","92","93","94","95","96","97",
		"98","99","100","101"},
	["101_5"] = {"102","103","104","105","106","107","108","109","110","111",
		"112","113"},
	["101_6"] = {"114","115","116","117","118","119","120","121","122","123"},
	["102_1"] = {"124"},
	["102_2"] = {"125"},
	["102_3"] = {"126"},
	["102_4"] = {"127"},
	["102_5"] = {"128"},
	["102_6"] = {"129"}
}
return commodity_data