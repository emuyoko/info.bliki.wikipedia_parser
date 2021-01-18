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

local Cyrl = {"Cyrl"}
local Deva = {"Deva"}
local Latn = {"Latn"}
local Latinx = {"Latinx"}

local m = {}

m["kaa"] = {
	"Karakalpak",
	"Q33541",
	"trk-kno",
	scripts = {"Latn", "Cyrl"},
}

m["kab"] = {
	"Kabyle",
	"Q35853",
	"ber",
	scripts = Latn,
}

m["kac"] = {
	"Jingpho",
	"Q33332",
	"sit-jnp",
	scripts = Latn,
}

m["kad"] = {
	"Kadara",
	"Q3914011",
	"nic-plc",
	scripts = Latn,
}

m["kae"] = {
	"Ketangalan",
	"Q2779411",
	"map",
}

m["kaf"] = {
	"Katso",
	"Q246122",
	"tbq-lol",
	otherNames = {"Kazhuo"},
}

m["kag"] = {
	"Kajaman",
	"Q6348863",
	"poz",
	scripts = Latn,
}

m["kah"] = {
	"Fer",
	"Q5443742",
	"csu-bgr",
	otherNames = {"Kara"},
	scripts = Latn,
}

m["kai"] = {
	"Karekare",
	"Q3438770",
	"cdc-wst",
	scripts = Latn,
}

m["kaj"] = {
	"Jju",
	"Q35401",
	"nic-plc",
	scripts = Latn,
}

m["kak"] = {
	"Kayapa Kallahan",
	"Q3192220",
	"phi",
	scripts = Latn,
}

m["kam"] = {
	"Kamba",
	"Q2574767",
	"bnt-kka",
	otherNames = {"Kikamba", "Kamba (Kenya)"},
	scripts = Latn,
}

m["kao"] = {
	"Kassonke",
	"Q36905",
	"dmn-wmn",
	otherNames = {"Khasonke", "Kasonke", "Khassonké"},
	scripts = Latn,
}

m["kap"] = {
	"Bezhta",
	"Q33054",
	"cau-tsz",
	otherNames = {"Bezheta", "Kapucha", "Bezhita"},
	scripts = Cyrl,
}

m["kaq"] = {
	"Capanahua",
	"Q2937196",
	"sai-pan",
	otherNames = {"Kapanawa"},
	scripts = Latn,
}

m["kaw"] = {
	"Old Javanese",
	"Q49341",
	"poz-sus",
	otherNames = {"Kawi"},
	scripts = {"Latn", "Java"},
	translit_module = "jv-translit", --same as jv
}

m["kax"] = {
	"Kao",
	"Q3192799",
}

m["kay"] = {
	"Kamayurá",
	"Q3192336",
	"tup-gua",
	scripts = Latn,
}

m["kba"] = {
	"Kalarko",
	"Q5517764",
	"aus-pam",
	scripts = Latn,
}

m["kbb"] = {
	"Kaxuyana",
	"Q12953626",
	"sai-car",
	otherNames = {"Kachuyana", "Kaxuiana", "Kaxuiâna", "Kashuyana"},
	scripts = Latn,
}

m["kbc"] = {
	"Kadiwéu",
	"Q18168288",
	"sai-guc",
	otherNames = {"Caduveo", "Ediu-Adig", "Guaicurú", "Kadiweu", "Mbayá", "Mbayá-Guaycuru", "Waikurú"},
	scripts = Latn,
}

m["kbd"] = {
	"Kabardian",
	"Q33522",
	"cau-cir",
	otherNames = {"East Circassian"},
	scripts = Cyrl,
	translit_module = "kbd-translit",
	override_translit = true,	
}

m["kbe"] = {
	"Kanju",
	"Q10543322",
	"aus-pam",
	otherNames = {"Kaanytju", "Kandju", "Kaantyu", "Gandju", "Gandanju", "Kamdhue", "Kandyu", "Kanyu"},
	scripts = Latn,
}

m["kbh"] = {
	"Camsá",
	"Q2842667",
	"qfa-iso",
	scripts = Latn,
}

m["kbi"] = {
	"Kaptiau",
	"Q6367294",
	"poz-oce",
	scripts = Latn,
}

m["kbj"] = {
	"Kari",
	"Q6370438",
	"bnt-boa",
	otherNames = {"Kare", "Kare (Central African Republic)", "Bantoid Kare"},
	scripts = Latn,
}

m["kbk"] = {
	"Grass Koiari",
	"Q12952642",
	"ngf",
	otherNames = {"Koiari"},
	scripts = Latn,
}

m["kbm"] = {
	"Iwal",
	"Q3156391",
	"poz-ocw",
	scripts = Latn,
}

m["kbn"] = {
	"Kare (Africa)",
	"Q35554",
	"alv-mbm",
	otherNames = {"Kare (Central African Republic)", "Mbum Kare"},
	scripts = Latn,
}

m["kbo"] = {
	"Keliko",
	"Q11275553",
	"csu-mma",
}

m["kbp"] = {
	"Kabiyé",
	"Q35475",
	"nic-gne",
	otherNames = {"Kabiye", "Kabye"},
	scripts = Latn,
}

m["kbq"] = {
	"Kamano",
	"Q11732272",
	"paa-kag",
	scripts = Latn,
}

m["kbr"] = {
	"Kafa",
	"Q35481",
	"omv-gon",
	scripts = {"Ethi", "Latn"},
}

m["kbs"] = {
	"Kande",
	"Q35556",
	"bnt-tso",
	scripts = Latn,
}

m["kbt"] = {
	"Gabadi",
	"Q3291159",
	"poz-ocw",
	scripts = Latn,
}

m["kbu"] = {
	"Kabutra",
	"Q10966761",
	"inc-wes",
	ancestors = {"raj"},
}

m["kbv"] = {
	"Kamberataro",
	"Q5261289",
	"paa",
	otherNames = {"Dera", "Dera (New Guinea)"},
	scripts = Latn,
}

m["kbw"] = {
	"Kaiep",
	"Q6347632",
	"poz-ocw",
	scripts = Latn,
}

m["kbx"] = {
	"Ap Ma",
	"Q56298",
	"paa-ram",
}

m["kbz"] = {
	"Duhwa",
	"Q56295",
	"cdc-wst",
	scripts = Latn,
}

m["kca"] = {
	"Khanty",
	"Q33563",
	"urj-ugr",
	scripts = Cyrl,
	translit_module = "kca-translit",
	override_translit = true,
}

m["kcb"] = {
	"Kawacha",
	"Q11732302",
	"ngf",
}

m["kcc"] = {
	"Lubila",
	"Q3914381",
	"nic-uce",
	scripts = Latn,
}

m["kcd"] = {
	"Ngkâlmpw Kanum",
	"Q12952566",
	"paa-yam",
}

m["kce"] = {
	"Kaivi",
	"Q6348685",
	"nic-kau",
}

m["kcf"] = {
	"Ukaan",
	"Q36651",
	"nic-bco",
}

m["kcg"] = {
	"Tyap",
	"Q3912765",
	"nic-plc",
}

m["kch"] = {
	"Vono",
	"Q3913920",
	"nic-kau",
}

m["kci"] = {
	"Kamantan",
	"Q3914019",
	"nic-plc",
}

m["kcj"] = {
	"Kobiana",
	"Q35609",
	"alv-nyn",
}

m["kck"] = {
	"Kalanga",
	"Q33672",
	"bnt-sho",
	scripts = Latn,
}

m["kcl"] = {
	"Kala",
	"Q6349982",
	"poz-ocw",
	otherNames = {"Kela", "Gela"},
	scripts = Latn,
}

m["kcm"] = {
	"Tar Gula",
	"Q277963",
	"csu-bba",
}

m["kcn"] = {
	"Nubi",
	"Q36388",
	"crp",
	otherNames = {"Ki-Nubi"},
	scripts = {"Latn", "Arab"},
	ancestors = {"apd"},
	entry_name = {
		from = {'Á', 'á', 'É', 'é', 'Í', 'í', 'Ó', 'ó', 'Ú', 'ú'},
		to   = {'A', 'a', 'E', 'e', 'I', 'i', 'O', 'o', 'U', 'u'}},
}

m["kco"] = {
	"Kinalakna",
	"Q11732320",
	"ngf",
}

m["kcp"] = {
	"Kanga",
	"Q6362384",
	"qfa-kad",
	scripts = Latn,
}

m["kcq"] = {
	"Kamo",
	"Q3914879",
	"alv-wjk",
}

m["kcr"] = {
	"Katla",
	"Q35688",
	"nic-ktl",
}

m["kcs"] = {
	"Koenoem",
	"Q3438755",
	"cdc-wst",
}

m["kct"] = {
	"Kaian",
	"Q6347538",
	"paa-ram",
}

m["kcu"] = {
	"Kikami",
	"Q3915212",
	"bnt-ruv",
	otherNames = {"Kami"},
	scripts = Latn,
}

m["kcv"] = {
	"Kete",
	"Q3195598",
	"bnt-lub",
}

m["kcw"] = {
	"Kabwari",
	"Q6344539",
	"bnt-glb",
}

m["kcx"] = {
	"Kachama-Ganjule",
	"Q12634070",
	"omv-eom",
}

m["kcy"] = {
	"Korandje",
	"Q33427",
	"son",
}

m["kcz"] = {
	"Konongo",
	"Q11732345",
	"bnt-tkm",
	scripts = Latn,
}

m["kda"] = {
	"Worimi",
	"Q3914062",
	"aus-pam",
	otherNames = {"Gadang", "Gadhang", "Gadjang", "Kattang", "Kutthung"},
	scripts = Latn,
}

m["kdc"] = {
	"Kutu",
	"Q6448634",
	"bnt-ruv",
}

m["kdd"] = {
	"Yankunytjatjara",
	"Q34207",
	"aus-pam",
	scripts = Latn,
}

m["kde"] = {
	"Makonde",
	"Q35172",
	"bnt-rvm",
	scripts = Latn,
}

