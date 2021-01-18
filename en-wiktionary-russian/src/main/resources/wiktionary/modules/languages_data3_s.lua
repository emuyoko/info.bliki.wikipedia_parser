local u = mw.ustring.char

-- UTF-8 encoded strings for some commonly used diacritics
local GRAVE     = u(0x0300)
local ACUTE     = u(0x0301)
local CIRC      = u(0x0302)
local TILDE     = u(0x0303)
local MACRON    = u(0x0304)
local BREVE     = u(0x0306)
local DOTABOVE  = u(0x0307)
local DIAER     = u(0x0308)
local CARON     = u(0x030C)
local DGRAVE    = u(0x030F)
local INVBREVE  = u(0x0311)
local DOTBELOW  = u(0x0323)
local RINGBELOW = u(0x0325)
local CEDILLA   = u(0x0327)

-- Punctuation to be used for standardChars field
local PUNCTUATION = ' !#$%&*+,-./:;<=>?@^_`|~\'()'

local Latn = {"Latn"}

local m = {}

m["saa"] = {
	"Saba",
	"Q3914885",
	"cdc-est",
	scripts = Latn,
}

m["sab"] = {
	"Buglere",
	"Q3368506",
	"cba",
	otherNames = {"Bugle", "Murire", "Muoy", "Sabanero", "Bokotá", "Bogota"},
	scripts = Latn,
}

m["sac"] = {
	"Fox",
	"Q12714767",
	"alg-sfk",
	otherNames = {"Sac", "Sauk", "Kickapoo", "Mesquakie", "Meskwaki"},
	scripts = Latn,
}

m["sad"] = {
	"Sandawe",
	"Q34016",
	"qfa-iso",
	scripts = Latn,
}

m["sae"] = {
	"Sabanê",
	"Q3460478",
	"sai-nmk",
	scripts = Latn,
}

m["saf"] = {
	"Safaliba",
	"Q36432",
	"nic-mre",
	scripts = Latn,
}

m["sah"] = {
	"Yakut",
	"Q34299",
	"trk-sib",
	otherNames = {"Sakha"},
	scripts = {"Cyrl"},
	translit_module = "sah-translit",
	override_translit = true,
}

m["saj"] = {
	"Sahu",
	"Q7399757",
	"paa",
	scripts = Latn,
}

m["sak"] = {
	"Sake",
	"Q36425",
	"bnt-kel",
	otherNames = {"Shake"},
	scripts = Latn,
}

m["sam"] = {
	"Samaritan Aramaic",
	"Q56612",
	"sem-arw",
	otherNames = {"Samaritan"},
	scripts = {"Samr"},
	entry_name = {
		from = {"[" .. u(0x0816) .. "-" .. u(0x082D) .. "]"},
		to = {}
	},
	translit_module = "Samr-translit",
}

m["sao"] = {
	"Sause",
	"Q4409155",
	"paa-tkw",
	scripts = Latn,
}

m["saq"] = {
	"Samburu",
	"Q56536",
	"sdv-lma",
}

m["sar"] = {
	"Saraveca",
	"Q3450556",
	"awd",
	otherNames = {"Sarabeca", "Saraveka", "Sarave"},
}

m["sas"] = {
	"Sasak",
	"Q1294047",
	"poz-mcm",
	scripts = Latn,
}

m["sat"] = {
	"Santali",
	"Q33965",
	"mun",
	scripts = {"Olck"},
	translit_module = "Olck-translit",
	override_translit = true,
}

m["sau"] = {
	"Saleman",
	"Q7404262",
	"poz-cet",
}

m["sav"] = {
	"Saafi-Saafi",
	"Q36308",
	"alv-cng",
	scripts = {"Arab", "Latn"},
}

m["saw"] = {
	"Sawi",
	"Q677064",
	"ngf",
	scripts = Latn,
}

m["sax"] = {
	"Sa",
	"Q3460352",
	"poz-vnc",
	otherNames = {"Saa"},
	scripts = Latn,
}

m["say"] = {
	"Saya",
	"Q3914431",
	"cdc-wst",
	scripts = Latn,
}

m["saz"] = {
	"Saurashtra",
	"Q13292",
	"inc-wes",
	scripts = {"Saur", "Latn", "Taml", "Deva"},
	translit_module = "saz-translit",
	ancestors = {"inc-ogu"},
}

m["sba"] = {
	"Ngambay",
	"Q2372207",
	"csu-sar",
}

m["sbb"] = {
	"Simbo",
	"Q3484101",
	"poz-ocw",
}

m["sbc"] = {
	"Gele'",
	"Q3194847",
	"poz-oce",
	otherNames = {"Kele (New Guinea)", "Kele (Papua New Guinea)", "Kele"},
}

m["sbd"] = {
	"Southern Samo",
	"Q33122730",
	"dmn-sam",
	scripts = Latn,
}

m["sbe"] = {
	"Saliba (New Guinea)",
	"Q3469737",
	"poz-ocw",
	otherNames = {"Saliba"},
}

m["sbf"] = {
	"Shabo",
	"Q36342",
	"ssa",
	otherNames = {"Mikeyir", "Mekeyir", "Mekeyer"},
	scripts = Latn,
}

m["sbg"] = {
	"Seget",
	"Q7446237",
}

m["sbh"] = {
	"Sori-Harengan",
	"Q36515",
	"poz-aay",
	otherNames = {"Sori", "Harengan"},
	scripts = Latn,
}

m["sbi"] = {
	"Seti",
	"Q7456682",
	"qfa-tor",
	scripts = Latn,
}

m["sbj"] = {
	"Surbakhal",
	"Q759995",
}

m["sbk"] = {
	"Safwa",
	"Q4121160",
	"bnt-mby",
	scripts = Latn,
}

m["sbl"] = {
	"Botolan Sambal",
	"Q4095195",
	"phi",
}

m["sbm"] = {
	"Sagala",
	"Q11732610",
	"bnt-ruv",
	scripts = Latn,
}

m["sbn"] = {
	"Sindhi Bhil",
	"Q25559289",
	"inc-nwe",
	scripts = {"Arab", "Deva", "Sind", "Guru"},
	ancestors = {"sd"},
}

m["sbo"] = {
	"Sabüm",
	"Q7396535",
	"mkh-asl",
}

m["sbp"] = {
	"Sangu (Tanzania)",
	"Q7418149",
	"bnt-bki",
	scripts = Latn,
}

m["sbq"] = {
	"Sileibi",
	"Q7514337",
	"ngf-mad",
}

m["sbr"] = {
	"Sembakung Murut",
	"Q7449148",
	"poz-san",
}

m["sbs"] = {
	"Subiya",
	"Q6442073",
	"bnt-bot",
	scripts = Latn,
}

m["sbt"] = {
	"Kimki",
	"Q6410160",
	"paa-pau",
}

m["sbu"] = {
	"Stod Bhoti",
	"Q15622700",
	"sit-las",
}

m["sbv"] = {
	"Sabine",
	nil,
	"itc",
	scripts = Latn,
}

m["sbw"] = {
	"Simba",
	"Q36430",
	"bnt-tso",
	scripts = Latn,
}

m["sbx"] = {
	"Seberuang",
	"Q12473470",
	"poz-mly",
}

m["sby"] = {
	"Soli",
	"Q7557754",
	"bnt-bot",
	scripts = Latn,
}

m["sbz"] = {
	"Sara Kaba",
	"Q25559318",
	"csu-kab",
	scripts = Latn,
}

m["scb"] = {
	"Chut",
	"Q2967709",
	"mkh-vie",
}

m["sce"] = {
	"Dongxiang",
	"Q32947",
	"xgn",
	otherNames = {"Santa"},
	scripts = {"Arab", "Latn"},
}

m["scf"] = {
	"San Miguel Creole French",
	"Q12953094",
	"crp",
	ancestors = {"gcf"},
}

m["scg"] = {
	"Sanggau",
	"Q12473466",
	"day",
}

m["sch"] = {
	"Sakachep",
	"Q37054",
	"tbq-kuk",
	otherNames = {"Khelma"},
}

m["sci"] = {
	"Sri Lankan Creole Malay",
	"Q1089151",
	"crp",
	scripts = Latn,
	ancestors = {"ms"},
}

m["sck"] = {
	"Sadri",
	"Q765922",
	"inc-eas",
	ancestors = {"bh"},
}

