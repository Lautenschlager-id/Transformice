--[[ Module Info ]]--
math.randomseed(os.time())
local module = { 
	name = "pizzeria",
	title = "titre_pizza",
	time = 2.75 * 60,
	map = '<C><P L="2000" H="800" /><Z><S><S L="20" X="759" H="448" Y="524" T="12" lua="0" P="0,0,0.3,0.2,37,0,0,0" /><S L="776" H="20" X="388" Y="349" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="104" X="938" H="20" Y="349" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="13" H="686" X="995" Y="343" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="1100" H="10" X="550" Y="125" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="240" X="870" H="20" Y="544" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="633" X="317" H="20" Y="544" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="1000" H="30" X="500" Y="786" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="10" H="10" X="1001" Y="778" T="12" P="0,0,0.3,0.2,35,0,0,0" /><S L="27" X="1618" H="17" Y="436" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="1000" X="1500" H="25" Y="788" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="340" H="11" X="1790" Y="770" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="20" X="1615" H="10" Y="774" T="12" P="0,0,0.3,0.2,-35,0,0,0" /><S L="10" X="1636" H="290" Y="560" T="12" P="0,0,0.7,0.2,0,0,0,0" /><S L="18" H="355" X="1951" Y="587" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="10" X="1645" H="290" Y="560" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S H="220" L="16" X="1893" c="1" Y="369" T="12" P="0,0,0.3,0.2,-56,0,0,0" /><S L="15" X="1610" H="22" Y="431" T="12" P="0,0,2.5,0.2,58,0,0,0" /><S H="90" L="15" X="1655" c="1" Y="403" T="12" P="0,0,0.3,0.2,58,0,0,0" /><S P="0,0,0.3,0.2,58,0,0,0" L="15" H="87" c="1" Y="330" T="12" X="1772" /><S L="225" X="480" H="27" Y="759" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="20" H="10" X="594" Y="765" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S L="20" X="372" H="10" Y="765" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S L="10" H="800" X="0" Y="400" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="170" H="12" X="1892" Y="658" T="12" P="0,0,0.3,0.2,-49,0,0,0" /><S L="215" X="1757" H="12" Y="596" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="10" X="1836" H="10" Y="723" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="15" X="624" H="12" Y="703" T="12" P="0,0,0.7,0.2,0,0,0,0" /><S L="560" X="317" H="30" Y="519" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="110" X="200" H="40" Y="752" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="20" X="123" H="10" Y="765" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S L="20" X="278" H="10" Y="765" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,,,,0,0,0" L="25" X="1618" Y="725" T="9" m="" H="105" /><S P="0,0,,,,0,0,0" L="25" H="50" Y="497" T="9" m="" X="1618" /><S L="25" X="1972" H="300" Y="607" T="9" m="" P="0,0,,,,0,0,0" /></S><D><DS Y="730" X="400" /></D><O /></Z></C>'
}

--[[ Development ]]--
local team = {
	developer = { "Bolodefchoco#0000" },
	artist = { "Liiliiith#0000" },
	others = { "Acer#1412", "Bishomilad#0000", "Heniyengui#0000", "Nettoork#0000" }
}