m["kdf"] = {
	"Mamusi",
	"Q6746036",
	"poz-ocw",
	scripts = Latn,
}

m["kdg"] = {
	"Seba",
	"Q7442316",
	"bnt-sbi",
	scripts = Latn,
}

m["kdh"] = {
	"Tem",
	"Q36531",
	"nic-gne",
}

m["kdi"] = {
	"Kumam",
	"Q6443410",
	"sdv-los",
	otherNames = {"Kuman"},
}

m["kdj"] = {
	"Karamojong",
	"Q56326",
	"sdv-ttu",
	scripts = Latn,
}

m["kdk"] = {
	"Numee",
	"Q3346774",
	"poz-cln",
}

m["kdl"] = {
	"Tsikimba",
	"Q3914404",
	"nic-kam",
}

m["kdm"] = {
	"Kagoma",
	"Q3914420",
	"nic-plc",
}

m["kdn"] = {
	"Kunda",
	"Q4121130",
	"bnt-sna",
}

m["kdp"] = {
	"Kaningdon-Nindem",
	"Q3914956",
	"nic-nin",
}

m["kdq"] = {
	"Koch",
	"Q56431",
	"tbq-bdg",
}

m["kdr"] = {
	"Karaim",
	"Q33725",
	"trk-kcu",
	scripts = {"Cyrl", "Latn", "Hebr"},
}

m["kdt"] = {
	"Kuy",
	"Q56310",
	"mkh-kat",
}

m["kdu"] = {
	"Kadaru",
	"Q35441",
	"nub-hil",
	otherNames = {"Kedaru", "Debri"}, -- Debri is subsumed for now as it lacks an ISO code, may need to be split
	scripts = Latn,
}

m["kdv"] = {
	"Kado",
	"Q7402721",
	"sit-luu",
	otherNames = {"Kadu"},
}

m["kdw"] = {
	"Koneraw",
	"Q11732341",
	"ngf",
}

m["kdx"] = {
	"Kam",
	"Q36753",
	"alv-wjk",
}

m["kdy"] = {
	"Keder",
	"Q6383641",
	"paa-tkw",
}

m["kdz"] = {
	"Kwaja",
	"Q11128866",
	"nic-nka",
	otherNames = {"Ndaktup", "Ncha", "Bitwi"},
	scripts = Latn,
}

m["kea"] = {
	"Kabuverdianu",
	"Q35963",
	"crp",
	otherNames = {"Cape Verdean Creole", "Kriolu", "Creole", "Barlavento", "Sotavento"},
	scripts = Latn,
	ancestors = {"pt"},
}

m["keb"] = {
	"Kélé",
	"Q35559",
	"bnt-kel",
}

m["kec"] = {
	"Keiga",
	"Q3409311",
	"qfa-kad",
	scripts = Latn,
}

m["ked"] = {
	"Kerewe",
	"Q6393846",
	"bnt-haj",
}

m["kee"] = {
	"Eastern Keres",
	"Q15649021",
	"nai-ker",
	scripts = Latn,
}

m["kef"] = {
	"Kpessi",
	"Q35748",
	"alv-gbe",
}

m["keg"] = {
	"Tese",
	"Q16887296",
	"sdv",
}

m["keh"] = {
	"Keak",
	"Q6382110",
	"paa-spk",
}

m["kei"] = {
	"Kei",
	"Q2410352",
}

m["kej"] = {
	"Kadar",
	"Q6345179",
	"dra",
}

m["kek"] = {
	"Q'eqchi",
	"Q35536",
	"myn",
	scripts = Latn,
}

m["kel"] = {
	"Kela-Yela",
	"Q6385426",
	"bnt-mon",
	otherNames = {"Kela", "Yela"},
	scripts = Latn,
}

m["kem"] = {
	"Kemak",
	"Q35549",
	"poz-tim",
}

m["ken"] = {
	"Kenyang",
	"Q35650",
	"nic-mam",
	scripts = Latn,
}

m["keo"] = {
	"Kakwa",
	"Q3033547",
	"sdv-bri",
}

m["kep"] = {
	"Kaikadi",
	"Q6347757",
	"dra",
}

m["keq"] = {
	"Kamar",
	"Q14916877",
	"inc-eas",
	ancestors = {"inc-mgd"},
}

m["ker"] = {
	"Kera",
	"Q56251",
	"cdc-est",
	scripts = Latn,
}

m["kes"] = {
	"Kugbo",
	"Q3813394",
	"nic-cde",
	scripts = Latn,
}

m["ket"] = {
	"Ket",
	"Q33485",
	"qfa-yen",
	scripts = Cyrl,
}

m["keu"] = {
	"Akebu",
	"Q35026",
	"alv-ktg",
}

m["kev"] = {
	"Kanikkaran",
	"Q6363201",
	"dra",
}

m["kew"] = {
	"Kewa",
	"Q12952619",
	"paa-eng",
	otherNames = {"West Kewa", "East Kewa", "South Kewa", "Erave", "Pasuma"},
	scripts = Latn,
}

m["kex"] = {
	"Kukna",
	"Q5031131",
	"inc-eas",
	ancestors = {"bh"},
}

m["key"] = {
	"Kupia",
	"Q6445354",
	"inc-eas",
}

m["kez"] = {
	"Kukele",
	"Q3915391",
	"nic-ucn",
	scripts = Latn,
}

m["kfa"] = {
	"Kodava",
	"Q33531",
	"dra",
	scripts = {"Knda"},
}

m["kfb"] = {
	"Kolami",
	"Q33479",
	"dra",
	scripts = Deva,
}

m["kfc"] = {
	"Konda-Dora",
	"Q35679",
	"dra",
	scripts = {"Telu"},
}

m["kfd"] = {
	"Korra Koraga",
	"Q12952655",
	"dra",
	scripts = {"Knda"},
}

m["kfe"] = {
	"Kota (India)",
	"Q33483",
	"dra",
	otherNames = {"Kota"},
	scripts = {"Taml"},
}

m["kff"] = {
	"Koya",
	"Q33471",
	"dra",
}

m["kfg"] = {
	"Kudiya",
	"Q12952667",
	"dra",
}

m["kfh"] = {
	"Kurichiya",
	"Q12952676",
	"dra",
}

m["kfi"] = {
	"Kannada Kurumba",
	"Q56589",
	"dra",
}

m["kfj"] = {
	"Kemiehua",
	"Q27144776",
	"mkh-pal",
}

m["kfk"] = {
	"Kinnauri",
	"Q2383208",
	"sit-kin",
}

m["kfl"] = {
	"Kung",
	"Q6444510",
	"nic-rnc",
	scripts = Latn,
}

m["kfn"] = {
	"Kuk",
	"Q6442398",
	"nic-rnc",
	scripts = Latn,
}

m["kfo"] = {
	"Koro (West Africa)",
	"Q11160588",
	"dmn-mnk",
	otherNames = {"Koro", "Koro Jula"}, -- the last name is misleading, as Jula is a diff. language
	scripts = {"Latn", "Nkoo"},
}

m["kfp"] = {
	"Korwa",
	"Q6432786",
	"mun",
}

m["kfq"] = {
	"Korku",
	"Q33715",
	"mun",
}

m["kfr"] = {
	"Kachchi",
	"Q56487",
	"inc-snd",
	otherNames = {"Kutchi", "Cutchi", "Kachchhi", "Kutchhi"},
	translit_module = "gu-translit",
	scripts = {"Gujr", "sd-Arab"},
	ancestors = {"inc-vra"},
}

m["kfs"] = {
	"Bilaspuri",
	"Q12953397",
	"him",
	scripts = {"Deva", "Takr"},
	translit_module = "hi-translit",
}

m["kft"] = {
	"Kanjari",
	"Q12953610",
	"inc-pan",
	ancestors = {"pa"},
}

m["kfu"] = {
	"Katkari",
	"Q6377671",
	"inc-sou",
	ancestors = {"pmh"},
}

m["kfv"] = {
	"Kurmukar",
	"Q6446193",
	"inc-eas",
	ancestors = {"inc-mgd"},
}

m["kfw"] = {
	"Kharam Naga",
	"Q12952906",
	"tbq-kuk",
	otherNames = {"Kharam"},
}

m["kfx"] = {
	"Kullu Pahari",
	"Q6443148",
	"him",
	otherNames = {"Kullu"},
	scripts = Deva,
	translit_module = "hi-translit",
}

m["kfy"] = {
	"Kumaoni",
	"Q33529",
	"inc-pah",
	scripts = {"Deva", "Shrd", "Takr"},
}

m["kfz"] = {
	"Koromfé",
	"Q35701",
	"nic-gur",
	scripts = Latn,
}

m["kga"] = {
	"Koyaga",
	"Q11155632",
	"dmn-mnk",
}

m["kgb"] = {
	"Kawe",
	"Q12952750",
	"poz-hce",
}

m["kgd"] = {
	"Kataang",
	"Q12953622",
	"mkh",
}

m["kge"] = {
	"Komering",
	"Q49224",
	"poz-lgx",
}

m["kgf"] = {
	"Kube",
	"Q11732359",
	"ngf",
}

m["kgg"] = {
	"Kusunda",
	"Q33630",
	"qfa-iso",
	scripts = Latn,
}

m["kgi"] = {
	"Selangor Sign Language",
	"Q33731",
	"sgn",
}

m["kgj"] = {
	"Gamale Kham",
	"Q22236996",
	"sit-kha",
}

m["kgk"] = {
	"Kaiwá",
	"Q3111883",
	"tup-gua",
	scripts = Latn,
}

m["kgl"] = {
	"Kunggari",
	"Q10550184",
	"aus-pam",
}

m["kgm"] = {
	"Karipúna",
	"Q6371069",
}

m["kgn"] = {
	"Karingani",
	"Q6371041",
	"xme-ttc",
	otherNames = {"Keringani"},
	ancestors = {"xme-ttc-nor"},
}