m["scl"] = {
	"Shina",
	"Q1353320",
	"inc-dar",
	otherNames = {"Gilgiti", "Astori", "Chilasi"},
	scripts = {"ur-Arab", "Deva"},
	ancestors = {"inc-dar-pro"},
}

m["scn"] = {
	"Sicilian",
	"Q33973",
	"roa-itd",
	scripts = Latn,
}

m["sco"] = {
	"Scots",
	"Q14549",
	"gmw",
	otherNames = {"Lowland Scots"},
	scripts = Latn,
	ancestors = {"enm"},
}

m["scp"] = {
	"Yolmo",
	"Q22662107",
	"sit-kyk",
	otherNames = {"Hyolmo", "Yohlmo", "Helambu Sherpa"},
	scripts = {"Deva"},
}

m["scq"] = {
	"Sa'och",
	"Q6583617",
	"mkh-pea",
	otherNames = {"Chung"},
}

m["scs"] = {
	"North Slavey",
	"Q20628",
	"ath-nor",
	scripts = Latn,
}

m["scu"] = {
	"Shumcho",
	"Q22077739",
	"sit-kin",
}

m["scv"] = {
	"Sheni",
	"Q11015820",
	"nic-jer",
	ancestors = {"zir"},
	scripts = Latn,
}

m["scw"] = {
	"Sha",
	"Q3438816",
	"cdc-wst",
	scripts = Latn,
}

m["scx"] = {
	"Sicel",
	"Q36667",
	"ine",
}

m["sda"] = {
	"Toraja-Sa'dan",
	"Q36673",
	"poz-ssw",
}

m["sdb"] = {
	"Shabak",
	"Q3289596",
	"ira-zgr",
	otherNames = {"Shabaki"},
	ancestors = {"hac"},
}

m["sdc"] = {
	"Sassarese",
	"Q845441",
	"roa-itd",
	scripts = Latn,
}

m["sde"] = {
	"Surubu",
	"Q3913336",
	"nic-kau",
	scripts = Latn,
}

m["sdf"] = {
	"Sarli",
	"Q7424256",
	"ira-zgr",
	otherNames = {"Sarliya"},
	ancestors = {"hac"},
}

m["sdg"] = {
	"Savi",
	"Q3474654",
	"inc-dar",
	ancestors = {"inc-dar-pro"},
}

m["sdh"] = {
	"Southern Kurdish",
	"Q1496597",
	"ira-nwi",
	otherNames = {"Kermanshani", "Kermanshahi", "Kermanshahi Kurdish", "Kermanshani Kurdish"},
	scripts = {"ku-Arab", "Latn"},
	ancestors = {"ku"},
	translit_module = "sdh-translit",
	link_tr = true,
	entry_name = {
		from = {u(0x0650), u(0x0652)},
		to   = {}} ,
}

m["sdj"] = {
	"Suundi",
	"Q7650407",
	"bnt-kng",
	scripts = Latn,
}

m["sdk"] = {
	"Sos Kundi",
	"Q7563811",
	"paa-spk",
	scripts = Latn,
}

m["sdl"] = {
	"Saudi Arabian Sign Language",
	"Q3504160",
	"sgn",
}

m["sdm"] = {
	"Semandang",
	"Q7449012",
	"day",
}

m["sdn"] = {
	"Gallurese",
	"Q612220",
	"roa-itd",
	scripts = Latn,
	ancestors = {"co"},
}

m["sdo"] = {
	"Bukar-Sadung Bidayuh",
	"Q2927799",
	"day",
}

m["sdp"] = {
	"Sherdukpen",
	"Q7494785",
	"sit-khb",
}

m["sdr"] = {
	"Oraon Sadri",
	"Q12953860",
	"inc-eas",
	ancestors = {"bh"},
}

m["sds"] = {
	"Sened",
	"Q56570",
	"ber",
}

m["sdu"] = {
	"Sarudu",
	"Q7424700",
	"poz-cet",
}

m["sdx"] = {
	"Sibu Melanau",
	"Q18642842",
	"poz-bnn",
}

m["sea"] = {
	"Semai",
	"Q3135426",
	"mkh-asl",
}

-- seb is a duplicate code of spp

m["sec"] = {
	"Sechelt",
	"Q7442898",
	"sal",
	scripts = Latn,
}

m["sed"] = {
	"Sedang",
	"Q56448",
	"mkh-nbn",
}

m["see"] = {
	"Seneca",
	"Q1185133",
	"iro",
	scripts = Latn,
}

m["sef"] = {
	"Cebaara Senoufo",
	"Q10975121",
	"alv-snr",
}

m["seg"] = {
	"Segeju",
	"Q17584599",
	"bnt-mij",
	scripts = Latn,
}

m["seh"] = {
	"Sena",
	"Q2964008",
	"bnt-sna",
	varieties = {{"Malawi Sena", "Malawian Sena"}, {"Nuclear Sena", "Mozambican Sena"}}, -- includes [swk] for Malawian Sena, but [bwg] for Barwe is distinct
	scripts = Latn,
}

m["sei"] = {
	"Seri",
	"Q36583",
	"qfa-iso",
	scripts = Latn,
}

m["sej"] = {
	"Sene",
	"Q7450252",
}

m["sek"] = {
	"Sekani",
	"Q28562",
	"ath-nor",
	otherNames = {"Tsek'ene", "Kwadacha", "Kwadacha Sekani", "Kwadacha Tsek'ene"},
	scripts = Latn,
}

m["sel"] = {
	"Selkup",
	"Q34008",
	"syd",
	scripts = {"Cyrl"},
}

m["sen"] = {
	"Nanerigé Sénoufo",
	"Q36002",
	"alv-sma",
}

m["seo"] = {
	"Suarmin",
	"Q7630513",
	"paa",
}

m["sep"] = {
	"Sìcìté Sénoufo",
	"Q56787",
	"alv-sma",
}

m["seq"] = {
	"Senara Sénoufo",
	"Q35210",
	"alv-snr",
}

m["ser"] = {
	"Serrano",
	"Q3479942",
	"azc-tak",
	otherNames = {"Kitanemuk"},
	scripts = Latn,
}

m["ses"] = {
	"Koyraboro Senni",
	"Q35655",
	"son",
	otherNames = {"Koyraboro Senni Songhay", "Koyraboro Senni Songhai", "Koroboro Senni", "Eastern Songhay"},
	scripts = Latn,
}

m["set"] = {
	"Sentani",
	"Q3441672",
	"paa-sen",
	scripts = Latn,
}

m["seu"] = {
	"Serui-Laut",
	"Q7455503",
	"poz-hce",
	scripts = Latn,
}

m["sev"] = {
	"Nyarafolo Senoufo",
	"Q36306",
	"alv-snr",
}

m["sew"] = {
	"Sewa Bay",
	"Q7458126",
	"poz-ocw",
}

m["sey"] = {
	"Secoya",
	"Q3477218",
	"sai-tuc",
	scripts = Latn,
}

m["sez"] = {
	"Senthang Chin",
	"Q7451223",
	"tbq-kuk",
	otherNames = {"Senthang"},
}

m["sfb"] = {
	"French Belgian Sign Language",
	"Q3217332",
	"sgn",
}

m["sfm"] = {
	"Small Flowery Miao",
	"Q7542773",
	"hmn",
}

m["sfs"] = {
	"South African Sign Language",
	"Q3322093",
	"sgn",
}

m["sfw"] = {
	"Sehwi",
	"Q36593",
	"alv-ctn",
	scripts = Latn,
}

m["sga"] = {
	"Old Irish",
	"Q35308",
	"cel-gae",
	scripts = Latn,
	ancestors = {"pgl"},
	entry_name = {
		from = {"ḟ", "ṁ", "ṅ", "ṡ", "Ḟ", "Ṁ", "Ṅ", "Ṡ", "ä", "ë", "ï", "ö", "ü", "·"},
		to   = {"f", "m", "n", "s", "F", "M", "N", "S", "a", "e", "i", "o", "u"}} ,
	sort_key = {
		from = {"á", "é", "æ", "ǽ", "í", "ó", "ú", "^h", "-"},
		to   = {"a", "e", "e", "e", "i", "o", "u"}} ,
	standardChars = "A-IL-PR-Ua-il-pr-u0-9ÁáÉéÍíÓóÚú" .. PUNCTUATION,
}

m["sgb"] = {
	"Mag-Anchi Ayta",
	"Q4356243",
	"phi",
}

m["sgc"] = {
	"Kipsigis",
	"Q56339",
	"sdv-nma",
}