--[[ Translations ]]--
local translation = setmetatable({
	en = {
		event_concluded = "You completed the event! (╯°□°）╯︵ ┻━┻\n\nMagic by <B>%s</B>, special effects by <B>%s</B>, and goodwill of the <B>Unofficial Translators Team</B>.\n<font size='9'>Special thanks to %s, ...</font>",
		ingredient = {
			plant = {
				[1] = "Banana",
				[2] = "Basil",
				[3] = "Bellpeper",
				[4] = "Broccoli",
				[5] = "Cocoa",
				[6] = "Mushroom",
				[7] = "Olive",
				[8] = "Onion",
				[9] = "Oregano",
				[10] = "Pineapple",
				[11] = "Tomato",
				[12] = "Wheat"
			},
			meat = {
				[1] = "Bacon",
				[2] = "Chicken",
				[3] = "Pepperoni"
			},
			others = {
				[1] = "Cheese",
				[2] = "Chocolate",
				[3] = "Olive Oil",
				[4] = "Tomato Sauce"
			},
			dough = {
				salt = "Salt",
				sugar = "Sugar",
				water = "Water"
			}
		},
		pizza = {
			[1] = "Chicken",
			[2] = "Chocolate",
			[3] = "Margherita",
			[4] = "Pepperoni",
			[5] = "Pineapple",
			[6] = "Vegetarian",
			burned = "Your pizza burned! :( You careless!",
			deliver = "Press space to deliver the pizza to the customer!"
		},
		ui = {
			order = "Order",
			market = "Market",
			smasher = "Smasher",
			freezer = "Fridge",
			cabinet = "Cabinet",
			garbage = "Garbage",
			close = "Close"
		},
		order = {
			customer = "Customer",
			total = "Total",
			delivered = {
				[0] = "Ouch! The customer was not satisfied :s",
				[1] = "Ugh! You did not deliver a decent pizza. The customer paid only $%d for it.",
				[2] = "Pizza! The customer enjoyed it, but there were some flaws and they paid $%d :/",
				[3] = "Yay! You delivered the pizza perfectly! The customer appreciated your effort and paid $%d!!!"
			}
		},
		harvest = {
			full = "Your %s is full!",
			harvest = "You harvested %s!",
			cost = "Cost",
			h_time = "Harvest",
			seed = "Seed" -- "To Seed"
		},
		smasher = {
			smash = "Smash",
			not_quantity = "%s can be obtained by smashing <B>%d</B> %s.", -- Tomato Sauce can be obtained by smashing 10 tomatoes
			get = "You got a <B>%s</B>. Find it in your <B>%s</B>."
		},
		storage = {
			empty_f = "Your fridge is empty! :(",
			empty_c = "Your cabinet is empty! :(",
			empty_g = "You do not have any ingredient to throw away.",
			select = "Select"
		},
		assembling = {
			select = "You need to select an ingredient in order to assemble the pizza!",
			req = {
				[1] = "Find <B>water</B> to make the pizza dough!",
				[2] = "Some <B>olive oil</B> is also necessary to make the pizza dough!",
				[3] = "A pinch of <B>%s</B> to make the dough tasty!",
				[4] = "Now some <B>wheat flour</B>... mmm, it will be perfect!",
				[5] = "Oh, forgot the <B>tomato sauce</B>!" -- Not sweet
			},
			no_ingredients = "You do not have ingredients to make a pizza. Plant the necessary ingredients according to the order.",
			stop = "Press <B>spacebar</B> once you conclude the pizza assembling!",
		},
		garbage = "Trash",
		go_oven = "Take the pizza to the oven.",
		insufficient_wheat = "For a quality pizza dough, at least <B>%s</B> wheats are needed!",
		feed = "Feed this animal with <B>%d</B> wheats.",
		animal = "Now that you fed it, keep ducking until you get an item.",
		animal_ingred = "You got the aliment... <B>%s</B>!",
		oven_assemble = "You can not make another pizza while you use the oven!",
		insufficient_cash = "You do not have enough money to do it!",
		welcome = "Mamma mia! Chef Remy hired you to make the most delicious pizzas ever! Be ready and use all the resources in the place.\n\nAfter harvesting the requested ingredients in their respective quantities, go to the dough roller and assemble the pizza.\n\nFollow the cooking time and ingredient quantities for a perfect pizza!"
	},

	ar = {
		event_concluded = "(╯°□°）╯︵ ┻━┻ !لقد أكملت الحدث\n\n،%s السحر من قبل\n،%s المؤثرات الخاصة من قبل\n<B>فريق المترجمين غير الرسمي</B>والرغبة الحسنة لـ\n<font size='9'>... ,%sشكر خاص لـ</font>",
		ingredient = {
			plant = {
				[1] = "موز",
				[2] = "ريحان",
				[3] = "فلفل حلو",
				[4] = "قنبيط أخضر",
				[5] = "كاكاو",
				[6] = "فطر",
				[7] = "زيتون",
				[8] = "بصل",
				[9] = "توابل",
				[10] = "أناناس",
				[11] = "طماطم",
				[12] = "قمح"
			},
			meat = {
				[1] = "لحم خنزير مقدد",
				[2] = "دجاج",
				[3] = "ببروني"
			},
			others = {
				[1] = "جبن",
				[2] = "شوكولاتة",
				[3] = "زيت الزيتون",
				[4] = "صلصة طماطم"
			},
			dough = {
				salt = "ملح",
				sugar = "سكر",
				water = "ماء"
			}
		},
		pizza = {
			[1] = "دجاج",
			[2] = "شوكولاتة",
			[3] = "مارغريتا",
			[4] = "ببروني",
			[5] = "أناناس",
			[6] = "نباتية",
			burned = "!لقد أحرقت البيتزا الخاصة بك! :( أنت مهمل",
			deliver = "!أوصل البيتزا إلى الزبون"
		},
		ui = {
			order = "الطلب",
			market = "السوق",
			smasher = "آلة السحق",
			freezer = "ثلاجة",
			cabinet = "خزانة",
			garbage = "قمامة",
			close = "غلق"
		},
		order = {
			customer = "زبون",
			total = "المجموع",
			delivered = {
				[0] = ":/ أوتش! العميل لم يكن راضيًا",
				[1] = "اغغغ! أنت لم تقدم بيتزا لائقة. دفع العميل $%d فقط مقابل ذلك.",
				[2] = ":/ بيتزا! لقد استمتع العميل بها، ولكن كانت هناك بعض العيوب ودفع $%d فقط ",
				[3] = "!!!ياي! قمت بتوصيل البيتزا تماما! يقدر العميل مجهودك ودفع $%d لك"
			}
		},
		harvest = {
			full = "!لقد امتلئت %s",
			harvest = "!لقد حصدت %s",
			cost = "الثمن",
			h_time = "حصاد",
			seed = "إزرع"
		},
		smasher = {
			smash = "سحق",
			not_quantity = "يمكن الحصول على %s عن طريق سحق %d %s."
		},
		storage = {
			empty_f = "): !الثلاجة فارغة",
			empty_c = "): !الخزانة فارغة",
			empty_g = ".ليس لديك أي عنصر للتخلص منه",
			select = "اختار"
		},
		assembling = {
			select = "!تحتاج لتحديد العناصر بترتيب صحيح لتجميع البيتزا",
			req = {
					[1] = "!لصنع عجينة البيتزا <B>ماء</B> اعثر على",
					[2] = "!ضروري أيضا لصنع عجينة البيتزا <b>زيت الزيتون</B> بعض ",
					[3] = "!لجعل العجين لذيذًا <B>%s</B> القليل من",
					[4] = "...ممم، سيكون مثاليا <B>القمح</B>الآن بعض",
					[5] = "!<B>صلصة الطماطم</B> أوه، نسيت"
			},
			no_ingredients = "ليس لديك المكونات لصنع البيتزا. إزرع المكونات اللازمة وفقا للترتيب.",
			stop = "!اضغط على زر المسافة بمجرد انتهائك من تجميع البيتزا"
		},
		garbage = "ألقي",
		go_oven = ".خذ البيتزا إلى الفرن",
		insufficient_wheat = "!للحصول على عجينة بيتزا عالية الجودة، يجب على الأقل <B>%s</B> إحضار القمح",
		feed = ".اطعم هذا الحيوان بـ <b>%d</B> قمح",
		animal = ".الان قمت بإطعامه، استمر بإنزال رأسك إلى ان تحصل على أداة",
		animal_ingred = "!لقد حصلت على الغذاء... <B>%s</B>",
		oven_assemble = "!لا يمكنك صنع بيتزا أخرى بينما أنت تستخدم الفرن",
		insufficient_cash = "!ليس لديك ما يكفي من المال للقيام بها",
		welcome = ".ماما ميا! عينك الشيف ريمي لصنع أفضل بيتزا لذيذة على الإطلاق! كن مستعد واستخدم جميع الموارد في المكان"
	},
	br = {
		event_concluded = "Você completou o evento! (╯°□°）╯︵ ┻━┻\n\nMágica feita por <B>%s</B>, efeitos especiais por <B>%s</B>, e a boa-vontade da <B>Equipe não-oficial de Tradutores </B>.\n<font size='9'>Agradecimentos especiais a %s, ...</font>",
		ingredient = {
			plant = {
				[1] = "Banana",
				[2] = "Manjericão",
				[3] = "Pimentão",
				[4] = "Brócolis",
				[5] = "Cacau",
				[6] = "Cogumelo",
				[7] = "Azeitona",
				[8] = "Cebola",
				[9] = "Orégano",
				[10] = "Abacaxi",
				[11] = "Tomate",
				[12] = "Trigo"
			},
			meat = {
				[1] = "Bacon",
				[2] = "Frango",
				[3] = "Calabresa"
			},
			others = {
				[1] = "Queijo",
				[2] = "Chocolate",
				[3] = "Azeite",
				[4] = "Molho de tomate"
			},
			dough = {
				salt = "Sal",
				sugar = "Açúcar",
				water = "Água"
			}
		},
		pizza = {
			[1] = "Frango",
			[2] = "Chocolate",
			[3] = "Margherita",
			[4] = "Calabresa",
			[5] = "Abacaxi",
			[6] = "Vegetariana",
			burned = "Sua pizza queimou! :( Que descuidado!",
			deliver = "Entregue a pizza ao cliente!"
		},
		ui = {
			order = "Pedido",
			market = "Mercado",
			smasher = "Máquina trituradora",
			freezer = "Congelador",
			cabinet = "Armário",
			garbage = "Lixo",
			close = "Fechar"
		},
		order = {
			customer = "Cliente",
			total = "Total",
			delivered = {
				[0] = "Oh não! O cliente não ficou satisfeito :/",
				[1] = "Que pena! Você não entregou uma boa pizza. O cliente só pagou $%d pela pizza.",
				[2] = "Pizza! O cliente gostou, mas havia algumas falhas e por isso só pagou $%d :/",
				[3] = "Uau! Você entregou uma pizza perfeitamente deliciosa! O cliente gostou do seu esforço e pagou $%d!!!"
			}
		},
		harvest = {
			full = "Seu %s está cheio!",
			harvest = "Você colheu %s!",
			cost = "Custo",
			h_time = "Colheita",
			seed = "Plantar"
		},
		smasher = {
			smash = "Triturar",
			not_quantity = "%s pode ser obtido ao triturar <B>%d</B> %s.",
			get = "Você conseguiu um <B>%s</B>. Encontre-o no <B>%s</B>."
		},
		storage = {
			empty_f = "Seu congelador está vazio! :(",
			empty_c = "Seu armário está vazio! :(",
			empty_g = "Você não tem qualquer ingrediente para por no lixo",
			select = "Selecionar"
		},
		assembling = {
			select = "Você precisa escolher um ingrediente para montar a pizza!",
			req = {
				[1] = "Encontre <B>água</B> para fazer a massa de pizza!",
				[2] = "Um pouco de <B>azeite</B> também é necessário para fazer a massa de pizza!",
				[3] = "Uma pitada de <B>%s</B> para dar sabor à pizza!",
				[4] = "Agora um pouco de <B>farinha</B>... mmm, vai ficar perfeita!",
				[5] = "Não se esqueça do <B>molho de tomate</B>!"
			},
			no_ingredients = "Você não tem ingredientes para fazer uma pizza deliciosa. Plante os ingredientes necessários de acordo com o pedido.",
			stop = "Pressione a <B>barra de espaço</B> assim que você concluir a montagem da pizza!"
		},
		garbage = "Lixo",
		go_oven = "Leve a pizza ao forno.",
		insufficient_wheat = "Para uma pizza de excelente qualidade, pelo menos <B>%s</B> trigos são necessários!",
		feed = "Alimente este animal com <B>%d</B> trigos.",
		animal = "Agora que você o alimentou, continue abaixando repetidamente até obter um item",
		animal_ingred = "Você obteve o alimento... <B>%s</B>!",
		oven_assemble = "Você não pode fazer outra pizza enquanto estiver usando o forno!",
		insufficient_cash = "Você não tem dinheiro suficiente para isso!",
		welcome = "Mamma mia! O Chef Remy contratou você para fazer as pizzas mais deliciosas do mundo! Esteja atento e use todos os recursos no local!\n\nDepois de colher os ingredientes pedidos em suas respectivas quantidades, vá para o rolo de massa e monte sua pizza.\n\nSiga o ponto da pizza e a quantidade dos ingredientes para uma pizza perfeita!"
	},
	cn = {
		event_concluded = "你已经完成了活动! (╯°□°）╯︵ ┻━┻\n\n由<B>%s</B>创造魔法, <B>%s</B>制造特别效果,以及<B>非官方的翻译团队</B>亲切提供翻译.\n<font size='9'>特别感谢 %s, ...</font>",
		ingredient = {
			plant = {
				[1] = "香蕉",
				[2] = "罗勒",
				[3] = "灯笼椒",
				[4] = "西兰花",
				[5] = "可可豆",
				[6] = "磨菇",
				[7] = "橄榄",
				[8] = "洋葱",
				[9] = "牛至",
				[10] = "菠萝",
				[11] = "蕃茄",
				[12] = "小麦"
			},
			meat = {
				[1] = "熏肉",
				[2] = "鸡肉",
				[3] = "意大利辣味香肠"
			},
			others = {
				[1] = "奶酪",
				[2] = "巧克力",
				[3] = "橄榄油",
				[4] = "蕃茄酱"
			},
			dough = {
				salt = "盐",
				sugar = "糖",
				water = "水"
			}
		},
		pizza = {
			[1] = "鸡肉披萨",
			[2] = "巧克力披萨",
			[3] = "玛格丽塔披萨",
			[4] = "意大利辣味香肠披萨",
			[5] = "菠萝披萨",
			[6] = "全素披萨",
			burned = "你的披萨烧焦了! :( 真不小心!",
			deliver = "把披萨递送到顾客手上吧!"
		},
		ui = {
			order = "点菜单",
			market = "市场",
			smasher = "捣碎器",
			freezer = "冰箱",
			cabinet = "橱柜",
			garbage = "垃圾",
			close = "关上"
		},
		order = {
			customer = "顾客",
			total = "总共",
			delivered = {
				[0] = "噢! 顾客不满意你的服务 :/",
				[1] = "额! 你没有递送一个令人满意的披萨。所以顾客只付了 $%d",
				[2] = "披萨! 顾客挺享受它可是还有一点瑕疵, 于是他付了 $%d :/",
				[3] = "超棒! 你递送了一个完美的披萨! 顾客非常欣赏你的努力成果而付了 $%d!!!"
			}
		},
		harvest = {
			full = "你的 %s 已经满了!",
			harvest = "你收割了 %s!",
			cost = "成本", 
			h_time = "收成",
			seed = "播种"
		},
		smasher = {
			smash = "捣碎",
			not_quantity = "%s 可以透过捣碎<B>%d</B>个 %s 获得。",
			get = "你得到一个 <B>%s</B>。 你可以在<B>%s</B>裡找到它。"
		},
		storage = {
			empty_f = "你的冰箱空空如也! :(",
			empty_c = "你的橱柜什么都没有只剩下灰尘! :(",
			empty_g = "你没有任何的材料可以丢掉。",
			select = "选择"
		},
		assembling = {
			select = "你需要选择一种材料来制造披萨!",
			req = {
				[1] = "请找到 <B>水</B> 来制作披萨的面团!",
				[2] = "一些 <B>橄榄油</B> 也是制作披萨面团的必须材料!",
				[3] = "加入少量的 <B>%s</B> 令面团的味道更好!",
				[4] = "现在加入一些 <B>小麦</B>... 唔, 这样就完美了!",
				[5] = "噢, 忘了 <B>蕃茄酱</B>!"
			},
			no_ingredients = "你没有足够的材料制作披萨。请根据点菜单种植需要的材料。",
			stop = "当你完成了披萨就按一下空格键!"
		},
		garbage = "丢弃",
		go_oven = "把披萨放进烤箱里面。",
		insufficient_wheat = "要制作具素质的披萨面团, 至少需要 <B>%s</B> 小麦!",
		feed = "用 <B>%d</B> 小麦喂饲这动物。",
		animal = "你已经喂饲了它, 持续按下直至获得物品。",
		animal_ingred = "你得到了肉类/动物制品... <B>%s</B>!",
		oven_assemble = "当烤箱正在使用的时候, 你不可以制作另外一个披萨!",
		insufficient_cash = "你没有足够的金钱进行这操作!",
		welcome = "我~的~天! 主厨 Remy 聘请了你來制作史上最美味的披萨! 请准备去善用这里所有的资源。\n\n在收割了足够数量的材料之后, 请到擀面杖那里制作披萨。\n\n根据点菜单上列出的材料以及时间烤制披萨就可以做出完美的披萨!"
	},
	ee = {
		event_concluded = "Sa lõpetasid sündmuse! (╯°□°）╯︵ ┻━┻\n\nMaagia <B>%s</B>poolt, erilised efektid <B>%s</B>poolt, ja <B>Unofficial Translators Team</B>heatahtlikus.\n<font size='9'>Erilised tänud %s, ...</font>",
		ingredient = {
			plant = {
				[1] = "Banaan",
				[2] = "Basiilik",
				[3] = "Paprika",
				[4] = "Brokoli",
				[5] = "Kakao",
				[6] = "Seened",
				[7] = "Oliiv",
				[8] = "Sibul",
				[9] = "Oregano",
				[10] = "Ananass",
				[11] = "Tomat",
				[12] = "Nisu"
			},
			meat = {
				[1] = "Peekon",
				[2] = "Kana",
				[3] = "Pepperoni"
			},
			others = {
				[1] = "Juust",
				[2] = "Šokolaad",
				[3] = "Oliivi Õli",
				[4] = "Tomati Kaste"
			},
			dough = {
				salt = "Sool",
				sugar = "Suhkur",
				water = "Vesi"
			}
		},
		pizza = {
			[1] = "Kana",
			[2] = "Šokolaad",
			[3] = "Margherita",
			[4] = "Pepperoni",
			[5] = "Ananass",
			[6] = "Vegetaarne",
			burned = "Su pitsa kõrbes ära! :( Sa oled hooletu!",
			deliver = "Vii ptsa kliendile!"
		},
		ui = {
			order = "Tellimus",
			market = "Pood",
			smasher = "Purusti",
			freezer = "Külmuti",
			cabinet = "Kabinet",
			garbage = "Prügi",
			close = "Sule"
		},
		order = {
			customer = "Klient",
			total = "Kokku",
			delivered = {
				[0] = "Ai! Klient ei olnud rahul :/",
				[1] = "Ugh! Sa ei viinud kohale korralikku. Klient maksis ainult $%d selle eest.",
				[2] = "Pitsa! Klient nautis seda, aga seal olid mõned vead ta maksis $%d :/",
				[3] = "Yay! Sa toimetasid kohale täiusliku pitsa! Klient hindas sinu pingutust ja maksis $%d!!!"
			}
		},
		harvest = {
			full = "Sinu %s on täis!",
			harvest = "Sa korjasid %s!",
			cost = "maksab",
			h_time = "Korja",
			seed = "Seeme"
		},
		smasher = {
			smash = "Purusta",
			not_quantity = "%s saab omandada purustades <B>%d</B> %s."
		},
		storage = {
			empty_f = "Sinu külmik on tühi! :(",
			empty_c = "Sinu kabinet on tühi! :(",
			empty_g = "Sul ei ole ühtegi ainet mida ära visata.",
			select = "Vali"
		},
		assembling = {
			select = "Sa pead valima ained ennem et valmistada pitsat!",
			req = {
				[1] = "Leia <B>vesi</B> et teha pitsa taigen!",
				[2] = "Natuke <B>oliivi õli</B> on ka vajalik et teha pitsa taigent!",
				[3] = "Tibake <B>%s</B> et see taigen teha maitsvaks!",
				[4] = "Nüüd natukene <B>nisu</B>... mmm, see tuleb täiuslik!",
				[5] = "Oh, unistasin <B>tomati kastme</B>!"
			},
			no_ingredients = "Sul ei ole ühtegi koostisosa, et teha pitsat. Külva vajalikud koostisosad mida on tellimuseks vaja.",
			stop = "Vajuta tühikut, kui sa oled lõpetanud pitsa tegemise!"
		},
		garbage = "Prügi",
		go_oven = "Vii pitsa ahju.",
		insufficient_wheat = "Kvaliteetse pitsa taigna jaoks on vaja vähemalt <B>%s</B> nisu!",
		feed = "Sööda sellele loomale <B>%d</B> nisu.",
		animal = "Nüüd kui sa teda söötsid, kükita kuni sa saad eseme.",
		animal_ingred = "Sa said eseme... <B>%s</B>!",
		oven_assemble = "Sa ei saa teha teist pitsat kui sa kasutad veel ahju!",
		insufficient_cash = "Sul ei ole piisavalt raha et seda teha!",
		welcome = "Mamma mia! Pea kokk Remy palkas sinu et teha parimaid pitsasid! Ole valmis kasutama kõiki ressursse siin kohas."
	},
	es = {
		event_concluded = "¡Has completado el evento! (╯°□°）╯︵ ┻━┻\n\nMagia por <B>%s</B>, efectos especiales por <B>%s</B>, y benevolencia del <B>Equipo de Traductores no oficial</B>.\n<font size='9'>Agradecimientos especiales a %s, ...</font>",
		ingredient = {
			plant = {
				[1] = "Plátano",
				[2] = "Albahaca",
				[3] = "Pimiento",
				[4] = "Brócoli",
				[5] = "Cacao",
				[6] = "Champiñón",
				[7] = "Aceituna",
				[8] = "Cebolla",
				[9] = "Orégano",
				[10] = "Piña",
				[11] = "Tomate",
				[12] = "Trigo"
			},
			meat = {
				[1] = "Beicon",
				[2] = "Pollo",
				[3] = "Pepperoni"
			},
			others = {
				[1] = "Queso",
				[2] = "Chocolate",
				[3] = "Aceite de oliva",
				[4] = "Salsa de tomate"
			},
			dough = {
				salt = "Sal",
				sugar = "Azúcar",
				water = "Agua"
			}
		},
		pizza = {
			[1] = "Pollo",
			[2] = "Chocolate",
			[3] = "Margarita",
			[4] = "Pepperoni",
			[5] = "Piña",
			[6] = "Vegetariana",
			burned = "¡Tu pizza se ha quemado! :( ¡Eres un descuidado!",
			deliver = "¡Entrégale la pizza al cliente!"
		},
		ui = {
			order = "Pedido",
			market = "Mercado",
			smasher = "Trituradora",
			freezer = "Frigorífico",
			cabinet = "Armario",
			garbage = "Basura",
			close = "Cerrar"
		},
		order = {
			customer = "Cliente",
			total = "Total",
			delivered = {
				[0] = "¡Ay! El cliente no ha estado satisfecho :/",
				[1] = "¡Puaj! No has entregado una pizza decente. El cliente solo ha pagado $%d por ella.",
				[2] = "¡Pizza! El cliente la ha disfrutado, pero había varios errores y ha pagado $%d :/",
				[3] = "¡Hurra! ¡Has entregado la pizza perfectamente! ¡¡¡El cliente ha apreciado tu empeño y ha pagado $%d!!!"
			}
		},
		harvest = {
			full = "¡Tu %s está lleno!",
			harvest = "¡Has cosechado %s!",
			cost = "Precio",
			h_time = "Cosecha",
			seed = "Sembrar"
		},
		smasher = {
			smash = "Triturar",
			not_quantity = "Se puede obtener %s triturando <B>%d</B> %s."
		},
		storage = {
			empty_f = "¡Tu frigorífico está vacío! :(",
			empty_c = "¡Tu armario está vacío! :(",
			empty_g = "No tienes ningún ingrediente para desechar.",
			select = "Seleccionar"
		},
		assembling = {
			select = "¡Tienes que seleccionar un ingrediente para hacer la pizza!",
			req = {
				[1] = "¡Encuentra <B>agua</B> para hacer la masa de la pizza!",
				[2] = "¡También se necesita algo de <B>aceite de oliva</B> para hacer la masa de la pizza!", 
				[3] = "¡Una pizca de <B>%s</B> para hacer que la masa esté deliciosa!",
				[4] = "Ahora algo de <B>trigo</B>... mmm, ¡será perfecta!",
				[5] = "Oh, ¡te has olvidado de la <B>salsa de tomate</B>!"
			},
			no_ingredients = "No tienes ingredientes para hacer la pizza. Planta los ingredientes necesarios según el pedido.",
			stop = "¡Presiona la <B>barra espaciadora</B> una vez que concluyas el ensamblaje de la pizza!"
		},
		garbage = "Desechar",
		go_oven = "Lleva la pizza al horno.",
		insufficient_wheat = "¡Se necesitan al menos <B>%s</B> de trigo para una masa de pizza de calidad!",
		feed = "Alimenta a este animal con <B>%d</B> de trigo.",
		animal = "Ahora que lo has alimentado, sigue agachándote hasta que consigas un objeto.",
		animal_ingred = "Has conseguido el alimento... <B>%s</B>!",
		oven_assemble = "¡No puedes hacer otra pizza mientras estás utilizando el horno!",
		insufficient_cash = "¡No tienes suficiente dinero para hacerlo!",
		welcome = "Mamma mia! ¡El Chef Remy te ha contratado para hacer las pizzas más deliciosas del mundo! Prepárate y utiliza todos los recursos disponibles."
	},
	fr = {
		event_concluded = "Tu as complété l’événement! (╯°□°）╯︵ ┻━┻\n\nMagie par <B>%s</B>, effets spéciaux par <B>%s</B>, et bonne volonté de L'<B>Equipe des Traducteurs Non Officiel</B>.\n<font size='9'>Remerciements particuliers à %s, ...</font>",
		ingredient = {
			plant = {
				[1] = "Banane",
				[2] = "Basilic",
				[3] = "Poivron",
				[4] = "Brocoli",
				[5] = "Cacao",
				[6] = "Champignon",
				[7] = "Olive",
				[8] = "Oignon",
				[9] = "Origan",
				[10] = "Ananas",
				[11] = "Tomate",
				[12] = "Blé"
			},
			meat = {
				[1] = "Bacon",
				[2] = "Poulet",
				[3] = "Chorizo"
			},
			others = {
				[1] = "Fromage",
				[2] = "Chocolat",
				[3] = "L'huile d'Olive",
				[4] = "Sauce Tomate"
			},
			dough = {
				salt = "Sel",
				sugar = "Sucre",
				water = "Eau"
			}
		},
		pizza = {
			[1] = "Poulet",
			[2] = "Chocolat",
			[3] = "Margarita",
			[4] = "Chorizo",
			[5] = "Ananas",
			[6] = "Végétarien",
			burned = "Ta pizza à brûlé! :( Tu es imprudent!",
			deliver = "Livre la pizza au client!"
		},
		ui = {
			order = "La commande",
			market = "Marché",
			smasher = "Concasseur",
			freezer = "Congélateur",
			cabinet = "Cabinet",
			garbage = "Poubelle",
			close = "Fermer"
		},
		order = {
			customer = "Client",
			total = "L'addition",
			delivered = {
				[0] = "Ouch! Le client n'a pas été satisfait :/",
				[1] = "Ugh! Ta pizza n'a pas été préparée correctement. Le client a seulement payé $%d pour cela.",
				[2] = "Pizza! Le client l'a adoré, mais il y avait quelques erreurs et il a payé $%d :/",
				[3] = "Yay! Tu as préparé une pizza parfaite! Le client a apprécié tes efforts et a payé $%d!!!"
			}
		},
		harvest = {
			full = "Ton %s est plein!",
			harvest = "Tu as récolté %s!",
			cost = "Coût",
			h_time = "Récolte",
			seed = "Graine"
		},
		smasher = {
			smash = "Concasseur",
			not_quantity = "%s peut être obtenu en concassant <B>%d</B> %s.",
			get = "Tu as obtenu l'ingrédient suivant : <B>%s</B>. Retrouve le dans ton <B>%s</B>."
		},
		storage = {
			empty_f = "Ton congélateur est vide! :(",
			empty_c = "Ton placard est vide! :(",
			empty_g = "Tu n'as pas d'ingrédient à jeter.",
			select = "Sélectionner"
		},
		assembling = {
			select = "Tu dois choisir un ingrédient pour assembler la pizza!",
			req = {
				[1] = "Trouve de <B>l'eau</B> pour faire la pâte à pizza!",
				[2] = "Un peu <B>d'huile d'olive</B> est nécessaire pour faire la pâte à pizza",
				[3] = "Une pincée de <B>%s</B> pour rendre la pâte savoureuse!",
				[4] = "Maintenant, un peu de <B>blé</B>... mmm, elle sera parfaite!",
				[5] = "Oh, tu as oublié la <B>sauce tomate</B>!"
			},
			no_ingredients = "Tu n'as pas d'ingrédients pour faire une pizza. Plante les ingrédients nécessaires pour la commande.",
			stop = "Appuie sur espace une fois que tu as terminé de monter la pizza!"
		},
		garbage = "Poubelle",
		go_oven = "Mets la pizza au four.",
		insufficient_wheat = "Pour une bonne pâte à pizza, au moins <B>%s</B> blés sont nécessaires!",
		feed = "Nourris cet animal avec <B>%d</B> blés.",
		animal = "Maintenant que tu l'as nourri, Continue de te baisser jusqu'à ce que tu obtiennes un objet.",
		animal_ingred = "Tu as obtenu l'aliment... <B>%s</B>!",
		oven_assemble = "Tu ne peux pas faire une autre pizza tant que vous utilisez le four!",
		insufficient_cash = "Vous n'avez pas assez d'argent pour le faire!",
		welcome = "Mamma mia! Le chef Remy t'a embauché pour que tu prépares les meilleures pizza du monde! Sois prêt et utilise toutes les ressources disponibles.\n\nAprès avoir récolté les ingrédients nécessaires en quantité suffisante, rend toi au rouleau à pâtisserie et assemble la pizza.\n\nSuis le temps de cuisson et la quantité d'ingrédients pour obtenir une pizza parfaite!"
	},
	he = {
		event_concluded = "השלמת את האיוונט! (╯°□°）╯︵ ┻━┻\n\nקסם על ידי <B>%s</B>, אפקטים מיוחדים על ידי<B>%s</B>, והרצון הטוב של<B>קבוצת המתרגמים הלא רשמית</B>.\n<font size='9'>תודה מיוחדת ל%s, ...</font>",
		ingredient = {
			plant = {
				[1] = "בננה",
				[2] = "בזיליקום",
				[3] = "גמבה",
				[4] = "ברוקולי",
				[5] = "קקאו",
				[6] = "פטרייה",
				[7] = "זית",
				[8] = "בצל",
				[9] = "אורגנו",
				[10] = "אננס",
				[11] = "עגבנייה",
				[12] = "חיטה"
			},
			meat = {
				[1] = "בייקון",
				[2] = "עוף",
				[3] = "פפרוני"
			},
			others = {
				[1] = "גבינה",
				[2] = "שוקולד",
				[3] = "שמן זית",
				[4] = "רוטב עגבניות"
			},
			dough = {
				salt = "מלח",
				sugar = "סוכר",
				water = "מים"
			}
		},
		pizza = {
			[1] = "עוף",
			[2] = "שוקולד",
			[3] = "מרגריטה",
			[4] = "פפרוני",
			[5] = "אננס",
			[6] = "צמחוני",
			burned = "הפיצה שלך נשרפה! :( אתה חסר אחריות!",
			deliver = "מסור את הפיצה ללקוח!"
		},
		ui = {
			order = "הזמנה",
			market = "שוק",
			smasher = "פצצה",
			freezer = "מקפיא",
			cabinet = "ארון",
			garbage = "זבל",
			close = "לסגור"
		},
		order = {
			customer = "לקוח",
			total = "סך הכל",
			delivered = {
				[0] = "אאוץ'! הלקוח אינו מרוצה :/",
				[1] = "אוף! לא מסרת פיצה טובה. הלקוח שילם רק $%d בשבילה.",
				[2] = "פיצה! הלקוח נהנה ממנה, אבל היו כמה פגמים והוא שילם $%d :/",
				[3] = "יש! מסרת את הפיצה באופן מושלם! הלקוח העריך את מאמציך ושילם $%d!!!"
			}
		},
		harvest = {
			full = "ה- %s שלך מלא!",
			harvest = "קצרת %s!",
			cost = "מחיר", 
			h_time = "יבול",
			seed = "לזרוע"
		},
		smasher = {
			smash = "לרסק",
			not_quantity = "%s מושג על ידי ריסוק <B>%d</B> %s.",
			get = "קיבלת <B>%s</B>. מצא את זה ב<B>%s</B>."
		},
		storage = {
			empty_f = "המקפיא שלך ריק! :(",
			empty_c = "הארון שלך ריק! :(",
			empty_g = "אין לך מרכיבים לזרוק.",
			select = "לבחור"
		},
		assembling = {
			select = "עליך לבחור מרכיב בשביל להכין פיצה!",
			req = {
				[1] = "מצא <B>מים</B> כדי להכין את בצק הפיצה!",
				[2] = "קצת <B>שמן זית</B> גם נחוץ על מנת להכין את בצק הפיצה!",
				[3] = "קמצוץ שלנ<B>%s</B> כדי להפוך את הבצק לטעים!",
				[4] = "ועכשיו קצת <B>חיטה</B>... מממ, זה יהיה מושלם!",
				[5] = "הו, שכחת את <B>רוטב העגבניות</B>!"
			},
			no_ingredients = "אין לך מרכיבים על מנת להכין פיצה. שתול את המרכיבים הנחוצים לפי הסדר.",
			stop = "לחץ על מקש הרווח ברגע שאתה מסיים את הרכבת הפיצה!"
		},
		garbage = "לזרוק",
		go_oven = "קח את הפיצה לתנור.",
		insufficient_wheat = "כדי להכין בצק איכותי, לפחות <B>%s</B> חיטה נחוצה!",
		feed = "תאכיל את החיה הזו עם<B>%d</B> חיטה.",
		animal = "עכשיו שהאכלת אותה, המשך להתכופף עד שתקבל פריט.",
		animal_ingred = "קיבלת את המזון... <B>%s</B>!",
		oven_assemble = "אתה לא יכול להכין עוד פיצה בזמן שהתנור בשימוש!",
		insufficient_cash = "אין לך מספיק כסף לעשות את זה!",
		welcome = "מאמה מיה! צ'ף רמי העסיק אותך על מנת להכין את הפיצות הכי טעימות! היה מוכן והשתמש בכל המשאבים באזור.\n\nלאחר השתלת המרכיבים המבוקשים בכמויות המכובדות להן, לך לרולר של הבצק והרכב את הפיצה.\n\nעקוב אחרי זמן הבישול וכמות המרכיבים בשביל פיצה מושלמת!"
	},
	hr = {
		event_concluded = "Završio si event! (╯°□°）╯︵ ┻━┻\n\nMagic by <B>%s</B>, specijalni efekti od <B>%s</B>, i dobar <B>Unofficial Translators Team</B>.\n<font size='9'>Specijalno hvala za %s, ...</font>",
		ingredient = {
			plant = {
				[1] = "Banana",
				[2] = "Bosiljak",
				[3] = "Paprika",
				[4] = "Brokoli",
				[5] = "Kakao",
				[6] = "Pečurka",
				[7] = "Maslina",
				[8] = "Luk",
				[9] = "Origano",
				[10] = "Ananas",
				[11] = "Paradajz",
				[12] = "Pšenica"
			},
			meat = {
				[1] = "Slanina",
				[2] = "Piletina",
				[3] = "Feferone"
			},
			others = {
				[1] = "Sir",
				[2] = "Čokolada",
				[3] = "Maslinovo Ulje",
				[4] = "Kečap"
			},
			dough = {
				salt = "So",
				sugar = "Šećer",
				water = "Voda"
			}
		},
		pizza = {
			[1] = "Piletia",
			[2] = "Čokolada",
			[3] = "Margarita",
			[4] = "Feferone",
			[5] = "Ananas",
			[6] = "Vegeterijanska",
			burned = "Tvoja pica je izgorela! :( Ne paziš!",
			deliver = "Isporučena je pica mušteriji!"
		},
		ui = {
			order = "Naruči",
			market = "Market",
			smasher = "Mašina za drobljenje",
			freezer = "Frižider",
			cabinet = "Kabinet",
			garbage = "Đubre",
			close = "Zatvori"
		},
		order = {
			customer = "Kupac",
			total = "Ukupno",
			delivered = {
				[0] = "Ouch! Kupac nije bio zadovoljan :/",
				[1] = "Ugh! Nisi dostavio zadovoljavajuću picu. Kupac je platio samo $%d za nju.",
				[2] = "Pica! Kupcu se svidelo, ali je bilo nekih nedostataka i samo je platio/la $%d :/",
				[3] = "Yay! Dostavio si picu savršeno! Kupac je cijenio tvoj napor i platio je $%d!!!"
			}
		},
		harvest = {
			full = "Tvoj %s je pun!",
			harvest = "Ubrao si %s!",
			cost = "Košta",
			h_time = "Sakupljanje",
			seed = "Semenka"
		},
		smasher = {
			smash = "Smrviti",
			not_quantity = "%s možeš dobiti mrvljenjem <B>%d</B> %s.",
			get = "Dobio si  <B>%s</B>. Pronađi to u svom <B>%s</B>."
		},
		storage = {
			empty_f = "Tvoj frižider je prazan! :(",
			empty_c = "Tvoj kabinet je prazan! :(",
			empty_g = "Nemaš nikakav sastojak da baciš.",
			select = "Izaberi"
		},
		assembling = {
			select = "Moraš da izabereš sastojak da bih napravio picu!",
			req = {
				[1] = "Pronađi <B>vodu</B> da bi napravio koru od pice!",
				[2] = "Malo <B>maslinovog ulja</B> je takođe potrebno da bi napravio koru od pice!",
				[3] = "Pstohvat <B>%s</B> da napraviš koru ukusnom!",
				[4] = "I sada <B>pšenice</B>... mmm, bit će savršeno!",
				[5] = "Oh, zaboravio si <B>kečap</B>!"
			},
			no_ingredients = "Nemaš sastojke da napraviš picu. Posadi potrebne sastojke po receptu.",
			stop = "Kada završiš sa izradom pice pristisni razmak!"
		},
		garbage = "Đubre",
		go_oven = "Odnesi picu do pećnice.",
		insufficient_wheat = "Za dobru koru od pice, barem <B>%s</B> pšenice je potrebno!",
		feed = "Nahrani ovu životinju sa <B>%d</B> pšenicom.",
		animal = "Pošto si je nahranio, nastavi sve dok ne dobiješ neki predmet.",
		animal_ingred = "Dobio si aliment... <B>%s</B>!",
		oven_assemble = "Ne možeš napraviti još jednu picu dok koristiš pećnicu!",
		insufficient_cash = "Nemaš dovoljno para da to uradiš!",
		welcome = "Mamma mia! Šef Remy te zaposlio da napraviš najukusniju picu ikada! Budi spreman da uzmeš šta želiš od stvari iz ovog mjesta.\n\nPoslije berbe traženog sastojka u datim količinama, idi do valjka za tjesto i napravi picu.\n\nPrati vrijeme pravljenja i količine sastojaka za savršenu picu!",
	},
	hu = {
		event_concluded = "Teljesítetted az eventet! (╯°□°）╯︵ ┻━┻\n\nVarázslat <B>%s</B> által, különleges effektek <B>%s</B> által, és a <B>Nem Hivatalos Fordítók Csapata</B> jóakarata által.\n<font size='9'>Különleges köszönet ezeknek az egereknek: %s, ...</font>",
		ingredient = {
			plant = {
				[1] = "Banán",
				[2] = "Bazsalikom",
				[3] = "Bell Paprika",
				[4] = "Brokkoli",
				[5] = "Kakaó",
				[6] = "Gomba",
				[7] = "Olajbogyó",
				[8] = "Hagyma",
				[9] = "Oregánó",
				[10] = "Ananász",
				[11] = "Paradicsom",
				[12] = "Búza"
			},
			meat = {
				[1] = "Szalonna",
				[2] = "Csirke",
				[3] = "Pepperoni"
			},
			others = {
				[1] = "Sajt",
				[2] = "Csokoládé",
				[3] = "Olívaolaj",
				[4] = "Paradicsom szósz"
			},
			dough = {
				salt = "Só",
				sugar = "Cukor",
				water = "Víz"
			}
		},
		pizza = {
			[1] = "Csirkés",
			[2] = "Csokoládés",
			[3] = "Margherita",
			[4] = "Szalámis",
			[5] = "Ananászos",
			[6] = "Vegetáriánus",
			burned = "Odaégett a pizzád! :( Figyelmetlen vagy!",
			deliver = "Vidd el a pizzát a megrendelőnek!"
		},
		ui = {
			order = "Rendelés",
			market = "Piac",
			smasher = "Nyomógép",
			freezer = "Hűtő",
			cabinet = "Konyhaszekrény",
			garbage = "Szemetes",
			close = "Bezár"
		},
		order = {
			customer = "Megrendelő",
			total = "Összeg",
			delivered = {
				[0] = "Auch! A megrendelő nem elégedett :/",
				[1] = "Ugh! Nem volt elég jó a pizzád. A megrendelő csak %d dollárt fizetett érte.",
				[2] = "Pizza! A megrendelőnek ízlett, de volt vele egy kis baj, szóval csak %d dollárt fizetett :/",
				[3] = "Yay! Tökéletes pizzát készítettél! A megrendelő értékeli a nehéz munkát, és %d dollárt fizetett!!!"
			}
		},
		harvest = {
			full = "A %s tele van!",
			harvest = "Szedtél egy kis %s növényt!",
			cost = "Ár",
			h_time = "Termés",
			seed = "Ültet"
		},
		smasher = {
			smash = "Összenyom",
			not_quantity = "%s hozzávalót úgy szerezhetsz, hogy összenyomsz <B>%d</B> darab %s növényt.",
			get = "<B>%s</B> hozzávalót szeresztél. Az alapanyagot keresd a <B>%s</B>ben."
		},
		storage = {
			empty_f = "Üres a hűtő! :(",
			empty_c = "Üres a konyhaszekrény! :(",
			empty_g = "Nincs hozzávalód, amit eldobhatnál.",
			select = "Választ"
		},
		assembling = {
			select = "Ki kell választanod egy hozzávalót, hogy összerakd a pizzát!",
			req = {
				[1] = "Találj <B>vizet</B> hogy elkészítsd a pizzatésztát!",
				[2] = "Egy kis <B>olívaolaj</B> is fontos a tészta elkészítéséhez!",
				[3] = "Egy csipetnyi <B>%s</B> is kellene, hogy a tészta finom legyen!",
				[4] = "Most egy kis <B>liszt</B>... mmm, tökéletes lesz!",
				[5] = "Oh, elfelejtetted a <B>paradicsom szószt</B>!"
			},
			no_ingredients = "Nincs hozzávalód, hogy pizzát tudj készíteni. Ültesd el a megfelelő hozzávalókat a rendelés alapján.",
			stop = "Nyomd le a szóközt, amint elkészültél a pizza összerakásával!"
		},
		garbage = "Eldob",
		go_oven = "Vidd a pizzát a kemencéhez.",
		insufficient_wheat = "Egy minőségi pizzatésztához legalább <B>%s</B> búzára lesz szükséged!",
		feed = "Etesd meg ezt az állatot <B>%d</B> búzával.",
		animal = "Most hogy megetetted, addig hajolj le amíg nem kapsz egy tárgyat.",
		animal_ingred = "Megszerezted a következő táplálékot: <B>%s</B>!",
		oven_assemble = "Nem tudsz másik pizzát készíteni, amíg a kemence használatban van!",
		insufficient_cash = "Nincs elég pénzed ehhez!",
		welcome = "Mamma mia! Remy Séf felvett téged a legfinomabb pizzák elkészítésére! Légy figyelmes és minden forrást használj fel a helyen.\n\nMiután learattad a megfelelő mennyiségű hozzávalókat amiket a megrendelő kért, menj a sodrófához és rakd össze a pizzát.\n\nTartsd be a sütési időt és a hozzávaló mennyiségeket, hogy tökéletes pizzát készíts!"
	},
	it = {
		event_concluded = "Hai completato l'evento! (╯°□°）╯︵ ┻━┻\n\nMagia da <B>%s</B>, effetti speciali da <B>%s</B>, e buona volontà del <B>Team Dei Traduttori Non-Ufficiale</B>.\n<font size='9'>Ringraziamenti speciali vanno a %s, ...</font>",
		ingredient = {
			plant = {
				[1] = "Banana",
				[2] = "Basilico",
				[3] = "Peperone",
				[4] = "Broccolo",
				[5] = "Cacao",
				[6] = "Fungo",
				[7] = "Oliva",
				[8] = "Cipolla",
				[9] = "Origano",
				[10] = "Ananas",
				[11] = "Pomodoro",
				[12] = "Frumento"
			},
			meat = {
				[1] = "Bacon",
				[2] = "Pollo",
				[3] = "Salsiccia piccante"
			},
			others = {
				[1] = "Formaggio",
				[2] = "Cioccolato",
				[3] = "Olio d'oliva",
				[4] = "Salsa di pomodoro"
			},
			dough = {
				salt = "Sale",
				sugar = "Zucchero",
				water = "Acqua"
			}
		},
		pizza = {
			[1] = "Pollo",
			[2] = "Cioccolato",
			[3] = "Margherita",
			[4] = "Salsiccia piccante",
			[5] = "Ananas",
			[6] = "Vegetariana",
			burned = "La tua pizza si è bruciata! :( Sei irresponsabile!",
			deliver = "Premi spazio per consegnare la pizza al cliente!"
		},
		ui = {
			order = "Ordina",
			market = "Negozio",
			smasher = "Tritatutto",
			freezer = "Frigo",
			cabinet = "Armadio da cucina",
			garbage = "Spazzatura",
			close = "Chiudi"
		},
		order = {
			customer = "Cliente",
			total = "Totale",
			delivered = {
				[0] = "Ouch! Il cliente non era soddisfatto :s",
				[1] = "Ugh! Non hai consegnato una pizza decente. Il cliente ha pagato soltanto $%d.",
				[2] = "Pizza! Il cliente l'ha gradita, ma c'erano delle imperfezioni e il cliente ha pagato $%d :/",
				[3] = "Yay! Hai consegnato la pizza in modo perfetto! Il cliente ha apprezzato i tuoi sforzi e ha pagato $%d!!!"
			}
		},
		harvest = {
			full = "Il tuo %s è pieno!",
			harvest = "Hai raccolto %s!",
			cost = "Prezzo",
			h_time = "Raccogli",
			seed = "Seminare"
		},
		smasher = {
			smash = "Trita",
			not_quantity = "%s può essere ottenuto tritando <B>%d</B> %s.",
			get = "Hai ottenuto: <B>%s</B>. Trovalo nel tuo <B>%s</B>."
		},
		storage = {
			empty_f = "Il tuo frigo è vuoto! :(",
			empty_c = "Il tuo armadio da cucina è vuoto! :(",
			empty_g = "Non hai nessun ingrediente da buttare via.",
			select = "Seleziona"
		},
		assembling = {
			select = "Devi selezionare un ingrediente per comporre la pizza!",
			req = {
				[1] = "Trova dell'<B>acqua</B> per fare la pasta della pizza!",
				[2] = "Un po' di <B>olio d'oliva</B> è anche necessario per fare la pasta della pizza!",
				[3] = "Un pizzico di <B>%s</B> Per rendere la pasta saporita!",
				[4] = "Adesso un po' di <B>farina di frumento</B>... mmm, sarà perfetto!",
				[5] = "Ah, dimentico la <B>salsa di pomodoro</B>!"
			},
			no_ingredients = "Non hai gli ingredienti per fare una pizza. Pianta gli ingredienti necessari secondo l'ordine.",
			stop = "Premi spazio una volta composta la pizza!"
		},
		garbage = "Butta via",
		go_oven = "Porta la pizza nel forno.",
		insufficient_wheat = "Per un impasto della pizza di qualità, almeno <B>%s</B> di frumento sono necessari!",
		feed = "Sfama questo animale con <B>%d</B> di frumento.",
		animal = "Ora che l'hai sfamato, continua a piegarti finché non riceverai un oggetto.",
		animal_ingred = "Hai ottenuto l'alimento... <B>%s</B>!",
		oven_assemble = "Non puoi fare un'altra pizza mentre usi il forno!",
		insufficient_cash = "Non hai abbastanza soldi per farlo!",
		welcome = "Mamma mia! Lo Chef Remy ti ha ingaggiato per preparare le pizze più deliziose di sempre! Preparati e usa tutte le risorse del posto.\n\nDopo aver raccolto gli ingredienti richiesti nelle loro rispettive quantità, vai a rullare la pasta e componi la pizza.\n\nSegui il tempo di cottura e la quantità degli ingredienti per una pizza perfetta!"
	},
	lv = {
		event_concluded = "Jūs pabeidzāt šo notikumu! (╯°□°）╯︵ ┻━┻\n\nMaģija pateicoties <B>%s</B>, specefekti <B>%s</B>, un <B>Neoficiālās Tulkotāju Komamdas</B> labvēlība.\n<font size='9'>Īpašs paldies %s, ...</font>",
		ingredient = {
			plant = {
				[1] = "Banāns",
				[2] = "Baziliks",
				[3] = "Paprika",
				[4] = "Brokolis",
				[5] = "Kakao",
				[6] = "Sēne",
				[7] = "Olīve",
				[8] = "Sīpols",
				[9] = "Oregano",
				[10] = "Ananāss",
				[11] = "Tomāts",
				[12] = "Kvieši"
			},
			meat = {
				[1] = "Bekons",
				[2] = "Vista",
				[3] = "Peperoni"
			},
			others = {
				[1] = "Siers",
				[2] = "Šokolāde",
				[3] = "Olīveļļa",
				[4] = "Tomātu mērce"
			},
			dough = {
				salt = "Sāls",
				sugar = "Cukurs",
				water = "Ūdens"
			}
		},
		pizza = {
			[1] = "Vistas",
			[2] = "Šokolādes",
			[3] = "Margarita",
			[4] = "Peperoni",
			[5] = "Ananāsu",
			[6] = "Veģetāriešu",
			burned = "Tava pica sadega! :( Tu bezrūpīgs!",
			deliver = "Piegādā picu klientam!"
		},
		ui = {
			order = "Pasūtījums",
			market = "Tirgus",
			smasher = "Sadauzītājs",
			freezer = "Ledusskapis",
			cabinet = "Plaukts",
			garbage = "Atkritumi",
		},
		order = {
			customer = "Klients",
			total = "Kopā",
			delivered = {
				[0] = "Au! Klients nebija apmierināts :/",
				[1] = "Fuj! Jūs nepiegādājāt pienācīgu picu. Klients samaksāja tikai $%d par to.",
				[2] = "Pica! Klients to izbaudīja, bet bija dažas nepilnības un viņš samaksāja $%d :/",
				[3] = "Urā! Jūs piegādājāt picu izcili! Klients novērtēja Jūsu pūles un samaksāja $%d!!!"
			}
		},
		harvest = {
			full = "Jūsu %s ir pilns!",
			harvest = "Jūs novācāt %s!"
		},
		smasher = {
			smash = "Sadauzīt",
			not_quantity = "%s var tikt iegūti, sadaudzot <B>%d</B> %s.",
			get = "Jūs dabūjāt <B>%s</B>. Atrodiet tās savā <B>%s</B>."
		},
		storage = {
			empty_f = "Jūsu ledusskapis ir tukšs! :(",
			empty_c = "Jūsu plaukts ir tukšs :(",
			empty_g = "Jums nav sastāvdaļas ko izmest."
		},
		assembling = {
			select = "Juns ir jāizvēlās sastāvdaļas, lai varētu uztaisīt picu!",
			req = {
				[1] = "Atrodiet <B>ūdeni</B>, lai izveidotu picas mīklu!",
				[2] = "Nedaudz <B>olīveļļas</B> arī ir nepieciešama, lai izveidotu picas mīklu!",
				[3] = "Šķipsna no <B>%s</B> lai padarītu mīklu garšīgu!",
				[4] = "Tagad nedaudz <B>kviešus</B>... mmm, tas būs ideāli!",
				[5] = "Ak, aizmirsu <B>tomātu mērci</B>!"
			},
			no_ingredients = "Jums nav sastāvdaļas, lai izveidotu picu. Sastādiet nepieciešamās sastāvdaļas atbilstošajā secībā.",
			stop = "Nospiediet atsarpes taustiņu, kad esat beidzis picas salikšanu!"
		},
		go_oven = "Aizved picu uz krāsni.",
		insufficient_wheat = "Priekš kvalitatīvas picas mīklas, vismaz <B>%s</B> kvieši ir vajadzīgi!",
		feed = "Pabaro šo dzīvnieku ar <B>%d</B> kviešiem.",
		animal = "Tagad, kad Jūs to pabarojāt, turpiniet pietupties, līdz kamēr dabūjat priekšmetu.",
		animal_ingred = "Tu dabūji barību... <B>%s</B>!",
		oven_assemble = "Tu nevari izveidot vēl vienu picu, kamēr tu izmanto krāsni!",
		insufficient_cash = "Tev nav pietiekami daudz naudas, lai to izdarītu!",
		welcome = "Mamma mia! Pavārs Remy tevi nolīdza, lai tu izgatavotu visgaršīgākās picas jebkad! Esi gatavs un izmanto visus resursus šajā vietā.\n\nPēc vajadzīgo sastāvdaļu ievākšanas vajadzīgajos daudzumos, dodaties pie mīklas veltņa un sastādiet picu.\n\nSekojiet cepšanas laikam un sastāvdaļu daudzumam priekš izcilas picas!"
	},
	pl = {
		event_concluded = "Ukończyłeś/-aś event! (╯°□°）╯︵ ┻━┻\n\nMagia została stworzona przez <B>%s</B>, specjalne efekty zostały stworzone przez <B>%s</B>, a wszystko dzięki <B>Nieoficjalnej Drużynie Tłumaczy</B>.\n<font size='9'>Specjalne podziękowania dla %s, ...</font>",
		ingredient = {
			plant = {
				[1] = "Banan",
				[2] = "Bazylia",
				[3] = "Papryka",
				[4] = "Brokuła",
				[5] = "Kakao",
				[6] = "Grzyb",
				[7] = "Oliwa",
				[8] = "Cebula",
				[9] = "Oregano",
				[10] = "Ananas",
				[11] = "Pomidor",
				[12] = "Pszenica"
			},
			meat = {
				[1] = "Bekon",
				[2] = "Kurczak",
				[3] = "Pepperoni"
			},
			others = {
				[1] = "Ser",
				[2] = "Czekolada",
				[3] = "Oliwa z oliwek",
				[4] = "Sos Pomidorowy"
			},
			dough = {
				salt = "Sól",
				sugar = "Cukier",
				water = "Woda"
			}
		},
		pizza = {
			[1] = "Kurczak",
			[2] = "Czekolada",
			[3] = "Margherita",
			[4] = "Pepperoni",
			[5] = "Hawajska",
			[6] = "Wegetariańska",
			burned = "Twoja pizza się spaliła! :( Nie pilnowałeś/-aś jej!",
			deliver = "Dostarcz pizzę do klienta!"
		},
		ui = {
			order = "Zamówienie",
			market = "Sklep",
			smasher = "Ubijaczka",
			freezer = "Lodówka",
			cabinet = "Szafka",
			garbage = "Śmieci",
			close = "Zamknij"
		},
		order = {
			customer = "Klient",
			total = "Łącznie",
			delivered = {
				[0] = "Ohh! Klient nie był zadowolony :/",
				[1] = "Ugh! Nie dostarczyłeś/-aś odpowiedniej pizzy. Klient zapłacił tylko $%d.",
				[2] = "Pizza! Klientowi smakowała, ale było kilka błędów, dlatego zapłacił $%d :/",
				[3] = "Yay! Dostarczyłeś idealną pizzę! Klient docenił twój wysiłek i zapłacił $%d!!!"
			}
		},
		harvest = {
			full = "Twój %s jest pełen!",
			harvest = "Zebrałeś/-aś %s!",
			cost = "Cena", 
			h_time = "Żniwa",
			seed = "Zasadź"
		},
		smasher = {
			smash = "Ubij",
			not_quantity = "%s może zostać odkryty poprzez ubijanie <B>%d</B> %s.",
			get = "Otrzymałeś/-aś <B>%s</B>. Znajdziesz to w <B>%s</B>."
		},
		storage = {
			empty_f = "Twoja lodówka jest pusta! :(",
			empty_c = "Twoja szafka jest pusta! :(",
			empty_g = "Nie masz żadnych składników, które możesz wyrzucić.",
			select = "Wybierz"
		},
		assembling = {
			select = "Musisz wybrać odpowiedni składnik w odpowiedniej kolejności, aby przygotować pizzę!",
			req = {
				[1] = "Znajdź <B>wodę</B>, aby przygotować ciasto do pizzy!",
				[2] = "Trochę <B>oliwy z oliwek</B> jest także wymagane, aby przygotować ciasto do pizzy!",
				[3] = "Dodaj szczyptę <B>%s</B> aby dodać smaku!",
				[4] = "Teraz trochę <B>pszenicy</B>... mmm, ale będzie smaczna!",
				[5] = "Oh, tylko nie zapomnij o <B>sosie pomidorowym</B>!"
			},
			no_ingredients = "Nie masz odpowiednich składników, aby przygotować pizzę. Zasadź wymagane składniki zważając na kolejność.",
			stop = "Kliknij spację jeden raz, aby zakończyć składanie pizzy!"
		},
		garbage = "Wyrzuć",
		go_oven = "Zanieś pizzę do piekarnika.",
		insufficient_wheat = "Aby podnieść jakość ciasta, przydałoby się dodać przynajmniej <B>%s</B> pszenic!",
		feed = "Nakarm zwierzęta <B>%d</B> pszenicami.",
		animal = "Zwierzę jest nakarmione, kucaj przy nim, aby dostać przedmioty.",
		animal_ingred = "Otrzymałeś/-aś pokarm... <B>%s</B>!",
		oven_assemble = "Możesz tylko piec jedną pizzę w jednym momencie!",
		insufficient_cash = "Nie masz wystarczającej ilości pieniędzy, aby to zrobić!",
		welcome = "Mamma mia! Szef Remy zatrudnił ciebie abyś stworzył/-a najpyszniejszą pizzę jaka kiedykolwiek powstała! Bądź gotowy/-a i użyj wszystkich surowców, które znajdują się na tej mapie.\n\nPo tym jak zbierzesz wymagane składniki w odpowiedniej ilości, podejdź po wałek do ciasta i przygotuj pizzę.\n\nPamiętaj o przestrzeganiu czasu pieczenia i  ilości składników, aby zrobić idealną pizzę!"
	},
	ro = {
		event_concluded = "Ai completat evenimentul! (╯°□°）╯︵ ┻━┻\n\nMagia de <B>%s</B>, efectele speciale de <B>%s</B>, și bunăvoința <B>Neoficial Echipa de Traducători</B>.\n<font size='9'>Mulțumiri speciale lui %s, ...</font>",
		ingredient = {
			plant = {
				[1] = "Banană",
				[2] = "Busuioc",
				[3] = "Ardei gras",
				[4] = "Brocoli",
				[5] = "Cocoa",
				[6] = "Cipercă",
				[7] = "Ulei",
				[8] = "Ceapă",
				[9] = "Oregano",
				[10] = "Ananas",
				[11] = "Roșie",
				[12] = "Grâu"
			},
			meat = {
				[1] = "Bacon",
				[2] = "Pui",
				[3] = "Pepperoni"
			},
			others = {
				[1] = "Brânză",
				[2] = "Ciocolată",
				[3] = "Ulei de măsline",
				[4] = "Sos de roșii"
			},
			dough = {
				salt = "Sare",
				sugar = "Zahăr",
				water = "Apă"
			}
		},
		pizza = {
			[1] = "Pui",
			[2] = "Ciocolată",
			[3] = "Margherita",
			[4] = "Pepperoni",
			[5] = "Ananas",
			[6] = "Vegetarian",
			burned = "Pizza ta a ars! :( Neatentule!",
			deliver = "Livrează pizza clientului!"
		},
		ui = {
			order = "Comandă",
			market = "Piață",
			smasher = "Zdrobitor",
			freezer = "Frigider",
			cabinet = "Dulap",
			garbage = "Gunoi",
		},
		order = {
			customer = "Client",
			total = "Total",
			delivered = {
				[0] = "Auci! Clientul nu a fost mulțumit :/",
				[1] = "Uh! N-ai livrat o pizza decentă. Clientul a platita platit doar $%d pe ea.",
				[2] = "Pizza! Clientului i-a placut, dar au fost niște greșeli așa că a plătit doar $%d :/",
				[3] = "Yay! Ai livrat pizza perfect! Clientului i-a plăcut efortul pe care l-ai depus asa ca a plătit $%d!!!"
			}
		},
		harvest = {
			full = " %s este plin!",
			harvest = "Ai recoltat %s!"
		},
		smasher = {
			smash = "Strivește",
			not_quantity = "%s poate fi obținut prin strivirea <B>%d</B> %s.",
			get = "Ai primit <B>%s</B>. O poți gasi în <B>%s</B> tău."
		},
		storage = {
			empty_f = "Frigiderul tău e gol! :(",
			empty_c = "Dulapul tău este gol! :(",
			empty_g = "Nu ai incrediente pe care să le arunci."
		},
		assembling = {
			select = "Trebuie să selectezi incredientele în ordine pentu a face pizza!",
			req = {
				[1] = "Găsește <B>apă</B> să faci aluat de pizza!",
				[2] = "Niște <B>ulei de măsline</B> e de asemenea necesar să faci aluat de pizza!",
				[3] = "Un vârf de <B>%s</B> face aluatul mai gustos!",
				[4] = "Acum niste <B>grâu</B>... mmm, va fi perfect!",
				[5] = "Oh, ai uitat <B>sosul de roșii</B>!"
			},
			no_ingredients = "Nu ai incrediente pentu a face pizza. Plantează incredientele necesare potrivite rețetei.",
			stop = "Apasă space atunci când crezi că pizza este gata!"
		},
		go_oven = "Ia pizza din cuptor.",
		insufficient_wheat = "Pentru un aluat de pizza bun, ai nevoie măcar de <B>%s</B> grâu!",
		feed = "Hrănește aceste animale cu <B>%d</B> grâu.",
		animal = "Acum că le-ai hrănit, apasă s/săgeată jos pentru a lua itemul.",
		animal_ingred = "Ai primit un aliment... <B>%s</B>!",
		oven_assemble = "Nu poți face o altă pizza în timp ce alta este în cuptor!",
		insufficient_cash = "Nu ai suficenți bani pentru asta!",
		welcome = "Mamma mia! Chef Remy te-a angajat ca să faci cea mai delicoasă pizza din lume! Fii pregătit și folosește toate resursele.\n\nApoi recoltează  incredientele necesare în cantitățile potrivite, du-te la sucitor și asamblează pizza.\n\nFii atent la timpul de coacere și cantitățile incredientelor pentru o pizza perfectă!"
	},
	tr = {
		event_concluded = "Etkinliği tamamladınız! (╯°□°）╯︵ ┻━┻\n\nSihir, <B>%s</B> tarafından, özel efektler <B>%s</B> tarafından, ve <B>resmi olmayan Çeviri Ekibi</B>'nin yardımlarıyla yapılmıştır.\n<font size='9'>Teşekkürler: %s, ...</font>",
		ingredient = {
			plant = {
				[1] = "Muz",
				[2] = "Fesleğen",
				[3] = "Biber",
				[4] = "Brokoli",
				[5] = "Kakao",
				[6] = "Mantar",
				[7] = "Zeytin",
				[8] = "Soğan",
				[9] = "Kekik otu",
				[10] = "Ananas",
				[11] = "Domates",
				[12] = "Buğday"
			},
			meat = {
				[1] = "Pastırma",
				[2] = "Tavuk",
				[3] = "Peperoni"
			},
			others = {
				[1] = "Peynir",
				[2] = "Çikolata",
				[3] = "Zeytinyağı",
				[4] = "Domates sosu"
			},
			dough = {
				salt = "Tuz",
				sugar = "Şeker",
				water = "Su"
			}
		},
		pizza = {
			[1] = "Tavuklu",
			[2] = "Çikolatalı",
			[3] = "Margeritalı",
			[4] = "Peperonili",
			[5] = "Ananaslı",
			[6] = "Vejetaryen",
			burned = "Pizzan yandı! :( Seni dikkatsiz!",
			deliver = "Pizzayı müşteriye teslim et!"
		},
		ui = {
			order = "Sipariş",
			market = "Market",
			smasher = "Sıkma Makinesi",
			freezer = "Derin Dondurucu",
			cabinet = "Dolap",
			garbage = "Çöp",
			close = "Kapat"
		},
		order = {
			customer = "Müşteri",
			total = "Toplam",
			delivered = {
				[0] = "Off! Müşteri memnun kalmadı :/",
				[1] = "Iığğh! Teslim ettiğin pizza düzgün değildi. Müşteri sadece $%d ödedi.",
				[2] = "Pizza! Müşteri bayıldı ama hala bazı kusurlar var ve bu yüzden sadece $%d ödedi :/",
				[3] = "Yeey! Pizzayı kusursuz bir şekilde teslim ettin! Müşteri, gayretini takdir etti ve $%d ödedi!!!"
			}
		},
		harvest = {
			full = "%s doldu!",
			harvest = "%s topladın!",
			cost = "Fiyat",
			h_time = "Hasat",
			seed = "Tohumla"
		},
		smasher = {
			smash = "Sık",
			not_quantity = "%s, <B>%d</B> %s sıkarak elde edilebilir."
		},
		storage = {
			empty_f = "Derin dondurucun boş! :(",
			empty_c = "Dolabın boş! :(",
			empty_g = "Atılacak malzemen yok.",
			select = "Seç"
		},
		assembling = {
			select = "Pizzayı yapmak için malzeme seçmen gerekiyor!",
			req = {
				[1] = "Pizza hamuru yapmak için <B>su</B> bul!",
				[2] = "Biraz <B>zeytinyağı</B> da pizzanın hamuru için gerekli!",
				[3] = "Hamurun lezzeti için de bir tutam <B>%s</B>!",
				[4] = "Şimdi biraz da <B>buğday</B>... mmm, harika olacak!",
				[5] = "Aa, <B>domates sosunu</B> unuttun!"
			},
			no_ingredients = "Pizza yapmak için malzemen yok. Gerekli malzemeleri verilen sıraya göre dik.",
			stop = "Pizzayı birleştirmeyi tamamladığında boşluk tuşuna bas!"
		},
		garbage = "Çöp",
		go_oven = "Pizzayı fırına koy.",
		insufficient_wheat = "Kaliteli bir pizza hamuru için en az <B>%s</B> buğday gerekli!",
		feed = "Bu hayvanı <B>%d</B> buğdayla besle.",
		animal = "Besledikten sonra bir eşya elde edene kadar eğil.",
		animal_ingred = "Bu malzemeyi kazandın: <B>%s</B>!",
		oven_assemble = "Fırını kullanıyorlarken başka bir pizza yapamazsın!",
		insufficient_cash = "Bunu yapmak için yeterli paran yok!",
		welcome = "Mamma mia! Şef Remy seni en lezzetli pizzaları yapman için işe aldı! Hazır ol ve tüm kaynakları yerinde kullan."
	}
},{
	__call = function(list, flag)
		return list[flag or tfm.get.room.community] or list.en
	end
})
translation.pt = translation.br