m["kgo"] = {
	"Krongo",
	"Q6438927",
	"qfa-kad",
	scripts = Latn,
}

m["kgp"] = {
	"Kaingang",
	"Q2665734",
	"sai-sje",
	scripts = Latn,
}

m["kgq"] = {
	"Kamoro",
	"Q6359001",
	"ngf",
}

m["kgr"] = {
	"Abun",
	"Q56657",
	"paa",
}

m["kgs"] = {
	"Kumbainggar",
	"Q3915412",
	"aus-pam",
}

m["kgt"] = {
	"Somyev",
	"Q3913354",
	"nic-mmb",
	scripts = Latn,
}

m["kgu"] = {
	"Kobol",
	"Q11732325",
	"ngf-mad",
}

m["kgv"] = {
	"Karas",
	"Q6368621",
	"ngf",
}

m["kgw"] = {
	"Karon Dori",
	"Q56817",
}

m["kgx"] = {
	"Kamaru",
	"Q12953604",
	"poz",
}

m["kgy"] = {
	"Kyerung",
	"Q12952691",
	"sit-kyk",
}

m["kha"] = {
	"Khasi",
	"Q33584",
	"aav-pkl",
	scripts = {"Latn", "as-Beng"},
}

m["khb"] = {
	"Lü",
	"Q36948",
	"tai-swe",
	aliases = {"Lue", "Tai Lü", "Tai Lue", "Dai Lue"},
	scripts = {"Talu", "Lana"},
	translit_module = "translit-redirect",
	sort_key = {
		from = {"[%pᪧ]", "᧞", "᧟", "([ᦵᦶᦷᦺ])([ᦀ-ᦫ])", "[᩠ᩳ-᩿]", "ᩔ", "ᩕ", "ᩖ", "ᩘ", "([ᨭ-ᨱ])ᩛ", "([ᨷ-ᨾ])ᩛ", "ᩤ"},
		to = {"", "ᦶᦜ", "ᦶᦜᧁ", "%2%1", "", "ᩈᩈ", "ᩁ", "ᩃ", "ᨦ", "%1ᨮ", "%1ᨻ", "ᩣ"}},
	entry_name = {
		from = {" "},
		to = {""}},
}

m["khc"] = {
	"Tukang Besi North",
	"Q18611555",
	"poz",
}

m["khd"] = {
	"Bädi Kanum",
	"Q20888004",
	"paa-yam",
}

m["khe"] = {
	"Korowai",
	"Q6432598",
	"ngf",
}

m["khf"] = {
	"Khuen",
	"Q27144893",
	"mkh",
}

m["khh"] = {
	"Kehu",
	"Q10994953",
}

m["khj"] = {
	"Kuturmi",
	"Q3914490",
	"nic-plc",
	scripts = Latn,
}

m["khl"] = {
	"Lusi",
	"Q3267788",
	"poz-ocw",
	scripts = Latn,
}

m["khn"] = {
	"Khandeshi",
	"Q33726",
	"inc-sou",
	ancestors = {"pmh"},
}

m["kho"] = {
	"Khotanese",
	"Q6583551",
	"xsc-sak",
	scripts = {"Brah", "Khar"},
	translit_module = "Brah-translit",
}

m["khp"] = {
	"Kapauri",
	"Q3502575",
	"paa-tkw",
}

m["khq"] = {
	"Koyra Chiini",
	"Q33600",
	"son",
	otherNames = {"Western Songhay", "Koyra Chiini Songhay"},
}

m["khr"] = {
	"Kharia",
	"Q3915562",
	"mun",
}

m["khs"] = {
	"Kasua",
	"Q6374863",
	"ngf",
}

m["kht"] = {
	"Khamti",
	"Q3915502",
	"tai-swe",
}

m["khu"] = {
	"Nkhumbi",
	"Q11019169",
	"bnt-swb",
}

m["khv"] = {
	"Khvarshi",
	"Q56425",
	"cau-tsz",
	otherNames = {"Khwarshi", "Xvarshi", "Inkhokvari"},
	scripts = Cyrl,
}

m["khw"] = {
	"Khowar",
	"Q938216",
	"inc-dar",
	scripts = {"Arab"},
}

m["khx"] = {
	"Kanu",
	"Q12952571",
	"bnt-lgb",
}

m["khy"] = {
	"Ekele",
	"Q6385549",
	"bnt-ske",
	otherNames = {"Kele", "Kele (Congo)", "Kele (Democratic Republic of the Congo)", "Lokele"},
	scripts = Latn,
}

m["khz"] = {
	"Keapara",
	"Q12952603",
	"poz-ocw",
	scripts = Latn,
}

m["kia"] = {
	"Kim",
	"Q35685",
	"alv-kim",
}

m["kib"] = {
	"Koalib",
	"Q35859",
	"alv-hei",
}

m["kic"] = {
	"Kickapoo",
	"Q20162127",
	"alg-sfk",
	scripts = Latn,
}

m["kid"] = {
	"Koshin",
	"Q35632",
	"nic-beb",
	scripts = Latn,
}

m["kie"] = {
	"Kibet",
	"Q56893",
}

m["kif"] = {
	"Eastern Parbate Kham",
	"Q12953022",
	"sit-kha",
}

m["kig"] = {
	"Kimaama",
	"Q11732321",
	"ngf",
}

m["kih"] = {
	"Kilmeri",
	"Q6408020",
	"paa-brd",
}

m["kii"] = {
	"Kitsai",
	"Q56627",
	"cdd",
	otherNames = {"Kichai"},
	scripts = Latn,
}

m["kij"] = {
	"Kilivila",
	"Q3196601",
	"poz-ocw",
	scripts = Latn,
}

m["kil"] = {
	"Kariya",
	"Q3438708",
	"cdc-wst",
}

m["kim"] = {
	"Tofa",
	"Q36848",
	"trk-sib",
	otherNames = {"Tofalar", "Karagas"},
	scripts = Cyrl,
}

m["kio"] = {
	"Kiowa",
	"Q56631",
	"nai-kta",
	scripts = Latn,
}

m["kip"] = {
	"Sheshi Kham",
	"Q12952622",
	"sit-kha",
}

m["kiq"] = {
	"Kosadle",
	"Q6432994",
}

m["kis"] = {
	"Kis",
	"Q6416362",
	"poz-ocw",
	scripts = Latn,
}

m["kit"] = {
	"Agob",
	"Q3332143",
}

m["kiv"] = {
	"Kimbu",
	"Q10997740",
	"bnt-tkm",
}

m["kiw"] = {
	"Northeast Kiwai",
	"Q11732324",
	"paa-kiw",
}

m["kix"] = {
	"Khiamniungan Naga",
	"Q6401546",
	"sit-kch",
}

m["kiy"] = {
	"Kirikiri",
	"Q6415159",
	"paa-lkp",
	otherNames = {"Faia"},
}

m["kiz"] = {
	"Kisi",
	"Q3912772",
	"bnt-bki",
}

m["kja"] = {
	"Mlap",
	"Q6885683",
	"paa-nim",
}

m["kjb"] = {
	"Q'anjob'al",
	"Q35551",
	"myn",
	scripts = Latn,
}

m["kjc"] = {
	"Coastal Konjo",
	"Q3198689",
	"poz",
}

m["kjd"] = {
	"Southern Kiwai",
	"Q11732322",
	"paa-kiw",
}

m["kje"] = {
	"Kisar",
	"Q3197441",
	"poz",
}

m["kjg"] = {
	"Khmu",
	"Q33335",
	"mkh",
	scripts = {"Laoo"},
	sort_key = {
		from = {"[%pໆ]", "[່-ໍ]", "ຼ", "ຽ", "ໜ", "ໝ", "([ເແໂໃໄ])([ກ-ຮໞໟ])"},
		to   = {"", "", "ລ", "ຍ", "ຫນ", "ຫມ", "%2%1"}},
}

m["kjh"] = {
	"Khakas",
	"Q33575",
	"trk-sib",
	scripts = Cyrl,
	translit_module = "kjh-translit",
	override_translit = true,
}

m["kji"] = {
	"Zabana",
	"Q379130",
	"poz-ocw",
	scripts = Latn,
}

m["kjj"] = {
	"Khinalug",
	"Q35278",
	"cau-nec",
	otherNames = {"Khinalig", "Xinalug", "Xinalugh", "Khinalugh"},
	scripts = Cyrl,
	translit_module = "kjj-translit",
	override_translit = true,
	entry_name = {
		from = {ACUTE},
		to   = {}},
}

m["kjk"] = {
	"Highland Konjo",
	"Q3198688",
	"poz",
}

m["kjl"] = {
	"Kham",
	"Q22237017",
	"sit-kha",
}

m["kjm"] = {
	"Kháng",
	"Q6403501",
	"mkh-pal",
}

m["kjn"] = {
	"Kunjen",
	"Q3200468",
	"aus-pmn",
	otherNames = {"Uw Oykangand", "Uw Olkola", "Olkol", "Olgolo", "Uw-Oykangand", "Uw-Olgol", "Koko Wanggara", "Ogh-Undjan", "Undjan", "Kawarrangg", "Athima", "Uw", "Kunjen-Undjan-Athima"},
	scripts = Latn,
}

m["kjo"] = {
	"Harijan Kinnauri",
	"Q5657463",
	"him",
}

m["kjp"] = {
	"Eastern Pwo",
	"Q5330390",
	"kar",
	aliases = {"Phlou", "Eastern Pwo Karen"},
	scripts = {"Mymr", "Leke", "Thai"},
}

m["kjq"] = {
	"Western Keres",
	"Q12645568",
	"nai-ker",
	scripts = Latn,
}

m["kjr"] = {
	"Kurudu",
	"Q12952678",
	"poz-hce",
	scripts = Latn,
}

m["kjs"] = {
	"East Kewa",
	"Q20050949",
	"paa-eng",
}