m["sgd"] = {
	"Surigaonon",
	"Q34140",
	"phi",
	scripts = Latn,
}

m["sge"] = {
	"Segai",
	"Q7446180",
}

m["sgg"] = {
	"Swiss-German Sign Language",
	"Q35150",
	"sgn",
	otherNames = {"Swiss German Sign Language"},
}

m["sgh"] = {
	"Shughni",
	"Q34053",
	"ira-shy",
	scripts = {"Latn", "Cyrl"},
	translit_module = "sgh-translit",
	override_translit = true,
	ancestors = {"ira-shr-pro"},
}

m["sgi"] = {
	"Suga",
	"Q36475",
	"nic-mmb",
	scripts = Latn,
}

m["sgk"] = {
	"Sangkong",
	"Q2945610",
	"tbq-lol",
}

m["sgm"] = {
	"Singa",
	"Q7522797",
	"bnt-lok",
	scripts = Latn,
}

m["sgp"] = {
	"Singpho",
	"Q7524158",
	"sit-jnp",
}

m["sgr"] = {
	"Sangisari",
	"Q3394363",
	"ira-kms",
	otherNames = {"Sangsari"},
}

m["sgs"] = {
	"Samogitian",
	"Q213434",
	"bat",
	scripts = Latn,
	ancestors = {"olt"},
	wikimedia_codes = {"bat-smg"},
}

m["sgt"] = {
	"Brokpake",
	"Q56603",
	"sit-tib",
	otherNames = {"Brokpa"},
}

m["sgu"] = {
	"Salas",
	"Q7403694",
	"poz-cma",
}

m["sgw"] = {
	"Sebat Bet Gurage",
	"Q2707343",
	"sem-eth",
	scripts = {"Ethi"},
}

m["sgx"] = {
	"Sierra Leone Sign Language",
	"Q7511448",
	"sgn",
}

m["sgy"] = {
	"Sanglechi",
	"Q3472220",
	"ira-sgi",
	otherNames = {"Sanglich", "Warduji"},
	ancestors = {"ira-sgi-pro"},
}

m["sgz"] = {
	"Sursurunga",
	"Q36511",
	"poz-ocw",
	scripts = Latn,
}

m["sha"] = {
	"Shall-Zwall",
	"Q3915355",
	"nic-beo",
}

m["shb"] = {
	"Ninam",
	"Q3436586",
}

m["shc"] = {
	"Sonde",
	"Q7560881",
	"bnt-pen",
	scripts = Latn,
}

m["shd"] = {
	"Kundal Shahi",
	"Q6444265",
	"inc-dar",
}

m["she"] = {
	"Sheko",
	"Q3183355",
	"omv-diz",
}

m["shg"] = {
	"Shua",
	"Q3501092",
	"khi-kal",
	otherNames = {"Shwa", "Shwakhwe"},
	scripts = Latn,
}

m["shh"] = {
	"Shoshone",
	"Q33811",
	"azc-num",
	otherNames = {"Shoshoni", "Gosiute", "Goshute", "Eastern Shoshone", "Eastern Shoshoni", "Western Shoshone", "Western Shoshoni", "Northern Shoshone", "Northern Shoshoni"},
	scripts = Latn,
}

m["shi"] = {
	"Tashelhit",
	"Q34152",
	"ber",
	otherNames = {"Tachelhit", "Chleuh", "Shilha", "Tashlhiyt", "Tashelhit Berber", "Tachelhit Berber", "Tashlhiyt Berber"},
	scripts = {"Tfng", "Arab", "Latn"},
	translit_module = "ber-translit",
}

m["shj"] = {
	"Shatt",
	"Q56344",
	"sdv-daj",
}

m["shk"] = {
	"Shilluk",
	"Q36486",
	"sdv-lon",
	scripts = Latn,
}

m["shl"] = {
	"Shendu",
	"Q22074616",
	"tbq-kuk",
}

m["shm"] = {
	"Shahrudi",
	"Q7462280",
	"xme-ttc",
	ancestors = {"xme-ttc-cen"},
}

m["shn"] = {
	"Shan",
	"Q56482",
	"tai-swe",
	otherNames = {"Kwam Tai", "Kam Tai", "Tai Yai"},
	scripts = {"Mymr"},
	translit_module = "shn-translit",
	sort_key = {
		from = {"[ၢႃ]", "ဵ", "ႅ", "ႇ", "ႈ", "း", "ႉ", "ႊ"},
		to   = {"ာ", "ေ", "ႄ", "႒", "႓", "႔", "႕", "႖"}},
}

m["sho"] = {
	"Shanga",
	"Q3913931",
	"dmn-bbu",
	scripts = Latn,
}

m["shp"] = {
	"Shipibo-Conibo",
	"Q2671988",
	"sai-pan",
	scripts = Latn,
}

m["shq"] = {
	"Sala",
	"Q10961665",
	"bnt-bot",
	scripts = Latn,
}

m["shr"] = {
	"Shi",
	"Q3481999",
	"bnt-shh",
	scripts = Latn,
}

m["shs"] = {
	"Shuswap",
	"Q3482685",
	"sal",
	scripts = Latn,
}

m["sht"] = {
	"Shasta",
	"Q56396",
	"nai-shs",
	scripts = Latn,
}

m["shu"] = {
	"Chadian Arabic",
	"Q56497",
	"sem-arb",
	scripts = {"Arab"},
	entry_name = {
		from = {u(0x0671), u(0x064B), u(0x064C), u(0x064D), u(0x064E), u(0x064F), u(0x0650), u(0x0651), u(0x0652), u(0x0670), u(0x0640)},
		to   = {u(0x0627)}},
}

m["shv"] = {
	"Shehri",
	"Q33445",
	"sem-sar",
	aliases = {"Jibbali"},
	scripts = {"Arab", "Latn"},
	ancestors = {"sem-pro"},
}

m["shw"] = {
	"Shwai",
	"Q36527",
	"alv-hei",
}

m["shx"] = {
	"She",
	"Q2605689",
	"hmn",
	otherNames = {"Ho Ne", "Ho Nte"},
}

m["shy"] = {
	"Tachawit",
	"Q33274",
	"ber",
	otherNames = {"Shawiya Berber", "Chaouïa"},
}

m["shz"] = {
	"Syenara Senoufo",
	"Q36316",
	"alv-snr",
}

m["sia"] = {
	"Akkala Sami",
	"Q35241",
	"smi",
	scripts = Latn,
}

m["sib"] = {
	"Sebop",
	"Q7442799",
	"poz-swa",
	scripts = Latn,
}

m["sid"] = {
	"Sidamo",
	"Q33786",
	"cus",
	aliases = {"Sidaama"},
	scripts = {"Latn", "Ethi"},
}

m["sie"] = {
	"Simaa",
	"Q7517329",
	"bnt-kav",
	scripts = Latn,
}

m["sif"] = {
	"Siamou",
	"Q36252",
}

m["sig"] = {
	"Paasaal",
	"Q36426",
	"nic-sis",
	scripts = Latn,
}

m["sih"] = {
	"Zire",
	"Q8072753",
	"poz-cln",
}

m["sii"] = {
	"Shom Peng",
	"Q1039346",
	"aav",
}

m["sij"] = {
	"Numbami",
	"Q3346277",
	"poz-ocw",
}

m["sik"] = {
	"Sikiana",
	"Q3443734",
	"sai-car",
	scripts = Latn,
}

m["sil"] = {
	"Tumulung Sisaala",
	"Q25383006",
	"nic-sis",
	scripts = Latn,
}

m["sim"] = {
	"Seim",
	"Q7446815",
	"paa-spk",
	otherNames = {"Mende", "Mende (New Guinea)"},
}

m["sip"] = {
	"Sikkimese",
	"Q35285",
	"sit-tib",
	aliases = {"Bhutia", "Dranjongke", "Dranjoke", "Denjongka", "Denzongpeke", "Denzongke"},
	scripts = {"Tibt"},
	ancestors = {"xct"},
	translit_module = "bo-translit",
}

m["siq"] = {
	"Sonia",
	"Q7561770",
}

m["sir"] = {
	"Siri",
	"Q3438729",
	"cdc-wst",
	scripts = Latn,
}

m["sis"] = {
	"Siuslaw",
	"Q2315424",
}

m["siu"] = {
	"Sinagen",
	"Q7521655",
	"qfa-tor",
	scripts = Latn,
}