--[[ Data ]]--
local json = { encode = true, decode = true }
do
	local encode

	local escape_char_map = {
		['\\'] = "\\\\",
		['\"'] = "\\\"",
		['\b'] = "\\b",
		['\f'] = "\\f",
		['\n'] = "\\n",
		['\r'] = "\\r",
		['\t'] = "\\t"
	}
	local escape_char_map_inv = { ["\\/"] = "/", ['/'] = "\\/" }

	local escape_char = function(c)
		return escape_char_map[c] or string.format("\\u%04x", string.byte(c))
	end

	local encode_nil = function(val)
		return "null"
	end

	local encode_table = function(val, stack)
		local res = {}
		stack = stack or {}
		if stack[val] then error("[JSON] Circular reference") end
		stack[val] = true
		if val[1] ~= nil or next(val) == nil then
			local n = 0
			for k in next, val do
				if type(k) ~= "number" then
					error("[JSON] Invalid table: mixed or invalid key types")
				end
				n = n + 1
			end
			if n ~= #val then
				error("[JSON] Invalid table: sparse array")
			end
			for i, v in ipairs(val) do
				res[#res + 1] = encode(v, stack)
			end
			stack[val] = nil
			return "[" .. table.concat(res, ",") .. "]"
		else
			for k, v in next, val do
				if type(k) ~= "string" then
					error("[JSON] Invalid table: mixed or invalid key types")
				end
				res[#res + 1] = encode(k, stack) .. ":" .. encode(v, stack)
			end
			stack[val] = nil
			return "{" .. table.concat(res, ",") .. "}"
		end
	end

	local encode_string = function(val)
		return '"' .. string.gsub(val, '[%z\1-\31\\"]', escape_char) .. '"'
	end

	local encode_number = function(val)
		if val ~= val or val <= -math.huge or val >= math.huge then
			error("[JSON] Unexpected number value '" .. tostring(val) .. "'")
		end
		return string.format("%.14g", val)
	end

	local type_func_map = {
		["nil"] = encode_nil,
		["table"] = encode_table,
		["string"] = encode_string,
		["number"] = encode_number,
		["boolean"] = tostring,
	}

	encode = function(val, stack)
		local t = type(val)
		local f = type_func_map[t]
		if f then
			return f(val, stack)
		end
		error("[JSON] Unexpected type '" .. t .. "'")
	end

	local parse

	local space_chars = {
		[' '] = true,
		['\t'] = true,
		['\r'] = true,
		['\n'] = true
	}
	local delim_chars = {
		[' '] = true,
		['\t'] = true,
		['\r'] = true,
		['\n'] = true,
		[']'] = true,
		['}'] = true,
		[','] = true
	}
	local escape_chars = {
		['\\'] = true,
		['/'] = true,
		['"'] = true,
		['b'] = true,
		['f'] = true,
		['n'] = true,
		['r'] = true,
		['t'] = true,
		['u'] = true
	}
	local literals = {
		["true"] = true,
		["false"] = true,
		["null"] = true
	}
	local literal_map = {
		["true"] = true,
		["false"] = false,
		["null"] = nil
	}

	local next_char = function(str, idx, set, negate)
		for i = idx, #str do
			if set[string.sub(str, i, i)] ~= negate then
				return i
			end
		end
		return #str + 1
	end

	local decode_error = function(str, idx, msg)
		local line_count = 1
		local col_count = 1
		for i = 1, idx - 1 do
			col_count = col_count + 1
			if string.sub(str, i, i) == "\n" then
				line_count = line_count + 1
				col_count = 1
			end
		end
		error(string.format("[JSON] %s at line %d col %d", msg, line_count, col_count))
	end

	local codepoint_to_utf8 = function(n)
		if n <= 0x7f then
			return string.char(n)
		elseif n <= 0x7ff then
			return string.char(math.floor(n / 64) + 192, n % 64 + 128)
		elseif n <= 0xffff then
			return string.char(math.floor(n / 4096) + 224, math.floor(n % 4096 / 64) + 128, n % 64 + 128)
		elseif n <= 0x10ffff then
			return string.char(math.floor(n / 262144) + 240, math.floor(n % 262144 / 4096) + 128, math.floor(n % 4096 / 64) + 128, n % 64 + 128)
		end
		error(string.format("[JSON] Invalid unicode codepoint '%x'", n))
	end

	local parse_unicode_escape = function(s)
		local n1 = tonumber(string.sub(s, 3, 6), 16)
		local n2 = tonumber(string.sub(s, 9, 12), 16)
		if n2 then
			return codepoint_to_utf8((n1 - 0xd800) * 0x400 + (n2 - 0xdc00) + 0x10000)
		else
			return codepoint_to_utf8(n1)
		end
	end

	local parse_string = function(str, i)
		local has_unicode_escape = false
		local has_surrogate_escape = false
		local has_escape = false
		local last
		for j = i + 1, #str do
			local x = string.byte(str, j)
			if x < 32 then
				decode_error(str, j, "Control character in string")
			end
			if last == 92 then
				if x == 117 then
					local hex = string.sub(str, j + 1, j + 5)
					if not string.find(hex, "%x%x%x%x") then
						decode_error(str, j, "Invalid unicode escape in string")
					end
					if string.find(hex, "^[dD][89aAbB]") then
						has_surrogate_escape = true
					else
						has_unicode_escape = true
					end
				else
					local c = string.char(x)
					if not escape_chars[c] then
						decode_error(str, j, "Invalid escape char '" .. c .. "' in string")
					end
					has_escape = true
				end
				last = nil
			elseif x == 34 then
				local s = string.sub(str, i + 1, j - 1)
				if has_surrogate_escape then
					s = string.gsub(s, "\\u[dD][89aAbB]..\\u....", parse_unicode_escape)
				end
				if has_unicode_escape then
					s = string.gsub(s, "\\u....", parse_unicode_escape)
				end
				if has_escape then
					s = string.gsub(s, "\\.", escape_char_map_inv)
				end
				return s, j + 1
			else
				last = x
			end
		end
		decode_error(str, i, "Expected closing quote for string")
	end

	local parse_number = function(str, i)
		local x = next_char(str, i, delim_chars)
		local s = string.sub(str, i, x - 1)
		local n = tonumber(s)
		if not n then
			decode_error(str, i, "Invalid number '" .. s .. "'")
		end
		return n, x
	end

	local parse_literal = function(str, i)
		local x = next_char(str, i, delim_chars)
		local word = string.sub(str, i, x - 1)
		if not literals[word] then
			decode_error(str, i, "Invalid literal '" .. word .. "'")
		end
		return literal_map[word], x
	end

	local parse_array = function(str, i)
		local res = {}
		local n = 1
		i = i + 1
		while 1 do
			local x
			i = next_char(str, i, space_chars, true)
			if string.sub(str, i, i) == "]" then
				i = i + 1
				break
			end
			x, i = parse(str, i)
			res[n] = x
			n = n + 1
			i = next_char(str, i, space_chars, true)
			local chr = string.sub(str, i, i)
			i = i + 1
			if chr == "]" then break end
			if chr ~= "," then decode_error(str, i, "Expected ']' or ','") end
		end
		return res, i
	end

	local parse_object = function(str, i)
		local res = {}
		i = i + 1
		while 1 do
			local key, val
			i = next_char(str, i, space_chars, true)
			if string.sub(str, i, i) == "}" then
				i = i + 1
				break
			end
			if string.sub(str, i, i) ~= '"' then
				decode_error(str, i, "Expected string for key")
			end
			key, i = parse(str, i)
			i = next_char(str, i, space_chars, true)
			if string.sub(str, i, i) ~= ":" then
				decode_error(str, i, "Expected ':' after key")
			end
			i = next_char(str, i + 1, space_chars, true)
			val, i = parse(str, i)
			res[key] = val
			i = next_char(str, i, space_chars, true)
			local chr = string.sub(str, i, i)
			i = i + 1
			if chr == "}" then break end
			if chr ~= "," then decode_error(str, i, "Expected '}' or ','") end
		end
		return res, i
	end

	local char_func_map = {
		['"'] = parse_string,
		['0'] = parse_number,
		['1'] = parse_number,
		['2'] = parse_number,
		['3'] = parse_number,
		['4'] = parse_number,
		['5'] = parse_number,
		['6'] = parse_number,
		['7'] = parse_number,
		['8'] = parse_number,
		['9'] = parse_number,
		['-'] = parse_number,
		['t'] = parse_literal,
		['f'] = parse_literal,
		['n'] = parse_literal,
		['['] = parse_array,
		['{'] = parse_object,
	}

	local copy_ignoring
	copy_ignoring = function(tbl, pat)
		local out = {}
		for k, v in next, tbl do
			if not string.find(k, pat) then
				if type(v) == "table" then
					out[k] = copy_ignoring(v, pat)
				else
					out[k] = v
				end
			end
		end
		return out
	end

	parse = function(str, idx)
		local chr = string.sub(str, idx, idx)
		local f = char_func_map[chr]
		if f then
			return f(str, idx)
		end
		decode_error(str, idx, "Unexpected character '" .. chr .. "'")
	end

	json.encode = function(val)
		return (encode(copy_ignoring(val, "^__")))
	end

	json.decode = function(str)
		if type(str) ~= "string" then
			error("[JSON] Expected argument of type string, got " .. type(str))
		end
		if str == "" then str = "{}" end
		local res, idx = parse(str, next_char(str, 1, space_chars, true))
		idx = next_char(str, idx, space_chars, true)
		if idx <= #str then
			decode_error(str, idx, "Trailing garbage")
		end
		return res
	end
end

local playerFlashData = {}
local playerData = setmetatable({}, {
	__newindex = function(this, playerName, tbl)
		rawset(this, playerName, setmetatable(tbl, {
			__call = function(playerTable)
				local data = rawget(playerTable, "__modules")
				data[module.name] = playerTable

				system.savePlayerData(playerName, json.encode(data))
			end
		}))
	end
})

local enumIds = {
	hud = 50,
	npc = 100,
	lamp = 200,
	menu = 300,
	button = 400,
	callback = 600,
}

local bot = {
	Chef = {
		sit = { "164da72ef00" }
	},
	-- 1, 2, 7, 8, 9
	{
		name = "Alexandre",
		collection = {
			sit = { "1648bf9c24c" },
			run = { "1648be82cfb", "1648be844b2", "1648be8bc4c", "1648be8d427", "1648be8ec79" }
		},
		discrY = 2
	},
	{
		name = "Priscila",
		collection = {
			sit = { "1648c5243f6" },
			run = { "1648bf1a7e4", "1648bf1bf98", "1648bf23a2d", "1648bf1f0b5" }
		},
		axisY = 6,
		discrX = 3,
		discrY = 2
	},
	{
		name = "Anne",
		collection = {
			sit = { "1648bf9aa82" },
			run = { "1648bf54927", "1648bf56101", "1648bf578b7", "1648bf590ae", "1648bf5a88c" }
		},
		discrX = 5,
		discrY = 1
	},
	{
		name = "Denner",
		collection = {
			sit = { "1648bf99253" },
			run = { "1648bf76b85", "1648bf78417", "1648bf7ffd9", "1648bf81888", "1648bf830d9" }
		},
		discrX = 3
	},
	{
		name = "Teddy",
		collection = {
			sit = { "1648bf9f3b8" },
			run = { "1648bef20f4", "1648bef3997", "1648bef5236", "1648bf058c5", "1648bf0709f" }
		},
		discrX = -2
	},
	{
		name = "Officer Acer",
		collection = {
			sit = { "16476ec87d4" },
			run = { "16476e8e035", "16476e99faf", "16476ea5dcb", "16476ea9cd5", "16476eadce3" }
		}
	},
	{
		name = "Lilih",
		collection = {
			sit = { "16476ec6f4b" },
			run = { "16476e8c0b5", "16476e8ffca", "16476ea3d9b", "16476ea7d7e", "16476eabd43" }
		}
	},
	{
		name = "Manfred",
		collection = {
			sit = { "164c7a9f65e" },
			run = { "164c7a4cf4c", "164c7a4e73f", "164c7a500a9", "164c7a560cc", "164c7a57893" }
		},
		discrX = -3,
		discrY = 1
	},
	{
		name = "Wu",
		collection = {
			sit = { "164c8600043" },
			run = { "164c85b34f5", "164c85b4cd1", "164c85b6580", "164c85bc5d0", "164c85bddac" }
		},
		discrX = -2
	}
}

local ingredient = {
	plant = {
		[1] = {
			-- banana
			icon = "1643d9aced6",
			price = 15,
			time = 60 * 2.5,
			plant = { "16432a43a0d", "16432a456e0", "16432a51b95", "16432a53860", "16432a557a1" },
			axis = { 9, 4 },
			inCabinet = true,
			quantity = 3
		},
		[2] = {
			-- basil
			icon = "1643d9aebdb",
			price = 6,
			time = 40,
			plant = { "1641f33f046", "1641f340d3c", "1641f342a1e" },
			axis = { 16, 19 },
			inCabinet = true,
			quantity = 2
		},
		[3] = {
			-- bellpeper
			icon = "1643d9b60c9",
			price = 7,
			time = 60 * 2.2,
			plant = { "16413a88814", "164149ce4a9", "164149d0199", "164149d1e80" },
			axis = { 18, 7 },
			quantity = 3
		},
		[4] = {
			-- broccoli
			icon = "16471174217",
			price = 8,
			time = 60 * 2.4,
			plant = { "164377ded45", "164377e0e30", "164377e2b45", "164377e483b" },
			axis = { 6, 7 },
			quantity = 2
		},
		[5] = {
			-- cocoa
			icon = "16505e5069d",
			price = 6,
			time = 60 * 1.5,
			plant = { "164377e6554", "164377e8275", "164377e9f79", "164377ebc7e", "164377ed97c" },
			axis = { 22, 10 },
			inCabinet = true,
			to = 2, -- others
			smashQuantity = 4,
			quantity = 3
		},
		[6] = {
			-- mushroom
			icon = "1643d9b26ea",
			price = 5,
			time = 60,
			plant = { "16432a59913", "16432a5b5ed", "16432a5d2b5", "16432a57491" },
			axis = { 17, 16 },
			quantity = 4
		},
		[7] = {
			-- olive
			icon = "1643d9b43d9",
			price = 5,
			time = 60 * 1.1,
			plant = { "16428a56a1c", "164377ef723", "164377f1448" },
			axis = { 21, 12 },
			to = 3, -- others
			smashQuantity = 6,
			quantity = 3
		},
		[8] = {
			-- onion
			icon = "16470304775",
			price = 5,
			time = 50,
			plant = { "164248cc192", "164377f312d" },
			axis = { 17, 4 },
			quantity = 3
		},
		[9] = {
			-- oregano
			icon = "1646c94b392",
			price = 5,
			time = 50,
			plant = { "164377e6554", "164377f4ea0", "164377f6b98" },
			axis = { 6, 10 },
			inCabinet = true,
			quantity = 3
		},
		[10] = {
			-- pineapple
			icon = "1643d9b7ecb",
			price = 8,
			time = 60 * 2.2,
			plant = { "164196bdbb1", "164196bf8cb", "164199bd1e9", "164199beed8", "164199c0bc5" },
			axis = { 13, 4 },
			inCabinet = true,
			quantity = 1
		},
		[11] = {
			-- tomato
			icon = "1643d9b9ba5",
			price = 7,
			time = 60,
			plant = { "16413a88814", "16413a8a512", "16413a8c493" },
			axis = { 14, 12 },
			to = 4, -- others
			smashQuantity = 6,
			quantity = 4
		},
		[12] = {
			-- wheat
			icon = "164578d762e",
			price = 3,
			time = 30,
			plant = { "164377e6554", "164248ec9a9", "164248f1cac" },
			axis = { 5, 16 },
			isSpecial = true,
			doughQuantity = 5,
			quantity = 1
		},
	},
	meat = {
		[1] = {
			-- bacon
			icon = "16456ee6607",
			price = 2,
			axis = { 20, 12 }
		},
		[2] = {
			-- chicken
			icon = "164577f05ee",
			price = 3,
			axis = { 1, 8 }
		},
		[3] = {
			-- pepperoni
			icon = "1648f274f9d",
			price = 2,
			axis = { 15, 15 }
		}
	},
	others = {
		[1] = {
			-- cheese
			icon = "164ad8f92ed",
			price = 2,
			axis = { 13, 15 }
		},
		[2] = { 
			-- chocolate
			icon = "164aeae6d11",
			price = 3,
			axis = { 10, 14 }
		},
		[3] = {
			-- olive oil
			icon = "16456ee9fe4",
			price = 0,
			axis = { 29, 2 },
			inCabinet = true,
			isSpecial = true
		},
		[4] = { 
			-- tomato sauce
			icon = "164c422cc5d",
			price = 0,
			axis = { 25, 15 },
			inCabinet = true,
			isSpecial = true
		}
	},
	extra = {
		__icon = {
			[2] = "164a94c70f0", [6] = "164a94c88d5", [7] = "164a94ca0c1", [8] = "164a94cd052", [9] = "164a94cb87e"
		},

		-- ID of the extra plants
		2, 6, 7, 8, 9
	}
}

local enum_ingredients = {
	[1] = "plant",
	[2] = "meat",
	[3] = "others"
}

local __concatenatedIngredients = { }
do
	for cat = 1, 3 do
		local len = #__concatenatedIngredients
		for i = 1, #ingredient[enum_ingredients[cat]] do
			local ingred = ingredient[enum_ingredients[cat]][i]

			ingred.cat = cat
			ingred.id = i

			if not ingred.isSpecial then
				__concatenatedIngredients[len + i] = ingred
			end
		end
	end
end

local pizzas = {
	_state = {
		[1] = "1646c954e95",
		[-1] = "164aeabce33", -- Chocolate
		[2] = "1646c94e238",
		[-2] = "164c2b205b0", -- Chocolate
		[3] = "1646c9506c3",
		[-3] = "164c2b21fa9", -- Chocolate
		[4] = "1646c952c03",
		[-4] = "164c2b23979", -- Chocolate
		[5] = "164704c3a6b", -- Burned
		[-5] = "164c2b1ea9e", -- Chocolate

		_icon = {
			[1] = "164ae6d6b78",
			[-1] = "164aeabf914", -- Chocolate
			[2] = "164ae6f6673",
			[-2] = "164c2b42c06", -- Chocolate
			[3] = "164ae6f7e39",
			[-3] = "164c2b443db", -- Chocolate
			[4] = "164ae6f9610",
			[-4] = "164c2b45b95" -- Chocolate
		},

		_temperature = {
			[1] = "164c7d929ee",
			[2] = "164c7e2223d",
			[3] = "164c7e23a0d",
			[4] = "164c7e251e9"
		},

		_temperatureIcon = {
			[1] = "164c7febcdb",
			[2] = "164c8021924",
			[3] = "164c8023249",
			[4] = "164c8024b26"
		}
	},

	[1] = {
		-- Chicken
		ingredients = {
			meat = { { 2, 6 } },
			others = { { 1, 5 } }
		},
	},
	[2] = {
		-- Chocolate
		ingredients = {
			plant = { { 1, 5 } },
			others = { { 2, 5 } }
		},
	},
	[3] = {
		-- Margherita
		ingredients = {
			plant = { { 11, 7 }, { 2, 2 } },
			others = { { 1, 5 } }
		},
	},
	[4] = {
		-- Pepperoni
		ingredients = {
			meat = { { 3, 6 } },
			others = { { 1, 4 } }
		},
	},
	[5] = {
		-- Pineapple
		ingredients = {
			-- { id, ~quantity }
			plant = { { 10, 4 } },
			meat = { { 1, 3 } },
			others = { { 1, 4 } }
		},

	},
	[6] = {
		-- Vegetarian
		ingredients = {
			plant = { { 11, 4 }, { 4, 4 }, { 3, 4 } },
			others = { { 1, 4 } }
		},
	}
}

local objects = {
	freezer = { "164628d01f6", "164629c3ee5", "164a4713daa" },
	cabinet = { "16462a33e8b", "16462a7e5f8", "164a47154e7" },
	oven = { "1646b3c6db0", "1646fbac107" },
	garbage = { "164aa4e9510", "164aa4e7d64" },
	_handle = { "164adaa0439", "164aebac7bb" }, -- salty, sweet
	water = "1647135172c",
	salt = "164c2a4e6af",
	sugar = "164c2a1bf58"
}

local possibilityRates = {
	extraIngredients = { 1, 3, 2, 2, 1, 2, 3, 3, 1, 2 },
	pizzaTemperature = { 4, 2, 3, 3, 4, 3, 3, 2, 3, 4 },
}

local limits = {
	freezer = 6,
	cabinet = 4,
	pizzaCycle = 4 -- seconds
}

local smasherEnums = {
	[1] = 5,
	[2] = 7,
	[3] = 11
}

local animalEnums = {
	-- Tables for table.random
	[1] = { pos = 10, id = { 31 } },
	[2] = { pos = 15, id = { 23, 21, 21, 23 } },
	[3] = { pos = 20, id = { 22 } }
}

local missionAxis = {
	[1] = { 0, 50 },
	[2] = { 7, 100 },
	[3] = { 50, 55 },
	[4] = { 0, 0 },
	[5] = { 75, 0 }, 
}

local moneyPercentages = {
	[1] = .15,
	[2] = .6,
	[3] = 1
}

--[[ Utils ]]--
do
	local chatMessage = tfm.exec.chatMessage
	tfm.exec.chatMessage = function(s, player)
		chatMessage("\n<font color='#88CEBF'>[•] " .. s .. "\n", player)
	end
end

do
	local remove = table.remove
	table.remove = function(list, pos)
		local len, out = #list

		if not pos or pos == len then
			out = list[len]
			list[len] = nil
		elseif pos < len then
			local out = list[pos]
			list[pos] = nil

			for i = pos, len do
				list[i] = list[i + 1]
			end
		end
		return out
	end
end

math.clamp = function(value, min, max)
	return value < min and min or value > max and max or value
end

math.pythag = function(x1, y1, x2, y2, range)
	return (x1-x2)^2 + (y1-y2)^2 <= (range^2)
end

system.giveTitle = function(playerName)
	if module.title and playerFlashData[playerName] then
		if playerFlashData[playerName].dataLoaded and not playerData[playerName].won then
			system.giveEventGift(playerName, module.title)

			playerData[playerName].won = true

			tfm.exec.chatMessage(string.format(translation().event_concluded, team.developer[1], team.artist[1], table.concat(team.others, ", ")), playerName)
			return true
		end
	end
	return false
end

system.looping = function(f, tick)
	local s = 1000 / tick
	local t = { }

	local fooTimer = function()
		t[#t+1] = system.newTimer(f, 1000, true)
	end
	for timer = 0, 1000 - s, s do
		system.newTimer(fooTimer, 1000 + timer, false)
	end
	return t
end

string.split = function(s, p)
	local out = {}

	string.gsub(s, p, function(v)
		out[#out + 1] = v
	end)

	return out
end

table.copy = function(tbl)
	local out = { }
	for k, v in next, tbl do
		out[k] = v
	end
	return out
end

table.find = function(list, value, index, f)
	for k, v in next,list do
		local i = (type(v) == "table" and index) and v[index] or v
		if (not f and i or f(i, index)) == value then
			return true, k
		end
	end

	return false
end

table.turnTable = function(x)
	return (type(x)=="table" and x or {x})
end

table.merge = function(this, src)
	for k, v in next, src do
		if this[k] then
			if type(v) == "table" then
				this[k] = table.turnTable(this[k])
				table.merge(this[k], v)
			else				
				this[k] = this[k] or v
			end
		else
			this[k] = v
		end
	end
end

table.random = function(tbl)
	return tbl[math.random(#tbl)]
end

--[[ System ]]--
for k, v in next, translation do
	if k ~= "en" then
		table.merge(v, translation.en, true)
	end
end

local callback
do
	local callback_id = enumIds.callback

	callback = setmetatable({ }, {
		__call = function(this, eventName, x, y, w, h, d_id)
			local id = d_id or callback_id
			local action

			local self = {
				callback = eventName,
				x = x,
				y = y,
				w = w,
				h = h
			}

			self.setAction = function(self, f)
				if type(f) == "function" then
					action = f
					this[eventName] = self
					return true
				end
				return false
			end

			self.performAction = function(self, ...)
				if action then
					action(self, ...)
					return self, true
				end
				return self, false
			end

			self.remove = function(self, playerName)
				ui.removeTextArea(id, playerName)

				if not playerName then
					this[eventName] = nil
				end
				return true
			end

			ui.addTextArea(id, "<textformat leftmargin='1' rightmargin='1'><a href='event:callback." .. eventName .. "'>" .. string.rep('\n', h / 10), nil, x - 5, y - 5, w + 5, h + 5, 1, 1, 0, false)

			if not d_id then
				callback_id = callback_id + 1
			end

			return self
		end
	})
end

local npc
do
	local npcs = { }

	local npc_id = enumIds.npc

	npc = function(name, collection, layer)
		local action
		local evt
		local id = npc_id
		local img
		local state

		local self = {
			x = 0,
			y = 0,
			w = 1,
			h = 1
		}

		self.deleteCallback = function(self, playerName)
			if evt then
				evt:remove(playerName)
				return self
			end
			return self, "Callback doesn't exist."
		end

		self.destroy = function(self, super)
			if img then
				tfm.exec.removeImage(img)
				img = nil
			end

			if super then
				ui.removeTextArea(id + 1)
			end
		end

		self.getAction = function(self)
			if action then
				return action
			end
			return nil, "Action is not set."
		end

		self.getCollection = function(self)
			return collection
		end

		self.getId = function(self)
			return id
		end

		self.getLayer = function(self)
			return layer
		end

		self.getName = function(self)
			return name
		end

		self.getState = function(self)
			return state
		end

		self.removeAction = function(self)
			action = nil
			self.destroy(self)
			return self
		end

		self.removeName = function(self, playerName)
			ui.removeTextArea(id + 1, playerName)

			if not playerName then
				name = nil
			end

			return self
		end

		self.setAction = function(self, event, static)
			if type(state) == "table" then
				local oldState = state

				local curr = 0
				action = function(state)
					local i = curr % #state + 1
					if event then
						i = event(i) or i
					end

					curr = curr + 1

					self.destroy(self)
					img = tfm.exec.addImage(state[i] .. ".png", layer, self.x, self.y)

					if name then
						ui.addTextArea(id + 1, "<p align='center'><font color='#FFF426' face='Verdana'><B>" .. name, nil, self.x - (static and 20 or 0), self.y - 20, 100, 20, 1, 1, 0, false)
					end
				end

				return self
			end
			return self, "State not set or cannot have an action."
		end

		self.setCallback = function(self, eventName, event)
			if not evt then
				evt = callback(eventName, self.x, self.y, self.w, self.h, id)

				if event then
					evt:setAction(event)
				end

				return self
			end
			return self, "Callback already exists."
		end

		self.setDimension = function(self, w, h)
			self.w = w
			self.h = h

			return self
		end

		self.setPosition = function(self, x, y)
			self.x = x
			self.y = y

			return self
		end

		self.setState = function(self, newState)
			newState = collection[newState]

			if newState and state ~= newState then
				state = newState
				self.removeAction(self)

				return self
			end
			return self, "This state doesn't exist or is already running."
		end

		self.static = function(self)
			if state then
				if #state == 1 then
					self.setAction(self, function()
						self.removeAction(self)
					end, true)

					return self
				end
				return self, "State must be len:1"
			end
			return self, "State not set."
		end

		npcs[#npcs + 1] = self
		npc_id = npc_id + 2
		return self
	end

	system.looping(function()
		for k, v in next, npcs do
			local action = v:getAction()
			if action then
				action(v:getState())
			end
		end
	end, 10)
end

local lamp
do
	local lamp_id = enumIds.lamp
	lamp = function(x, y, height, luminosity)
		height = height or 70
		luminosity = luminosity or 5

		local id = lamp_id

		tfm.exec.addPhysicObject(id, x, y, {
			type = 13,
			miceCollision = true,
			groundCollision = true,
			dynamic = true,
			friction = 1.5
		})

		tfm.exec.addJoint(id, 0, id, {
			type = 3,
			point1 = x .. "," .. (y - height),
			point2 = x .. "," .. (y - height + 1)
		})

		local size = luminosity * 20
		local alpha = .1
		local foregroundLim = math.ceil(luminosity * .4)
		local scale = .75 / luminosity
		for light = 1, luminosity do
			tfm.exec.addJoint(id + light, id, id, {
				type = 0,
				point1 = x .. "," .. y,
				point2 = x .. "," .. (y + 1),
				line = size,
				alpha = alpha,
				foreground = light > foregroundLim,
				color = 0xFFFF77
			})

			size = size - 20
			alpha = alpha + scale
		end

		tfm.exec.addJoint(id + luminosity + 1, id, id, {
			type = 0,
			point1 = x .. "," .. (y - height),
			point2 = x .. "," .. y,
			line = 2,
			color = 1
		})

		lamp_id = lamp_id + luminosity + 2
	end
end

ui.menu = function(text, playerName, x, y, w, h)
	id = enumIds.menu - 8

	x = x + 6
	y = y + 6

	ui.addTextArea(0, "", playerName, -1500, -1500, 5000, 5000, 1, 1, .2, false)

	ui.addTextArea(id, "", playerName, x, y, w, h, 0x78462B, 0x78462B, 1, true)

	ui.addTextArea(id - 1, "", playerName, x, y, 20, 20, 0xBEB17D, 0xBEB17D, 1, true)
	ui.addTextArea(id - 2, "", playerName, x + w - 20, y, 20, 20, 0xBEB17D, 0xBEB17D, 1, true)
	ui.addTextArea(id - 3, "", playerName, x, y + h - 20, 20, 20, 0xBEB17D, 0xBEB17D, 1, true)
	ui.addTextArea(id - 4, "", playerName, x + w - 20, y + h - 20, 20, 20, 0xBEB17D, 0xBEB17D, 1, true)

	ui.addTextArea(id - 5, "", playerName, x, y + (h + 40) / 4, w, ((h - 40) / 2), 0x9D7043, 0x9D7043, 1, true)
	ui.addTextArea(id - 6, "", playerName, x + (w + 40) / 4, y, ((w - 40) / 2), h, 0x9D7043, 0x9D7043, 1, true)

	ui.addTextArea(id - 7, text, playerName, x + 3, y + 3, w - 6, h - 6, 0x1C3A3E, 0x0E1619, 1, true)
end
ui.removeMenu = function(playerName)
	id = enumIds.menu - 8
	for i = id - 7, id do
		ui.removeTextArea(i, playerName)
	end
	ui.removeTextArea(0, playerName)
end

ui.button = function(id, text, eventName, playerName, x, y, w, h)
	id = enumIds.button + id * 2

	ui.addTextArea(id, "", playerName, x + 1, y + 2, w, h, 1, 1, 1, true)
	ui.addTextArea(id - 1, "<p align='center'><font size='13'><a href='event:button." .. eventName .. "'>" .. text .. "\n", playerName, x, y, w, h, 0x142A2D, 0x142A2D, 1, true)
end
ui.removeButton = function(id, playerName)
	id = enumIds.button + id * 2
	for i = id - 1, id do
		ui.removeTextArea(i, playerName)
	end
end

local getStage = function(remaining, step, max)
	local stage = math.floor(remaining / step) + 1
	return math.clamp(stage, 1, max)
end

local updateFlashStorage = function(playerName)
	local out = { }
	for s = 1, 2 do
		local len = #out
		for i, d in next, playerData[playerName].storage[s] do
			local ing_id = len + i
			out[ing_id] = { }
			for f = 1, 2 do -- avoids pointer
				out[ing_id][f] = d[f]
			end
		end
	end

	playerFlashData[playerName].concatenatedStorage = out
end

local parseId = function(sId)
	local cat, id = string.match(sId, "(%d)(%d+)")
	return tonumber(cat), tonumber(id)
end

local storeIngredient = function(playerName, ing, quantity, ignoreSave)
	quantity = quantity or 1

	local bar = (ing.inCabinet and 2 or 1)

	local id = tonumber(ing.cat .. ing.id)

	local found, key = table.find(playerData[playerName].storage[bar], id, 1)
	if not found then
		if #playerData[playerName].storage[bar] >= (limits[(ing.inCabinet and "cabinet" or "freezer")]) then
			return false
		end

		playerData[playerName].storage[bar][#playerData[playerName].storage[bar] + 1] = { id, quantity }
	else
		playerData[playerName].storage[bar][key][2] = playerData[playerName].storage[bar][key][2] + quantity
	end

	updateFlashStorage(playerName)

	if not ignoreSave then
		playerData[playerName]()
	end
	return true
end

local removeIngredient = function(playerName, storage, index, quantity, ignoreSave)
	quantity = quantity or 1

	local status = 0 -- 1 = -1, 2 = delete, 0 = fail

	if playerData[playerName].storage[storage][index][2] > quantity then
		-- Works like a pointer, so - 1 is not necessary in playerFlashData
		playerData[playerName].storage[storage][index][2] = playerData[playerName].storage[storage][index][2] - quantity

		status = 1
	elseif playerData[playerName].storage[storage][index][2] == quantity then

		table.remove(playerData[playerName].storage[storage], index)

		status = 2
	end

	if not ignoreSave and status > 0 then
		playerData[playerName]()
	end

	return status
end

local transformTime = function(s)
	return string.format("%02dm%02ds", s / 60, s % 60)
end

local unsafeToNavigate = function(playerName)
	return playerFlashData[playerName].pizzaIcon > -1 or playerFlashData[playerName].usingOven
end

--[[ Variables ]]--
local chef
local customer
local doorId
local isBarnLocked = true
local ovens = { false, false }
-- Format
local picker_format = "<textformat tabstops='[10]' leftmargin='1' rightmargin='1'><a href='event:select.%d'>\n\t<J><B>x%d\n\n\n\n\n"

--[[ Interface ]]--
local market = function(playerName, update)
	if not update then
		ui.menu("<p align='center'><font size='20'><a href='event:button.market.previous'><B>←</B></a>     " .. translation().ui.market .. "     <a href='event:button.market.next'><B>→</B></a>\n", playerName, 265, 112, 270, 175)
	end

	local o = ingredient.plant[playerFlashData[playerName].marketIndex]

	ui.addTextArea(1, "", playerName, 281, 166, 70, 70, 0x142A2D, 0x142A2D, 1, true)

	if playerFlashData[playerName].marketImgId > -1 then
		tfm.exec.removeImage(playerFlashData[playerName].marketImgId)
	end
	playerFlashData[playerName].marketImgId = tfm.exec.addImage(o.icon .. ".png", "&1", 281 + o.axis[1], 166 + o.axis[2], playerName)

	ui.addTextArea(2, "<textformat tabstops='[0,0,65,75,140]'><font size='16'>" .. translation().ingredient.plant[o.id] .. "</font>\n\n<N>" .. translation().harvest.cost .. "\t:\t<V>$" .. o.price .. "\t<N>x" .. o.quantity .. "\n<N>" .. translation().harvest.h_time .. "\t:\t<V>" .. transformTime(o.time), playerName, 366, 166, 165, 70, 0x142A2D, 0x142A2D, 1, true)

	if not update then
		ui.button(1, "<VP>" .. translation().harvest.seed, "seed", playerName, 295, 261, 100, 20)
		ui.button(2, translation().ui.close, "close.market", playerName, 415, 261, 100, 20)
	end
end

local order = function(playerName)
	ui.menu("<p align='center'><font size='20'><textformat leading='-8'>" .. translation().ui.order .. "</textformat></font>\n<font color='#142A2D'>___________________</font></p><p align='left'>\n\n" .. translation().order.customer .. " : <V>" .. customer:getName() .. "</V>\n" .. translation().order.total .. " : <V>$" .. playerFlashData[playerName].order.total .. "</V>\n<font size='15'>\n" .. translation().pizza[playerData[playerName].order.pizza], playerName, 295, 60, 210, 300)

	local data = { }
	for t, l in next, playerFlashData[playerName].order.ingredients do
		for _, d in next, l do
			data[#data + 1] = { i = ingredient[t][d[1]], q = d[2] }
		end
	end

	for i = 0, 3 do
		local info = data[i + 1]

		-- Some pizzas have <4 ingredients
		if info then
			local x, y = 310 + ((i % 2) * 85), 202 + ((i > 1 and 1 or 0) * 85)
			ui.addTextArea(i + 1, "x" .. info.q, playerName, x, y, 70, 70, 0x142A2D, 0x142A2D, 1, true)

			playerFlashData[playerName].order.images[i + 1] = tfm.exec.addImage(info.i.icon .. ".png", "&1", x + info.i.axis[1], y + info.i.axis[2], playerName)
		end
	end

	for i = 0, 3 do
		local y = 210 + (i * 40)

		if i == 0 then
			-- Temperature
			playerFlashData[playerName].order.images[#playerFlashData[playerName].order.images + 1] = tfm.exec.addImage(pizzas._state._temperatureIcon[playerData[playerName].order.level] .. ".png", "&1", 480, y, playerName)
		else
			-- Ignored ingredients
			if not playerData[playerName].order.ingredients then break end

			local id = playerData[playerName].order.ingredients[i]
			if not id then break end

			local e = ingredient.extra.__icon[id]
			if not e then break end

			playerFlashData[playerName].order.images[#playerFlashData[playerName].order.images + 1] = tfm.exec.addImage(e .. ".png", "&1", 480, y, playerName)
			playerFlashData[playerName].order.images[#playerFlashData[playerName].order.images + 1] = tfm.exec.addImage("164a961ac69.png", "&2", 480, y, playerName)
		end

		ui.addTextArea(i + 5, "", playerName, 480, y, 20, 20, 0x142A2D, 0x142A2D, 1, true)
	end

	ui.button(1, "<R><B>X", "close.order", playerName, 480, 74, 20, 20)
end

local smasher = function(playerName)
	ui.menu("<p align='center'><font size='20'>" .. translation().ui.smasher, playerName, 265, 115, 260, 175)

	for i = 1, #smasherEnums do
		local x = 282 + ((i - 1) * 84)

		local o = ingredient.plant[smasherEnums[i]]
		local to = ingredient.others[o.to]

		ui.addTextArea(i, "<p align='center'><a href='event:button.smash." .. smasherEnums[i] .. "'>" .. translation().smasher.smash, playerName, x, 160, 70, 90, 0x142A2D, 0x142A2D, 1, true)
		
		local id = i * 2
		playerFlashData[playerName].smasherImgIds[id - 1] = tfm.exec.addImage(o.icon .. ".png", "&1", x + 5, 180 + o.axis[2], playerName)
		playerFlashData[playerName].smasherImgIds[id] = tfm.exec.addImage(to.icon .. ".png", "&1", x + 70 - to.axis[1] + (i == 1 and -38 or i == 2 and 8 or -4), 180 + to.axis[2] + (i == 1 and 10 or 0), playerName)
	end

	ui.button(1, translation().ui.close, "close.smasher", playerName, 284, 265, 235, 20)
end

local storage = function(type, playerName, update)
	local obj = (type == 1 and "freezer" or "cabinet")

	if not update then
		ui.menu("<p align='center'><font size='20'><a href='event:button.storage.previous." .. type .. "'><B>←</B></a>     " .. translation().ui[obj] .. "     <a href='event:button.storage.next." .. type .. "'><B>→</B></a>\n<font size='10'>( " .. #playerData[playerName].storage[type] .. " / " .. limits[obj] .. " )", playerName, 265, 120, 270, 175)
	end

	local stored = playerData[playerName].storage[type][playerFlashData[playerName].storageIndex]

	local cat, id = parseId(stored[1])

	local o = ingredient[enum_ingredients[cat]][id]

	ui.addTextArea(1, "", playerName, 281, 184, 70, 70, 0x142A2D, 0x142A2D, 1, true)

	if playerFlashData[playerName].storageImgId > -1 then
		tfm.exec.removeImage(playerFlashData[playerName].storageImgId)
	end
	playerFlashData[playerName].storageImgId = tfm.exec.addImage(o.icon .. ".png", "&1", 281 + o.axis[1], 184 + o.axis[2], playerName)

	ui.addTextArea(2, "<textformat tabstops='[0,0,65,75,140]'><font size='16'>" .. translation().ingredient[enum_ingredients[cat]][o.id] .. "</font> x" .. stored[2] .. (o.isSpecial and ("\n<U><a href='event:button.use." .. o.id .. "'>" .. translation().storage.select) or ""), playerName, 366, 184, 165, 70, 0x142A2D, 0x142A2D, 1, true)

	if not update then
		ui.button(1, translation().ui.close, "close.storage." .. type, playerName, 281, 269, 250, 20)
	end
end

local garbage = function(playerName, update)
	if not update then
		ui.menu("<p align='center'><font size='20'><a href='event:button.garbage.previous'><B>←</B></a>     " .. translation().ui.garbage .. "     <a href='event:button.garbage.next'><B>→</B></a>\n", playerName, 265, 112, 270, 175)
	end

	local stored = playerFlashData[playerName].concatenatedStorage[playerFlashData[playerName].garbageIndex]

	local cat, id = parseId(stored[1])

	local o = ingredient[enum_ingredients[cat]][id]

	ui.addTextArea(1, "", playerName, 281, 166, 70, 70, 0x142A2D, 0x142A2D, 1, true)

	if playerFlashData[playerName].garbageImgId > -1 then
		tfm.exec.removeImage(playerFlashData[playerName].garbageImgId)
	end
	playerFlashData[playerName].garbageImgId = tfm.exec.addImage(o.icon .. ".png", "&1", 281 + o.axis[1], 166 + o.axis[2], playerName)

	ui.addTextArea(2, "<textformat tabstops='[0,0,65,75,140]'><font size='16'>" .. translation().ingredient[enum_ingredients[cat]][o.id] .. "</font> x" .. stored[2] .. "\n\n<B>" .. translation().ui[(o.inCabinet and "cabinet" or "freezer")], playerName, 366, 166, 165, 70, 0x142A2D, 0x142A2D, 1, true)

	if not update then
		ui.button(1, "<VP>" .. translation().garbage, "trash", playerName, 295, 261, 100, 20)
		ui.button(2, translation().ui.close, "close.garbage", playerName, 415, 261, 100, 20)
	end
end

local displayCash = function(playerName)
	ui.addTextArea(enumIds.hud, "<font size='20' color='#FFFF00'>$" .. string.format("%5d", playerData[playerName].cash), playerName, 710, 370, 90, 30, 1, 1, 0, true)
end

local displayWheat = function(playerName)
	ui.addTextArea(enumIds.hud + 1, "<font size='20'>" .. string.format("%3d", (playerData[playerName].storage[3] - playerFlashData[playerName].selectedWheats - (playerFlashData[playerName].usedWheats and ingredient.plant[12].doughQuantity or 0))), playerName, 310, 410, nil, nil, 1, 1, 0, false)
end

local displayWheatCounter = function(playerName, x, y)
	ui.addTextArea(enumIds.hud + 2, "<CE><B>x" .. playerFlashData[playerName].selectedWheats, playerName, 5, 20, nil, nil, 1, 1, 0, true)
end

local concludeMission = function(id, playerName, image)
	playerFlashData[playerName].doughMission[id] = tfm.exec.addImage(image, "&1", 5 + missionAxis[id][1], 25 + missionAxis[id][2], playerName)
end

--[[ Functions ]]--
local allowCallback = function(callback, playerName, complement)
	local x, y = tfm.get.room.playerList[playerName].x, tfm.get.room.playerList[playerName].y

	complement = not complement and 0 or (complement / 2)

	return ((x >= (callback.x - complement) and x <= (callback.x + callback.w + complement)) and (y >= (callback.y - complement) and y <= (callback.y + callback.h + complement)))
end

local unlockDoor = function(this, playerName)
	if isBarnLocked then
		local x, y = tfm.get.room.playerList[playerName].x, tfm.get.room.playerList[playerName].y
		if x >= 1807 and x <= 1960 then
			if y >= 500 and y <= 595 then
				isBarnLocked = false

				this:remove()

				tfm.exec.removePhysicObject(1)

				tfm.exec.removeImage(doorId)

				tfm.exec.giveConsumables(playerName, 5, 5)
			end
		end
	end
end

local harvest = function(this, playerName, id)
	if tfm.get.room.playerList[playerName].x < 1000 or tfm.get.room.playerList[playerName].x > 1650 or unsafeToNavigate(playerName) then return end

	if playerData[playerName].spots[id] ~= nil then
		-- false = doesn't exist, { } = exists
		if not playerData[playerName].spots[id] then
			playerFlashData[playerName].currentSpot = id
			market(playerName)
		else
			if playerData[playerName].spots[id][2] == -1 then
				local o = ingredient.plant[playerData[playerName].spots[id][1]]

				if o.isSpecial then -- wheat only
					playerData[playerName].storage[3] = playerData[playerName].storage[3] + o.quantity
					displayWheat(playerName)
				else
					if not storeIngredient(playerName, o, o.quantity, true) then
						tfm.exec.chatMessage(string.format(translation().harvest.full, string.lower(translation().ui[(o.inCabinet and "cabinet" or "freezer")])), playerName)
						return
					end
				end
				playerData[playerName].spots[id] = false
				playerData[playerName]()

				tfm.exec.removeImage(playerFlashData[playerName].spots[id][1])

				playerFlashData[playerName].spots[id] = { tfm.exec.addImage("164431b8c1e.png", "?2", 906 + (id * 100), 600, playerName), 0 }

				tfm.exec.chatMessage(string.format(translation().harvest.harvest, translation().ingredient.plant[o.id]), playerName)

				if math.random(30) < 6 then
					tfm.exec.giveConsumables(playerName, 2330, 1)
				end
			end
		end
	end
end

local closeStorageImg = function(id, playerName) -- not the ingredient
	local s = id == 1 and "freezer" or id == 2 and "cabinet" or "garbage"

	if playerFlashData[playerName][s .. "State"] > -1 then
		tfm.exec.removeImage(playerFlashData[playerName][s .. "State"], playerName)
		playerFlashData[playerName][s .. "State"] = -1
		return true
	end
	return false
end

local a_freezer = function(this, playerName)
	if not allowCallback(this, playerName, 60) or unsafeToNavigate(playerName) then return end

	if closeStorageImg(1, playerName) then return end

	local id = #playerData[playerName].storage[1] > 0 and 3 or 2
	playerFlashData[playerName].freezerState = tfm.exec.addImage(objects.freezer[id] .. ".png", "?30", 400, 190, playerName)

	if #playerData[playerName].storage[1] > 0 then
		storage(1, playerName)
	else
		tfm.exec.chatMessage(translation().storage.empty_f, playerName)
	end
end

local a_cabinet = function(this, playerName)
	if not allowCallback(this, playerName, 150) or unsafeToNavigate(playerName) then return end

	if closeStorageImg(2, playerName) then return end

	local id = #playerData[playerName].storage[2] > 0 and 3 or 2
	playerFlashData[playerName].cabinetState = tfm.exec.addImage(objects.cabinet[id] .. ".png", "?30", 530, 180, playerName)

	if #playerData[playerName].storage[2] > 0 then
		storage(2, playerName)
	else
		tfm.exec.chatMessage(translation().storage.empty_c, playerName)
	end
end

local a_garbage = function(this, playerName)
	if not allowCallback(this, playerName, 50) or unsafeToNavigate(playerName) then return end

	if closeStorageImg(3, playerName) then return end

	if #playerFlashData[playerName].concatenatedStorage > 0 then
		playerFlashData[playerName].garbageState = tfm.exec.addImage(objects.garbage[2] .. ".png", "?30", 630, 291, playerName)
		garbage(playerName)
	else
		tfm.exec.chatMessage(translation().storage.empty_g, playerName)
	end
end

local destroyOven = function(id, playerName)
	tfm.exec.removeImage(ovens[id].img)
	tfm.exec.removeImage(ovens[id].icon)

	if playerName then
		playerFlashData[playerName].usingOven = false

		local level = ovens[id].level -- necessary to be used in the newTimer

		local pizzaId = level * (playerData[playerName].order.pizza == 2 and -1 or 1)

		local pizzaResult = tfm.exec.addImage(pizzas._state[pizzaId] .. ".png", "!30", 250, 150, playerName)

		if level == #pizzas._state then
			tfm.exec.chatMessage(translation().pizza.burned, playerName)
		else
			for _, ingred in next, playerFlashData[playerName].assembling.ingredients do
				ingred.id = tfm.exec.addImage(ingred.icon .. ".png", "!40", ingred.x - 245, ingred.y - 135, playerName)
			end
		end

		system.newTimer(function()
			tfm.exec.removeImage(pizzaResult)

			for _, ingred in next, playerFlashData[playerName].assembling.ingredients do
				tfm.exec.removeImage(ingred.id)
			end

			if level < #pizzas._state then
				playerFlashData[playerName].pizzaIcon = tfm.exec.addImage(pizzas._state._icon[pizzaId] .. ".png", "$" .. playerName, -5, -10)
				tfm.exec.chatMessage(translation().pizza.deliver, playerName)
				playerFlashData[playerName].pizzaLevel = level
			end
		end, 4000, false)
	end

	ovens[id] = false
end

local f_oven = function(this, playerName, id)
	if not allowCallback(this, playerName, 20) then return end

	id = id - 6

	if ovens[id] and ovens[id].playerName == playerName then
		destroyOven(id, playerName)
	else
		if playerFlashData[playerName].pizzaIcon > 0 then
			if not ovens[id] then
				tfm.exec.removeImage(playerFlashData[playerName].pizzaIcon)
				playerFlashData[playerName].pizzaIcon = -1

				local x = 5 + (id == 2 and 175 or 0)

				ovens[id] = {
					playerName = playerName,
					time = 0,
					level = 1,
					img = tfm.exec.addImage(objects.oven[2] .. ".png", "?30", x, 220),
					icon = tfm.exec.addImage(pizzas._state._temperature[1] .. ".png", "?31", x + 60, 200, playerName),
					x = x
				}
				playerFlashData[playerName].usingOven = true
			end
		end
	end
end

local openSmasher = function(this, playerName)
	if not allowCallback(this, playerName, 20) or unsafeToNavigate(playerName) then return end

	smasher(playerName)
end

local updateSpot = function(playerName, id)
	if not playerData[playerName] or not playerFlashData[playerName] then return end

	if playerData[playerName].spots[id] then
		local o = ingredient.plant[playerData[playerName].spots[id][1]]

		local stage = playerData[playerName].spots[id][2] == -1 and #o.plant or getStage(playerData[playerName].spots[id][2], (o.time / (#o.plant - 1)), #o.plant)

		if stage > playerFlashData[playerName].spots[id][2] then
			playerFlashData[playerName].spots[id][2] = stage

			if stage == #o.plant then
				playerData[playerName].spots[id][2] = -1
			end

			if playerFlashData[playerName].spots[id][1] then
				tfm.exec.removeImage(playerFlashData[playerName].spots[id][1])
			end

			playerFlashData[playerName].spots[id][1] = tfm.exec.addImage(o.plant[stage] .. ".png", "?2", 906 + (id * 100), 600, playerName)
		end
	end
end

local openOrder = function(this, playerName)
	order(playerName)
end

local assemblePizza = function(playerName)
	ui.addTextArea(0, "", playerName, -1500, -1500, 5000, 5000, 1, 1, 0, false)

	local id, row, cel = 1, 0, 0
	while row <= 3 do
		while cel <= 3 do
			local stored = playerFlashData[playerName].concatenatedStorage[id]
			if not stored then break end

			local cat, _id = parseId(stored[1])
			local o = ingredient[enum_ingredients[cat]][_id]


			if not o.isSpecial then
				local x, y = 10 + (cel * 88), 270 + (row * 88)
				ui.addTextArea(id, string.format(picker_format, id, stored[2]), playerName, x, y, 90, 90, 1, 1, 0, false)

				local i = id * 2
				playerFlashData[playerName].assembleImgs[i - 1] = tfm.exec.addImage("164a8feae5e.png", "!30", x, y, playerName)
				playerFlashData[playerName].assembleImgs[i] = tfm.exec.addImage(o.icon .. ".png", "!31", x + o.axis[1] + 10, y + o.axis[2] + 10, playerName)
			else -- To avoid gaps in the ingredients
				cel = cel - 1
			end

			id = id + 1

			cel = cel + 1
		end
		cel = 0

		row = row + 1
	end

	playerFlashData[playerName].assembling.open = true
	playerFlashData[playerName].assembling.ingredients = {}
	playerFlashData[playerName].assembleImgs[#playerFlashData[playerName].assembleImgs + 1] = tfm.exec.addImage(objects._handle[(playerData[playerName].order.pizza == 2 and 2 or 1)] .. ".png", "!30", 480, 270, playerName)
end

local openAssembleUI = function(this, playerName)
	if not allowCallback(this, playerName, 50) or playerFlashData[playerName].order.delivered or playerFlashData[playerName].usingOven then return end

	local sweet = playerData[playerName].order.pizza == 2

	if #playerFlashData[playerName].concatenatedStorage == 0 then
		tfm.exec.chatMessage(translation().assembling.no_ingredients, playerName)
		return
	end

	if not playerFlashData[playerName].concludedMissions then
		for mission = 1, (sweet and 4 or 5) do
			if not playerFlashData[playerName].doughMission[mission] then
				tfm.exec.chatMessage(string.format(translation().assembling.req[mission], translation().ingredient.dough[(sweet and "sugar" or "salt")]), playerName)
				return
			end
		end

		if playerFlashData[playerName].selectedWheats < ingredient.plant[12].doughQuantity then
			tfm.exec.chatMessage(string.format(translation().insufficient_wheat, ingredient.plant[12].doughQuantity), playerName)
			return
		end

		playerFlashData[playerName].concludedMissions = true
	end

	playerFlashData[playerName].assembling.open = true
	system.bindMouse(playerName, true)

	if playerFlashData[playerName].pizzaIcon > 0 then
		tfm.exec.removeImage(playerFlashData[playerName].pizzaIcon)
		playerFlashData[playerName].pizzaIcon = -1
	end

	for mission = 1, #playerFlashData[playerName].doughMission do
		if playerFlashData[playerName].doughMission[mission] > 0 then
			tfm.exec.removeImage(playerFlashData[playerName].doughMission[mission])
			playerFlashData[playerName].doughMission[mission] = -1 -- keeps completed
		end
	end
	ui.removeTextArea(enumIds.hud + 2, playerName)

	playerFlashData[playerName].selectedWheats = playerFlashData[playerName].selectedWheats - ingredient.plant[12].doughQuantity
	playerFlashData[playerName].usedWheats = true

	playerFlashData[playerName].assembling.ingredients = { }

	-- Updating the storage again avoids the abuse of ingredients
	updateFlashStorage(playerName)

	tfm.exec.chatMessage(translation().assembling.stop, playerName)
	
	assemblePizza(playerName)
end

local closeAssembleUI = function(playerName)
	playerFlashData[playerName].assembling.open = false
	system.bindMouse(playerName, false)

	for i = 0, 15 do
		ui.removeTextArea(i, playerName)
	end

	for i = 1, #playerFlashData[playerName].assembleImgs do
		tfm.exec.removeImage(playerFlashData[playerName].assembleImgs[i])
	end
	playerFlashData[playerName].assembleImgs = {}

	if #playerFlashData[playerName].assembling.ingredients > 0 then
		for i = 1, #playerFlashData[playerName].assembling.ingredients do
			tfm.exec.removeImage(playerFlashData[playerName].assembling.ingredients[i].id)
		end

		playerFlashData[playerName].pizzaIcon = tfm.exec.addImage(pizzas._state._icon[(playerData[playerName].order.pizza == 2 and -1 or 1)] .. ".png", "$" .. playerName, -5, -10)
		tfm.exec.chatMessage(translation().go_oven, playerName)
	else
		playerFlashData[playerName].usedWheats = false
		playerFlashData[playerName].selectedWheats = playerFlashData[playerName].selectedWheats + ingredient.plant[12].doughQuantity
	end

	if playerFlashData[playerName].selectedWheats > 0 then
		concludeMission(4, playerName, ingredient.plant[12].icon .. ".png")
		displayWheatCounter(playerName)
	end
	displayWheat(playerName)
end

local getWater = function(this, playerName) -- Mission 1
	if not playerFlashData[playerName].doughMission[1] then
		if not allowCallback(this, playerName, 60) then return end

		concludeMission(1, playerName, objects.water .. ".png")
	end
end

local getSalt_Sugar = function(this, playerName, id) -- Mission 3
	if not allowCallback(this, playerName, 30) then return end

	id = id - 14

	local sweet = playerData[playerName].order.pizza == 2
	if id == 1 and sweet then return end
	if id == 2 and not sweet then return end

	if not playerFlashData[playerName].doughMission[3] then
		concludeMission(3, playerName, objects[(sweet and "sugar" or "salt")] .. ".png")
	end
end

local getWheat = function(this, playerName) -- Mission 4
	if not allowCallback(this, playerName, 30) then return end

	if playerFlashData[playerName].selectedWheats < (playerData[playerName].storage[3] - (playerFlashData[playerName].usedWheats and ingredient.plant[12].doughQuantity or 0)) then
		playerFlashData[playerName].selectedWheats = playerFlashData[playerName].selectedWheats + 1
		displayWheat(playerName)

		if not playerFlashData[playerName].doughMission[4] then
			concludeMission(4, playerName, ingredient.plant[12].icon .. ".png")
		end
		displayWheatCounter(playerName)
	end
end

local animal = function(this, playerName, id)
	if not allowCallback(this, playerName) or unsafeToNavigate(playerName) then return false end

	id = id - 17
	
	if playerFlashData[playerName].animals[id] then return end

	local quantity = id + 3 -- 4, 5, 6

	if playerFlashData[playerName].doughMission[4] and playerFlashData[playerName].doughMission[4] > 0 and playerFlashData[playerName].selectedWheats >= quantity then
		playerFlashData[playerName].selectedWheats = playerFlashData[playerName].selectedWheats - quantity

		if playerFlashData[playerName].selectedWheats <= 0 then
			tfm.exec.removeImage(playerFlashData[playerName].doughMission[4])
			playerFlashData[playerName].doughMission[4] = nil
			ui.removeTextArea(enumIds.hud + 2, playerName)
		else
			displayWheatCounter(playerName)
		end

		playerData[playerName].storage[3] = playerData[playerName].storage[3] - quantity
		playerData[playerName]()

		tfm.exec.chatMessage(translation().animal, playerName)
		playerFlashData[playerName].animals[id] = { this.x, this.y, this.x + this.w, this.y + this.h, 0 }
	else
		tfm.exec.chatMessage(string.format(translation().feed, quantity), playerName)
	end
end

local closeGuide = function(playerName)
	tfm.exec.removeImage(playerFlashData[playerName].help)
	ui.removeTextArea(0, playerName)
	system.bindMouse(playerName, false)
	playerFlashData[playerName].help = false
end

local guide = function(this, playerName)
	if not allowCallback(this, playerName, 50) then return end

	ui.addTextArea(0, "", playerName, -1500, -1500, 5000, 5000, 1, 1, .6, false)
	playerFlashData[playerName].help = tfm.exec.addImage("164dd423693.png", "&3", 166, 50, playerName)
	system.bindMouse(playerName, true)
	
	system.newTimer(function()
		if playerFlashData[playerName].help then
			closeGuide(playerName)
		end
	end, 6000, false)
end

local loadBackground = function(playerName)
	-- Background
	tfm.exec.addImage("164ecfa9b47.png", "?0", 0, 0, playerName)
	-- Customer Table
	tfm.exec.addImage("164861b7b60.png", "?1", 100, 730, playerName)
	-- Objects
		-- Ovens
	tfm.exec.addImage(objects.oven[1] .. ".png", "?1", 5, 220, playerName)
	tfm.exec.addImage(objects.oven[1] .. ".png", "?1", 180, 220, playerName)
		-- Freezer
	tfm.exec.addImage(objects.freezer[1] .. ".png", "?1", 400, 190, playerName)
		-- Cabinet
	tfm.exec.addImage(objects.cabinet[1] .. ".png", "?1", 540, 180, playerName)
		-- Sink
	tfm.exec.addImage("164713b7d26.png", "?1", 528, 264, playerName)
		-- Water
	tfm.exec.addImage(objects.water .. ".png", "?2", 590, 300, playerName)
		-- Garbage
	tfm.exec.addImage(objects.garbage[1] .. ".png", "?1", 630, 291, playerName)
	-- Table
	tfm.exec.addImage("1643cdc05e7.png", "?1", 35, 505, playerName)
	-- Table objects
		-- Roller
	tfm.exec.addImage("1646fbaa04b.png", "?2", 230, 495, playerName)
		-- Wheat
	tfm.exec.addImage("164578dca71.png", "?2", 310, 445, playerName)
		-- Salt
	tfm.exec.addImage("16470265a28.png", "?2", 370, 445, playerName)
		-- Sugar
	tfm.exec.addImage("164702679b5.png", "?2", 430, 445, playerName)
		-- Smasher
	tfm.exec.addImage("164577f3fe0.png", "?2", 100, 413, playerName)
	-- Animals
		-- Cow
	tfm.exec.addImage("164479eff81.png", "?2", 1695, 675, playerName)
		-- Pig
	tfm.exec.addImage("164479eda5d.png", "?2", 1880, 710, playerName)
		-- Chicken
	tfm.exec.addImage("16447ad45b7.png", "?2", 1650, 530, playerName)
end

--[[ Main ]]--
local triggeredOnce = false
eventNewGame = function()
	if triggeredOnce then system.exit() end
	triggeredOnce = true

	tfm.exec.setGameTime(module.time)

	ui.setMapName(table.random({ team.developer[1], team.artist[1], team.developer[1], "#Pizzeria", "Lua" }))

	loadBackground()

	tfm.exec.chatMessage(translation().welcome)

	-- Loading NPC before so it doesn't delay
	local customerNpc = table.random(bot)
	for i = #customerNpc.collection.run, 1, -1 do
		tfm.exec.addImage(customerNpc.collection.run[i] .. ".png" , "_0", -3000, -3000)
	end
	tfm.exec.addImage(customerNpc.collection.sit[1] .. ".png" , "_0", -3000, -3000)

	for playerName, playerInfo in next, tfm.get.room.playerList do
		playerFlashData[playerName] = {
			dataLoaded = false,
			spots = { false, false, false, false, false, false },
			marketIndex = 1,
			marketImgId = -1,
			freezerState = -1, -- > -1 or open (img)
			cabinetState = -1, -- > -1 or open (img)
			pizzeriaForeground = -1,
			barnForeground = tfm.exec.addImage("1648034eff0.png", "!100", 1632, 319, playerName),
			order = {
				images = { },
				delivered = false,
				customerPizza = -1
			},
			concatenatedStorage = { },
			currentSpot = -1,
			smasherImgIds = { -1, -1 },
			storageIndex = 1,
			storageImgId = -1,
			garbageState = -1, --> -1 or open (img)
			garbageIndex = 1,
			garbageImgId = -1,
			assembleImgs = { },
			assembling = {
				selected = -1,
				ingredients = { },
				open = false
			},
			pizzaIcon = -1,
			callbackTimer = 0,
			doughMission = { },
			animals = { },
			animalTimer = 0,
			usingOven = false,
			selectedWheats = 0,
			usedWheats = false,
			kissed = false,
			help = false,
			pizzaLevel = 1
		}

		eventNewPlayer(playerName, true)

		system.loadPlayerData(playerName)
	end

	-- Lights
	lamp(1807, 460, 140)
	lamp(200, 620)

	-- Door
	doorId = tfm.exec.addImage("1640e7d5b26.png", "!0", 1865, 589)
	tfm.exec.addPhysicObject(1, 1905, 596, {
		type = 0,
		miceCollision = true,
		width = 80,
		height = 12,
		friction = 1
	})

	-- Callbacks
		-- Door
	callback("door", 1865, 589, 80, 12):setAction(unlockDoor)
		-- Earth (Keep this order)
	local e
	for i = 1, 6 do
		e = callback("plantation", 916 + (i * 100), 600, 90, 200)
	end
	e:setAction(harvest)
		-- Ovens
	callback("oven1", 5, 220, 171, 120):setAction(f_oven)
	callback("oven2", 180, 220, 171, 120):setAction(f_oven)
		-- Freezer
	callback("freezer", 400, 192, 94, 150):setAction(a_freezer)
		-- Cabinet
	callback("cabinet", 540, 180, 75, 75):setAction(a_cabinet)
		-- Sink & Water
	callback("water", 528, 264, 100, 75):setAction(getWater)
		-- Garbage
	callback("garbage", 630, 291, 33, 48):setAction(a_garbage)
		-- Objects
	local roller = callback("roller", 230, 495, 50, 11)
	callback("wheat", 310, 445, 49, 60):setAction(getWheat)
	callback("salt", 370, 445, 49, 60):setAction(getSalt_Sugar)
	callback("sugar", 430, 445, 49, 60):setAction(getSalt_Sugar)
	callback("smasher", 100, 413, 100, 91):setAction(openSmasher)
		-- Animals
	callback("cow", 1695, 675, 57, 90):setAction(animal)
	callback("pig", 1880, 710, 34, 55):setAction(animal)
	callback("chicken", 1650, 530, 155, 60):setAction(animal)

	-- NPC
	local chair = 45 + math.random(0, 1) * 155
	customer = npc(customerNpc.name, customerNpc.collection, "!1"):setPosition(-30, 730 - (customerNpc.axisY or 0)):setState("run")
	customer:setAction(function()
		customer.x = customer.x + 10

		if customer.x > (chair - 10) then
			customer.y = customer.y - 9 - (customerNpc.discrY or 0)
			if customer.x > (chair + 10) then
				customer.x = customer.x + 30 - (customerNpc.discrX or 0)
				customer:setState("sit"):static()

				system.newTimer(function()
					-- Shortcut for a callback in the order balloon
					customer:setPosition(customer.x + 10, customer.y - 65):setDimension(40, 38):setCallback("order", openOrder)

					-- Noob, ik
					for player, data in next, tfm.get.room.playerList do
						if not data.isDead then
							playerFlashData[player].order.customerPizza = tfm.exec.addImage("1648fa606cb.png", "!2", customer.x, customer.y, player)
						end
					end

					roller:setAction(openAssembleUI)
				end, 1000, false)
			end
		end
	end)

	chef = npc("Remy", bot.Chef, "!1"):setPosition(910, 270):setState("sit"):static():setDimension(65, 75):setCallback("help", guide)
	-- Chef emotes
	local x, y = chef.x + 55, chef.y + 20
	tfm.exec.addImage("164fc251e73.png", "!1", x, y)
	tfm.exec.addImage("164fc24df41.png", "!1", x, y + 20)
end

eventMouse = function(playerName, x, y)
	if tfm.get.room.playerList[playerName].isDead then return end

	if playerFlashData[playerName].help then
		closeGuide(playerName)
		return
	end

	if playerFlashData[playerName].assembling.selected > 0 then
		if math.pythag(x, y, 655, 435, 120) then
			x, y = x - 30, y - 30 -- image ~axis

			local stored = playerFlashData[playerName].concatenatedStorage[playerFlashData[playerName].assembling.selected]

			local cat, id = parseId(stored[1])
			local o = ingredient[enum_ingredients[cat]][id]

			playerFlashData[playerName].assembling.ingredients[#playerFlashData[playerName].assembling.ingredients + 1] = {
				id = tfm.exec.addImage(o.icon .. ".png", "!40", x, y, playerName),
				icon = o.icon,
				x = x,
				y = y,
				_cat = cat,
				_id = id,
				_s = stored[1]
			}

			stored[2] = stored[2] - 1

			if stored[2] > 0 then
				ui.updateTextArea(playerFlashData[playerName].assembling.selected, string.format(picker_format, playerFlashData[playerName].assembling.selected, stored[2]), playerName)
			else
				ui.removeTextArea(playerFlashData[playerName].assembling.selected, playerName)

				local id = playerFlashData[playerName].assembling.selected * 2
				tfm.exec.removeImage(playerFlashData[playerName].assembleImgs[id - 1])
				tfm.exec.removeImage(playerFlashData[playerName].assembleImgs[id])
			end

			playerFlashData[playerName].assembling.selected = -1
		end
	else
		tfm.exec.chatMessage(translation().assembling.select, playerName)
	end
end

eventKeyboard = function(playerName, key, d, x, y)
	if key == 3 then
		local timer = os.time() > playerFlashData[playerName].animalTimer

		for i = 1, 3 do
			local a = playerFlashData[playerName].animals[i]
			if a and (a[1] <= x and a[3] >= x and a[2] <= y and a[4] >= y) then
				if timer and math.random(1, animalEnums[i].pos) < 3 then
					playerFlashData[playerName].animalTimer = os.time() + 5000

					local cat, id = parseId(table.random(animalEnums[i].id))
					cat = enum_ingredients[cat]

					storeIngredient(playerName, ingredient[cat][id])
					tfm.exec.chatMessage(string.format(translation().animal_ingred, translation().ingredient[cat][id]), playerName)

					a[5] = a[5] + 1

					if a[5] == 6 then
						playerFlashData[playerName].animals[i] = nil
					end

					return
				else
					tfm.exec.displayParticle(3, x + math.random(-15, 10), y + math.random(-15, 10), table.random({ -.5, .5 }), table.random({ -.5, .5}), 0, 0, playerName)
				end
			end
		end
	elseif key == 32 then
		if playerFlashData[playerName].assembling.open then
			closeAssembleUI(playerName)
			return
		else
			if not playerFlashData[playerName].order.delivered and playerFlashData[playerName].pizzaIcon > 0 then
				if x > customer.x - 10 and x < (customer.x + customer.w + 10) and y > 600 then
					playerFlashData[playerName].order.delivered = true

					customer:deleteCallback(playerName)

					tfm.exec.removeImage(playerFlashData[playerName].pizzaIcon)
					playerFlashData[playerName].pizzaIcon = -1

					tfm.exec.removeImage(playerFlashData[playerName].order.customerPizza)
					playerFlashData[playerName].order.customerPizza = -1

					-- Get info
					local iter, extra_allowed, extra_not_allowed = { }, 0, 0
					for k, v in next, playerFlashData[playerName].assembling.ingredients do
						-- Check for extra ingredients
						local skip = false
						if v._cat == 1 then
							if table.find(ingredient.extra, v._id) then
								skip = true
								if playerData[playerName].order.pizza == 2 or (playerData[playerName].order.ingredients and table.find(playerData[playerName].order.ingredients, v._id)) then
									extra_not_allowed = extra_not_allowed + 1
								else
									extra_allowed = extra_allowed + 1
								end
							end
						end

						-- Inserts the ingredients in a table
						if not iter[v._s] then
							local cat = enum_ingredients[v._cat]

							local s = (ingredient[cat][v._id].inCabinet and 2 or 1)

							local success, key = table.find(playerData[playerName].storage[s], tonumber(v._s), 1)

							if not success then
								error("@" .. playerName .. " | iter~assembling.ingredients | " .. tostring(v._s))
							end

							-- quantity, storage, key
							iter[v._s] = { 1, s, key, _local = (not skip and { cat = cat, id = v._id } or nil) }
						else
							iter[v._s][1] = iter[v._s][1] + 1
						end
					end

					-- Get points
					local points = 10

					-- Temperature
					if playerFlashData[playerName].pizzaLevel ~= playerData[playerName].order.level then
						if playerFlashData[playerName].pizzaLevel > 1 and (playerFlashData[playerName].pizzaLevel == playerData[playerName].order.level + 1 or playerFlashData[playerName].pizzaLevel == playerData[playerName].order.level - 1) then
							points = points - 3
						else
							points = 0
						end
					end

					-- Quantities and removing
					local found_ingredients = 0
					local toRemove = { }
					for k, v in next, iter do
						if v._local then -- else = extra ingredient
							if pizzas[playerData[playerName].order.pizza].ingredients[v._local.cat] then
								local found, key = table.find(pizzas[playerData[playerName].order.pizza].ingredients[v._local.cat], v._local.id, 1)

								if found then
									found_ingredients = found_ingredients + 1
								
									if v[1] ~= pizzas[playerData[playerName].order.pizza].ingredients[v._local.cat][key][2] then
										-- the value can be + or - depending if it's > than the ordered
										points = points - ((pizzas[playerData[playerName].order.pizza].ingredients[v._local.cat][key][2] - v[1]) * .3)
									end
								else -- Wrong ingredient
									points = points - 1
								end
							end

							toRemove[#toRemove + 1] = { playerName, v[2], v[3], v[1], true }
						end
					end
					-- Avoid crash
					table.sort(toRemove, function(a, b) return a[3] < b[3] end)
					for i = #toRemove, 1, -1 do
						removeIngredient(table.unpack(toRemove[i]))
					end

					local ordered_ingredients = 0
					for cat, list in next, pizzas[playerData[playerName].order.pizza].ingredients do
						for _, info in next, list do
							ordered_ingredients = ordered_ingredients + 1
						end
					end

					-- Ingredients that were ordered but weren't in the pizza
					local ingred_diff = found_ingredients / ordered_ingredients * 100
					points = points - ((ordered_ingredients - found_ingredients) * (ingred_diff <= 50 and 2 or 1.5))

					playerData[playerName].storage[3] = playerData[playerName].storage[3] - ingredient.plant[12].doughQuantity
					-- Removes oil, sauce
					for i = #playerData[playerName].storage[2], 1, -1 do -- avoid crash, again
						-- oil, sauce. (no time for parse ids)
						if playerData[playerName].storage[2][i][1] == 33 or playerData[playerName].storage[2][i][1] == 34 then
							removeIngredient(playerName, 2, i, 1, true)
						end
					end

					points = points - (extra_not_allowed * .5)
					points = points + (extra_allowed * .4)

					if points < 1 then
						tfm.exec.chatMessage(translation().order.delivered[0], playerName)
					else
						local level = (points <= 7.5 and (points <= 5.5 and 1 or 2) or 3)

						local gain = playerFlashData[playerName].order.total * moneyPercentages[level] + (extra_allowed * 3)

						playerData[playerName].cash = playerData[playerName].cash + gain

						tfm.exec.chatMessage(string.format(translation().order.delivered[level], gain), playerName)

						if level > 1 then
							playerData[playerName].completions = playerData[playerName].completions + (2 ^ playerData[playerName].order.pizza)
							playerData[playerName].order = nil

							-- Titles
							local total = 0
							for i = 1, #pizzas do
								if bit32.band(2 ^ i, playerData[playerName].completions) > 0 then
									total = total + 1
								end
							end

							if total == #pizzas then
								playerData[playerName].completions = 0 -- resets
							--elseif total >= 3 then
								system.giveTitle(playerName)
							end
							tfm.exec.giveConsumables(playerName, 26, 10)
						end
					end
					playerData[playerName]()
					
					displayCash(playerName)

					-- Resets
					playerFlashData[playerName].usedWheats = false
				end
			end
		end
	end
end

local finalized = false

local event250ms
event250ms = system.looping(function()
	for player, data in next, playerData do
		for id, spot in next, data.spots do
			if spot and spot[2] > -1 then
				spot[2] = spot[2] + .25
			end
		end
	end

	if finalized then
		for i = 1, #event250ms do
			system.removeTimer(event250ms[i])
		end
	end
end, 4)

local event1000ms = system.newTimer(function()
	for player, data in next, playerData do
		for id, spot in next, data.spots do
			if spot then
				updateSpot(player, id)
			end
		end
	end

	for id, oven in next, ovens do
		if oven then
			oven.time = oven.time + 1

			if oven.time % limits.pizzaCycle == 0 then
				oven.level = oven.level + 1

				if oven.level >= #pizzas._state then
					oven.level = #pizzas._state
					updateFlashStorage(oven.playerName) -- Resets the lost ingredients
					destroyOven(id, oven.playerName)
					break
				else
					tfm.exec.removeImage(oven.icon)
					oven.icon = tfm.exec.addImage(pizzas._state._temperature[oven.level] .. ".png", "?31", oven.x + 60, 200, oven.playerName)
				end
			end
		end
	end
end, 1000, true)

eventLoop = function(elapsed, remaining)
	if elapsed < 4000 then return end

	for name, player in next, tfm.get.room.playerList do
		if not player.isDead and playerFlashData[name] then
			if player.x > 1000 and playerFlashData[name].pizzeriaForeground == -1 then
				playerFlashData[name].pizzeriaForeground = tfm.exec.addImage("16484935025.png", "!100", 0, 128, name)

			elseif player.x <= 1000 and playerFlashData[name].pizzeriaForeground ~= -1 then
				tfm.exec.removeImage(playerFlashData[name].pizzeriaForeground)
				playerFlashData[name].pizzeriaForeground = -1

			elseif (player.x < 1600 or player.x > 1960) and playerFlashData[name].barnForeground == -1 then
				playerFlashData[name].barnForeground = tfm.exec.addImage("1648034eff0.png", "!100", 1632, 319, name)

			elseif (player.x >= 1600 and player.x <= 1960) and playerFlashData[name].barnForeground ~= -1 then
				tfm.exec.removeImage(playerFlashData[name].barnForeground)
				playerFlashData[name].barnForeground = -1

			end

			if playerFlashData[name].assembling.open then
				tfm.exec.movePlayer(name, 375, 489)
			end
		end
	end

	if remaining <= 1000 and not finalized then
		finalized = true
		system.removeTimer(event1000ms)

		for player, data in next, playerData do
			data()
		end
		
		system.exit()
	end
end

eventNewPlayer = function(playerName, alivePlayer)
	if not alivePlayer then
		loadBackground(playerName)
	end

	-- Empty spots
	for e = 1, 6 do
		local id = tfm.exec.addImage("164431b8c1e.png", "?2", 906 + (e * 100), 600, playerName)

		if alivePlayer then
			-- spot, stage
			playerFlashData[playerName].spots[e] = { id, 0 }
		end
	end
end

eventPlayerDataLoaded = function(playerName, data)
	data = json.decode(data)

	playerData[playerName] = data[module.name] or {
		won = false,
		spots = { false, false, false, false, false, false },
		cash = 150,
		storage = {
			-- Freezer, Cabinet, Wheat
			[1] = { },
			[2] = { },
			[3] = 0
		},
		completions = 0,
		--[[

		spots[x] = {
			[1] = ingredient_id,
			[2] = remaining_time
		}

		order = {
			pizza = pizza_id,
			ingredients = ignored_ingredients,
			level = 0,
		}

		]]
	}
	data[module.name] = nil
	playerData[playerName].__modules = data

	playerFlashData[playerName].dataLoaded = true
	-- HUD
	displayCash(playerName)
	displayWheat(playerName)

	if not playerData[playerName].order then
		playerData[playerName].order = { }

		local pizza
		repeat -- won't crash because eventKeyboard manages completions
			pizza = math.random(#pizzas)
		until bit32.band(2 ^ pizza, playerData[playerName].completions) == 0

		playerData[playerName].order.pizza = pizza

		if math.random(20) < 9 then 
			local ignoredTotal = table.random(possibilityRates.extraIngredients)

			playerData[playerName].order.ingredients = { }
			local ingredients = { }

			for i = 1, ignoredTotal do
				local ingred
				repeat
					ingred = table.random(ingredient.extra)
				until not ingredients[ingred]
				ingredients[ingred] = i

				playerData[playerName].order.ingredients[i] = ingred
			end
		end

		playerData[playerName].order.level = table.random(possibilityRates.pizzaTemperature)
	end
	local pizza = pizzas[playerData[playerName].order.pizza]

	local total = 15
	playerFlashData[playerName].order.ingredients = table.copy(pizza.ingredients)

	for t, l in next, playerFlashData[playerName].order.ingredients do
		for _, d in next, l do
			-- [1] = id, [2] = quantity
			total = total + math.floor(((ingredient[t][d[1]].price / (ingredient[t][d[1]].quantity or 1)) * 2) * d[2])
		end
	end

	playerFlashData[playerName].order.total = total

	for i = 1, 6 do
		updateSpot(playerName, i)
	end

	updateFlashStorage(playerName)

	system.bindKeyboard(playerName, 3, true, true)
	system.bindKeyboard(playerName, 32, true, true)
end

eventTextAreaCallback = function(id, playerName, cbk, ignore)
	if tfm.get.room.playerList[playerName].isDead or not (playerFlashData[playerName] and playerFlashData[playerName].dataLoaded) then return end

	if not ignore then
		if playerFlashData[playerName].callbackTimer > os.time() then return end
		playerFlashData[playerName].callbackTimer = os.time() + 500
	end

	local c = string.split(cbk, "[^%.]+")

	if c[1] == "callback" then
		if callback[c[2]] then
			callback[c[2]]:performAction(playerName, id - enumIds.callback)
		end
	elseif c[1] == "button" then
		if c[2] == "close" then
			if c[3] == "market" then
				tfm.exec.removeImage(playerFlashData[playerName].marketImgId)
				playerFlashData[playerName].currentSpot = -1

				for i = 1, 2 do
					ui.removeTextArea(i, playerName)
					ui.removeButton(i, playerName)
				end

				ui.removeMenu(playerName)
			elseif c[3] == "order" then
				for i = 1, #playerFlashData[playerName].order.images do
					tfm.exec.removeImage(playerFlashData[playerName].order.images[i])
				end
				playerFlashData[playerName].order.images = { }

				for i = 1, 8 do
					ui.removeTextArea(i, playerName)
				end

				ui.removeButton(1, playerName)
				ui.removeMenu(playerName)
			elseif c[3] == "smasher" then
				for i = 1, #playerFlashData[playerName].smasherImgIds do
					tfm.exec.removeImage(playerFlashData[playerName].smasherImgIds[i])
				end
				playerFlashData[playerName].smasherImgIds = { }

				for i = 1, #smasherEnums do
					ui.removeTextArea(i, playerName)
				end

				ui.removeButton(1, playerName)
				ui.removeMenu(playerName)
			elseif c[3] == "storage" then
				-- Resets pagination because this variable is shared in two menus
				playerFlashData[playerName].storageIndex = 1

				closeStorageImg(tonumber(c[4]), playerName)

				tfm.exec.removeImage(playerFlashData[playerName].storageImgId)
				playerFlashData[playerName].storageImgId = -1

				for i = 1, 2 do
					ui.removeTextArea(i, playerName)
				end

				ui.removeButton(1, playerName)
				ui.removeMenu(playerName)
			elseif c[3] == "garbage" then
				closeStorageImg(3, playerName)

				tfm.exec.removeImage(playerFlashData[playerName].garbageImgId)
				playerFlashData[playerName].garbageImgId = -1

				for i = 1, 2 do
					ui.removeTextArea(i, playerName)
					ui.removeButton(i, playerName)
				end

				ui.removeMenu(playerName)
			end
		elseif c[2] == "market" then
			if c[3] == "previous" then
				playerFlashData[playerName].marketIndex = playerFlashData[playerName].marketIndex - 1
				if playerFlashData[playerName].marketIndex < 1 then
					playerFlashData[playerName].marketIndex = #ingredient.plant
				end

				market(playerName, true)
			elseif c[3] == "next" then
				playerFlashData[playerName].marketIndex = playerFlashData[playerName].marketIndex + 1
				if playerFlashData[playerName].marketIndex > #ingredient.plant then
					playerFlashData[playerName].marketIndex = 1
				end

				market(playerName, true)
			end
		elseif c[2] == "seed" then
			if playerFlashData[playerName].currentSpot > 0 then
				local o = ingredient.plant[playerFlashData[playerName].marketIndex]

				if o.price <= playerData[playerName].cash then
					playerData[playerName].cash = playerData[playerName].cash - o.price

					playerData[playerName].spots[playerFlashData[playerName].currentSpot] = {
						-- id, remaining_time
						[1] = o.id,
						[2] = 0
					}

					playerData[playerName]()

					displayCash(playerName)

					updateSpot(playerName, playerFlashData[playerName].currentSpot)
					eventTextAreaCallback(id, playerName, "button.close.market", true)
				else
					tfm.exec.chatMessage(translation().insufficient_cash, playerName)
				end
			end
		elseif c[2] == "storage" then
			c[4] = tonumber(c[4])

			if c[3] == "previous" then
				playerFlashData[playerName].storageIndex = playerFlashData[playerName].storageIndex - 1
				if playerFlashData[playerName].storageIndex < 1 then
					playerFlashData[playerName].storageIndex = #playerData[playerName].storage[c[4]]
				end

				storage(c[4], playerName, true)
			elseif c[3] == "next" then
				playerFlashData[playerName].storageIndex = playerFlashData[playerName].storageIndex + 1
				if playerFlashData[playerName].storageIndex > #playerData[playerName].storage[c[4]] then
					playerFlashData[playerName].storageIndex = 1
				end

				storage(c[4], playerName, true)
			end
		elseif c[2] == "garbage" then
			if c[3] == "previous" then
				playerFlashData[playerName].garbageIndex = playerFlashData[playerName].garbageIndex - 1
				if playerFlashData[playerName].garbageIndex < 1 then
					playerFlashData[playerName].garbageIndex = #playerFlashData[playerName].concatenatedStorage
				end

				garbage(playerName, true)
			elseif c[3] == "next" then
				playerFlashData[playerName].garbageIndex = playerFlashData[playerName].garbageIndex + 1
				if playerFlashData[playerName].garbageIndex > #playerFlashData[playerName].concatenatedStorage then
					playerFlashData[playerName].garbageIndex = 1
				end

				garbage(playerName, true)
			end
		elseif c[2] == "trash" then
			local storage = playerFlashData[playerName].garbageIndex > #playerData[playerName].storage[1] and 2 or 1

			local index = playerFlashData[playerName].garbageIndex
			if storage == 2 then
				index = index - #playerData[playerName].storage[1]
			end
			
			-- Can't throw away when you are holding it
			if playerData[playerName].storage[storage][index][1] == 33 and playerFlashData[playerName].doughMission[2] then -- has oil
				return
			end
			if playerData[playerName].storage[storage][index][1] == 34 and playerFlashData[playerName].doughMission[5] then -- has tomato sauce
				return
			end

			local rem = removeIngredient(playerName, storage, index)
			if rem == 2 then
				-- Won't work like a pointer
				table.remove(playerFlashData[playerName].concatenatedStorage, playerFlashData[playerName].garbageIndex)

				-- When it removes the ingredient, the index may be different, so needs to reset
				playerFlashData[playerName].garbageIndex = 1
			elseif rem == 1 then
				playerFlashData[playerName].concatenatedStorage[playerFlashData[playerName].garbageIndex][2] = playerFlashData[playerName].concatenatedStorage[playerFlashData[playerName].garbageIndex][2] - 1
			end

			if #playerFlashData[playerName].concatenatedStorage > 0 then
				garbage(playerName, true)
			else
				eventTextAreaCallback(nil, playerName, "button.close.garbage", true)
			end
		elseif c[2] == "smash" then
			local o = ingredient.plant[tonumber(c[3])]
			local to = ingredient.others[o.to]

			local storage = (o.inCabinet and 2 or 1)
			local success, key = table.find(playerData[playerName].storage[storage], tonumber(o.cat .. o.id), 1)

			-- Sorry for the gambiarra below. I couldn't use remove/store.
			if success and playerData[playerName].storage[storage][key][2] >= o.smashQuantity then
				local storageName = (to.inCabinet and "cabinet" or "freezer")
				local foo = (to.inCabinet and 2 or 1)
				if not table.find(playerData[playerName].storage[foo], tonumber(to.cat .. to.id), 1) and #playerData[playerName].storage[foo] >= limits[storageName] then
					return tfm.exec.chatMessage(string.format(translation().harvest.full, string.lower(translation().ui[storageName])), playerName)
				else
					removeIngredient(playerName, storage, key, o.smashQuantity)
					storeIngredient(playerName, to, 1)
					
					tfm.exec.chatMessage(string.format(translation().smasher.get, translation().ingredient.others[to.id], translation().ui[storageName]), playerName)
					
					return eventTextAreaCallback(nil, playerName, "button.close.smasher", true)
				end
			end
			tfm.exec.chatMessage(string.format(translation().smasher.not_quantity, translation().ingredient.others[to.id], o.smashQuantity, translation().ingredient.plant[o.id]), playerName)
		elseif c[2] == "use" then
			c[3] = tonumber(c[3])

			if c[3] == 3 then -- Mission 2
				if not playerFlashData[playerName].doughMission[2] then
					concludeMission(2, playerName, ingredient.others[c[3]].icon .. ".png")
				end
			elseif c[3] == 4 then -- Mission 5
				if not playerFlashData[playerName].doughMission[5] and playerData[playerName].order.pizza ~= 2 then -- not sweet
					concludeMission(5, playerName, ingredient.others[c[3]].icon .. ".png")
				end
			end

			eventTextAreaCallback(nil, playerName, "button.close.storage.2", true)
		end
	elseif c[1] == "select" then
		playerFlashData[playerName].assembling.selected = tonumber(c[2])
	end
end

eventEmotePlayed = function(playerName, emote)
	if tfm.get.room.playerList[playerName].isDead or not (playerFlashData[playerName] and playerFlashData[playerName].dataLoaded) then return end
	
	if playerFlashData[playerName].kissed then return end
	
	if emote == 3 or emote == 5 then
		local x, y = tfm.get.room.playerList[playerName].x, tfm.get.room.playerList[playerName].y
		
		if chef and x >= chef.x and x <= chef.x + chef.w and y < chef.y + chef.h then
			local foo, bar =  math.random(10), math.random(10)
			if foo == bar then
				playerFlashData[playerName].kissed = true

				playerData[playerName].cash = playerData[playerName].cash + 15
				playerData[playerName]()

				displayCash(playerName)

				for i = 1, 15 do
					local dir = math.random(0, 1) == 0 and -1 or 1
					tfm.exec.displayParticle(15, x + math.random(0, 50) * dir, y + math.random(0, 30) * dir, -dir * math.random(2, 6) / 10, -dir * math.random(3, 8) / 10, playerName)
				end
			else
				tfm.exec.displayParticle(5, x, y, -2, -2, playerName)
			end
		end
	end
end

eventPlayerLeft = function(playerName)
	if playerFlashData[playerName] and playerFlashData[playerName].dataLoaded then
		for id, oven in next, ovens do
			if oven and oven.playerName == playerName then
				destroyOven(id)
				break
			end
		end

		playerData[playerName]()
		playerData[playerName] = nil
		playerFlashData[playerName].dataLoaded = false
	end
end

for i, f in next, { "AfkDeath", "AutoShaman", "AutoTimeLeft", "DebugCommand", "MortCommand", "PhysicalConsumables" } do
	tfm.exec["disable" .. f]()
end

tfm.exec.newGame(module.map)
