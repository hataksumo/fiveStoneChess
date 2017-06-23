local role_skill_data = {}

--======================ROLE_SKILL_INFO==========================
role_skill_data.ROLE_SKILL_INFO = {
	["1"] = {id = "1",group_id = "1",skill_id = "15101",level = 1,quality = 3,need_item_count = 1,item_type1 = 3,item_type2 = -1,item_type3 = -1,item_id1 = "15121",item_count1 = 1,item_id2 = "-1",item_count2 = 0,item_id3 = "-1",item_count3 = 0},
	["2"] = {id = "2",group_id = "1",skill_id = "15102",level = 2,quality = 3,need_item_count = 3,item_type1 = 3,item_type2 = 3,item_type3 = 3,item_id1 = "15121",item_count1 = 1,item_id2 = "15105",item_count2 = 50,item_id3 = "15107",item_count3 = 25},
	["3"] = {id = "3",group_id = "1",skill_id = "15103",level = 3,quality = 3,need_item_count = 3,item_type1 = 3,item_type2 = 3,item_type3 = 3,item_id1 = "15121",item_count1 = 1,item_id2 = "15105",item_count2 = 150,item_id3 = "15107",item_count3 = 75},
	["4"] = {id = "4",group_id = "1",skill_id = "15104",level = 4,quality = 3,need_item_count = 3,item_type1 = 3,item_type2 = 3,item_type3 = 3,item_id1 = "15121",item_count1 = 1,item_id2 = "15105",item_count2 = 300,item_id3 = "15107",item_count3 = 150},
	["5"] = {id = "5",group_id = "1",skill_id = "15105",level = 5,quality = 3,need_item_count = 3,item_type1 = 3,item_type2 = 3,item_type3 = 3,item_id1 = "15121",item_count1 = 1,item_id2 = "15105",item_count2 = 500,item_id3 = "15107",item_count3 = 250},
	["6"] = {id = "6",group_id = "2",skill_id = "11135",level = 1,quality = 1,need_item_count = 1,item_type1 = 3,item_type2 = -1,item_type3 = -1,item_id1 = "15112",item_count1 = 1,item_id2 = "-1",item_count2 = 0,item_id3 = "-1",item_count3 = 0},
	["7"] = {id = "7",group_id = "2",skill_id = "11136",level = 2,quality = 1,need_item_count = 3,item_type1 = 3,item_type2 = 3,item_type3 = 3,item_id1 = "15112",item_count1 = 1,item_id2 = "15105",item_count2 = 25,item_id3 = "15109",item_count3 = 50},
	["8"] = {id = "8",group_id = "2",skill_id = "11137",level = 3,quality = 1,need_item_count = 3,item_type1 = 3,item_type2 = 3,item_type3 = 3,item_id1 = "15112",item_count1 = 1,item_id2 = "15105",item_count2 = 75,item_id3 = "15109",item_count3 = 150},
	["9"] = {id = "9",group_id = "2",skill_id = "11138",level = 4,quality = 1,need_item_count = 3,item_type1 = 3,item_type2 = 3,item_type3 = 3,item_id1 = "15112",item_count1 = 1,item_id2 = "15105",item_count2 = 150,item_id3 = "15109",item_count3 = 300},
	["10"] = {id = "10",group_id = "2",skill_id = "11139",level = 5,quality = 1,need_item_count = 3,item_type1 = 3,item_type2 = 3,item_type3 = 3,item_id1 = "15112",item_count1 = 1,item_id2 = "15105",item_count2 = 250,item_id3 = "15109",item_count3 = 500},
	["11"] = {id = "11",group_id = "3",skill_id = "15086",level = 1,quality = 1,need_item_count = 1,item_type1 = 3,item_type2 = -1,item_type3 = -1,item_id1 = "15110",item_count1 = 1,item_id2 = "-1",item_count2 = 0,item_id3 = "-1",item_count3 = 0},
	["12"] = {id = "12",group_id = "3",skill_id = "15087",level = 2,quality = 1,need_item_count = 3,item_type1 = 3,item_type2 = 3,item_type3 = 3,item_id1 = "15110",item_count1 = 1,item_id2 = "15108",item_count2 = 50,item_id3 = "15109",item_count3 = 25},
	["13"] = {id = "13",group_id = "3",skill_id = "15088",level = 3,quality = 1,need_item_count = 3,item_type1 = 3,item_type2 = 3,item_type3 = 3,item_id1 = "15110",item_count1 = 1,item_id2 = "15108",item_count2 = 150,item_id3 = "15109",item_count3 = 75},
	["14"] = {id = "14",group_id = "3",skill_id = "15089",level = 4,quality = 1,need_item_count = 3,item_type1 = 3,item_type2 = 3,item_type3 = 3,item_id1 = "15110",item_count1 = 1,item_id2 = "15108",item_count2 = 300,item_id3 = "15109",item_count3 = 150},
	["15"] = {id = "15",group_id = "3",skill_id = "15090",level = 5,quality = 1,need_item_count = 3,item_type1 = 3,item_type2 = 3,item_type3 = 3,item_id1 = "15110",item_count1 = 1,item_id2 = "15108",item_count2 = 500,item_id3 = "15109",item_count3 = 250},
	["16"] = {id = "16",group_id = "4",skill_id = "15091",level = 1,quality = 1,need_item_count = 1,item_type1 = 3,item_type2 = -1,item_type3 = -1,item_id1 = "15115",item_count1 = 1,item_id2 = "-1",item_count2 = 0,item_id3 = "-1",item_count3 = 0},
	["17"] = {id = "17",group_id = "4",skill_id = "15092",level = 2,quality = 1,need_item_count = 3,item_type1 = 3,item_type2 = 3,item_type3 = 3,item_id1 = "15115",item_count1 = 1,item_id2 = "15107",item_count2 = 50,item_id3 = "15108",item_count3 = 25},
	["18"] = {id = "18",group_id = "4",skill_id = "15093",level = 3,quality = 1,need_item_count = 3,item_type1 = 3,item_type2 = 3,item_type3 = 3,item_id1 = "15115",item_count1 = 1,item_id2 = "15107",item_count2 = 150,item_id3 = "15108",item_count3 = 75},
	["19"] = {id = "19",group_id = "4",skill_id = "15094",level = 4,quality = 1,need_item_count = 3,item_type1 = 3,item_type2 = 3,item_type3 = 3,item_id1 = "15115",item_count1 = 1,item_id2 = "15107",item_count2 = 300,item_id3 = "15108",item_count3 = 150},
	["20"] = {id = "20",group_id = "4",skill_id = "15095",level = 5,quality = 1,need_item_count = 3,item_type1 = 3,item_type2 = 3,item_type3 = 3,item_id1 = "15115",item_count1 = 1,item_id2 = "15107",item_count2 = 500,item_id3 = "15108",item_count3 = 250},
	["21"] = {id = "21",group_id = "5",skill_id = "15096",level = 1,quality = 1,need_item_count = 1,item_type1 = 3,item_type2 = -1,item_type3 = -1,item_id1 = "15114",item_count1 = 1,item_id2 = "-1",item_count2 = 0,item_id3 = "-1",item_count3 = 0},
	["22"] = {id = "22",group_id = "5",skill_id = "15097",level = 2,quality = 1,need_item_count = 3,item_type1 = 3,item_type2 = 3,item_type3 = 3,item_id1 = "15114",item_count1 = 1,item_id2 = "15108",item_count2 = 25,item_id3 = "15109",item_count3 = 50},
	["23"] = {id = "23",group_id = "5",skill_id = "15098",level = 3,quality = 1,need_item_count = 3,item_type1 = 3,item_type2 = 3,item_type3 = 3,item_id1 = "15114",item_count1 = 1,item_id2 = "15108",item_count2 = 75,item_id3 = "15109",item_count3 = 150},
	["24"] = {id = "24",group_id = "5",skill_id = "15099",level = 4,quality = 1,need_item_count = 3,item_type1 = 3,item_type2 = 3,item_type3 = 3,item_id1 = "15114",item_count1 = 1,item_id2 = "15108",item_count2 = 150,item_id3 = "15109",item_count3 = 300},
	["25"] = {id = "25",group_id = "5",skill_id = "15100",level = 5,quality = 1,need_item_count = 3,item_type1 = 3,item_type2 = 3,item_type3 = 3,item_id1 = "15114",item_count1 = 1,item_id2 = "15108",item_count2 = 250,item_id3 = "15109",item_count3 = 500},
	["26"] = {id = "26",group_id = "6",skill_id = "15106",level = 1,quality = 4,need_item_count = 1,item_type1 = 3,item_type2 = -1,item_type3 = -1,item_id1 = "15125",item_count1 = 1,item_id2 = "-1",item_count2 = 0,item_id3 = "-1",item_count3 = 0},
	["27"] = {id = "27",group_id = "6",skill_id = "15107",level = 2,quality = 4,need_item_count = 3,item_type1 = 3,item_type2 = 3,item_type3 = 3,item_id1 = "15125",item_count1 = 1,item_id2 = "15106",item_count2 = 25,item_id3 = "15109",item_count3 = 50},
	["28"] = {id = "28",group_id = "6",skill_id = "15108",level = 3,quality = 4,need_item_count = 3,item_type1 = 3,item_type2 = 3,item_type3 = 3,item_id1 = "15125",item_count1 = 1,item_id2 = "15106",item_count2 = 75,item_id3 = "15109",item_count3 = 150},
	["29"] = {id = "29",group_id = "6",skill_id = "15109",level = 4,quality = 4,need_item_count = 3,item_type1 = 3,item_type2 = 3,item_type3 = 3,item_id1 = "15125",item_count1 = 1,item_id2 = "15106",item_count2 = 150,item_id3 = "15109",item_count3 = 300},
	["30"] = {id = "30",group_id = "6",skill_id = "15110",level = 5,quality = 4,need_item_count = 3,item_type1 = 3,item_type2 = 3,item_type3 = 3,item_id1 = "15125",item_count1 = 1,item_id2 = "15106",item_count2 = 250,item_id3 = "15109",item_count3 = 500}
}
--=================INDEX_GROUP_ID=================
role_skill_data.INDEX_GROUP_ID = {
	["1"] = {"1","2","3","4","5"},
	["2"] = {"6","7","8","9","10"},
	["3"] = {"11","12","13","14","15"},
	["4"] = {"16","17","18","19","20"},
	["5"] = {"21","22","23","24","25"},
	["6"] = {"26","27","28","29","30"}
}
return role_skill_data