m["siv"] = {
	"Sumariup",
	"Q7636966",
	"paa-spk",
	scripts = Latn,
}

m["siw"] = {
	"Siwai",
	"Q7532519",
	"paa-sbo",
}

m["six"] = {
	"Sumau",
	"Q7637021",
	"ngf-mad",
	otherNames = {"Garia", "Kari"},
	scripts = Latn,
}

m["siy"] = {
	"Sivandi",
	"Q13269",
	"xme",
	ancestors = {"xme-mid"},
}

m["siz"] = {
	"Siwi",
	"Q36814",
	"ber",
	scripts = {"Tfng", "Arab", "Latn"},
	otherNames = {"Siwa"},
}

m["sja"] = {
	"Epena",
	"Q3055682",
	"sai-chc",
}

m["sjb"] = {
	"Sajau Basap",
	"Q4684353",
	"poz-bnn",
}

m["sjd"] = {
	"Kildin Sami",
	"Q33656",
	"smi",
	scripts = {"Cyrl"},
	translit_module = "sjd-translit",
	sort_key = {
		from = {"ӣ", "ӯ", MACRON},
		to   = {"и", "у"} },
}

m["sje"] = {
	"Pite Sami",
	"Q56314",
	"smi",
	scripts = Latn,
	entry_name = {
		from = {"ū", "ˈ", MACRON},
		to   = {"u"} },
	sort_key = {
		from = {"á" , "đ" , "ŋ" , "ŧ" },
		to   = {"a²", "d²", "n²", "t²"} },
}

m["sjg"] = {
	"Assangori",
	"Q3502255",
	"sdv-tmn",
}

m["sjk"] = {
	"Kemi Sami",
	"Q35871",
	"smi",
	scripts = Latn,
}

m["sjl"] = {
	"Miji",
	"Q6845470",
	"sit-hrs",
	otherNames = {"Dmay", "Dhammai", "Sajolang"},
}

m["sjm"] = {
	"Mapun",
	"Q3287253",
	"poz-sbj",
}

m["sjn"] = {
	"Sindarin",
	"Q56437",
	"art",
	type = "appendix-constructed",
	scripts = {"Latn", "Teng"},
}

m["sjo"] = {
	"Xibe",
	"Q13223",
	"tuw",
	otherNames = {"Sibo", "Sibe", "Xibo"},
	scripts = {"Mong"},
}

m["sjp"] = {
	"Surjapuri",
	"Q7645351",
	"inc-eas",
	ancestors = {"inc-mgd"},
}

m["sjr"] = {
	"Siar-Lak",
	"Q3482907",
	"poz-ocw",
}

m["sjs"] = {
	"Senhaja De Srair",
	"Q56744",
	"ber",
}

m["sjt"] = {
	"Ter Sami",
	"Q36656",
	"smi",
	scripts = Latn,
}

m["sju"] = {
	"Ume Sami",
	"Q56415",
	"smi",
	scripts = Latn,
	entry_name = {
		from = {"ē", "ū", "ǖ", MACRON, "ˈ"},
		to   = {"e", "u", "ü"} },
	sort_key = {
		from = {"á" , "đ" , "ï" , "ŋ" , "ŧ" , "ü" },
		to   = {"a²", "d²", "i²", "n²", "t²", "u²"} },
}

m["sjw"] = {
	"Shawnee",
	"Q2669206",
	"alg",
	scripts = Latn,
}

m["ska"] = {
	"Skagit",
	"Q25559652",
	"sal",
	scripts = Latn,
}

m["skb"] = {
	"Saek",
	"Q36437",
	"tai-nor",
	scripts = {"Thai"},
	sort_key = {
		from = {"[%pๆ]", "[็-๎̱̄̂]", "([เแโใไ])([ก-ฮ])"},
		to   = {"", "", "%2%1"}},
}

m["skc"] = {
	"Ma Manda",
	"Q6720783",
	"ngf-fin",
	otherNames = {"Sauk"},
}

m["skd"] = {
	"Southern Sierra Miwok",
	"Q3492334",
	"nai-utn",
	scripts = Latn,
}

m["ske"] = {
	"Ske",
	"Q7534244",
	"poz-vnc",
	otherNames = {"Seke"},
	scripts = Latn,
}

m["skf"] = {
	"Sakirabiá",
	"Q3304806",
	"tup",
	otherNames = {"Mekem", "Amniapé", "Sakïrabiát", "Sakiráp", "Koaratira", "Guaratira", "Kanoé", "Koarategayat", "Guaratégaya", "Guarategaja", "Warategáya"},
	scripts = Latn,
}

m["skh"] = {
	"Sikule",
	"Q3121081",
	"poz-nws",
}

m["ski"] = {
	"Sika",
	"Q33960",
	"poz-cet",
	otherNames = {"Sikanese"},
	scripts = Latn,
}

m["skj"] = { -- compare 'ths'
	"Seke",
	"Q30226846",
	"sit-tam",
}

m["skk"] = {
	"Sok",
	"Q12953887",
	"mkh-ban",
}

m["skm"] = {
	"Sakam",
	"Q6448517",
	"ngf-fin",
	otherNames = {"Kutong"},
}

m["skn"] = {
	"Kolibugan Subanon",
	"Q18755617",
	"phi",
}

m["sko"] = {
	"Seko Tengah",
	"Q15613270",
	"poz",
}

m["skp"] = {
	"Sekapan",
	"Q7447132",
	"poz-bnn",
}

m["skq"] = {
	"Sininkere",
	"Q3914896",
	"dmn-man",
	scripts = Latn,
}

m["skr"] = {
	"Seraiki",
	"Q33902",
	"inc-pan",
	otherNames = {"Siraiki", "Saraiki"},
	scripts = {"ur-Arab", "Mult"},
	ancestors = {"lah"},
}

m["sks"] = {
	"Maia",
	"Q12952760",
	"ngf-mad",
	otherNames = {"Maya", "Banar", "Pila", "Saki", "Suaro", "Turutap", "Yakiba"},
	scripts = Latn,
}

m["skt"] = {
	"Sakata",
	"Q36691",
	"bnt-bnm",
	otherNames = {"Kisakata", "Lesa", "Odual", "Saka", "Bai", "Kibai", "Bay", "Kibay", "Djia", "Dia", "Dja", "Kidjia", "Wadia", "Tuku", "Ketu", "Batow"},
	scripts = Latn,
}

m["sku"] = {
	"Sakao",
	"Q3298421",
	"poz-vnc",
	scripts = Latn,
}

m["skv"] = {
	"Skou",
	"Q3915200",
	"paa-msk",
	scripts = Latn,
}

m["skw"] = {
	"Skepi Creole Dutch",
	"Q2522153",
	"crp",
	otherNames = {"Skepi Dutch", "Skepi Dutch Creole", "Essequibo Dutch"},
	ancestors = {"nl"},
}

m["skx"] = {
	"Seko Padang",
	"Q15613282",
	"poz-ssw",
}

m["sky"] = {
	"Sikaiana",
	"Q7439242",
	"poz-pnp",
	otherNames = {"Sikayana"},
	scripts = Latn,
}

m["skz"] = {
	"Sekar",
	"Q7447136",
	"poz-cet",
}

m["slc"] = {
	"Saliba (Colombia)",
	"Q3441097",
	otherNames = {"Saliba", "Sáliba", "Saliva", "Sáliva"},
}

m["sld"] = {
	"Sissala",
	"Q11020264",
	"nic-sis",
	scripts = Latn,
}

m["sle"] = {
	"Sholaga",
	"Q7500203",
	"dra",
	scripts = {"Knda"},
}

m["slf"] = {
	"Swiss-Italian Sign Language",
	"Q12953479",
	"sgn",
	otherNames = {"Swiss Italian Sign Language"},
}

m["slg"] = {
	"Selungai Murut",
	"Q7448844",
	"poz-san",
}

m["slh"] = {
	"Southern Puget Sound Salish",
	"Q12642471",
	"sal",
	scripts = Latn,
}

-- "sli" "Silesian German" IS SUBSUMED INTO "gmw-ecg" "East Central German"

m["slj"] = {
	"Salumá",
	"Q7406296",
	"sai-car",
	scripts = Latn,
}

m["sll"] = {
	"Salt-Yui",
	"Q7405785",
}

m["slm"] = {
	"Pangutaran Sama",
	"Q3362086",
	"poz-sbj",
}

m["sln"] = {
	"Salinan",
	"Q1568938",
}