m["kjt"] = {
	"Phrae Pwo",
	"Q7187991",
	"kar",
	aliases = {"Phrae Pwo Karen", "Northeastern Pwo", "Northeastern Pwo Karen"},
	scripts = {"Thai"},
}

m["kju"] = {
	"Kashaya",
	"Q3193689",
	"nai-pom",
	scripts = Latn,
}

m["kjx"] = {
	"Ramopa",
	"Q56830",
	"paa-nbo",
	otherNames = {"Keriaka"},
}

m["kjy"] = {
	"Erave",
	"Q12952416",
	"paa-eng",
}

m["kjz"] = {
	"Bumthangkha",
	"Q2786408",
	"sit-ebo",
}

m["kka"] = {
	"Kakanda",
	"Q3915342",
	"alv-ngb",
}

m["kkb"] = {
	"Kwerisa",
	"Q56881",
	"paa-lkp",
}

m["kkc"] = {
	"Odoodee",
	"Q12952987",
}

m["kkd"] = {
	"Kinuku",
	"Q6414422",
	"nic-kau",
}

m["kke"] = {
	"Kakabe",
	"Q3913966",
	"dmn-mok",
	scripts = Latn,
}

m["kkf"] = {
	"Kalaktang Monpa",
	nil,
	"sit-tsk",
}

m["kkg"] = {
	"Mabaka Valley Kalinga",
	"Q18753304",
	"phi",
}

m["kkh"] = {
	"Khün",
	"Q3545044",
	"tai-swe",
	otherNames = {"Tai Khün", "Dai Kun"},
	scripts = {"Lana", "Thai"},
	sort_key = {
		from = {"[%pᪧๆ]", "[᩠ᩳ-᩿]", "ᩔ", "ᩕ", "ᩖ", "ᩘ", "([ᨭ-ᨱ])ᩛ", "([ᨷ-ᨾ])ᩛ", "ᩤ", "[็-๎]", "([เแโใไ])([ก-ฮ])"},
		to   = {"", "", "ᩈᩈ", "ᩁ", "ᩃ", "ᨦ", "%1ᨮ", "%1ᨻ", "ᩣ", "", "%2%1"}},
}

m["kki"] = {
	"Kagulu",
	"Q12952537",
	"bnt-ruv",
	otherNames = {"Kaguru"},
	scripts = Latn,
}

m["kkj"] = {
	"Kako",
	"Q35755",
	"bnt-kak",
}

m["kkk"] = {
	"Kokota",
	"Q3198399",
	"poz-ocw",
	scripts = Latn,
}

m["kkl"] = {
	"Kosarek Yale",
	"Q6432995",
	"ngf",
}

m["kkm"] = {
	"Kiong",
	"Q6414512",
	"nic-ucr",
	scripts = Latn,
}

m["kkn"] = {
	"Kon Keu",
	"Q6428686",
	"mkh-pal",
}

m["kko"] = {
	"Karko",
	"Q35529",
	"nub-hil",
	otherNames = {"Kithonirishe"},
}

m["kkp"] = {
	"Koko-Bera",
	"Q6426699",
	"aus-pmn",
	otherNames = {"Kok-Kaper", "Gugubera", "Koko-Pera"},
	scripts = Latn,
}

m["kkq"] = {
	"Kaiku",
	"Q6347840",
	"bnt-kbi",
	scripts = Latn,
}

m["kkr"] = {
	"Kir-Balar",
	"Q3440527",
	"cdc-wst",
	otherNames = {"Kir"},
	scripts = Latn,
}

m["kks"] = {
	"Kirfi",
	"Q56242",
	"cdc-wst",
	otherNames = {"Giiwo"},
	scripts = Latn,
}

m["kkt"] = {
	"Koi",
	"Q6426194",
	"sit-kiw",
}

m["kku"] = {
	"Tumi",
	"Q3913934",
	"nic-kau",
}

m["kkv"] = {
	"Kangean",
	"Q2071325",
}

m["kkw"] = {
	"Teke-Kukuya",
	"Q36560",
	"bnt-tek",
}

m["kkx"] = {
	"Kohin",
	"Q6425997",
	"poz-brw",
}

m["kky"] = {
	"Guugu Yimidhirr",
	"Q56543",
	"aus-pam",
	scripts = Latn,
}

m["kkz"] = {
	"Kaska",
	"Q20823",
	"ath-nor",
	scripts = Latn,
}

m["kla"] = {
	"Klamath-Modoc",
	"Q2669248",
	"nai-plp",
	otherNames = {"Klamath"},
	scripts = Latn,
}

m["klb"] = {
	"Kiliwa",
	"Q3182593",
	"nai-yuc",
	scripts = Latn,
}

m["klc"] = {
	"Kolbila",
	"Q6427122",
	"alv-lek",
}

m["kld"] = {
	"Gamilaraay",
	"Q3111818",
	"aus-cww",
	otherNames = {"Kamilaroi", "Kamilarai", "Kamalarai", "Gamilaroi"},
	scripts = Latn,
}

m["kle"] = {
	"Kulung",
	"Q6443304",
	"sit-kic",
}

m["klf"] = {
	"Kendeje",
	"Q56895",
}

m["klg"] = {
	"Tagakaulu Kalagan",
	"Q18756514",
	"phi",
}

m["klh"] = {
	"Weliki",
	"Q7981017",
	"ngf-fin",
	scripts = Latn,
}

m["kli"] = {
	"Kalumpang",
	"Q13561407",
	"poz",
}

m["klj"] = {
	"Khalaj",
	"Q33455",
	"trk",
	otherNames = {"Turkic Khalaj", "Arghu"},
}

m["klk"] = {
	"Kono (Nigeria)",
	"Q6429589",
	"nic-kau",
	otherNames = {"Kono"},
	scripts = Latn,
}

m["kll"] = {
	"Kagan Kalagan",
	"Q18748913",
	"phi",
}

m["klm"] = {
	"Kolom",
	"Q6844970",
	"ngf-mad",
	otherNames = {"Migum"},
	scripts = Latn,
}

m["kln"] = {
	"Kalenjin",
	"Q637228",
	"sdv-nma",
	scripts = Latn,
}

m["klo"] = {
	"Kapya",
	"Q6367410",
	"nic-ykb",
}

m["klp"] = {
	"Kamasa",
	"Q6356107",
	"ngf",
}

m["klq"] = {
	"Rumu",
	"Q7379420",
	"ngf",
}

m["klr"] = {
	"Khaling",
	"Q56381",
	"sit-kiw",
}

m["kls"] = {
	"Kalasha",
	"Q33416",
	"inc-dar",
	scripts = {"Latn", "ks-Arab"},
}

m["klt"] = {
	"Nukna",
	"Q7068874",
	"ngf-fin",
	scripts = Latn,
}

m["klu"] = {
	"Klao",
	"Q3914866",
	"kro-wkr",
}

m["klv"] = {
	"Maskelynes",
	"Q3297282",
	"poz-vnc",
	scripts = Latn,
}

m["klw"] = {
	"Lindu",
	"Q18390055",
	"poz-kal",
	otherNames = {"Tado"},
}

m["klx"] = {
	"Koluwawa",
	"Q6427954",
	"poz-ocw",
	scripts = Latn,
}

m["kly"] = {
	"Kalao",
	"Q6350643",
	"poz",
}

m["klz"] = {
	"Kabola",
	"Q11732258",
	"qfa-tap",
}

m["kma"] = {
	"Konni",
	"Q35680",
	"nic-buk",
}

m["kmb"] = {
	"Kimbundu",
	"Q35891",
	"bnt-kmb",
	otherNames = {"North Mbundu"},
	scripts = Latn,
}

m["kmc"] = {
	"Southern Kam",
	"Q35379",
	"qfa-kms",
	otherNames = {"Southern Gam", "Southern Dong"},
	scripts = Latn,
}

m["kmd"] = {
	"Madukayang Kalinga",
	"Q18753305",
	"phi",
}

m["kme"] = {
	"Bakole",
	"Q35068",
	"bnt-kpw",
}

m["kmf"] = {
	"Kare (New Guinea)",
	"Q11732286",
	"ngf-mad",
	otherNames = {"Kare", "Kare (Papua New Guinea)"},
	scripts = Latn,
}

m["kmg"] = {
	"Kâte",
	"Q3201059",
	"ngf",
}

m["kmh"] = {
	"Kalam",
	"Q12952550",
	"ngf-mad",
}

m["kmi"] = {
	"Kami",
	"Q3915372",
	"alv-ngb",
	scripts = Latn,
}

m["kmj"] = {
	"Kumarbhag Paharia",
	"Q3130374",
	"dra",
	otherNames = {"Kumarbhag", "Kumarbhag Pahariya", "Kumar Paharia", "Malto"},
	scripts = {"Beng", "Deva"},
}

m["kmk"] = {
	"Limos Kalinga",
	"Q18753303",
	"phi",
}

m["kml"] = {
	"Tanudan Kalinga",
	"Q18753307",
	"phi",
	otherNames = {"Lower Tanudan Kalinga", "Upper Tanudan Kalinga"},
	scripts = Latn,
}

m["kmm"] = {
	"Kom (India)",
	"Q12952647",
	"tbq-kuk",
	otherNames = {"Kom"},
}

m["kmn"] = {
	"Awtuw",
	"Q3504217",
	"paa-spk",
}

m["kmo"] = {
	"Kwoma",
	"Q11732376",
	"paa-spk",
}

m["kmp"] = {
	"Gimme",
	"Q11152236",
	"alv-dur",
}

m["kmq"] = {
	"Kwama",
	"Q2591184",
	"ssa-kom",
}

m["kmr"] = {
	"Northern Kurdish",
	"Q36163",
	"ira-nwi",
	otherNames = {"Kurmanji"},
	scripts = {"Latn", "Cyrl", "Armn", "ku-Arab"},
	ancestors = {"ku"},
	translit_module = "translit-redirect",
	entry_name = {
		from = {"'"},
		to   = {"’"}},
	wikimedia_codes = {"ku"},
}