m["slp"] = {
	"Lamaholot",
	"Q6480777",
	"poz-cet",
	otherNames = {"Solor", "Solorese"},
	scripts = Latn,
}

m["slq"] = {
	"Salchuq",
	"Q56752",
	"trk",
}

m["slr"] = {
	"Salar",
	"Q33963",
	"trk",
	scripts = {"Arab", "Latn"},
}

m["sls"] = {
	"Singapore Sign Language",
	"Q7512563",
	"sgn",
}

m["slt"] = {
	"Sila",
	"Q7514021",
	"tbq-lol",
}

m["slu"] = {
	"Selaru",
	"Q7447500",
	"poz-cet",
}

m["slw"] = {
	"Sialum",
	"Q7506694",
	"ngf",
}

m["slx"] = {
	"Salampasu",
	"Q7403607",
	"bnt-lun",
	scripts = Latn,
}

m["sly"] = {
	"Selayar",
	"Q7447520",
	"poz-ssw",
}

m["slz"] = {
	"Ma'ya",
	"Q2291492",
	"poz-hce",
}

m["sma"] = {
	"Southern Sami",
	"Q13293",
	"smi",
	scripts = Latn,
	sort_key = { -- Standardise on Norwegian orthography for sorting purposes
		from = {"ï" , "ä", "ö"},
		to   = {"i²", "æ", "ø"} },
}

m["smb"] = {
	"Simbari",
	"Q7517427",
	"ngf",
}

m["smc"] = {
	"Som",
	"Q7559081",
	"ngf-fin",
	scripts = Latn,
}

m["smd"] = {
	"Sama",
	"Q6407456",
	"bnt-kmb",
	scripts = Latn,
}

m["smf"] = {
	"Auwe",
	"Q3502072",
	"paa-brd",
	ancestors = {"dnd"},
}

m["smg"] = {
	"Simbali",
	"Q56692",
	"paa-bng",
}

m["smh"] = {
	"Samei",
	"Q7409269",
	"tbq-lol",
}

m["smj"] = {
	"Lule Sami",
	"Q56322",
	"smi",
	scripts = Latn,
	entry_name = {
		from = {"ˈ", MACRON},
		to   = {} },
	sort_key = { -- Standardise on Swedish orthography for sorting purposes
		from = {"á" , "ŋ" , "æ" },
		to   = {"a²", "n²", "ä"} },
}

m["smk"] = {
	"Bolinao",
	"Q2669235",
	"phi",
	otherNames = {"Binubolinao"},
}

m["sml"] = {
	"Central Sama",
	"Q3470593",
	"poz-sbj",
}

m["smm"] = {
	"Musasa",
	"Q6940122",
	"inc-eas",
	ancestors = {"bh"},
}

m["smn"] = {
	"Inari Sami",
	"Q33462",
	"smi",
	scripts = Latn,
	entry_name = {
		from = {"ḥ", "ḷ", "ṃ", "ṇ", "ṛ", "ṿ", DOTBELOW, "ˈ"},
		to   = {"h", "l", "m", "n", "r", "v"} },
	sort_key = {
		from = {"â" , "č" , "đ" , "ŋ" , "š" , "ž" , "á" },
		to   = {"a˿", "c˿", "d˿", "n˿", "s˿", "z˿", "ä˿"} },
}

m["smp"] = {
	"Samaritan Hebrew",
	"Q56502",
	"sem-can",
	otherNames = {"Samaritan"},
	scripts = {"Samr"},
	entry_name = {
		from = {"[" .. u(0x0816) .. "-" .. u(0x082D) .. "]"},
		to = {}
	},
}

m["smq"] = {
	"Samo",
	"Q7409884",
	"ngf",
}

m["smr"] = {
	"Simeulue",
	"Q2992833",
	"poz-nws",
	otherNames = {"Simalur", "Devayan", "Defayan", "Simolol", "Simulul", "Simeuloë"},
	scripts = Latn,
}

m["sms"] = {
	"Skolt Sami",
	"Q13271",
	"smi",
	scripts = Latn,
	entry_name = {
		from = {"ẹ", "ˈ"},
		to   = {"e"} },
	sort_key = {
		from = {"â" , "č" , "đ" , "ǧ" , "ǥ" , "ǩ" , "ŋ" , "õ" , "š" , "ž" },
		to   = {"a²", "c²", "d²", "g²", "g³", "k˿", "n˿", "o˿", "s˿", "z˿"} },
}

m["smt"] = {
	"Simte",
	"Q7521268",
	"tbq-kuk",
}

m["smu"] = {
	"Somray",
	"Q6583612",
	"mkh-pea",
}

m["smv"] = {
	"Samvedi",
	"Q6345632",
	"inc-sou",
	ancestors = {"pmh"},
}

m["smw"] = {
	"Sumbawa",
	"Q3182585",
	"poz-mcm",
	scripts = Latn,
}

m["smx"] = {
	"Samba",
	"Q11120157",
	"bnt-pen",
	scripts = Latn,
}

m["smy"] = {
	"Semnani",
	"Q14531212",
	"xme",
	ancestors = {"xme-old"},
}

m["smz"] = {
	"Simeku",
	"Q7517534",
	"paa-sbo",
}

m["snb"] = {
	"Sebuyau",
	"Q7442836",
	"poz-mly",
}

m["snc"] = {
	"Sinaugoro",
	"Q4170719",
	"poz-ocw",
}

m["sne"] = {
	"Bau Bidayuh",
	"Q2891938",
	"day",
	scripts = Latn,
}

m["snf"] = {
	"Noon",
	"Q36304",
	"alv-cng",
	scripts = Latn,
}

m["sng"] = {
	"Sanga (Congo)",
	"Q3438316",
	"bnt-lub",
	otherNames = {"Sanga", "Luba-Sanga", "Sanga (Democratic Republic of Congo)", "Sanga (Democratic Republic of the Congo)"},
	scripts = Latn,
}

m["sni"] = {
	"Sensi",
	"Q7451029",
	"sai-pan",
	scripts = Latn,
}

m["snj"] = {
	"Riverain Sango",
	"Q25559751",
	"crp",
	scripts = Latn,
	ancestors = {"ngb"},
}

m["snk"] = {
	"Soninke",
	"Q36660",
	"dmn-snb",
	scripts = Latn,
}

m["snl"] = {
	"Sangil",
	"Q3472206",
	"phi",
}

m["snm"] = {
	"Southern Ma'di",
	"Q15637273",
	"csu-mma",
}

m["snn"] = {
	"Siona",
	"Q3485116",
	"sai-tuc",
	scripts = Latn,
}

m["sno"] = {
	"Snohomish",
	"Q25559662",
	"sal",
	scripts = Latn,
}

m["snp"] = {
	"Siane",
	"Q7506812",
	"paa-kag",
	scripts = Latn,
}

m["snq"] = {
	"Sangu (Gabon)",
	"Q36609",
	"bnt-sir",
	otherNames = {"Chango"},
	scripts = Latn,
}

m["snr"] = {
	"Sihan",
	"Q7513400",
	"ngf-mad",
}

m["sns"] = {
	"Nahavaq",
	"Q2160435",
	"poz-vnc",
}

m["snu"] = {
	"Senggi",
	"Q7929052",
	"paa-brd"
}

m["snv"] = {
	"Sa'ban",
	"Q3474891",
	"poz-swa",
	scripts = Latn,
}

m["snw"] = {
	"Selee",
	"Q36272",
	"alv-ntg",
	scripts = Latn,
}

m["snx"] = {
	"Sam",
	"Q7408387",
}

m["sny"] = {
	"Saniyo-Hiyewe",
	"Q7418302",
	"paa-spk",
	scripts = Latn,
}

m["snz"] = {
	"Kou",
	"Q7525035", -- also "Q4803639"
	"ngf-mad",
	otherNames = {"Kow", "Sinsauru", "Asas"},
	scripts = Latn,
}

m["soa"] = {
	"Thai Song",
	"Q7709159",
	"tai-swe",
	otherNames = {"Lao Song", "Song"},
	scripts = {"Tavt", "Thai"},
	--translit_module = "Tavt-translit",
 	sort_key = {
		from = {"([ꪵꪶꪹꪻꪼ])([ꪀ-ꪯ])", "([เแโใไ])([ก-ฮ])"},
		to   = {"%2%1", "%2%1"}},
}

m["sob"] = {
	"Sobei",
	"Q3121035",
	"poz-ocw",
}

m["soc"] = {
	"Soko",
	"Q7555138",
	"bnt-ske",
	otherNames = {"So"},
	scripts = Latn,
}

m["sod"] = {
	"Songoora",
	"Q7561296",
	"bnt-lgb",
	scripts = Latn,
}

m["soe"] = {
	"Songomeno",
	"Q5713543",
	"bnt-bsh",
	scripts = Latn,
}

m["sog"] = {
	"Sogdian",
	"Q205979",
	"ira-sgc",
	translit_module = "translit-redirect",
	scripts = {"Sogd", "Mani", "Syrc", "Sogo"},
}

m["soh"] = {
	"Aka (Sudan)",
	"Q3450949",
	"sdv-eje",
	otherNames = {"Aka", "Sillok"},
	scripts = Latn,
}

m["soi"] = {
	"Sonha",
	"Q12953890",
	"inc-eas",
	otherNames = {"Sonaha", "Sonahaa", "Sunah", "Sunha"},
	ancestors = {"inc-mgd"},
}

m["sok"] = {
	"Sokoro",
	"Q3441303",
	"cdc-est",
	scripts = Latn,
}

m["sol"] = {
	"Solos",
	"Q3489591",
	"poz-ocw",
}

m["soo"] = {
	"Nsong",
	"Q12953148",
	"bnt-bdz",
	otherNames = {"Songo", "Tsong"},
	scripts = Latn,
}

m["sop"] = {
	"Songe",
	"Q3130911",
	"bnt-lbn",
	scripts = Latn,
}

m["soq"] = {
	"Kanasi",
	"Q11732656",
}

m["sor"] = {
	"Somrai",
	"Q3123566",
	"cdc-est",
	scripts = Latn,
}

m["sos"] = {
	"Seenku",
	"Q36274",
	"dmn-smg",
	otherNames = {"Seeku", "Sembla", "Sambla"},
}

m["sou"] = {
	"Southern Thai",
	"Q56508",
	"tai-swe",
	aliases = {"Dambro", "Pak Tai"},
	scripts = {"Thai"},
	sort_key = {
		from = {"[%pๆ]", "[็-๎]", "([เแโใไ])([ก-ฮ])"},
		to   = {"", "", "%2%1"}},
}

m["sov"] = {
	"Sonsorolese",
	"Q13281",
	"poz-mic",
	scripts = Latn,
}

m["sow"] = {
	"Sowanda",
	"Q7571845",
	"paa-brd"
}

m["sox"] = {
	"Swo",
	"Q36604",
	"bnt-mka",
	otherNames = {"So", "Sso", "Shwo", "Fo"},
	scripts = Latn,
}

m["soy"] = {
	"Miyobe",
	"Q35913",
	"alv-sav",
	scripts = Latn,
}

m["soz"] = {
	"Temi",
	"Q13278",
	"bnt-kka",
	scripts = Latn,
}

m["spb"] = {
	"Sepa (Indonesia)",
	"Q18603687",
	"poz-cma",
	otherNames = {"Sepa"},
	scripts = Latn,
}

m["spc"] = {
	"Sapé",
	"Q2888158",
	otherNames = {"Kaliana", "Kariana", "Kaliána", "Sapä́", "Sape"},
	scripts = Latn,
}

m["spd"] = {
	"Saep",
	"Q7398312",
	"ngf-mad",
}

m["spe"] = {
	"Sepa (New Guinea)",
	"Q7451725",
	"poz-ocw",
	otherNames = {"Sepa", "Sepa (Papua New Guinea)"},
	scripts = Latn,
}

m["spg"] = {
	"Sian",
	"Q7506806",
	"poz-bnn",
}

m["spi"] = {
	"Saponi",
	"Q3915418",
	"paa",
}

m["spk"] = {
	"Sengo",
	"Q7450584",
	"paa-spk",
	scripts = Latn,
}

m["spl"] = {
	"Selepet",
	"Q7447917",
	"ngf",
}

m["spm"] = {
	"Sepen",
	"Q4701931",
	"paa",
	scripts = Latn,
}

m["spn"] = {
	"Sanapaná",
	"Q3033556",
	"sai-mas",
	scripts = Latn,
}

m["spo"] = {
	"Spokane",
	"Q3493704",
	"sal",
	otherNames = {"Montana Salish", "Salish", "Séliš", "Kalispel-Pend d'oreille", "Kalispel"},
}

m["spp"] = {
	"Supyire",
	"Q56284",
	"alv-sma",
	otherNames = {"Suppire", "Supyire Senoufo", "Supyire Senufo", "Shempire Senoufo", "Shempire"},
	scripts = Latn,
}

m["spr"] = {
	"Saparua",
	"Q7420921",
	"poz-cma",
}

m["sps"] = {
	"Saposa",
	"Q3473187",
	"poz-ocw",
}

m["spt"] = {
	"Spiti Bhoti",
	"Q22080879",
	"sit-las",
}

m["spu"] = {
	"Sapuan",
	"Q7421168",
	"mkh-ban",
}

m["spv"] = {
	"Sambalpuri",
	"Q6433240",
	"inc-eas",
	otherNames = {"Kosali", "Koshali"},
	scripts = {"Orya"},
	translit_module = "or-translit",
	ancestors = {"or"},
}

m["spx"] = {
	"South Picene",
	"Q36688",
	"itc",
	otherNames = {"Old Sabellic", "Old Sabellian", "Middle Adriatic", "Central Adriatic"},
	scripts = {"Ital", "Latn"},
	translit_module = "Ital-translit",
}

m["spy"] = {
	"Sabaot",
	"Q7395896",
	"sdv-kln",
}

m["sqa"] = {
	"Shama-Sambuga",
	"Q3914392",
	"nic-kmk",
	scripts = Latn,
}

m["sqh"] = {
	"Shau",
	"Q3913925",
	"nic-jer",
	scripts = Latn,
}

m["sqk"] = {
	"Albanian Sign Language",
	"Q4709168",
	"sgn",
}

m["sqm"] = {
	"Suma",
	"Q11008431",
	"alv-gbw",
}

m["sqn"] = {
	"Susquehannock",
	"Q3505736",
	"iro",
}

m["sqo"] = {
	"Sorkhei",
	"Q3491964",
	"ira-kms",
}

m["sqq"] = {
	"Sou",
	"Q16979751",
	"mkh-ban",
}

m["sqr"] = {
	"Siculo-Arabic",
	"Q1069489",
	"sem-arb",
}

m["sqs"] = {
	"Sri Lankan Sign Language",
	"Q3915466",
	"sgn",
}

m["sqt"] = {
	"Soqotri",
	"Q13283",
	"sem-sar",
	aliases = {"Socotri"},
	scripts = {"Arab", "Latn"},
}

m["squ"] = {
	"Squamish",
	"Q2484579",
	"sal",
	scripts = Latn,
}

m["sra"] = {
	"Saruga",
	"Q7424699",
	"ngf-mad",
	scripts = Latn,
}

m["srb"] = {
	"Sora",
	"Q13284",
	"mun",
	scripts = {"Sora"},
}

m["sre"] = {
	"Sara",
	"Q33957",
	"day",
}

m["srf"] = {
	"Nafi",
	"Q6958174",
	"poz-ocw",
}

m["srg"] = {
	"Sulod",
	"Q7636489",
	"phi",
}

m["srh"] = {
	"Sarikoli",
	"Q33873",
	"ira-shy",
	scripts = {"Latn", "ug-Arab", "Cyrl"},
	ancestors = {"ira-shr-pro"},
}

m["sri"] = {
	"Siriano",
	"Q3485264",
	"sai-tuc",
	scripts = Latn,
}

m["srk"] = {
	"Serudung Murut",
	"Q7455497",
	"poz-san",
}

m["srl"] = {
	"Isirawa",
	"Q4203802",
	"paa-tkw",
}

m["srm"] = {
	"Saramaccan",
	"Q33779",
	"crp",
	scripts = Latn,
	ancestors = {"en", "pt"},
}

m["srn"] = {
	"Sranan Tongo",
	"Q33989",
	"crp",
	scripts = Latn,
}

m["srq"] = {
	"Sirionó",
	"Q3027953",
	"tup-gua",
	scripts = Latn,
}

m["srr"] = {
	"Serer",
	"Q36284",
	"alv-fwo",
	scripts = Latn,
}