m["kms"] = {
	"Kamasau",
	"Q6356117",
	"qfa-tor",
	scripts = Latn,
}

m["kmt"] = {
	"Kemtuik",
	"Q6387179",
	"paa-nim",
}

m["kmu"] = {
	"Kanite",
	"Q12952567",
	"paa-kag",
}

m["kmv"] = {
	"Karipúna Creole French",
	"Q2523999",
	"crp",
	otherNames = {"Karipúna French Creole", "Amapá French Creole"},
	ancestors = {"fr"},
}

m["kmw"] = {
	"Kumu",
	"Q6428450",
	"bnt-kbi",
	otherNames = {"Kikomo", "Komo (Democratic Republic of the Congo)", "Komo", "Kikumu"},
	scripts = Latn,
}

m["kmx"] = {
	"Waboda",
	"Q7958705",
	"paa-kiw",
}

m["kmy"] = {
	"Koma",
	"Q35634",
	"alv-dur",
}

m["kmz"] = {
	"Khorasani Turkish",
	"Q35373",
	"trk-ogz",
	otherNames = {"Khorasani Turkic"},
	ancestors = {"trk-oat"},
}

m["kna"] = {
	"Kanakuru",
	"Q56811",
	"cdc",
	otherNames = {"Dera", "Dera (Nigeria)"},
	scripts = Latn,
}

m["knb"] = {
	"Lubuagan Kalinga",
	"Q12953602",
	"phi",
}

m["knd"] = {
	"Konda",
	"Q11732340",
	"ngf-sbh",
	scripts = Latn,
}

m["kne"] = {
	"Kankanaey",
	"Q18753329",
	"phi",
	scripts = Latn,
}

m["knf"] = {
	"Mankanya",
	"Q35789",
	"alv-pap",
}

m["kni"] = {
	"Kanufi",
	"Q3913297",
	"nic-nin",
	scripts = Latn,
}

m["knj"] = {
	"Akatek",
	"Q34923",
	"myn",
	otherNames = {"Acateco", "Western Kanjobal"},
	scripts = Latn,
}

m["knk"] = {
	"Kuranko",
	"Q3198896",
	"dmn-mok",
	scripts = Latn,
}

m["knl"] = {
	"Keninjal",
	"Q6389309",
	"poz-mly",
}

m["knm"] = { -- two unrelated lects have this name; this is the Katukinian one
	"Kanamari",
	"Q3438373",
	"sai-ktk",
	otherNames = {"Kanamarí", "Katukina-Kanamari", "Kanamare", "Katukína", "Katukina"},
	scripts = Latn,
}

m["kno"] = {
	"Kono (Sierra Leone)",
	"Q35675",
	"dmn-vak",
	otherNames = {"Kono", "Konnoh"},
}

m["knp"] = {
	"Kwanja",
	"Q35641",
	"nic-mmb",
	scripts = Latn,
}

m["knq"] = {
	"Kintaq",
	"Q6414335",
	"mkh-asl",
}

m["knr"] = {
	"Kaningra",
	"Q6363253",
	"paa-spk",
}

m["kns"] = {
	"Kensiu",
	"Q6391529",
	"mkh-asl",
}

m["knt"] = {
	"Katukina",
	"Q3194265",
	"sai-pan",
	otherNames = {"Panoan Katukína", "Katukína", "Catuquina", "Waninawa", "Waninnawa", "Kamanawa", "Kamannaua", "Katukina do Jurua", "Katukina of Olinda", "Katukina of Sete Estreles", "Kanamari"},
	scripts = Latn,
}

m["knu"] = { -- a dialect of 'kpe'
	"Kono (Guinea)",
	"Q3198703",
	"dmn-msw",
	otherNames = {"Kono"},
	scripts = Latn,
	ancestors = {"kpe"},
}

m["knv"] = {
	"Tabo",
	"Q7959888",
	"aav",
}

m["knx"] = {
	"Kendayan",
	"Q6388963",
	"poz-mly",
	otherNames = {"Salako", "Selako", "Ahe"},
	scripts = Latn,
}

m["kny"] = {
	"Kanyok",
	"Q11110766",
	"bnt-lub",
}

m["knz"] = {
	"Kalamsé",
	"Q3914000",
	"nic-gnn",
}

m["koa"] = {
	"Konomala",
	"Q3198732",
	"poz-ocw",
	scripts = Latn,
}

m["koc"] = {
	"Kpati",
	"Q3913279",
	"nic-nge",
	scripts = Latn,
}

m["kod"] = {
	"Kodi",
	"Q4577633",
}

m["koe"] = {
	"Kacipo-Balesi",
	"Q5364424",
	"sdv",
}

m["kof"] = {
	"Kubi",
	"Q3438718",
	"cdc",
	scripts = Latn,
}

m["kog"] = {
	"Cogui",
	"Q3198286",
	"cba",
	otherNames = {"Kogi", "Cogi", "Kagaba", "Cagaba", "Cágaba"},
}

m["koh"] = {
	"Koyo",
	"Q35649",
	"bnt-mbo",
	scripts = Latn,
}

m["koi"] = {
	"Komi-Permyak",
	"Q56318",
	"urj-prm",
	scripts = {"Cyrl", "Perm"},
	translit_module = "kv-translit",
	override_translit = true,	
}

m["kok"] = {
	"Konkani",
	"Q34239",
	"inc-sou",
	scripts = {"Deva", "Knda", "Mlym", "fa-Arab", "Latn"},
	ancestors = {"pmh"},
	translit_module = "mr-translit",
}

m["kol"] = {
	"Kol (New Guinea)",
	"Q4227542",
	otherNames = {"Kol", "Kol (Papua New Guina)"},
}

m["koo"] = {
	"Konzo",
	"Q2361829",
	"bnt-glb",
}

m["kop"] = {
	"Waube",
	"Q11732373",
	otherNames = {"Waupe", "Kwato"},
	"ngf-mad",
}

m["koq"] = {
	"Kota (Gabon)",
	"Q35607",
	"bnt-kel",
	otherNames = {"iKota", "Ikota", "Kota"},
	scripts = Latn,
}

m["kos"] = {
	"Kosraean",
	"Q33464",
	"poz-mic",
	scripts = Latn,
}

m["kot"] = {
	"Lagwan",
	"Q3502264",
	"cdc-cbm",
	scripts = Latn,
}

m["kou"] = {
	"Koke",
	"Q797249",
	"alv-bua",
}

m["kov"] = {
	"Kudu-Camo",
	"Q3915850",
	"nic-jer",
}

m["kow"] = {
	"Kugama",
	"Q3913307",
	"alv-mye",
}

m["koy"] = {
	"Koyukon",
	"Q28304",
	"ath-nor",
	otherNames = {"Denaakk'e"},
	scripts = Latn,
}

m["koz"] = {
	"Korak",
	"Q6431365",
	"ngf-mad",
}

m["kpa"] = {
	"Kutto",
	"Q3437656",
	"cdc-wst",
}

m["kpb"] = {
	"Mullu Kurumba",
	"Q19573111",
	"dra",
}

m["kpc"] = {
	"Curripaco",
	"Q2882543",
	"awd-nwk",
	otherNames = {"Kurripako"},
	scripts = Latn,
}

m["kpd"] = {
	"Koba",
	"Q6424249",
	"poz",
}

m["kpe"] = {
	"Kpelle",
	"Q35673",
	"dmn-msw",
	scripts = Latn,
}

m["kpf"] = {
	"Komba",
	"Q6428239",
	"ngf",
}

m["kpg"] = {
	"Kapingamarangi",
	"Q35771",
	"poz-pnp",
	scripts = Latn,
}

m["kph"] = {
	"Kplang",
	"Q35628",
	"alv-gng",
}

m["kpi"] = {
	"Kofei",
	"Q6425665",
	"paa-egb",
}

m["kpj"] = {
	"Karajá",
	"Q10322066",
	"sai-mje",
	scripts = Latn,
}

m["kpk"] = {
	"Kpan",
	"Q3915380",
	"nic-jkn",
	scripts = Latn,
}

m["kpl"] = {
	"Kpala",
	"Q11154769",
	"nic-nkk",
	scripts = Latn,
}

m["kpm"] = {
	"Koho",
	"Q3511919",
	"mkh-ban",
	scripts = Latn,
}

m["kpn"] = {
	"Kepkiriwát",
	"Q3195366",
	"tup",
	scripts = Latn,
}

m["kpo"] = {
	"Ikposo",
	"Q35029",
	"alv-ktg",
	scripts = Latn,
}

m["kpp"] = {
	"Paku Karen",
	nil,
}

m["kpq"] = {
	"Korupun-Sela",
	"Q6432769",
	"ngf",
}

m["kpr"] = {
	"Korafe-Yegha",
	"Q11732347",
	"ngf",
}

m["kps"] = {
	"Tehit",
	"Q7694851",
}

m["kpt"] = {
	"Karata",
	"Q56636",
	"cau-ava",
	scripts = Cyrl,
}

m["kpu"] = {
	"Kafoa",
	"Q6346151",
	"qfa-tap",
}

m["kpv"] = {
	"Komi-Zyrian",
	"Q34114",
	"urj-prm",
	otherNames = {"Komi"},
	scripts = Cyrl,
	translit_module = "kv-translit",
	override_translit = true,
	wikimedia_codes = {"kv"},
}

m["kpw"] = {
	"Kobon",
	"Q11732326",
	"ngf-mad",
}

m["kpx"] = {
	"Mountain Koiari",
	"Q6925030",
	"ngf",
	otherNames = {"Mountain Koiali"},
}

m["kpy"] = {
	"Koryak",
	"Q36199",
	"qfa-cka",
	scripts = Cyrl,
}

m["kpz"] = {
	"Kupsabiny",
	"Q56445",
	"sdv-kln",
}

m["kqa"] = {
	"Mum",
	"Q6935252",
	"ngf-mad",
}

m["kqb"] = {
	"Kovai",
	"Q6434822",
	"ngf",
}