m["srs"] = {
	"Sarcee",
	"Q20825",
	"ath-nor",
	otherNames = {"Sarsi", "Tsuu T'ina", "Tsuut'ina", "Tsu T'ina"},
	scripts = Latn,
}

m["srt"] = {
	"Sauri",
	"Q7427547",
	"paa-egb",
}

m["sru"] = {
	"Suruí",
	"Q7646993",
	"tup",
	otherNames = {"Paíter", "Suruí-Paíter", "Suruí de Rondônia", "Suruí do Jiparaná"},
	scripts = Latn,
}

m["srv"] = {
	"Waray Sorsogon",
	"Q18755610",
	"phi",
}

m["srw"] = {
	"Serua",
	"Q14916905",
	"poz-cet",
}

m["srx"] = {
	"Sirmauri",
	"Q7530505",
	"him",
}

m["sry"] = {
	"Sera",
	"Q7452602",
	"poz-ocw",
	scripts = Latn,
}

m["srz"] = {
	"Shahmirzadi",
	"Q12953126",
	"ira-msh",
	scripts = {"fa-Arab"},
}

m["ssb"] = {
	"Southern Sama",
	"Q3470594",
	"poz-sbj",
	scripts = Latn,
}

m["ssc"] = {
	"Suba-Simbiti",
	"Q7630687",
	"bnt-lok",
	scripts = Latn,
}

m["ssd"] = {
	"Siroi",
	"Q10771067",
	"ngf-mad",
	scripts = Latn,
}

m["sse"] = {
	"Balangingi",
	"Q2880535",
	"poz-sbj",
	scripts = Latn,
}

m["ssf"] = {
	"Thao",
	"Q676492",
	"map",
	otherNames = {"Sao"},
	scripts = Latn,
}

m["ssg"] = {
	"Seimat",
	"Q3182581",
	"poz-aay",
}

m["ssh"] = {
	"Shihhi Arabic",
	"Q56571",
	"sem-arb",
	scripts = {"Arab"},
	entry_name = {
		from = {u(0x0671), u(0x064B), u(0x064C), u(0x064D), u(0x064E), u(0x064F), u(0x0650), u(0x0651), u(0x0652), u(0x0670), u(0x0640)},
		to   = {u(0x0627)}},
}

m["ssi"] = {
	"Sansi",
	"Q3309366",
	"inc-nwe",
	otherNames = {"Bhilki"},
	ancestors = {"psu"},
}

m["ssj"] = {
	"Sausi",
	"Q7427605",
	"ngf-mad",
	scripts = Latn,
}

m["ssk"] = {
	"Sunam",
	"Q11002210",
	"sit-kin",
}

m["ssl"] = {
	"Western Sisaala",
	"Q11154776",
	"nic-sis",
	scripts = Latn,
}

m["ssm"] = {
	"Semnam",
	"Q7449713",
	"mkh-asl",
}

m["ssn"] = {
	"Waata",
	"Q3501553",
	"cus",
}

m["sso"] = {
	"Sissano",
	"Q7530937",
	"poz-ocw",
	scripts = Latn,
}

m["ssp"] = {
	"Spanish Sign Language",
	"Q3100814",
	"sgn",
}

m["ssq"] = {
	"So'a",
	"Q7572120",
	"poz-cet",
	scripts = Latn,
}

m["ssr"] = {
	"Swiss-French Sign Language",
	"Q12953483",
	"sgn",
	otherNames = {"Swiss French Sign Language"},
}

m["sss"] = {
	"Sô",
	"Q3082037",
	"mkh-kat",
}

m["sst"] = {
	"Sinasina",
	"Q7521813",
	"ngf",
	scripts = Latn,
}

m["ssu"] = {
	"Susuami",
	"Q7649752",
	"ngf",
	scripts = Latn,
}

m["ssv"] = {
	"Shark Bay",
	"Q7489783",
	"poz-vnc",
}

m["ssx"] = {
	"Samberigi",
	"Q7409020",
	"paa-eng",
	scripts = Latn,
}

m["ssy"] = {
	"Saho",
	"Q36353",
	"cus",
}

m["ssz"] = {
	"Sengseng",
	"Q7450601",
	"poz-ocw",
	scripts = Latn,
}

m["stb"] = {
	"Northern Subanen",
	"Q12953892",
	"phi",
}

m["std"] = {
	"Sentinelese",
	"Q568377",
}

m["ste"] = {
	"Liana-Seti",
	"Q6539924",
	"poz-cma",
}

m["stf"] = {
	"Seta",
	"Q7456326",
	"qfa-tor",
	scripts = Latn,
}

m["stg"] = {
	"Trieng",
	"Q22694648",
	"mkh-ban",
}

m["sth"] = {
	"Shelta",
	"Q36705",
	"crp",
	otherNames = {"Cant"},
	scripts = Latn,
	ancestors = {"en"},
}

m["sti"] = {
	"Bulo Stieng",
	"Q15771431",
	"mkh-ban",
}

m["stj"] = {
	"Matya Samo",
	"Q10974879",
	"dmn-sam",
	scripts = Latn,
}

m["stk"] = {
	"Arammba",
	"Q3502094",
	"ngf",
}

m["stm"] = {
	"Setaman",
	"Q7456333",
	"ngf-okk",
	scripts = Latn,
}

m["stn"] = {
	"Owa",
	"Q1324132",
	"poz-sls",
	scripts = Latn,
}

m["sto"] = {
	"Stoney",
	"Q3033570",
	"sio-dkt",
}

m["stp"] = {
	"Southeastern Tepehuan",
	"Q12953917",
	"azc",
	scripts = Latn,
}

m["stq"] = {
	"Saterland Frisian",
	"Q27154",
	"gmw-fri",
	otherNames = {"East Frisian", "Eastern Frisian"}, -- Saterland F is a dialect of East F; see [[WT:T:ASTQ]]
	scripts = Latn,
}

m["str"] = {
	"Saanich",
	"Q36444",
	"sal",
	scripts = Latn,
}

m["sts"] = {
	"Shumashti",
	"Q33777",
	"inc-dar",
}

m["stt"] = {
	"Budeh Stieng",
	"Q12953891",
	"mkh-ban",
}

m["stu"] = {
	"Samtao",
	"Q25559550",
	"mkh-pal",
}

m["stv"] = {
	"Silt'e",
	nil,
	"sem-eth",
	scripts = {"Ethi"},
}

m["stw"] = {
	"Satawalese",
	"Q28477",
	"poz-mic",
}

m["sty"] = {
	"Siberian Tatar",
	"Q4418344",
	"trk-kno",
	scripts = {"Cyrl"},
}

m["sua"] = {
	"Sulka",
	"Q7636341",
	"qfa-iso",
}

m["sub"] = {
	"Suku",
	"Q12953160",
	"bnt-yak",
	scripts = Latn,
}

m["suc"] = {
	"Western Subanon",
	"Q16113894",
	"phi",
}

m["sue"] = {
	"Suena",
	"Q7634386",
	"ngf",
	scripts = Latn,
}

m["sug"] = {
	"Suganga",
	"Q7634706",
	"ngf-okk",
	scripts = Latn,
}

m["sui"] = {
	"Suki",
	"Q2089984",
	"ngf",
	scripts = Latn,
}

m["suk"] = {
	"Sukuma",
	"Q2638144",
	"bnt-tkm",
	scripts = Latn,
}

m["suq"] = {
	"Suri",
	"Q5364172",
	"sdv",
}

m["sur"] = {
	"Mwaghavul",
	"Q3440486",
	"cdc-wst",
	otherNames = {"Sura", "Mupun"},
	scripts = Latn,
}

m["sus"] = {
	"Susu",
	"Q33990",
	"dmn-sya",
	scripts = Latn,
}

m["sut"] = {
	"Subtiaba",
	"Q3915405",
	"omq",
	scripts = Latn,
}

m["suv"] = {
	"Sulung",
	"Q56408",
	"sit-khb",
}

m["suw"] = {
	"Sumbwa",
	"Q7637055",
	"bnt-glb",
	scripts = Latn,
}

m["sux"] = {
	"Sumerian",
	"Q36790",
	"qfa-iso",
	scripts = {"Xsux"},
}

m["suy"] = {
	"Suyá",
	"Q3505859",
	"sai-nje",
	scripts = Latn,
}

m["suz"] = {
	"Sunwar",
	"Q56549",
	"sit-kiw",
}