m["kqc"] = {
	"Doromu-Koki",
	"Q5298175",
	"ngf",
}

m["kqd"] = {
	"Koy Sanjaq Surat",
	"Q33463",
	"sem-nna",
}

m["kqe"] = {
	"Kalagan",
	"Q18748906",
	"phi",
}

m["kqf"] = {
	"Kakabai",
	"Q6349119",
	"poz-ocw",
	scripts = Latn,
}

m["kqg"] = {
	"Khe",
	"Q3914015",
	"nic-gur",
}

m["kqh"] = {
	"Kisankasa",
	"Q6416409",
	"sdv",
}

m["kqi"] = {
	"Koitabu",
	"Q6426363",
	"ngf",
}

m["kqj"] = {
	"Koromira",
	"Q6432520",
	"paa-sbo",
}

m["kqk"] = {
	"Kotafon Gbe",
	"Q12952447",
	"alv-pph",
}

m["kql"] = {
	"Kyenele",
	"Q11732453",
	"paa-yua",
}

m["kqm"] = {
	"Khisa",
	"Q3913955",
	"nic-gur",
}

m["kqn"] = {
	"Kaonde",
	"Q33601",
	"bnt-lub",
	otherNames = {"Chikaonde", "Kawonde"},
	scripts = Latn,
}

m["kqo"] = {
	"Eastern Krahn",
	"Q3915374",
	"kro-wee",
}

m["kqp"] = {
	"Kimré",
	"Q3441210",
	"cdc-est",
}

m["kqq"] = {
	"Krenak",
	"Q6436747",
	"sai-cer",
}

m["kqr"] = {
	"Kimaragang",
	"Q3196845",
	"poz-san",
	scripts = Latn,
}

m["kqs"] = {
	"Northern Kissi",
	"Q19921576",
	"alv-kis",
}

m["kqt"] = {
	"Klias River Kadazan",
	"Q12953594",
	"poz-san",
}

m["kqu"] = {
	"Seroa",
	"Q33127766",
	"khi-tuu",
}

m["kqv"] = {
	"Okolod",
	"Q7082487",
	"poz-san",
}

m["kqw"] = {
	"Kandas",
	"Q3192590",
	"poz-ocw",
	scripts = Latn,
}

m["kqx"] = {
	"Mser",
	"Q3502347",
	"cdc-cbm",
}

m["kqy"] = {
	"Koorete",
	"Q6430753",
	"omv-eom",
}

m["kqz"] = {
	"Korana",
	"Q2756709",
	"khi-khk",
	scripts = Latinx,
}

m["kra"] = {
	"Kumhali",
	"Q13580783",
	"inc-eas",
	ancestors = {"bh"},
}

m["krb"] = {
	"Karkin",
	"Q3193345",
	"nai-you",
	scripts = Latn,
}

m["krc"] = {
	"Karachay-Balkar",
	"Q33714",
	"trk-kcu",
	scripts = Cyrl,
}

m["krd"] = {
	"Kairui-Midiki",
	"Q12953277",
	"poz-tim",
}

m["kre"] = {
	"Panará",
	"Q3361895",
	"sai-cer",
}

m["krf"] = {
	"Koro (Vanuatu)",
	"Q3198995",
	"poz-oce",
	otherNames = {"Koro"},
	scripts = Latn,
}

m["krh"] = {
	"Kurama",
	"Q35593",
	"nic-kau",
}

m["kri"] = {
	"Krio",
	"Q35744",
	"crp",
	otherNames = {"Sierra Leonean Creole"},
	scripts = Latn,
	ancestors = {"en"},
}

m["krj"] = {
	"Kinaray-a",
	"Q33720",
	"phi",
	scripts = Latn,
}

m["krk"] = {
	"Kerek",
	"Q332792",
	"qfa-cka",
	scripts = Cyrl,
}

m["krl"] = {
	"Karelian",
	"Q33557",
	"fiu-fin",
	scripts = Latn,
}

m["krm"] = {
	"Krim",
	"Q35713",
	"alv",
}

m["krn"] = {
	"Sapo",
	"Q3915386",
	"kro-wee",
}

m["krp"] = {
	"Korop",
	"Q35626",
	"nic-ucr",
	scripts = Latn,
}

m["krr"] = {
	"Kru'ng",
	"Q12953650",
	"mkh-ban",
	otherNames = {"Krung", "Kreung", "Krüng"},
}

m["krs"] = {
	"Kresh",
	"Q56674",
	"csu-bkr",
	otherNames = {"Gbaya"},
}

m["kru"] = {
	"Kurukh",
	"Q33492",
	"dra",
	otherNames = {"Kurux"},
	scripts = Deva,
}

m["krv"] = {
	"Kavet",
	"Q12953649",
	"sai-ktk",
	otherNames = {"Kravet"},
	scripts = Latn,
}

m["krw"] = {
	"Western Krahn",
	"Q10975611",
	"kro-wee",
}

m["krx"] = {
	"Karon",
	"Q35704",
	"alv-jol",
}

m["kry"] = {
	"Kryts",
	"Q35861",
	"cau-lzg",
	otherNames = {"Kryc", "Kryz"},
	varieties = {"Jek", "Dzhek", "Cek", "Khaput", "Yergyudzh", "Alyk"},
}

m["krz"] = {
	"Sota Kanum",
	"Q12952568",
	"paa-yam",
}

m["ksa"] = {
	"Shuwa-Zamani",
	"Q3913929",
	"nic-kau",
}

m["ksb"] = {
	"Shambala",
	"Q3788739",
	"bnt-seu",
	otherNames = {"Shambaa"},
	scripts = Latn,
}

m["ksc"] = {
	"Southern Kalinga",
	"Q18753301",
	"phi",
}

m["ksd"] = {
	"Tolai",
	"Q35870",
	"poz-ocw",
	otherNames = {"Kuanua"},
	scripts = Latn,
}

m["kse"] = {
	"Kuni",
	"Q6444619",
	"poz-ocw",
	scripts = Latn,
}

m["ksf"] = {
	"Bafia",
	"Q34930",
	"bnt-baf",
}

m["ksg"] = {
	"Kusaghe",
	"Q3200638",
	"poz-ocw",
	scripts = Latn,
}

m["ksi"] = {
	"Krisa",
	"Q841704",
	"paa-msk",
	scripts = Latn,
}

m["ksj"] = {
	"Uare",
	"Q6450052",
	"ngf",
}

m["ksk"] = {
	"Kansa",
	"Q3192772",
	"sio-dhe",
}

m["ksl"] = {
	"Kumalu",
	"Q17584381",
	"poz-ocw",
	scripts = Latn,
}

m["ksm"] = {
	"Kumba",
	"Q3913972",
	"alv-mye",
}

m["ksn"] = {
	"Kasiguranin",
	"Q6374525",
	"phi",
}

m["kso"] = {
	"Kofa",
	"Q56278",
	"cdc-cbm",
}

m["ksp"] = {
	"Kaba",
	"Q3915316",
	"csu-sar",
}

m["ksq"] = {
	"Kwaami",
	"Q3440525",
	"cdc-wst",
}

m["ksr"] = {
	"Borong",
	"Q4946263",
	"ngf",
}

m["kss"] = {
	"Southern Kissi",
	"Q11028974",
	"alv-kis",
}

m["kst"] = {
	"Winyé",
	"Q3913360",
	"nic-gnw",
}

m["ksu"] = {
	"Khamyang",
	"Q6583541",
	"tai-swe",
}

m["ksv"] = {
	"Kusu",
	"Q6448199",
	"bnt-tet",
}

m["ksw"] = {
	"S'gaw Karen",
	"Q56410",
	"kar",
	aliases = {"S'gaw Kayin", "S'gaw", "Sgaw", "White Karen"},
	scripts = {"Mymr"},
	translit_module = "ksw-translit",
}

m["ksx"] = {
	"Kedang",
	"Q6382520",
	"poz",
	scripts = Latn,
}

m["ksy"] = {
	"Kharia Thar",
	"Q6400661",
	"inc-eas",
	ancestors = {"inc-mgd"},
}

m["ksz"] = {
	"Kodaku",
	"Q21179986",
	"mun",
}

m["kta"] = {
	"Katua",
	"Q6378404",
	"mkh-ban",
}

m["ktb"] = {
	"Kambaata",
	"Q35664",
	"cus",
}

m["ktc"] = {
	"Kholok",
	"Q3440464",
	"cdc-wst",
}

m["ktd"] = {
	"Kokata",
	"Q10547021",
	"aus-pam",
}

m["ktf"] = {
	"Kwami",
	"Q12952687",
	"bnt-lgb",
}

m["ktg"] = {
	"Kalkatungu",
	"Q3914057",
	"aus-pam",
	otherNames = {"Kalkutungu", "Galgadungu", "Kalkutung", "Kalkadoon", "Galgaduun"},
	scripts = Latn,
}

m["kth"] = {
	"Karanga",
	"Q713643",
}

m["kti"] = {
	"North Muyu",
	"Q20857698",
	otherNames = {"Kati"},
	"ngf",
	scripts = Latn,
}

m["ktj"] = {
	"Plapo Krumen",
	"Q10975356",
	"kro-grb",
}

m["ktk"] = {
	"Kaniet",
	"Q3399050",
	"poz-aay",
	scripts = Latn,
}

m["ktl"] = {
	"Koroshi",
	"Q3775265",
	"ira-nwi",
	ancestors = {"bal"},
}

m["ktm"] = {
	"Kurti",
	"Q3200615",
	"poz-aay",
	scripts = Latn,
}

m["ktn"] = {
	"Karitiâna",
	"Q3112184",
	"tup",
	otherNames = {"Caritiana"},
	scripts = Latn,
}

m["kto"] = {
	"Kuot",
	"Q56537",
}

m["ktp"] = {
	"Kaduo",
	"Q769809",
	"tbq-lol",
	otherNames = {"Khatu"},
}

m["ktq"] = {
	"Katabaga",
	"Q3193895",
}

m["ktr"] = {
	"Kota Marudu Tinagas",
	"Q18642280",
}

m["kts"] = {
	"South Muyu",
	"Q42308820",
	"ngf",
	scripts = Latn,
}

m["ktt"] = {
	"Ketum",
	"Q12952616",
	"ngf",
}

m["ktu"] = {
	"Kituba",
	"Q35746",
	"crp",
	otherNames = {"Munukutuba", "Kikongo-Kituba", "Kikongo", "Kikongo ya leta", "Kibulamatadi", "Kikwango", "Ikeleve", "Kizabave"},
	scripts = Latn,
	ancestors = {"kg"},
}

m["ktv"] = {
	"Eastern Katu",
	"Q22808951",
	"mkh-kat",
}

m["ktw"] = {
	"Kato",
	"Q20831",
	"ath-pco",
	otherNames = {"Cahto"},
	scripts = Latn,
}

m["ktx"] = {
	"Kaxararí",
	"Q6380124",
	"sai-pan",
	scripts = Latn,
}

m["kty"] = {
	"Kango",
	"Q6362818",
	"bnt-bta",
	otherNames = {"Kango (Bas-Uélé District)"}, -- distinct in name, but not necessarily in identity, from 'kzy'
	scripts = Latn,
}

m["ktz"] = {
	"Juǀ'hoan",
	"Q1192295",
	"khi-kxa",
	otherNames = {"Zhuǀ'hoan", "ǂKxʼauǁʼein", "ǁAuǁei", "ǁAuǁen", "Auen", "Kaukau", "Koko", "Kung-Gobabis", "‡Kx'auǁ'ei", "ǂKx'auǁ'ein", "ǁX'auǁ'e", "Juǀ'hoansi"},
	scripts = Latn,
}

m["kub"] = {
	"Kutep",
	"Q35645",
	"nic-jkn",
}

m["kuc"] = {
	"Kwinsu",
	"Q6450460",
	"paa-tkw",
}

m["kud"] = {
	"Auhelawa",
	"Q5166",
	"poz-ocw",
	otherNames = {"'Auhelawa"},
	scripts = Latn,
}

m["kue"] = {
	"Kuman",
	"Q137525",
	"ngf",
	otherNames = {"Simbu", "Chimbu"},
	scripts = Latn,
}

m["kuf"] = {
	"Western Katu",
	"Q6378400",
	"mkh-kat",
	scripts = {"Laoo", "Tale"},
}

m["kug"] = {
	"Kupa",
	"Q3915336",
	"alv-ngb",
}

m["kuh"] = {
	"Kushi",
	"Q3438747",
	"cdc-wst",
}

m["kui"] = {
	"Kuikúro",
	"Q3915522",
	"sai-car",
	otherNames = {"Kuikúro-Kalapálo", "Kuikuro", "Apalakiri"},
	scripts = Latn,
}

m["kuj"] = {
	"Kuria",
	"Q6445968",
	"bnt-lok",
	scripts = Latn,
}

m["kuk"] = {
	"Kepo'",
	"Q6393217",
	"poz",
}

m["kul"] = {
	"Kulere",
	"Q3440506",
	"cdc-wst",
	otherNames = {"Tof", "Korom Boye", "Akandi", "Akande", "Kande", "Richa"},
}

m["kum"] = {
	"Kumyk",
	"Q36209",
	"trk-kcu",
	scripts = Cyrl,
	translit_module = "kum-translit",
}

m["kun"] = {
	"Kunama",
	"Q36041",
}

m["kuo"] = {
	"Kumukio",
	"Q11732362",
	"ngf",
}

m["kup"] = {
	"Kunimaipa",
	"Q6444696",
}

m["kuq"] = {
	"Karipuna",
	"Q6371071",
	"tup-gua",
	scripts = Latn,
}

m["kus"] = {
	"Kusaal",
	"Q35708",
	"nic-dag",
}

m["kut"] = {
	"Kutenai",
	"Q33434",
	"qfa-iso",
}

m["kuu"] = {
	"Upper Kuskokwim",
	"Q28062",
	"ath-nor",
}

m["kuv"] = {
	"Kur",
	"Q12635082",
	"poz-cma",
	scripts = Latn,
}

m["kuw"] = {
	"Kpagua",
	"Q11137573",
	"bad-cnt",
}

m["kux"] = {
	"Kukatja",
	"Q10549839",
	"aus-pam",
}

m["kuy"] = {
	"Kuuku-Ya'u",
	"Q10550697",
	"aus-pmn",
}

m["kuz"] = {
	"Kunza",
	"Q2669181",
	"qfa-iso",
}

m["kva"] = {
	"Bagvalal",
	"Q56638",
	"cau-ava",
}

m["kvb"] = {
	"Kubu",
	"Q6441341",
	"poz-mly",
}

m["kvc"] = {
	"Kove",
	"Q3199402",
	"poz-ocw",
	scripts = Latn,
}

m["kvd"] = {
	"Kui (Indonesia)",
	"Q6442230",
	"ngf",
	otherNames = {"Kui"},
}

m["kve"] = {
	"Kalabakan",
	"Q6350003",
	"poz-san",
}

m["kvf"] = {
	"Kabalai",
	"Q3440427",
	"cdc-est",
}

m["kvg"] = {
	"Kuni-Boazi",
	"Q2907551",
	"ngf",
}

m["kvh"] = {
	"Komodo",
	"Q3198565",
	"poz-cet",
}

m["kvi"] = {
	"Kwang",
	"Q3440398",
	"cdc-est",
	scripts = Latn,
}

m["kvj"] = {
	"Psikye",
	"Q56304",
	"cdc-cbm",
}

m["kvk"] = {
	"Korean Sign Language",
	"Q3073428",
	"sgn-jsl",
}

m["kvl"] = {
	"Brek Karen",
	"Q12952577",
	"kar",
}

m["kvm"] = {
	"Kendem",
	"Q35751",
	"nic-mam",
	scripts = Latn,
}

m["kvn"] = {
	"Border Kuna",
	"Q31777873",
	"cba",
}

m["kvo"] = {
	"Dobel",
	"Q5286559",
	"poz",
}

m["kvp"] = {
	"Kompane",
	"Q18343041",
	"poz",
}

m["kvq"] = {
	"Geba Karen",
	"Q12952581",
	"kar",
}

m["kvr"] = {
	"Kerinci",
	"Q3195442",
	"poz-mly",
}

m["kvt"] = {
	"Lahta Karen",
	"Q12952582",
	"kar",
}

m["kvu"] = {
	"Yinbaw Karen",
	"Q14426328",
	"kar",
}

m["kvv"] = {
	"Kola",
	"Q6426967",
	"poz",
}

m["kvw"] = {
	"Wersing",
	"Q7983599",
	"qfa-tap",
}

m["kvx"] = {
	"Parkari Koli",
	"Q3244176",
	"inc-wes",
}

m["kvy"] = {
	"Yintale Karen",
	"Q14426329",
	"kar",
}

m["kvz"] = {
	"Tsakwambo",
	"Q7849438",
	"ngf",
}

m["kwa"] = {
	"Dâw",
	"Q3042278",
	"sai-nad",
}

m["kwb"] = {
	"Baa",
	"Q34842",
	"alv-ada",
	otherNames = {"Kwa"},
}

m["kwc"] = {
	"Likwala",
	"Q35597",
	"bnt-mbo",
}

m["kwd"] = {
	"Kwaio",
	"Q3200796",
	"poz-sls",
	scripts = Latn,
}

m["kwe"] = {
	"Kwerba",
	"Q6450328",
	"paa-tkw",
}

m["kwf"] = {
	"Kwara'ae",
	"Q3200829",
	"poz-oce",
}

m["kwg"] = {
	"Sara Kaba Deme",
	"Q3915384",
	"csu-kab",
}

m["kwh"] = {
	"Kowiai",
	"Q6435028",
	"poz",
}

m["kwi"] = {
	"Awa-Cuaiquer",
	"Q2603103",
	"sai-bar",
	otherNames = {"Awa", "Cuaiquer", "Awa Pit", "Awapit", "Kwaiker", "Coaiquer", "Quaiquer"},
	scripts = Latn,
}

m["kwj"] = {
	"Kwanga",
	"Q3438383",
	"paa-spk",
}

m["kwk"] = {
	"Kwak'wala",
	"Q2640628",
	"wak",
	scripts = Latn,
}

m["kwl"] = {
	"Kofyar",
	"Q3441382",
	"cdc-wst",
	scripts = Latn,
}

m["kwm"] = {
	"Kwambi",
	"Q3487165",
	"bnt-ova",
}

m["kwn"] = {
	"Kwangali",
	"Q36334",
	"bnt-kav",
	scripts = Latn,
}

m["kwo"] = {
	"Kwomtari",
	"Q3508116",
}

m["kwp"] = {
	"Kodia",
	"Q3914867",
	"kro-ekr",
}

m["kwq"] = {
	"Kwak",
	"Q11014183",
	"nic-nka",
	ancestors = {"yam"},
}

m["kwr"] = {
	"Kwer",
	"Q12635137",
	"ngf-okk",
}

m["kws"] = {
	"Kwese",
	"Q3200846",
	"bnt-pen",
}

m["kwt"] = {
	"Kwesten",
	"Q6450354",
	"paa-tkw",
}

m["kwu"] = {
	"Kwakum",
	"Q35624",
	"bnt-kak",
}

m["kwv"] = {
	"Sara Kaba Náà",
	"Q3915361",
	"csu-kab",
	otherNames = {"Sara Dunjo"},
}

m["kww"] = {
	"Kwinti",
	"Q721182",
}

m["kwx"] = {
	"Khirwar",
	"Q12976968",
	"dra",
}

m["kwz"] = {
	"Kwadi",
	"Q2364661",
	"khi-kkw",
	scripts = Latn,
}