m["sva"] = {
	"Svan",
	"Q34067",
	"ccs",
	scripts = {"Geor", "Cyrl"},
	translit_module = "sva-translit",
	override_translit = true,
	entry_name = {
		from = {DIAER, MACRON},
		to   = {}} ,
}

m["svb"] = {
	"Ulau-Suain",
	"Q7878769",
	"poz-ocw",
	scripts = Latn,
}

m["svc"] = {
	"Vincentian Creole English",
	"Q3501785",
	"crp",
	scripts = Latn,
	ancestors = {"en"},
}

m["sve"] = {
	"Serili",
	"Q7454834",
	"poz-tim",
}

m["svk"] = {
	"Slovakian Sign Language",
	"Q7541557",
	"sgn",
}

m["svm"] = {
	"Slavomolisano",
	"Q36254",
	"zls",
	aliases = {"Slavo-molisano", "Molise Slavic", "Molise Croatian"},
	scripts = Latn,
	ancestors = {"sh"},
}

m["svs"] = {
	"Savosavo",
	"Q3130296",
	"paa",
	scripts = Latn,
}

m["svx"] = {
	"Skalvian",
	"Q3486125",
	"bat",
	scripts = Latn,
}

m["swb"] = {
	"Maore Comorian",
	"Q34075",
	"bnt-com",
	scripts = Latn,
	sort_key = {
		from = {"ɓ", "ɗ"},
		to   = {"bz", "dz"}} ,
}

m["swf"] = {
	"Sere",
	"Q7453056",
	"nic-ser",
	scripts = Latn,
}

m["swg"] = {
	"Swabian",
	"Q327274",
	"gmw",
	scripts = Latn,
	ancestors = {"gsw"},
}

m["swi"] = {
	"Sui",
	"Q3112388",
	"qfa-kms",
	otherNames = {"Ai Sui", "Shui", "Sui Li", "Suipo"},
	scripts = {"Latn", "Hani"}, --Shui is not available yet.
}

m["swj"] = {
	"Sira",
	"Q36599",
	"bnt-sir",
	scripts = Latn,
}

m["swl"] = {
	"Swedish Sign Language",
	"Q36558",
	"sgn",
}

m["swm"] = {
	"Samosa",
	"Q7410037",
	"ngf-mad",
	scripts = Latn,
}

m["swn"] = {
	"Sokna",
	"Q2988323",
	"ber",
	otherNames = {"Sawknah", "Fezzan", "Fogaha"},
}

m["swo"] = {
	"Shanenawa",
	nil,
	"sai-pan",
	scripts = Latn,
}

m["swp"] = {
	"Suau",
	"Q3502368",
	"poz-ocw",
}

m["swq"] = {
	"Sharwa",
	"Q56791",
	"cdc-cbm",
	scripts = Latn,
}

m["swr"] = {
	"Saweru",
	"Q3474649",
}

m["sws"] = {
	"Seluwasan",
	"Q7448845",
	"poz-cet",
}

m["swt"] = {
	"Sawila",
	"Q7428639",
}

m["swu"] = {
	"Suwawa",
	"Q7650588",
	"phi",
}

m["sww"] = {
	"Sowa",
	"Q7571843",
	"poz-vnc",
}

m["swx"] = {
	"Suruahá",
	"Q3114402",
	"auf",
	otherNames = {"Zuruahá", "Suruaha", "Suruwaha", "Zuruaha", "Índios do Coxodoá"},
}

m["swy"] = {
	"Sarua",
	"Q56261",
	"cdc-est",
	scripts = Latn,
}

m["sxb"] = {
	"Suba",
	"Q33916",
	"bnt-lok",
	scripts = Latn,
}

m["sxc"] = {
	"Sicanian",
	"Q36335",
}

m["sxe"] = {
	"Sighu",
	"Q36431",
	"bnt-kel",
	scripts = Latn,
}

m["sxg"] = {
	"Shixing",
	"Q56337",
	"sit-nax",
	otherNames = {"Shuhi", "Xumi"},
}

m["sxk"] = {
	"Southern Kalapuya",
	"Q3192122",
	"nai-klp",
}

m["sxl"] = {
	"Selonian",
	"Q36491",
	"bat",
	otherNames = {"Selian"},
	scripts = Latn,
}

m["sxm"] = {
	"Samre",
	"Q6583615",
	"mkh-pea",
}

m["sxn"] = {
	"Sangir",
	"Q25714758",
	"phi",
	scripts = Latn,
}

m["sxo"] = {
	"Sorothaptic",
	"Q2762254",
}

m["sxr"] = {
	"Saaroa",
	"Q716599",
	"map",
	scripts = Latn,
}

m["sxs"] = {
	"Sasaru",
	"Q3913384",
	"alv-yek",
	scripts = Latn,
}

-- "sxu" "Upper Saxon" IS SUBSUMED INTO "gmw-ecg" "East Central German"

m["sxw"] = {
	"Saxwe Gbe",
	"Q7428892",
	"alv-pph",
}

m["sya"] = {
	"Siang",
	"Q3482903",
}

m["syb"] = {
	"Central Subanen",
	"Q12953893",
	"phi",
	scripts = Latn,
}

m["syc"] = {
	"Classical Syriac",
	"Q33538",
	"sem-are",
	scripts = {"Syrc"},
	entry_name = {
		from = {"[" .. u(0x0304) .. u(0x0308) .. u(0x0331) .. u(0x0730) .. "-" .. u(0x0748) .. "]"},
		to   = {},
	},
}

m["syi"] = {
	"Seki",
	"Q36547",
	"bnt-kel",
	scripts = Latn,
}

m["syk"] = {
	"Sukur",
	"Q56292",
	"cdc-cbm",
	scripts = Latn,
}

m["syl"] = {
	"Sylheti",
	"Q2044560",
	"inc-eas",
	scripts = {"Sylo", "Beng"},
	ancestors = {"inc-mgd"},
	translit_module = "syl-translit",
}

m["sym"] = {
	"Maya Samo",
	"Q10950421",
	"dmn-sam",
	scripts = Latn,
}

m["syn"] = {
	"Senaya",
	"Q33914",
	"sem-nna",
}

m["syo"] = {
	"Suoy",
	"Q7641864",
	"mkh-pea",
}

m["sys"] = {
	"Sinyar",
	"Q56840",
	"csu",
	scripts = Latn,
}

m["syw"] = {
	"Kagate",
	"Q12952538",
	"sit-kyk",
	scripts = {"Deva"},
}

m["syx"] = {
	"Osamayi",
	"Q7408415",
	"bnt-kel",
	otherNames = {"Shamay", "Samayi", "Samay", "Shamayi"},
	scripts = {"Latn"},
}

m["syy"] = {
	"Al-Sayyid Bedouin Sign Language",
	"Q2915457",
	"sgn",
}

m["sza"] = {
	"Semelai",
	"Q3111827",
	"mkh-asl",
}

m["szb"] = {
	"Ngalum",
	"Q11732516",
	"ngf-okk",
	scripts = Latn,
}

m["szc"] = {
	"Semaq Beri",
	"Q7449119",
	"mkh-asl",
}

m["szd"] = {
	"Seru",
	"Q7455488",
	"poz-bnn",
	scripts = Latn,
}

m["sze"] = {
	"Seze",
	"Q373683",
	"omv-mao",
	scripts = Latn,
}

m["szg"] = {
	"Sengele",
	"Q7450555",
	"bnt-mon",
	scripts = Latn,
}

m["szl"] = {
	"Silesian",
	"Q30319",
	"zlw-lch",
	otherNames = {"Upper Silesian", "Silesian Polish", "Upper Silesian Polish"},
	scripts = Latn,
}

m["szn"] = {
	"Sula",
	"Q3503403",
	"poz-cma",
	scripts = Latn,
}

m["szp"] = {
	"Suabo",
	"Q7630429",
	"ngf-sbh",
	otherNames = {"Inanwatan"},
	scripts = Latn,
}

m["szv"] = {
	"Isubu",
	"Q35431",
	"bnt-saw",
	otherNames = {"Isu", "Isu (Fako Division)", "Isuwu", "Suwu", "Subu"},
	scripts = Latn,
}

m["szw"] = {
	"Sawai",
	"Q3447258",
	"poz-hce",
	otherNames = {"Weda", "Weda-Sawai", "Kobe", "Faya-Mafa", "Messa-Dote"},
	scripts = Latn,
}

m["szy"] = {
	"Sakizaya",
	"Q718269",
	"map",
	scripts = Latn,
}

return m