m["kxa"] = {
	"Kairiru",
	"Q3398785",
	"poz-ocw",
	scripts = Latn,
}

m["kxb"] = {
	"Krobu",
	"Q35586",
	"alv-ptn",
	scripts = Latn,
}

m["kxc"] = {
	"Khonso",
	"Q56624",
	"cus",
}

m["kxd"] = {
	"Brunei Malay",
	"Q3182878",
	"poz-mly",
	otherNames = {"Brunei"},
	scripts = Latn,
}

m["kxe"] = {
	"Kakihum",
	"Q3914433",
	"nic-kam",
	ancestors = {"tvd"},
}

m["kxf"] = {
	"Manumanaw Karen",
	"Q12952592",
	"kar",
	scripts = {"Mymr", "Latn"},
}

m["kxh"] = {
	"Karo",
	"Q3447116",
	"omv-aro",
}

m["kxi"] = {
	"Keningau Murut",
	"Q6389308",
	"poz-san",
	otherNames = {"Nabay", "Nabaay"},
	scripts = Latn,
}

m["kxj"] = {
	"Kulfa",
	"Q713654",
	"csu-kab",
}

m["kxk"] = {
	"Zayein Karen",
	"Q14352960",
	"kar",
}

m["kxl"] = {
	"Nepali Kurux",
	"Q3200624",
	"dra",
	scripts = Deva,
}

m["kxm"] = {
	"Northern Khmer",
	"Q3502234",
	"mkh-kmr",
	otherNames = {"Thai Khmer", "Surin Khmer"},
	scripts = {"Thai", "Khmr"},
	sort_key = {
		from = {"[%pๆ]", "[็-๎]", "([เแโใไ])([ก-ฮ])"},
		to   = {"", "", "%2%1"}},
}

m["kxn"] = {
	"Kanowit",
	"Q6364300",
	"poz-bnn",
	otherNames = {"Tanjong", "Kanowit-Tanjong Melanau"},
	scripts = Latn,
}

m["kxo"] = {
	"Kanoé",
	"Q4356223",
	"qfa-iso",
}

m["kxp"] = {
	"Wadiyara Koli",
	"Q12953645",
	"inc-wes",
}

m["kxq"] = {
	"Smärky Kanum",
	"Q12952569",
	"paa-yam",
}

m["kxr"] = {
	"Koro (New Guinea)",
	"Q3198994",
	"poz-oce",
	otherNames = {"Koro (Papua New Guinea)", "Koro"},
	scripts = Latn,
}

m["kxs"] = {
	"Kangjia",
	"Q3182570",
	"xgn",
}

m["kxt"] = {
	"Koiwat",
	"Q6426388",
	"paa-spk",
}

m["kxu"] = {
	"Kui (India)",
	"Q33919",
	"dra",
	otherNames = {"Kui", "Kuy"},
	scripts = {"Orya"},
}

m["kxv"] = {
	"Kuvi",
	"Q3200721",
	"dra",
	scripts = {"Orya"},
}

m["kxw"] = {
	"Konai",
	"Q11732339",
}

m["kxx"] = {
	"Likuba",
	"Q35646",
	"bnt-bmo",
}

m["kxy"] = {
	"Kayong",
	"Q6380673",
	"mkh",
}

m["kxz"] = {
	"Kerewo",
	"Q6393847",
	"paa-kiw",
}

m["kya"] = {
	"Kwaya",
	"Q6450276",
	"bnt-haj",
	scripts = Latn,
}

m["kyb"] = {
	"Butbut Kalinga",
	"Q18753300",
	"phi",
}

m["kyc"] = {
	"Kyaka",
	"Q12952690",
	"paa-eng",
}

m["kyd"] = {
	"Karey",
	"Q6370196",
	"poz",
}

m["kye"] = {
	"Krache",
	"Q35658",
	"alv-gng",
}

m["kyf"] = {
	"Kouya",
	"Q35595",
	"kro-bet",
}

m["kyg"] = {
	"Keyagana",
	"Q6398208",
	"paa-kag",
}

m["kyh"] = {
	"Karok",
	"Q1288440",
	"qfa-iso",
	otherNames = {"Karuk"},
	scripts = Latn,
}

m["kyi"] = {
	"Kiput",
	"Q3038653",
	"poz-swa",
	scripts = Latn,
}

m["kyj"] = {
	"Karao",
	"Q3192950",
	"phi",
}

m["kyk"] = {
	"Kamayo",
	"Q3192339",
	"phi",
}

m["kyl"] = {
	"Kalapuya",
	"Q3192120",
	"nai-klp",
}

m["kym"] = {
	"Kpatili",
	"Q3913982",
	"znd",
}

m["kyn"] = {
	"Karolanos",
	"Q6373093",
	"phi",
}

m["kyo"] = {
	"Kelon",
	"Q6386414",
	"ngf",
}

m["kyp"] = {
	"Kang",
	"Q25559558",
	"tai",
}

m["kyq"] = {
	"Kenga",
	"Q35707",
	"csu-bgr",
}

m["kyr"] = {
	"Kuruáya",
	"Q3200633",
	"tup",
	otherNames = {"Caravare", "Curuaia", "Kuruaia"},
	scripts = Latn,
}

m["kys"] = {
	"Baram Kayan",
	"Q2883794",
	"poz",
}

m["kyt"] = {
	"Kayagar",
	"Q6380394",
	"ngf",
}

m["kyu"] = {
	"Western Kayah",
	"Q12952596",
	"kar",
	scripts = {"Kali", "Mymr", "Latn"},
	translit_module = "translit-redirect",
}

m["kyv"] = {
	"Kayort",
	"Q6380675",
	"inc-eas",
	scripts = {"as-Beng"},
	ancestors = {"inc-mgd"},
}

m["kyw"] = {
	"Kudmali",
	"Q6446173",
	"inc-eas",
	ancestors = {"bh"},
	otherNames = {"Kurmali"},
}

m["kyx"] = {
	"Rapoisi",
	"Q7294279",
	"paa-nbo",
	otherNames = {"Konua"},
}

m["kyy"] = {
	"Kambaira",
	"Q6356254",
	"paa-kag",
}

m["kyz"] = {
	"Kayabí",
	"Q6380372",
	"tup-gua",
	scripts = Latn,
}

m["kza"] = {
	"Western Karaboro",
	"Q36601",
	"alv-krb",
}

m["kzb"] = {
	"Kaibobo",
	"Q6347565",
	"poz-cma",
}

m["kzc"] = {
	"Bondoukou Kulango",
	"Q11031321",
	"alv-kul",
}

m["kzd"] = {
	"Kadai",
	"Q7679471",
	"poz-cma",
	scripts = Latn,
}

m["kze"] = {
	"Kosena",
	"Q12952663",
	"ngf",
	scripts = Latn,
}

m["kzf"] = {
	"Da'a Kaili",
	"Q33103997",
	"poz-kal",
	otherNames = {"Tado", "Inde", "Pekava", "West Kaili"},
	scripts = Latn,
}

m["kzg"] = {
	"Kikai",
	"Q3196527",
	"jpx-ryu",
	scripts = {"Jpan"},
}

m["kzh"] = {
	"Dongolawi",
	"Q5295991",
	"nub",
	otherNames = {"Kenuzi-Dongola", "Andaandi", "Kenzi", "Mattoki"},
	scripts = Latn,
}

m["kzi"] = {
	"Kelabit",
	"Q6385445",
	"poz-swa",
	scripts = Latn,
}

m["kzj"] = {
	"Coastal Kadazan",
	"Q3307195",
	"poz-san",
	scripts = Latn,
}

m["kzk"] = {
	"Kazukuru",
	"Q1089069",
	"poz-ocw",
	otherNames = {"Dororo", "Guliguli"},
}

m["kzl"] = {
	"Kayeli",
	"Q4207444",
	"poz-cma",
	scripts = Latn,
}

m["kzm"] = {
	"Kais",
	"Q6348319",
	"paa",
	scripts = Latn,
}

m["kzn"] = {
	"Kokola",
	"Q11128329",
	"bnt-mak",
	ancestors = {"vmw"},
	scripts = Latn,
}

m["kzo"] = {
	"Kaningi",
	"Q35683",
	"bnt-mbt",
}

m["kzp"] = {
	"Kaidipang",
	"Q6347611",
	"phi",
}

m["kzq"] = {
	"Kaike",
	"Q10951226",
	"sit-tam",
}

m["kzr"] = {
	"Karang",
	"Q35681",
	"alv-mbm",
	aliases = {"Mbum East", "Lakka"},
	scripts = Latn,
}

m["kzs"] = {
	"Sugut Dusun",
	"Q12953510",
	"poz-san",
	scripts = Latn,
}

m["kzt"] = {
	"Tambunan Dusun",
	"Q12953514",
	"poz-san",
	scripts = Latn,
}

m["kzu"] = {
	"Kayupulau",
	"Q6380723",
	"poz-ocw",
}

m["kzv"] = {
	"Komyandaret",
	"Q6428671",
	"ngf-okk",
	scripts = Latn,
}

m["kzw"] = { -- contrast xoo, sai-kat, sai-xoc, the last of which the ISO conflated into this code
	"Kariri",
	"Q12953620",
	"sai-mje",
	otherNames = {"Kipeá", "Quipea", "Kamurú", "Camuru", "Dzubukuá", "Dzubucua", "Karirí", "Sabujá", "Sapoyá", "Pedra Branca"},
	scripts = Latn,
}

m["kzx"] = {
	"Kamarian",
	"Q6356040",
	"poz-cma",
	scripts = Latn,
}

m["kzy"] = {
	"Kango-Sua",
	"Q11008360",
	"bnt-kbi",
	ancestors = {"bip"},
	otherNames = {"Kango", "Kango (Tshopo District)"}, -- distinct in name, but not necessarily in identity, from 'kty'
	scripts = Latn,
}

m["kzz"] = {
	"Kalabra",
	"Q6350038",
	"paa",
	scripts = Latn,
}

return m