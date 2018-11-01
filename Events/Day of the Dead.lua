--[[ Module Info ]]--
local module = {
	name = "hw8",
	team = {
		"Bolodefchoco#0000",
		"Albinoska#0000"
	},
	prize = {
		badge = { "badge_muertos", 2^0 },
		orb = { "orb_muertos", 2^1 }
	},
	time = 1.75 * 60,
	map = '<C><P L="2600" H="800" /><Z><S><S L="822" H="10" X="490" Y="605" T="12" P=",,.3,.2,10,,," /><S L="895" H="10" X="1650" Y="717" T="12" P=",,.3,.2,1,,," /><S L="385" H="10" X="2285" Y="765" T="12" P=",,.3,.2,12,,," /><S L="200" H="10" X="2501" Y="789" T="12" P=",,.3,.2,,,," /><S L="60" H="45" X="2250" Y="660" T="12" P=",,.7,.2,,,," /><S L="115" H="95" X="2360" Y="635" T="12" P=",,.3,.2,,,," /><S L="30" H="80" X="2390" Y="540" T="12" P=",,.3,.2,,,," /><S L="22" X="2390" H="10" Y="450" T="13" P=",,.36,.2,,,," /><S L="15" X="2390" H="10" Y="485" T="13" P=",,.3,.2,,,," /><S L="191" X="2617" H="10" Y="423" T="13" P=",,.3,.2,,,," /><S L="161" H="10" X="2280" Y="298" T="12" P=",,.3,.2,,,," /><S L="95" H="10" X="1953" Y="158" T="12" P=",,.3,.2,,,," /><S L="95" H="10" X="2044" Y="172" T="12" P=",,.3,.2,18,,," /><S L="95" H="10" X="2127" Y="215" T="12" P=",,.3,.2,36,,," /><S L="71" H="10" X="2185" Y="270" T="12" P=",,.3,.2,54,,," /><S L="67" H="10" X="1790" Y="207" T="12" P=",,.3,.2,324,,," /><S L="95" H="10" X="1862" Y="172" T="12" P=",,.3,.2,342,,," /><S L="332" H="10" X="1601" Y="226" T="12" P=",,.3,.2,,,," /><S L="229" H="10" X="1243" Y="155" T="12" P=",,.3,.2,34,,," /><S L="116" H="10" X="1093" Y="92" T="12" P=",,.3,.2,,,," /><S L="325" H="10" X="1417" Y="299" T="12" P=",,.3,.2,,,," /><S L="200" H="10" X="1202" Y="380" T="12" P=",,.3,.2,-56,,," /><S L="130" H="10" X="1663" Y="470" T="12" P=",,.3,.2,,,," /><S L="199" H="10" X="2274" Y="166" T="12" P=",,.3,.2,,,," /><S L="194" H="10" X="1053" Y="461" T="12" P=",,.3,.2,,,," /><S L="10" H="104" X="70" Y="487" T="12" P=",,.3,.2,-20,,," /><S L="10" H="40" X="53" Y="420" T="12" P=",,.3,.2,,,," /><S L="10" H="85" X="69" Y="363" T="12" P=",,,,22,,," /><S L="92" H="10" X="1079" Y="557" T="12" P=",,.3,.2,,,," /><S L="115" H="10" X="1304" Y="494" T="12" P=",,.3,.2,,,," /><S L="118" H="10" X="1455" Y="616" T="12" P=",,.3,.2,,,," /><S L="70" H="10" X="554" Y="529" T="12" P=",,.6,.2,-35,,," /><S L="156" H="10" X="653" Y="476" T="12" P=",,.3,.2,-25,,," /><S L="156" H="10" X="798" Y="423" T="12" P=",,.3,.2,-15,,," /><S L="87" H="10" X="915" Y="399" T="12" P=",,1,.2,-5,,," /><S L="20" H="53" X="949" Y="319" T="12" P=",,.7,.2,,,," /><S L="10" H="53" X="950" Y="269" T="12" P=",,.3,.2,14,,," /><S L="10" H="53" X="969" Y="222" T="12" P=",,.3,.2,29,,," /><S L="10" H="23" X="990" Y="195" T="12" P=",,.3,.2,61,,," /><S L="176" H="10" X="1081" Y="211" T="12" P=",,.6,.2,14,,," /><S Y="510" L="30" X="1480" H="60" i="-10,-60,1660d7b34f1.png" T="12" P="1,150,.3,.2,,,,25" /><S L="10" H="800" X="2596" Y="394" T="12" P=",,,,,,," /><S L="130" H="10" X="1953" Y="286" T="12" P=",,.3,.2,,,," /><S L="312" X="1048" H="10" Y="693" T="12" P=",,.3,.2,6,,," /><S L="10" X="1431" H="30" Y="237" T="12" P=",,.3,.2,30,,," /></S><D><DS Y="699" X="1729" /></D><O /><L><JR LIM2=".7854" LIM1="-.7854" P1="1480,400" M1="40" /></L></Z></C>',
	confetti_to_fix_pinata = 50,
	candies_to_finish_event = 30,
	time_to_teleport_candy = 15 * 1000,
	total_guitars_in_simon_says = 8
}

if not (tfm.get.room.uniquePlayers == 1 and tfm.get.room.playerList[module.team[1]]) and tfm.get.room.uniquePlayers < 4 then
	return system.exit()
end

--[[ Development ]]--
local translations = {
	en = {
		dialogs = {
			-- Mirabella
			[1] = "Hey there!\nMy name is Mirabella, the ghost of Halloween!\n\nThe Day of the Dead is coming soon and the party will start, but while decorating the city, the Piñata, Sesame, got its paw ripped. I mended it, but all the confetti got scattered across the city. The citizens are searching for them, could you help us?",
			[2] = "Yaaaaaaaay!!!!\nThank you very much! Sesame is feeling much better now!\n\nIt's time to prepair the sweets and the music!",
			[3] = "Oh... Hey! It's me again...\n\nI was checking if everything was okay to start the party when I noticed something terrible... SESAME IS EMPTY! THE CANDIES DISAPPEARED!\n\nYour help fixing its paw was great. I wonder if you could help us to find the candies that fell from the paw gap!?",
			[4] = "Wooooooooow!\n\nThank you very much for your help!\n\nNow we all can relax now and party with the dead!",
			-- Miguel
			[5] = "Se-Sesame's paw go-got ripped... :(\n\nPlease he-help him :(",
			[6] = "Ooooh... Dear citizen...\nI was so worried about Sesame's paw that I totally forgot about my guitar... I think I lost it!\n\nWithout it there won't be music and the festival will be ruined!\nCan you help me to find it? If so, let me show you the lyrics!",
			[7] = "Yuuupiiiii! You found it! Oh my dead mice, thank you so much!!!!\n\nNow everybody is going to listen my awesome music!"
		},
		close_dialog = "Press spacebar to close the dialog.",
		welcome = "This is the <B>Day of the Dead</B>, where the dead and the living can party together!\n\n~ ~ ~ Let's shake the bones! ~ ~ ~",
		conclusion = "Wooow! What a lovely pumpkin sweet you are! Now the ghosts can finally party and eat sugar!!!\n\nThanks to <B>Mirabella</B> for bringing the dead to our world, <B>%s</B> for coding the whole magic and <B>%s</B> to draw everything used in this awesome event!",
		failed_colors = "Don't let the ghosts scare you, pay attention to the colors and make it correct in the next time!",
	},
	ar = {
		dialogs = {
			[1] = "!مرحبًا\n!اسمي ميرابيلا، شبح الهالووين\n\nسيأتي يوم الموتى قريبا وستبدأ الحفلة، ولكن أثناء تزيين المدينة، تمزق ساق حيوان الحلوى الأليف، سيزام. لقد أصلحته، لكن كل الأوراق تبعثرت في جميع أنحاء المدينة. المواطنون يبحثون عنها، هل يمكنك مساعدتنا؟",
			[2] = "!!!!ياااااااي\n!شكرا جزيلًا! سيزام يشعر بتحسنٍ كبيرٍ الآن\n\n!حان الوقت لإعداد الحلويات و الموسيقى",
			[3] = "...أوه... أهلًا! هذه أنا من جديد\n\nكنت أتحقق مما إذا كان كل شيء على ما يرام لبدء الحفلة الى أن لاحظت شيئًا فظيعًا... إن سيزام فارغ! لقد اختفت الحلوى!\n\nمساعدتك في إصلاح ساقه كانت رائعة. أتساءل إذا كان بإمكانك مساعدتنا في العثور على الحلوى التي سقطت من فجوة ساقه!؟",
			[4] = "!واااااااو\n\n!شكرًا جزيلًا لمساعدتك\n\n!يمكننا الاسترخاء الآن و الاحتفال مع الموتى",
			[5] = "): ...لقد تمزق ساق سـ-سيزام\n\n:( سـ-ساعده أرجوك",
			[6] = "...أوه... عزيزي المواطن\n!كنت قلقًا جدًا على ساق سيزام حتى أنني نسيت تمامًا أمر غيثاري... أعتقد أنني فقدته\n\n!بدونه لن تكون هناك موسيقى وسيدمر المهرجان\n!هل يمكنك مساعدتي في العثور عليه؟ إذا كان الأمر كذلك، دعني أريك كلمات الأغاني",
			[7] = "!!!!يييوووووووبييي! لقد وجدته! يا فئراني الميّتة، شكرًا جزيلا لك\n\n!الآن سيستمع الجميع إلى موسيقتى الرائعة"
		},
		close_dialog = ".اضغط زر المسافة لإغلاق مربع الحوار",
		welcome = "!أين يمكن للموتى و الأحياء الاحتفال معًا ،<B>يوم الموتى</B> هذا هو \n\n~ ~ ~ !دعونا نهز العظام ~ ~ ~",
		conclusion = "!!!واااو! يا لك من يقطينٍ حلوِ المذاق! الآن يمكن للأشباح أخيرًا الاحتفال و أكل السكر\n\nلجلب الموتى لعالمنا <B>لميرابيلا</B> شكرًا\n لبرمجة السحر كله <B>%s</B>\n ! لرسم كل شيء لهذا الحدث الرائع <B>%s</B> و",
		failed_colors = "!لا تدع أشباح تخيفك، وانتبه جيّدًا إلى الألوان و اجعلها صحيحة في المرة القادمة",
	},
	br = {
		dialogs = {
			[1] = "Oi pessoal!\nMeu nome é Mirabella, a fantasma do Halloween!\n\nO Dia dos Mortos está chegando e a festa vai começar, mas enquanto a cidade estava sendo decorada, a pinhata Sesame teve parte da sua pata rasgada. Eu a costurei, mas todas as fitas coloridas ficaram espalhadas pela cidade. Os cidadãos estão procurando por elas, você poderia ajudá-los?", 
			[2] = "Obaaaaaaaaa!!!!\nMuito obrigado! O Sesame está se sentindo muito melhor agora!\n\nÉ hora de preparer os doces e a música!",
			[3] = "Ah... Oi! Sou eu de novo...\n\nEu estava checando se estava tudo certo para começar a festa quando notei algo terrível... O SESAME ESTÁ VAZIO! OS DOCES SUMIRAM!\n\nSua ajuda consertando a pata dele foi incrível. Será que você poderia nos ajudar a achar os doces que caíram da pata do Sesame!?",
			[4] = "Uoooooou!\n\nMais uma vez, muito obrigada pela sua ajuda!\n\nAgora todos nós podemos relaxar e festejar com os mortos!",
			[5] = "A pa-pata do Se-Sesame ra-rasgou... :(\n\nPo-por favor, ajude-o :(",
			[6] = "Aaaah... Querido cidadão...\nEu estava tão preocupado com a pata do Sesame que eu esqueci totalmente do meu violão... Acho que o perdi!\n\nSem eles, não haverá música e o festival estará arruinado!\nVocê pode me ajudar a encontrá-lo? Caso sim, deixe-me mostrar a canção!",
			[7] = "Yuuuupiiii! Você encontrou! Oh meu ratinho, muito obrigado!!!!\n\nAgora todo mundo vai escutar minha ótima música!"
		},
		close_dialog = "Aperte a barra de espaço para fechar.",
		welcome = "Este é o <B>Dia de Los Muertos</B>,onde os mortos e os vivos festejam juntos!\n\n~ ~ ~ Vamos mexer o esqueleto! ~ ~ ~",
		conclusion = "Wooow! Você é um docinho! Agora os fantasmas podem finalmente festejar e comer muuuito açúcar!!!\n\nObrigado a <B>Mirabella</B> por trazer os mortos ao nosso mundo, <B>%s</B> por codificar toda a mágina e <B>%s</B> por desenhar tudo neste incrível evento!",
		failed_colors = "Não deixem os fantasmas te assustar, preste atenção nas cores e faça a ordem corretamente na próxima vez!",
	},
	cn = {
		dialogs = {
			[1] = "嘿嘿嘿!\ n我是米拉贝拉, 一只万圣节的鬼怪!\ n \ n派对将在死亡之日来临的时间开始, 可是在布置城市的时候, 一个叫胡麻的皮纳塔, 手部不小心被拉断了。 我修补好他, 但是五彩纸屑却吹散满布整个城市了。 其他市民都在寻找收集纸屑, 你会帮忙吗?",
			[2] = "好~~~~好棒!!!!\n谢谢你的帮忙! 胡麻现在好多了!\n\n那现在是时候准备糖果和音乐了!",
			[3] = "噢... 你好! 又是我了...\n\n我刚刚在检查东西是不是都准备好开始派对的时候, 发现了可怕的事实... 胡麻的身体被掏空了! 糖果消失了!\n\n你帮胡麻修补的伤口不错。你可以再帮我找回从他手上的伤口丢失的糖果吗!?",
			[4] = "哇哇哇哇!\n\n真的好感谢你!\n\n我们现在终于可以放松, 跟死人狂欢派对了",
			[5] = "胡 胡麻的手掌断 断了... :(\n\n请帮 帮帮他 :(",
			[6] = "噢... 亲爱的市民...\n我好担心胡麻的手掌, 甚至忘掉了自己的吉他... 它应该是不見了!\n\n没有吉他就没有音乐了, 庆典也会要取消了!\n你可以帮我找找吗? 如果可以, 我给你歌词看看!",
			[7] = "啊啊啊! 你找回它了! 我可爱的死老鼠, 真的谢谢了!!!!\n\n现在所有人都可以听到我酷死的音乐了!"
		},
		close_dialog = "按空格键关闭对话框。",
		welcome = "这是 <B>死亡之日</B>, 是亡者跟在生的人可以一起派对的日子!\n\n~ ~ ~ 一起舞动骨头吧! ~ ~ ~",
		conclusion = "哇啊! 你这南瓜真的可爱死了! 现在鬼怪终于可以举行派对和吃糖果了!!!\n\n感谢 <B>米拉贝拉</B> 带亡者到我们的世界, <B>%s</B> 为魔法编码以及 <B>%s</B> 为这神奇活动绘图!",
		failed_colors = "不要让那些鬼怪吓坏你, 留意颜色在下一次修正吧!",
	},
	ee = {
		dialogs = {
			[1] = "Tere seal!\nMinu nimi on Mirabella, Halloweeni kummitus!\n\nSurnute päev tuuleb varsti ja pidu algab, aga linna kaunistamise ajal, Piñata, Sesame, tuli jalg ära. Ma lappisin seda, aga kõik konfetti langes linna peale laiali. Linnlased otsivad neid, kas sa aitaksid meid?",
			[2] = "Jeeeeeeee!!!!\nSuur aitäh! Sesame tunneb ennast palju paremini nüüd!\n\nOn aeg valmis panna maiustused ja muusika!",
			[3] = "Oh... Hei! See olen mina jälle...\n\nMa käisin kontrollimas, et kas kõik on peoks valmis, kui ma nägin midagi kohutavat... SESAME ON TÜHI! KOMMID ON KADUNUD!\n\nSinu jala parandamise abi oli tore. Ma siin mõtlesin, et kas sa aitaksid meil kommid üles otsida, mis kukkusid jala august välja!?",
			[4] = "Vauuuuuuuuuuu!\n\nSuur aitäh sinu abi eest!\n\nNüüd me saame lõõgastuda ja pidutseda surnutega!",
			[5] = "Se-Sesame jalg on ära tulnud... :(\n\nPalun a-aita teda :(",
			[6] = "Ooooh... Kallid kodanukud...\nMa olin nii mures Sesame käpa pärast, et ma sootuks unustasin oma kitarri... Ma arvan, et ma kaotasin selle!\n\nIlma selleta ei ole muusikat ja festival on rikutud!\nKas sa aitaksid mul seda leida? Kui nii siis las ma näitan sulle laulusõnu!",
			[7] = "Jeeeeeee! Sa leidsid selle! Oh mu surnud hiired, suur aitäh sulle!!!!\n\nNüüd kõik saavad kuulata mu lahedat muusikat!"
		},
		close_dialog = "Vajuta tühikut, et sulgeda dialoog.",
		welcome = "See on <B>Surnute Päev</B>, kus surnud ja elavad pidutsevad koos!\n\n~ ~ ~ Las väristagu konte! ~ ~ ~",
		conclusion = "Wooow! Kui armas kõrvitsakene sa oled! Viimaks nüüd saavad kummitused pidutseda ja süüa magusat!!!\n\nTänu <B>Mirabellale</B>, et ta tõi surnud siia ilma, <B>%s</B> selle maagia kodeerimise eest ja <B>%s</B> kes joonistas kõik mis siin sündmuses on!",
		failed_colors = "Ära lase kummitustel sind ehmatada, pööra tähelepanu värvidele ja tee see õigesti järgmine kord!",
	},
	es = {
		dialogs = {
			[1] = "¡Hola!\nMi nombre es Mirabella, ¡el fantasma de Halloween!\n\nEl Día de Muertos se está acercando y la fiesta va a comenzar, pero mientras decoraba la ciudad, la Piñata, Sesame, se rompió la pata. Se la he arreglado, pero el confeti ha quedado esparcido por toda la ciudad. Los ciudadanos están recogiéndolo, ¿nos podrías ayudar?",
			[2] = "Hurraaaa!!!!\n¡Muchas gracias! ¡Sesame ahora se siente mucho mejor!\n\n¡Es hora de preparar los caramelos y la música!",
			[3] = "Oh... ¡Hola! Soy yo otra vez...\n\nEstaba asegurándome de que todo estuviera bien para comenzar la fiesta cuando me di cuenta de algo terrible... ¡SESAME ESTÁ VACÍA! ¡LOS CARAMELOS HAN DESAPARECIDO!\n\nHas hecho un buen trabajo arreglándole la pata. ¿¡Me pregunto si podrías ayudarnos a encontrar los caramelos que se cayeron por el agujero de la pata!?",
			[4] = "¡Guaaaaaaaau!\n\n¡Muchas gracias por tu ayuda!\n\n¡Ahora podemos relajarnos y divertirnos con los muertos!",
			[5] = "La-la pata de Se-Sesame se ha ro-roto... :(\n\nPor favor, a-ayúdale :(",
			[6] = "Ooooh... Querido ciudadano...\nEstaba tan preocupado por la pata de Sesame que me olvidé de mi guitarra... ¡Creo que la he perdido!\n\n¡Sin ella no habrá música y el festival estará arruinado!\n¿Puedes ayudarme a encontrarla? En tal caso, ¡déjame enseñarte la letra!",
			[7] = "¡Yuuupiiiii! ¡La has encontrado! Oh mis difuntos ratones, ¡¡¡¡muchas gracias!!!!\n\n¡Ahora todo el mundo va a escuchar mi fantástica música!"
		},
		close_dialog = "Presiona el espacio para cerrar el diálogo.",
		welcome = "¡Este es el <B>Día de Muertos</B>, en el que los muertos y los vivos pueden divertirse juntos!\n\n~ ~ ~ ¡Vamos a sacudir los huesos! ~ ~ ~",
		conclusion = "¡Guaaau! ¡Qué calabaza tan dulce y bonita eres! ¡¡¡Por fin los fantasmas pueden divertirse y comer azúcar!!!\n\n¡Gracias a <B>Mirabella</B> por traer a los muertos a nuestro mundo, a <B>%s</B> por programar toda la magia y a <B>%s</B> por dibujar todo en este maravilloso evento!",
		failed_colors = "¡No dejes que los fantasmas te asusten, presta atención a los colores y hazlo correctamente la próxima vez!",
	},
	fr = {
		dialogs = {
			[1] = "Salut toi !\nMon nom est Mirabella, le fantôme de Halloween !\n\nLe Jour de la Mort arrive bientôt et la fête va pouvoir commencer. Mais tandis qu'on décorait la ville, la Piñata, Sésame, a eu ses jambes déchirées. Je l'ai réparée, mais tous les confettis se sont dispersés à travers la ville. Les citoyens les cherchent partout... pourrais-tu nous aider ?",
			[2] = "Yeeeeaaaaay !!!!\nMerci infiniment ! Sésame a l'air d'aller beaucoup mieux maintenant !\n\nC'est l'heure de préparer les gourmandises et la musique !",
			[3] = "Oh... Salut ! C'est encore moi...\n\nJ'étais en train de vérifier que tout était bon pour démarrer la fête lorsque j'ai appris quelque chose d'horrible... SÉSAME A ÉTÉ RETROUVÉE VIDE ! LES BONBONS ONT DISPARU !\n\nMerci pour m'avoir aidée à réparer ses jambes. C'était vraiment top ! En fait, je me demandais si tu pourrais nous aider à retrouver les bonbons qui sont tombés de la brèche d'une de ses jambes...?",
			[4] = "Wooow !\n\nMerci beaucoup pour ton aide !\n\nMaintenant on va pouvoir se détendre et faire la fête avec la Mort !",
			[5] = "La jam-jambe de Sésame... s'est déchirée... :(\n\nS'il te plait... aide-la... :(",
			[6] = "Ooooh... Cher citoyen...\nJ'étais tellement inquiet pour les pattes de Sésame que j'ai totalement oublié ma guitare... Je pense l'avoir perdue !\n\nSans celle-ci, il ne pourra pas y avoir de musique et le festival sera ruiné !\nPeux-tu m'aider à la retrouver ? Si c'est le cas, laisse-moi te montrer les paroles !",
			[7] = "Youupiiiii ! Tu l'as trouvée ! Oh merciiii, ma chère souris morte !!!!\n\nMaintenant tout le monde va pouvoir écouter ma superbe musique !"
		},
		close_dialog = "Appuyez sur espace pour fermer le dialogue",
		welcome = "Voici le <B>Jour de la Mort</B>, où les morts et les vivants peuvent faire la fête ensemble !\n\n~ ~ ~ Allez, on se remue les os ! ~ ~ ~",
		conclusion = "Wooow ! Quelle merveilleuse citrouille tu peux être ! Maintenant, les fantômes peuvent enfin faire la fête et manger des tonnes de sucreries !!!\n\nMerci à <B>Mirabella</B> pour avoir amené les morts dans notre monde, <B>%s</B> pour avoir codé toute cette magie et <B>%s</B> pour tout avoir dessiné dans cet extraordinaire événement !",
		failed_colors = "Ne laisse pas les fantômes t'effrayer, fais attention aux couleurs et corrige-les pour la prochaine fois !",
	},
	he = {
		dialogs = {
			[1] = "שלום לכם!\nשמי הוא Mirabella, הרוח של ליל כל הקדושים!\n\nיום המתים מגיע בקרוב ואז המסיבה תתחיל, אבל בזמן קישוטי העיר, לפיניאטה, Sesame, נקרעה הרגל. תיקנתי אותה, אבל כל הקונפטי התפזר ברחבי העיר. האזרחים מחפשים עבורם, תוכלו לעזור לנו?",
			[2] = "יששששששש!!!!\nתודה רבה לכם! Sesame מרגיש הרבה יותר טוב עכשיו!\n\nהגיע הזמן לתקן את הממתקים ואת המוזיקה!",
			[3] = "אה... שלום! זאת אני שוב...\n\nאני בדקתי אם הכל היה בסדר כדי שנוכל להתחיל את המסיבה ואז שמתי לב למשהו נורא... SESAME ריק! כל הממתקים נעלמו!\n\nעזרתכם בתיקון הרגל שלו הייתה נהדרת. אני תוהה אם תוכלו לעזור בלמצוא את הממתקים שנפלו מהחור ברגל שלו!?",
			[4] = "וואאאאאאוווווווו!\n\nתודה רבה מאוד על עזרתכם!\n\nעכשיו כולנו יכולים להירגע וחגוג עם המתים!",
			[5] = "ה-הרגל של Se-Sesame's נ-נקרעה... :(\n\nבבקשה ע-עזרו לו :(",
			[6] = "הוווו... אזרחים יקרים...\nכל כך דאגתי לכף הרגל של Sesame ששכחתי לגמרי מהגיטרה שלי... אני חושב שאיבדתי אותה!\n\nבלעדיה לא תהיה מוזיקה והפסטיבל יהרס!\nאתם יכולים לעזור לי למצוא אותה? אם כך, תנו לי להראות לכם את המילים!",
			[7] = "יייפפפיייייי! מצאתם אותה! אוי עכבריי המתים, תודה רבה לכם!!!!\n\nעכשיו כולם יקשיבו למוזיקה המדהימה שלי!"
		},
		close_dialog = "לחצו על מקש הרווח כדי לסגור את דו השיח.",
		welcome = "זהו <B>יום המתים</B>, היכן שחיים והמתים יכולים לחגוג ביחד!\n\n~ ~ ~ בואו נענע את העצמות! ~ ~ ~",
		conclusion = "ווואו! איזו דלעת מתוקה אתה! עכשיו הרוחות יכול סוף סוף לחגוג ולאכול סוכר!!!\n\nבזכות <B>Mirabella</B> שהביאה את המתים לעולמנו, <B>%s</B> בשביל הקסם וקידוד <B>%s</B> בשביל הציורים לאיוונט המדהים הזה!",
		failed_colors = "אל תתנו לרוחות להפחיד אתכם, שימו לב לצבעים ועשו זאת נכונה בפעם הבאה!",
	},
	hu = {
		dialogs = {
			[1] = "Hellóka!\nMirabella vagyok, a Halloween szelleme!\n\nHamarosan itt a Halottak Napja és kezdődni fog a parti is. Sajnos a város dekorálása közben a Piñata, Sesame, mancsát valaki leszakította. Visszaraktam, de a konfetti lejött róla és szétszóródott a városban. A városlakók már elkezdték keresni a darabokat, tudnál segíteni te is nekünk?",
			[2] = "Yaaaaaaaay!!!!\nNagyon szépen köszönöm! Sesame már sokkal jobban érzi magát!\n\nIdeje előkészíteni az édességeket és a zenét!",
			[3] = "Oh... Helló! Én vagyok az újból...\n\nÉpp a végső ellenőrzést végeztem a buli kezdete előtt, és észrevettem valami szörnyűséget... SESAME ÜRES! ELTŰNTEK A CUKORKÁK!\n\nNagyon sokat segítettél a mancsa megjavításával. Arra gondoltam, hogy nem-e tudnál segíteni nekünk a cukorkák megkeresésével is kérlek?",
			[4] = "Wooooooooow!\n\nKöszi a segítséget!\n\nMost már mindenki nyugodt és partizhatunk egy jót a halottakkal!",
			[5] = "Se-Sesame mancsát leszakították... :(\n\nKérlek se-segíts neki :(",
			[6] = "Ooooh... Tisztelt városlakó...\nAnnyira aggódtam Sesame mancsa miatt, hogy teljesen megfeledkeztem a gitáromról... Nem tudom, hova raktam!\n\nAnélkül nem lesz zene, és tönkremegy a fesztivál!\nSegítenél megkeresni? Ha igen, hadd mutassam meg a dalszöveget is!",
			[7] = "Yuuupiiiii! Megtaláltad! Oh édes halott egér, nagyon köszönöm!!!!\n\nMost mindenki meghallgathatja a haláli jó zenéimet!"
		},
		close_dialog = "Nyomd meg a szóközt a párbeszédablak bezárásához.",
		welcome = "Itt van a <B>Halottak Napja</B>, ahol minden élő és halott együtt partizhat!\n\n~ ~ ~ Készítsétek a csontjaitokat! ~ ~ ~",
		conclusion = "Wooow! Milyen kis édes cukorfalat egér vagy te! Most a szellemek végre bulizhatnak és cukrot ehetnek!!!\n\nKöszönet <B>Mirabellá</B>nak, hogy a halottakat meghívta a mi világunkba, <B>%s</B>nak a kódért és <B>%s</B> egérnek a sok-sok csodás rajzért az eventhez!",
		failed_colors = "Ne ijedj meg a szellemektől, figyelj jobban a színekre és legközelebb sikerülni fog!",
	},
	lv = {
		dialogs = {
			[1] = "Sveiks šeit!\nMans vārds ir Mirabella, Helovīnu spoks!\n\nMirušo diena nāk drīzumā un ballīte sāksies, bet kamēr dekorējot pilsētu, Piñata, Sezame, saplēsa tās kāju. Es to nomainīju, bet visi konfeti tikai izkaisīti pa visu pilsētu. Pilsoņi to meklē, vai tu varētu palīdzēt mums?",
			[2] = "Urrāāāāāāāā!!!!\nLiels paldies tev! Sezame tagad jūtas daudz labāk!\n\nTagad ir laiks sagatavot saldumus un mūziku!",
			[3] = "Ak... Hei! Tas atkal esmu es...\n\nEs pārbaudīju vai viss ir kārtībā, lai sāktu ballīti, līdz kamēr es ievēroju kaut ko briesmīgu... SEZAME IR TUKŠS! SALDUMI IR PAZUDUŠI!\n\nTava palīdzība, lai salabotu tās kāju bija lieliska. Es domāju, vai tu varētu palīdzēt mums atrast saldumus, kas izkrita no kājas spraugas!?",
			[4] = "Vaaaaaaaaaaaaau!\n\nLiels paldies par tavu palīdzību!\n\nTagad mēs visi varam relaksēties un ballēties ar mirušajiem!",
			[5] = "Se-Sezames kāja ti-tika saplēsta... :(\n\nLūdzu pa-palīdzi viņam :(",
			[6] = "Aaaaak... Mīļais pilsoni...\nEs biju uztrauksies par Sezames ķepu ka es pavisam aizmirsu par savu ģitāru... Man šķiet es to pazaudēju!\n\nBez tās šeit nebūs mūzika un festivāls būs izbojāts!\nVai tu vari palīdzēt man to atrast? Ja vari, tad atļauj man tev parādīt lirikas!",
			[7] = "Juuupīīīī! Tu atradi to! Ak manam mirušās peles, liels tev paldies!!!!\n\nTagad visi klausīsies manu satriecošo mūziku!"
		},
		close_dialog = "Nospiediet atstarpi lai aizvērtu dialogu.",
		welcome = "Šī ir <B>Mirušo diena/B>, kur mirušie un dzīvie var ballēties kopā!\n\n~ ~ ~ Kratīsim savus kaulus! ~ ~ ~",
		conclusion = "Vaaau! Kas par mīļu ķirbju saldumu tu esi! Tagad spoki var beidzot ballēties un ēst cukuru!!!\n\nPaldies <B>Mirabellai</B> par mirušo atgriešanu mūsu pasaulē, <B>%s</B> par visas maģijas izkodēšanu <B>%s</B> lai uzzīmētu šo visu priekš šī satriecošā notikuma!",
		failed_colors = "Neļaujiet spokiem jūs nobiedēt, pievērsiet uzmanību krāsām un izdariet to pareizi nākošreiz!",
	},
	pl = {
		dialogs = {
			[1] = "Witaj!\nNazywam się Mirabella, duch Halloween!\n\nŚwięto Zmarłych nadchodzi, a wraz z nim wielkie przyjęcie, lecz podczas dekorowania miasta, Piñacie, Sezamkowi, rozerwała się łapka. Udało mi się ją zaszyć, ale bibuła jest porozrzucana po całym mieście. Nasi mieszkańcy próbują wszystko zebrać, ale potrzebujemy pomocy!",
			[2] = "Jeeeeeeeeej!!!!\nBardzo tobie dziękuję! Sazamek czuje się znacznie lepiej!\n\nTo jest czas, aby przygotować słodkości i muzykę!",
			[3] = "Oh... Cześć! To znowu ja...\n\nSprawdzałam czy wszystko jest gotowe, aby móc rozpocząć przyjęcie, kiedy zauważyłam coś bardzo strasznego... SEZAMEK JEST PUSTY! WSZYSTKIE CUKIERKI ZNIKNĘŁY!\n\nTwoja pomoc z naprawieniem łapki była bardzo potrzebna. Zastanawiam się czy mógłbyś pomóc nam odnaleźć wszystkie cukierki, które wypadły z dziury w nodze!?",
			[4] = "Wooooooooow!\n\nBardzo tobie dziękuję za pomoc!\n\nTeraz wszyscy możemy się wyluzować i bawić się z umarłymi!",
			[5] = "Łapka Se-Sezamka rozerwała się... :(\n\nProszę pomóż mu :(",
			[6] = "Ooooh... Drogi mieszkańcu...\nTak bardzo byłem zmartwiony o nóżkę Sezamka, że zapomniałem o mojej gitarze... Wydaje mi się, że ją zgubiłem!\n\nBez niej zabraknie muzyki, i całe przyjęcie pójdzie na marne!\nCzy możesz mi pomóc ją odnaleźć? Jeżeli tak, to pokażę tobie tekst piosenki!",
			[7] = "Juuupiiiii! Odnalazłeś ją! Oh moja nieżyjąca myszko, bardzo tobie dziękuję!!!!\n\nW końcu teraz wszyscy usłyszą moją wspaniałą muzykę!"
		},
		close_dialog = "Kliknij spację, aby przewinąć dialog.",
		welcome = "Dzisiaj jest <B>Święto Zmarłych</B>, podczas którego wszyscy zmarli oraz żyjący mogą razem się bawić!\n\n~ ~ ~ Czas rozruszać kości! ~ ~ ~",
		conclusion = "Wooow! Ale ty jesteś kochaną myszką! W końcu duchy i żyjący mogą razem się bawić i zjeść słodkości!!!\n\nPodziękowania dla <B>Mirabelli</B> za przywrócenie zmarłych do naszego świata, <B>%s</B> za zaprogramowanie całej magii i <B>%s</B> za namalowanie wszystkiego na tym wspaniałym evencie!",
		failed_colors = "Nie pozwól, aby duchy przestraszyły się ciebie, zwróć uwagę na kolory i postępuj rozważniej następnym razem!",
	},
	ro = {
		dialogs = {
			[1] = "Bună!\nNumele meu este Mirabella, fantoma Halloweenului!\n\nZiua Morților sosește și petrecerea va începe, doar că în timp ce decoram orașul, Piñata noastră, Sesame, și-a rupt piciorul . I l-am reparat, doar că toate confettile s-au împrăștiat peste tot în oraș. Locuitorii le caută și ei, ne puteți ajuta și voi??",
			[2] = "Yaaaaaaaay!!!!\nMulțumesc foarte mult! Sesame se simte mult mai bine acum!\n\nEste timpul să pregătim dulciurile și muzica!",
			[3] = "Oh... Hey! Tot eu sunt...\n\nVerificam dacă totul este în regulă înainte de a începe petrecerea și am descoperit ceva teribil... SESAME E GOL! BOMBOANELE AU DISPĂRUT!\n\nAjutorul oferit pentru repararea piciorului lui a fost grozav. Mă întrebam dacă ne-ați putea ajuta să găsim dulciurile care au căzut în timp ce lăbuța lui era ruptă!?",
			[4] = "Wooooooooow!\n\nMulțumesc foarte mult pentru ajutorul oferit!\n\nAcum ne putem relaxa cu toții și să petrecem alături de cei morți!",
			[5] = "Piciorul lui Se-Sesame a fo-fost rupt... :(\n\nTe rog a-ajută-l :(",
			[6] = "Ooooh... Dragi cetățeni...\nAm fost atât de îngrijorată în legătură cu lăbuța lui Sesame încât am uitat cu totul de chitara mea... Cred că am pierdut-o!\n\nFără ea, nu vom avea muzică iar festivalul va fi complet ruinat!\nMă puteți ajuta s-o găsesc? Dacă da, lăsați-mă să vă cânt versurile după!",
			[7] = "Yuuupiiiii! Ați găsit-o! Oh șoriceii mei morți, vă mulțumesc foarte mult!!!!\n\nAcum toată lumea îmi va putea asculta cântecul!"
		},
		close_dialog = "Apasă Space pentru a închide dialogul.",
		welcome = "Astăzi este <B>Ziua Morților</B>, ziua în care morții și cei vii pot petrece împreună!\n\n~ ~ ~ Să ne scuturăm oasele! ~ ~ ~",
		conclusion = "Wooow! Ce dovlecel drăguț ești! În sfârșit toate fantomele pot petrece și mânca dulciuri!!!\n\nMulțumim <B>Mirabellei</B> pentru că a adus morții în lumea noastră, <B>%s</B> pentru codarea acestei magii și <B>%s</B> pentru toate desenele din acest eveniment minunat!",
		failed_colors = "Nu lăsa fantomele să te sperie, acordă atenție culorilor și alege-o pe cea corectă data viitoare!",
	},
	tr = {
		dialogs = {
			[1] = "Selam!\nBenim adım Mirabella, Cadılar Bayramının hayaletiyim!!\n\nÖlülerin günü yaklaşıyor ve parti başlayacak, ama şehri süslerken, the Piñata, Sesame, bacağı sökülmüş. Onu tamir ettim, ama konfetinin tamamı bütün şehre dağıldı. Vatandaşlar onu arıyor, bize yardım eder misin?",
			[2] = "Yeeeeeeyyy!!!!\nÇok teşekkür ederim! Sesame şimdi kendisini daha iyi hissediyor!\n\nTatlıları ve müziği hazırlamanın vakti geldi!",
			[3] = "Oh... Hey! Yine ben...\n\nKorkunç bir şey fark ettiğimde partiye başlamak için her şeyin yolunda olup olmadığını kontrol ediyordum... SESAME BOŞ! ŞEKERLER KAYBOLMUŞ!\n\nYour help fixing its leg was great Bacağı tamir etmek için yardımın harikaydı. Bacak boşluğundan düşen şekerleri bulmamıza yardım edebilir misin?!?",
			[4] = "Voooooooov!\n\nYardımın için çok teşekkür ederim!\n\nŞimdi hepimiz şimdi rahatlayabilir ve ölülerle parti yapabiliriz!",
			[5] = "Se-Sesame'nin bacağı ko-koptu... :(\n\nLütfen ona ya-yardım et :(",
			[6] = "Ooooh... Değerli vatandaş...\nSesame'nin piyonunu gitarımdan tamamen unuttuğum için çok endişelendim... Sanırım onu kaybettim!\n\nOnsuz müzik olmayacak ve festival mahvolacak!\nOnu bulmama yardım eder misin? Öyleyse, şarkı sözlerini göstereyim!",
			[7] = "Oollleeeyyyy! Onu buldun! Ah benim ölü farelerim, çok teşekkürler!!!!\n\nŞimdi herkes benim harika müziğimi dinleyecek!"
		},
		close_dialog = "Diyaloğu kapatmak için boşluk tuşuna basın.",
		welcome = "Bu <B>Ölülerin günü</B>, ölülerin ve yaşayanların birlikte parti yapabilecekleri bir gün!\n\n~ ~ ~ Hadi kemikleri sallayalım! ~ ~ ~",
		conclusion = "Vaayy! Ne kadarda sevimli bir tatlısın sen! Şimdi hayaletler sonunda parti yapıp ve şeker yiyebilirler!!!\n\nÖlüleri dünyaya getirdiğin için teşekkürler <B>Mirabella</B> , <B>%s</B> bütün büyüyü kodlamak ve <B>%s</B> bu harika etkinlikte her şeyi çizmek için!",
		failed_colors = "Hayaletlerin seni korkutmalarına izin verme, renklere dikkat edin ve bir daha ki sefere düzeltin!",
	}
}
local translation = translations[tfm.get.room.community] or translations.en

--[[ Data ]]--
-- Laagaadoo's DataHandler
local DataHandler = {}
DataHandler.VERSION = '1.4'
DataHandler.__index = DataHandler
function DataHandler.new(moduleID, skeleton, otherOptions)
	local self = setmetatable({}, DataHandler)

	assert(moduleID, 'Invalid module ID (nil)')
	assert(moduleID ~= '', 'Invalid module ID (empty text)')
	assert(skeleton, 'Invalid skeleton (nil)')
	
	for k, v in next, skeleton do
		v.type = v.type or type(v.default)
	end

	self.players = {}
	self.moduleID = moduleID
	self.moduleSkeleton = skeleton
	self.moduleIndexes = {}
	self.otherOptions = otherOptions
	self.otherData = {}
	self.originalStuff = {}

	for k,v in pairs(skeleton) do
		self.moduleIndexes[v.index] = k
	end

	if self.otherOptions then
		self.otherModuleIndexes = {}
		for k,v in pairs(self.otherOptions) do
			self.otherModuleIndexes[k] = {}
			for k2,v2 in pairs(v) do
				v2.type = v2.type or type(v2.default)
				self.otherModuleIndexes[k][v2.index] = k2
			end
		end
	end

	return self
end
function DataHandler.newPlayer(self, name, dataString)
	assert(name, 'Invalid player name (nil)')
	assert(name ~= '', 'Invalid player name (empty text)')

	self.players[name] = {}
	self.otherData[name] = {}

	dataString = dataString or ''

	local function turnStringToTable(str)
		local output = {}
		for data in string.gsub(str, '%b{}', function(b) return b:gsub(',', '\0') end):gmatch('[^,]+') do
			data = data:gsub('%z', ',')

			if string.match(data, '^{.-}$') then
				table.insert(output, turnStringToTable(string.match(data, '^{(.-)}$')))
			else
				table.insert(output, tonumber(data) or data)
			end
		end
		return output
	end

	local function getDataIndexName(skeleton, index)
		for k,v in pairs(skeleton) do
			if v.index == index then
				return k
			end
		end
		return 0
	end

	local function getHigherIndex(skeleton)
		local higher = 0
		for k,v in pairs(skeleton) do
			if v.index > higher then
				higher = v.index
			end
		end
		return higher
	end

	local function handleModuleData(moduleID, skeleton, moduleData, makeTable)
		local dataIndex = 1
		local higherIndex = getHigherIndex(skeleton)

		moduleID = "__" .. moduleID
		if makeTable then
			self.players[name][moduleID] = {}
		end

		local setPlayerData = function(data, dataType, dataName, dataDefault)
			local value
			if dataType == "number" then
				value = tonumber(data) or dataDefault
			elseif dataType == "string" then
				value = string.match(data or '', "^\"(.-)\"$") or dataDefault
			elseif dataType == "table" then
				value = string.match(data or '', "^{(.-)}$")
				value = value and turnStringToTable(value) or dataDefault
			elseif dataType == "boolean" then
				if data then
					value = data == '1'
				else
					value = dataDefault
				end
			end

			if makeTable then
				self.players[name][moduleID][dataName] = value
			else
				self.players[name][dataName] = value
			end
		end

		if #moduleData > 0 then
			for data in string.gsub(moduleData, '%b{}', function(b) return b:gsub(',', '\0') end):gmatch('[^,]+') do
				data = data:gsub('%z', ',')

				local dataName = getDataIndexName(skeleton, dataIndex)
				local dataType = skeleton[dataName].type
				local dataDefault = skeleton[dataName].default
				
				setPlayerData(data, dataType, dataName, dataDefault)

				dataIndex = dataIndex + 1
			end
		end

		if dataIndex <= higherIndex then
			for i = dataIndex, higherIndex do
				local dataName = getDataIndexName(skeleton, i)
				local dataType = skeleton[dataName].type
				local dataDefault = skeleton[dataName].default
				
				setPlayerData(nil, dataType, dataName, dataDefault)
			end
		end
	end

	local modules, originalStuff = self:getModuleData(dataString)

	self.originalStuff[name] = originalStuff

	if not modules[self.moduleID] then
		modules[self.moduleID] = '{}'
	end

	handleModuleData(self.moduleID, self.moduleSkeleton, modules[self.moduleID]:sub(2,-2), false)

	if self.otherOptions then
		for moduleID, skeleton in pairs(self.otherOptions) do
			if not modules[moduleID] then
				local strBuilder = {}
				for k,v in pairs(skeleton) do
					local dataType = v.type or type(v.default)
					if dataType == 'string' then
						strBuilder[v.index] = '"'..tostring(v.default)..'"'
					elseif dataType == 'table' then
						strBuilder[v.index] = '{}'
					elseif dataType == 'number' then
						strBuilder[v.index] = v.default
					elseif dataType == 'boolean' then
						strBuilder[v.index] = v.default and '1' or '0'
					end
				end
				modules[moduleID] = '{'..table.concat(strBuilder, ',')..'}'
			end
		end
	end

	for moduleID, moduleData in pairs(modules) do
		if moduleID ~= self.moduleID then
			if self.otherOptions and self.otherOptions[moduleID] then
				handleModuleData(moduleID, self.otherOptions[moduleID], moduleData:sub(2,-2), true)
			else
				self.otherData[name][moduleID] = moduleData
			end
		end
	end
end
function DataHandler.dumpPlayer(self, name)
	local output = {}

	local function turnTableToString(tbl)
		local output = {}
		for k,v in pairs(tbl) do
			local valueType = type(v)
			if valueType == 'table' then
				output[#output+1] = '{'
				output[#output+1] = turnTableToString(v)

				if output[#output]:sub(-1) == ',' then
					output[#output] = output[#output]:sub(1, -2)
				end
				output[#output+1] = '}'
				output[#output+1] = ','
			else
				if valueType == 'string' then
					output[#output+1] = '"'
					output[#output+1] = v
					output[#output+1] = '"'
				elseif valueType == 'boolean' then
					output[#output+1] = v and '1' or '0'
				else
					output[#output+1] = v
				end
				output[#output+1] = ','
			end
		end
		if output[#output] == ',' then
			output[#output] = ''
		end
		return table.concat(output)
	end

	local function getPlayerDataFrom(name, moduleID)
		local output = {moduleID, '=', '{'}
		local player = self.players[name]
		local moduleIndexes = self.moduleIndexes
		local moduleSkeleton = self.moduleSkeleton

		if self.moduleID ~= moduleID then
			moduleIndexes = self.otherModuleIndexes[moduleID]
			moduleSkeleton = self.otherOptions[moduleID]
			moduleID = '__'..moduleID
			player = self.players[name][moduleID]
		end

		if not player then
			return ''
		end

		for i = 1, #moduleIndexes do
			local dataName = moduleIndexes[i]
			local dataType = moduleSkeleton[dataName].type
			if dataType == 'string' then
				output[#output+1] = '"'
				output[#output+1] = player[dataName]
				output[#output+1] = '"'

			elseif dataType == 'number' then
				output[#output+1] = player[dataName]

			elseif dataType == 'boolean' then
				output[#output+1] = player[dataName] and '1' or '0'

			elseif dataType == 'table' then
				output[#output+1] = '{'
				output[#output+1] = turnTableToString(player[dataName])
				output[#output+1] = '}'
			end

			output[#output+1] = ','
		end

		if output[#output] == ',' then
			output[#output] = '}'
		else
			output[#output+1] = '}'
		end

		return table.concat(output)
	end

	output[#output+1] = getPlayerDataFrom(name, self.moduleID)

	if self.otherOptions then
		for k,v in pairs(self.otherOptions) do
			local moduleData = getPlayerDataFrom(name, k)
			if moduleData ~= '' then
				output[#output+1] = ','
				output[#output+1] = moduleData
			end
		end
	end
	
	for k,v in pairs(self.otherData[name]) do
		output[#output+1] = ','
		output[#output+1] = k
		output[#output+1] = '='
		output[#output+1] = v
	end

	return table.concat(output)..self.originalStuff[name]
end
function DataHandler.get(self, name, dataName, moduleName)
	if not moduleName then
		return self.players[name][dataName]
	else
		assert(self.players[name]['__'..moduleName], 'Module data not available ('..moduleName..')')
		return self.players[name]['__'..moduleName][dataName]
	end
end
function DataHandler.set(self, name, dataName, value, moduleName)
	if moduleName then
		self.players[name]['__'..moduleName][dataName] = value
	else
		self.players[name][dataName] = value
	end
	
	return self
end
function DataHandler.save(self, name)
	system.savePlayerData(name, self:dumpPlayer(name))
end
function DataHandler.removeModuleData(self, name, moduleName)
	assert(moduleName, "Invalid module name (nil)")
    assert(moduleName ~= '', "Invalid module name (empty text)")
    assert(moduleName ~= self.moduleID, "Invalid module name (current module data structure)")

    if self.otherData[name][moduleName] then
    	self.otherData[name][moduleName] = nil
    	return true
    else
    	if self.otherOptions and self.otherOptions[moduleName] then
    		self.players[name]['__'..moduleName] = nil
    		return true
    	end
    end

    return false
end
function DataHandler.getModuleData(self, str)
	local output = {}

	for moduleID, moduleData in string.gmatch(str, '([0-9A-Za-z_]+)=(%b{})') do
		output[moduleID] = moduleData
	end

	for k,v in pairs(output) do
		str = str:gsub(k..'='..v:gsub("[%(%)%.%%%+%-%*%?%[%]%^%$]", "%%%0")..',?', '')
	end
	return output, str
end

local playerData = DataHandler.new(module.name, {
	fixingPinata = {
		index = 1,
		default = true
	},
	collected = {
		index = 2,
		default = 0
	},
	conclusion = {
		index = 3,
		default = 0
	},
})
local playerCache = { }

local enums = {
	bot = 0,
	bar = 50,
	dialog = 100,
	callback = 150,
	hud = 200,
	guitar = 300
}
local keys = {
	spacebar = 32,
	down = 3,
	right = 2,
	left = 0
}

local map = {
	background = "166abd24fee.jpg",
	foreground = "166abd772a7.png"
}
local objects = {
	pinata = {
		"165ed178772.png",
		"165ed17a007.png",
		"165ed17fcc0.png",
		"165ed181b41.png",
		"165ed1cd5dd.png" -- Final
	},
	candy = {
		[-6] = "166276f2e28.png", -- Transparent
		[-5] = "166276f16b7.png", -- Transparent
		[-4] = "166276eff46.png", -- Transparent
		[-3] = "166276ee7d3.png", -- Transparent
		[-2] = "166276ed061.png", -- Transparent
		[-1] = "166276eb8f0.png", -- Transparent
		[0] = "166272349e4.png", -- Thumb
		[1] = "165ed1f5401.png", -- Solid
		[2] = "165ed1f6b72.png", -- Solid
		[3] = "165ed1f82e3.png", -- Solid
		[4] = "165ed1fb18f.png", -- Solid
		[5] = "165ed1fcb50.png", -- Solid
		[6] = "165ed1fe653.png" -- Solid
	},
	confetti = {
		[-1] = "166227f674d.png", -- Transparent
		[0] = "166228b6669.png", -- Thumb
		[1] = "1660d06d0e6.png" -- Solid
	},
	npc = {
		mirabella = "165ee2b86fb.png",
		miguel = {
			crying = "1662b2f21ea.png",
			normal = "1662b2f21ea.png"
		}
	},
	npcDialog = {
		background = "1666b88049d.png",
		-- Mirabella
		"165ed3253ed.png", -- Asking for help (Confetti)
		"165ed328799.png", -- Finished confetti
		"165ed3253ed.png", -- Asking for help (Candies)
		"165ed326c11.png", -- Finished candies
		-- Miguel
		"1664060e191.png", -- Can't start simon says (Crying)
		"1664060e191.png", -- Start simon says (Show guitars)
		"16640606b25.png", -- Give guitar back
	},
	guitar = {
		hidden = "1662be904f3.png",
		[-4] = "1662c48fd3a.png", -- Blue Transparent
		[-3] = "1662c48b6e5.png", -- Purple Transparent
		[-2] = "1662c48ce56.png", -- Green Transparent
		[-1] = "1662c48e5c7.png", -- Red Transparent
		[0] = { "16631bc6b1e.png", "16631b89ba1.png" }, -- Normal (Left, Right)
		[1] = "16621c30cc7.png", -- Red
		[2] = "16621c2f554.png", -- Green
		[3] = "16621c2dde2.png", -- Purple
		[4] = "16621c2c670.png" -- Blue
	},
	pet = { "166409c6a30.png", "16640a0324a.png" } -- Left, Right
}

local locations = {
	{ 125, 440 },
	{ 725, 430 },
	{ 1080, 70 },
	{ 1080, 540 },
	{ 1305, 475 },
	{ 1380, 260 },
	{ 1450, 600 },
	{ 1660, 455 },
	{ 1950, 135 },
	{ 2280, 150 },
	{ 2330, 570 },
	{ 2410, 765 }
}
local colorScheme = {
	[1] = { 0x328F8F, 0x05DCFF }, -- Confetti
	[2] = { 0x8F3246, 0xF73838 } -- Candy
}

local axis = {
	guitar = {
		[1] = { -25, -10 },
		[2] = { 0, -10 }
	},
	pet = {
		[1] = { 25, -25 },
		[2] = { -55, -25 }
	}
}
local particles = {
	tree = { 21, 24, 21, 24, 2, 24, 11, 11, 24, 24 },
	walking = { 24, 24, 24, 24, 24, 21, 24, 24, 24 }
}
local consumables = {
	pumpkin = 8,
	paper = 26,
	postcard = 29,
	microphone = 2234
}
local emotes = {
	sing = 20,
	dance = 24
}

local consumableLocations = {
	-- x1, x2, y1, y2, id
	[1] = { 80, 505, 350, 575, "postcard" }, -- Tree
	[2] = { 1365, 430, 1560, 540, "paper" }, -- Birb
	[3] = { 1755, 130, 2190, 290, "microphone" }, -- Bridge
	[4] = { 1890, 220, 2015, 280, "pumpkin" }, -- Unreachable Platform
}

--[[ Functions & Classes ]]--
local callback
do
	local callback_id = enums.callback
	callback = setmetatable({ }, {
		__call = function(this, eventName, x, y, w, h, hidden)
			local id = callback_id
			local action
			local hasClickableRange, range = false, 0
			
			local fixed = false
			local textarea = function(playerName)
				ui.addTextArea(id, "<textformat leftmargin='1' rightmargin='1'><a href='event:callback." .. eventName .. "'>" .. string.rep('\n', h / 10), playerName, x - 5, y - 5, w + 5, h + 5, 1, 1, 0, fixed)
			end

			local self = {
				callback = eventName,
				x = x,
				y = y,
				w = w,
				h = h
			}

			self.displayCallback = function(self, f)
				if type(f) == "string" then
					return textarea(f)
				end

				for k, v in next, tfm.get.room.playerList do
					if not f or f(k, v) then
						textarea(k)
					end
				end
			end

			self.fixed = function(self)
				fixed = true
				return self
			end

			self.inClickableRange = function(self, playerName)
				if hasClickableRange then
					local x, y = tfm.get.room.playerList[playerName].x, tfm.get.room.playerList[playerName].y
					return ((x >= (self.x - range) and x <= (self.x + self.w + range)) and (y >= (self.y - range) and y <= (self.y + self.h + range)))
				end
				return true
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

			self.setAction = function(self, f)
				if type(f) == "function" then
					action = f
					this[eventName] = self
					return true
				end
				return false
			end

			self.setClickableRange = function(self, complement)
				hasClickableRange, range = true, (complement or 0)
			end

			if not hidden then
				self.displayCallback(self)
			end

			callback_id = callback_id + 1
			return self
		end
	})
end

math.clamp = function(value, min, max)
	return value < min and min or value > max and max or value
end
math.pythag = function(x1, y1, x2, y2, range)
	return (x1 - x2) ^ 2 + (y1 - y2) ^ 2 <= (range ^ 2)
end

string.split = function(str, pattern)
	local out, counter = { }, 0
	string.gsub(str, pattern, function(value)
		counter = counter + 1
		out[counter] = tonumber(value) or value
	end)
	return out
end
system.looping = function(f, tick)
	local s = 1000 / tick
	local t = { }

	local bar = 0
	local fooTimer = function()
		bar = bar + 1
		t[bar] = system.newTimer(f, 1000, true)
	end

	for timer = 0, 1000 - s, s do
		system.newTimer(fooTimer, 1000 + timer, false)
	end
	return t
end

table.getRandomIndexes = function(list, n, avoidRepeated)
	local indexes, out = { }, { }

	for i = 1, n do
		if avoidRepeated then
			local rand
			repeat
				rand = math.random(#list)
			until not indexes[rand]
			indexes[rand] = true
		else
			out[i] = math.random(#list)
		end
	end

	if avoidRepeated then
		for i in next, indexes do
			out[n] = i
			n = n - 1
		end
	end

	return out
end
table.createArray = function(n, bool)
	local out = { }
	for i = 1, n do
		out[i] = bool
	end
	return out
end
table.random = function(list)
	return list[math.random(#list)]
end

--[[ Variables ]]--
local time = -1
local pinataBody, pinataPaw
local selectableGuitars, guitar = { }
local timersWorking = 0
local canStart = false

--[[ System ]]--
ui.bar = function(playerName, w)
	local id = (playerData:get(playerName, "fixingPinata") and 1 or 2)
	local color = colorScheme[id]
	w = math.clamp(w * (160 / module[(id == 1 and "confetti_to_fix_pinata" or "candies_to_finish_event")]), 1, 160)
	ui.addTextArea(enums.bar, '', playerName, 1870, 730, 164, 8, color[1], 0x57401B, 1, false)
	ui.addTextArea(enums.bar + 1, '', playerName, 1872, 732, w, 4, color[2], color[2], 1, false)
end
ui.removebar = function(playerName)
	for id = enums.bar, enums.bar + 1 do
		ui.removeTextArea(id, playerName)
	end
end

ui.dialog = function(playerName)
	playerCache[playerName].remImg.dialog[1] = tfm.exec.addImage(objects.npcDialog[playerCache[playerName].dialog[1]], "&0", 510, 66, playerName)
	playerCache[playerName].remImg.dialog[2] = tfm.exec.addImage(objects.npcDialog.background, ":0", 100, 235, playerName)
	ui.addTextArea(enums.dialog, "", playerName, -1500, -1500, 3000, 3000, 1, 1, .15, true)
	ui.addTextArea(enums.dialog + 1, "<font size='15' color='#F0F0E0' face='Courier New'><textformat leftmargin='10' rightmargin='5'>", playerName, 100, 240, 600, 160, 1, 1, 0, true)
end
ui.removeDialog = function(playerName)
	for i = 1, #playerCache[playerName].remImg.dialog do
		tfm.exec.removeImage(playerCache[playerName].remImg.dialog[i])
	end
	playerCache[playerName].dialog = { 0, 0 }
	for id = enums.dialog, enums.dialog + 1 do
		ui.removeTextArea(id, playerName)
	end
end

ui.displayCollectedItems = function(playerName)
	ui.addTextArea(enums.hud, "<p align='right'><font color='#FFFFFF' size='20'><B>" .. string.format("%03d", playerCache[playerName].collected), playerName, 715, 370, 80, nil, 1, 1, 0, true)
end

local hasConcluded = function(playerName, prize)
	return bit32.band(module.prize[prize][2], playerData:get(playerName, "conclusion")) > 0
end

local getPinataStage = function(score)
	local len = #objects.pinata + 1
	local stage = math.ceil((module.confetti_to_fix_pinata - score) / (score / (len - 2))) + 1
	return len - math.clamp(stage, 1, (len - 1))
end

local pinata = function(self, playerName)
	if playerCache[playerName].dataLoaded then
		if playerCache[playerName].collected > 0 then
			playerData:set(playerName, "collected", playerData:get(playerName, "collected") + playerCache[playerName].collected)
			playerCache[playerName].collected = 0

			ui.displayCollectedItems(playerName)
			ui.bar(playerName, playerData:get(playerName, "collected"))

			if playerData:get(playerName, "fixingPinata") then
				tfm.exec.removeImage(playerCache[playerName].remImg.pinata)
				playerCache[playerName].remImg.pinata = tfm.exec.addImage(objects.pinata[getPinataStage(playerData:get(playerName, "collected"))], "?2", 1820, 390, playerName)

				if playerData:get(playerName, "collected") >= module.confetti_to_fix_pinata then
					playerData:set(playerName, "fixingPinata", false)
					playerData:set(playerName, "collected", 0)

					playerCache[playerName].wasFixingPinata = true
					playerCache[playerName].dialog[1] = 2
					ui.dialog(playerName)

					for k, v in next, playerCache[playerName].remImg.collectables do
						tfm.exec.removeImage(v)
					end
					playerCache[playerName].remImg.collectables = { }

					tfm.exec.giveConsumables(playerName, consumables.pumpkin, 2)
				end
			else
				if not hasConcluded(playerName, "badge") and playerData:get(playerName, "collected") >= module.candies_to_finish_event then
					system.giveEventGift(playerName, module.prize.badge[1])
					playerData:set(playerName, "conclusion", playerData:get(playerName, "conclusion") + module.prize.badge[2])
					tfm.exec.chatMessage("<CE><p align='center'>" .. string.format(translation.conclusion, module.team[1], module.team[2]) .. "</p>", playerName)

					playerCache[playerName].dialog[1] = 4
					ui.dialog(playerName)

					tfm.exec.giveConsumables(playerName, consumables.pumpkin, 2)
				end
			end
			playerData:save(playerName)
		end
	end
end

local removeGuitars = function(playerName)
	playerCache[playerName].displaySimonSays = 0

	ui.removeTextArea(enums.guitar, playerName)

	for i = 1, #objects.guitar do
		tfm.exec.removeImage(playerCache[playerName].remImg.guitars[i])
		selectableGuitars[i]:remove(playerName)
	end
	playerCache[playerName].remImg.guitars = { }
end

local bindArrows = function(playerName, enabled)
	system.bindKeyboard(playerName, keys.left, true, enabled)
	system.bindKeyboard(playerName, keys.right, true, enabled)
end

local update = function(add)
	add = add or 1

	local currentTime, str = os.time()
	for playerName, data in next, playerCache do
		if data.guitarTimer > 0 and currentTime > data.guitarTimer then
			data.guitarTimer = 0
			tfm.exec.removeImage(data.remImg.highlightGuitar)
			if data.simonSaysSequence.id > #data.simonSaysSequence.seq then
				removeGuitars(playerName)

				guitar:remove(playerName)
				for note = 1, #data.simonSaysSequence.seq do
					if not data.simonSaysSequence.seq[note] then
						data.remImg.guitar = -1
						tfm.exec.chatMessage("<V>[•] <BL>" .. translation.failed_colors, playerName)
						return
					end
				end
				tfm.exec.removeImage(data.remImg.hguitar)

				data.hasGuitar = true
				bindArrows(playerName, true)
				eventKeyboard(playerName, keys[(tfm.get.room.playerList[playerName].isFacingRight and "right" or "left")])
			end
		elseif data.dataLoaded and data.dialog[1] > 0 then
			str = translation.dialogs[data.dialog[1]]

			data.dialog[2] = data.dialog[2] + add
			local final = data.dialog[2] >= #str

			ui.updateTextArea(enums.dialog + 1, string.sub(translation.dialogs[data.dialog[1]], 1, data.dialog[2]) .. (final and ("\n<ROSE>" .. translation.close_dialog) or "|"), playerName)

			if final then
				data.dialog[1] = -1
			end
		end
	end
end

local teleportCandyParticle = function(playerName, x, y, back)
	local cos, sin
	for i = 1, 12 do
		cos = math.cos(i)
		sin = math.sin(i)
		if back then
			tfm.exec.displayParticle(math.random(39, 40), x + cos * 30, y + sin * 30, cos * 4, sin * 4, -cos * .5, -sin * .5, playerName)
		else
			tfm.exec.displayParticle(math.random(39, 40), x + cos * 30, y + sin * 30, -cos * 5, -sin * 5, cos * .5, sin * .5, playerName)
		end
	end
end

local teleportCandies = function(playerName)
	if #playerCache[playerName].candies == 0 then return end

	for i = 1, #playerCache[playerName].candies do
		local v = playerCache[playerName].candies[i]
		if v.time >= 0 and os.time() > v.time then
			if not playerCache[playerName].collectedItems[i] then
				teleportCandyParticle(playerName, locations[v.pos][1], locations[v.pos][2])
			end
			tfm.exec.removeImage(playerCache[playerName].remImg.collectables[i])

			if not playerCache[playerName].collectedItems[i] then
				local newPos
				repeat
					newPos = math.random(#locations)
				until playerCache[playerName].candyFreeSpot[newPos]

				playerCache[playerName].candyFreeSpot[newPos] = false
				playerCache[playerName].candyFreeSpot[v.pos] = true

				v.pos = newPos
				v.time = os.time() + math.random(module.time_to_teleport_candy - 3000, module.time_to_teleport_candy + 3000)

				teleportCandyParticle(playerName, locations[v.pos][1], locations[v.pos][2], true)
				playerCache[playerName].remImg.collectables[i] = tfm.exec.addImage(objects.candy[v.candy], "?100", locations[v.pos][1] - 20, locations[v.pos][2] - 20, playerName)
			else
				playerCache[playerName].candyFreeSpot[v.pos] = false
				v.time = -1
			end
		end
	end
end

local selectGuitar = function(self, playerName, id)
	if playerCache[playerName].remImg.guitar ~= 0 or playerCache[playerName].guitarTimer > 0 then return end

	id = id - 3

	playerCache[playerName].remImg.highlightGuitar = tfm.exec.addImage(objects.guitar[id], ":200", 160 + id * 85, 150, playerName)
	-- Reusing function update
	playerCache[playerName].guitarTimer = os.time() + 1500

	playerCache[playerName].simonSaysSequence.seq[playerCache[playerName].simonSaysSequence.id] = playerCache[playerName].simonSaysSequence.seq[playerCache[playerName].simonSaysSequence.id] == id

	playerCache[playerName].simonSaysSequence.id = playerCache[playerName].simonSaysSequence.id + 1
	-- Consequences of id > #seq is in function update
end

local displayGuitars = function(self, playerName)
	if playerCache[playerName].remImg.guitar == -1 or playerCache[playerName].remImg.guitar ~= 0 then return end

	ui.addTextArea(enums.guitar, "", playerName, -1500, -1500, 3000, 3000, 1, 1, .15, true)

	for i = 1, #objects.guitar do
		playerCache[playerName].remImg.guitars[i] = tfm.exec.addImage(objects.guitar[-i], ":100", 160 + i * 85, 150, playerName)

		if playerCache[playerName].displaySimonSays == 0 then
			selectableGuitars[i]:displayCallback(playerName)
		end
	end

	if playerCache[playerName].displaySimonSays == 1 then
		playerCache[playerName].displaySimonSays = 666 -- Shows the sequence
	else
		playerCache[playerName].displaySimonSays = 2
	end
end

local isInsideRectangle = function(playerName, x, y, x2, y2)
	local player = type(playerName) == "table" and playerName or tfm.get.room.playerList[playerName]
	return player.x >= x and player.x <= x2 and player.y >= y and player.y <= y2
end

local linkObjectToPlayer = function(playerName, id, dir, imgSrc)
	if playerCache[playerName].remImg[id] > 0 then
		tfm.exec.removeImage(playerCache[playerName].remImg[id])
	end
	playerCache[playerName].remImg[id] = tfm.exec.addImage((imgSrc or objects[id])[dir], "$" .. playerName, axis[id][dir][1], axis[id][dir][2])
end

local loadAllImages
loadAllImages = function(playerName, src)
	for k, v in next, (src or objects) do
		if type(v) == "table" then
			loadAllImages(playerName, v)
		else
			tfm.exec.removeImage(tfm.exec.addImage(v, "_0", -10000, -10000, playerName))
		end
	end
end

--[[ Events ]]--
-- Relevant
eventNewGame = function()
	if time >= 0 then
		return system.exit()
	else
		time = 0
	end

	-- Set players
	loadAllImages()
	for playerName, data in next, tfm.get.room.playerList do
		playerCache[playerName] = {
			dataLoaded = false,
			dialog = { 0, 0 }, -- id, str pos
			remImg = {
				dialog = { },
				collectables = { },
				pinata = 0,
				guitars = { },
				highlightGuitar = 0,
				guitar = 0,
				pet = 0,
				hguitar = 0
			},
			collected = 0,
			collectedItems = { },
			collectTimer = 0,
			candies = { },
			candyFreeSpot = table.createArray(#locations, true),
			startedSimonSays = false,
			displaySimonSays = 0,
			simonSaysSequence = { },
			guitarTimer = 0,
			consumableTimer = 0,
			hasGuitar = false,
			hasPet = false,
			lastPress = {
				guitar = -1,
				pet = -1
			},
			wasFixingPinata = false
		}

		tfm.exec.lowerSyncDelay(playerName)
		system.loadPlayerData(playerName)
	end

	-- Build background
	tfm.exec.addImage(map.background, "?0", 0, 0)
	tfm.exec.addImage(map.foreground, "!0", 0, 0)

	-- NPC
	-- Mirabella
	ui.addTextArea(enums.bot, "<p align='center'><font color='#FFFFFF' face='Verdana'><B>Mirabella", nil, 1810, 655, nil, nil, 1, 1, 0, false)
	tfm.exec.addImage(objects.npc.mirabella, "!1", 1820, 670)
	local foo = callback("guide", 1820, 670, 48, 46)
	foo:setAction(function(self, playerName)
		if playerCache[playerName].dataLoaded then
			if playerData:get(playerName, "fixingPinata") then
				playerCache[playerName].dialog[1] = 1
				ui.dialog(playerName)
			else
				if not hasConcluded(playerName, "badge") then
					-- Will be == 0 if the current map had fixingPinata as true
					playerCache[playerName].dialog[1] = #playerCache[playerName].candies == 0 and 2 or 3
				else
					playerCache[playerName].dialog[1] = 4
				end
				ui.dialog(playerName)
			end
		end
	end)
	foo:setClickableRange(80)
	-- Miguel
	ui.addTextArea(enums.bot + 1, "<p align='center'><font color='#FFFFFF' face='Verdana'><B>Miguel Rivera", nil, 2000, 110, nil, nil, 1, 1, 0, false)
	foo = callback("simonsays", 2025, 122, 39, 46)
	foo:setAction(function(self, playerName)
		if playerCache[playerName].dataLoaded then
			if playerData:get(playerName, "fixingPinata") then
				playerCache[playerName].dialog[1] = 5
				ui.dialog(playerName)
			else
				if hasConcluded(playerName, "orb") then
					return tfm.exec.playEmote(playerName, emotes.sing)
				end

				if not playerCache[playerName].wasFixingPinata then
					if not playerCache[playerName].startedSimonSays then
						playerCache[playerName].startedSimonSays = true

						guitar:displayCallback(playerName)
						playerCache[playerName].remImg.hguitar = tfm.exec.addImage(objects.guitar.hidden, "!100", 186, 527, playerName)

						playerCache[playerName].displaySimonSays = 1 -- Displayed once the dialog is closed
						playerCache[playerName].dialog[1] = 6
						ui.dialog(playerName)
					elseif playerCache[playerName].hasGuitar then
						playerCache[playerName].hasGuitar = false
						if not playerCache[playerName].hasPet then
							bindArrows(playerName, false)
						end

						tfm.exec.removeImage(playerCache[playerName].remImg.guitar)
						playerCache[playerName].remImg.guitar = 0

						playerCache[playerName].dialog[1] = 7
						ui.dialog(playerName)

						system.giveEventGift(playerName, module.prize.orb[1])
						playerData:set(playerName, "conclusion", playerData:get(playerName, "conclusion") + module.prize.orb[2]):save(playerName)

						tfm.exec.giveConsumables(playerName, consumables.pumpkin, 2)

						playerCache[playerName].hasPet = true
						bindArrows(playerName, true)
						eventKeyboard(playerName, keys[(tfm.get.room.playerList[playerName].isFacingRight and "right" or "left")])

						tfm.exec.displayParticle(37, tfm.get.room.playerList[playerName].x, tfm.get.room.playerList[playerName].y)
						tfm.exec.movePlayer(playerName, 1950, 268)
						tfm.exec.displayParticle(37, 1950, 268)
						tfm.exec.playEmote(playerName, emotes.dance)
					end
				end
			end
		end
	end)
	foo:setClickableRange(80)

	-- Pinata
	pinataBody = callback("pbody", 1880, 470, 155, 250, true)
	pinataBody:setAction(pinata)
	pinataBody:setClickableRange(80)
	pinataPaw = callback("ppaw", 1980, 610, 55, 100, true)
	pinataPaw:setAction(pinata)
	pinataPaw:setClickableRange(80)

	-- Guitars
	for i = 1, #objects.guitar do
		selectableGuitars[i] = callback("guitar", 160 + i * 85, 150, 51, 105, true):fixed()
		selectableGuitars[i]:setAction(selectGuitar)
	end

	guitar = callback("hguitar", 250, 527, 60, 45, true)
	guitar:setAction(displayGuitars)
	guitar:setClickableRange(60)
end

eventPlayerDataLoaded = function(playerName, data)
	playerData:newPlayer(playerName, data)

	if playerData:get(playerName, "fixingPinata") then
		pinataPaw:displayCallback(playerName)

		playerCache[playerName].remImg.pinata = tfm.exec.addImage(objects.pinata[getPinataStage(playerData:get(playerName, "collected"))], "?2", 1820, 390, playerName)
		ui.bar(playerName, playerData:get(playerName, "collected"))

		tfm.exec.addImage(objects.npc.miguel.crying, "!1", 2025, 122, playerName)

		tfm.exec.addImage(objects.confetti[0], "&100", 720, 372, playerName)
		for i = 1, #locations do
			playerCache[playerName].remImg.collectables[i] = tfm.exec.addImage(objects.confetti[1], "?100", locations[i][1] - 20, locations[i][2] - 20, playerName)
		end
	else
		pinataBody:displayCallback(playerName)

		tfm.exec.addImage(objects.pinata[5], "?2", 1820, 390, playerName)
		ui.bar(playerName, playerData:get(playerName, "collected"))

		tfm.exec.addImage(objects.npc.miguel.normal, "!1", 2025, 122, playerName)

		tfm.exec.addImage(objects.candy[0], "&100", 710, 372, playerName)

		playerCache[playerName].candies = table.getRandomIndexes(locations, math.floor(#locations / 2), true)

		for i = 1, #playerCache[playerName].candies do
			playerCache[playerName].candies[i] = {
				candy = math.random(#objects.candy),
				pos = playerCache[playerName].candies[i],
				time = os.time() + math.random(module.time_to_teleport_candy - 3000, module.time_to_teleport_candy + 3000)
			}

			local v = playerCache[playerName].candies[i]

			playerCache[playerName].candyFreeSpot[v.pos] = false

			playerCache[playerName].remImg.collectables[i] = tfm.exec.addImage(objects.candy[v.candy], "?100", locations[v.pos][1] - 20, locations[v.pos][2] - 20, playerName)
		end

		for i = 1, module.total_guitars_in_simon_says do
			playerCache[playerName].simonSaysSequence[i] = math.random(#objects.guitar)
		end
		-- current, sequence
		playerCache[playerName].simonSaysSequence = {
			id = 0,
			seq = playerCache[playerName].simonSaysSequence
		}

		if hasConcluded(playerName, "orb") then
			playerCache[playerName].hasPet = true
			bindArrows(playerName, true)
			eventKeyboard(playerName, keys[(tfm.get.room.playerList[playerName].isFacingRight and "right" or "left")])
		end
	end
	ui.displayCollectedItems(playerName)

	system.bindKeyboard(playerName, keys.spacebar, true, true)
	system.bindKeyboard(playerName, keys.down, true, true)

	playerCache[playerName].dataLoaded = true
end

eventKeyboard = function(playerName, key, down, x, y)
	if not canStart or not playerCache[playerName] or not playerCache[playerName].dataLoaded then return end

	if key == keys.spacebar or key == keys.down then
		-- Not in a dialog
		if playerCache[playerName].dialog[1] == 0 then
			if os.time() > playerCache[playerName].collectTimer then
				playerCache[playerName].collectTimer = os.time() + 500

				local list = (playerData:get(playerName, "fixingPinata") and locations or playerCache[playerName].candies)
				for i = 1, #list do
					if playerCache[playerName].remImg.collectables[i] then
						local location = locations[(playerData:get(playerName, "fixingPinata") and i or list[i].pos)]
						if not playerCache[playerName].collectedItems[i] and math.pythag(x, y, location[1], location[2], 30) then
							playerCache[playerName].collectedItems[i] = true

							playerCache[playerName].collected = playerCache[playerName].collected + 1
							ui.displayCollectedItems(playerName)

							tfm.exec.removeImage(playerCache[playerName].remImg.collectables[i])

							local img = (playerData:get(playerName, "fixingPinata") and objects.confetti[-1] or objects.candy[-list[i].candy])
							playerCache[playerName].remImg.collectables[i] = tfm.exec.addImage(img, "?100", location[1] - 20, location[2] - 20, playerName)
							return
						end
					end
				end

				for k, v in next, callback do
					if (k ~= "guitar" and k ~= "hguitar" and k ~= (playerData:get(playerName, "fixingPinata") and "pbody" or "ppaw")) and v:inClickableRange(playerName) then
						return v:performAction(playerName, 0)
					end
				end
			end

			-- Consumables
			if key == keys.down and os.time() > playerCache[playerName].consumableTimer then
				for l = 1, #consumableLocations do
					if isInsideRectangle({ x = x, y = y }, consumableLocations[l][1], consumableLocations[l][2], consumableLocations[l][3], consumableLocations[l][4]) then
						if math.random(20) == math.random(20) then
							playerCache[playerName].consumableTimer = os.time() + 5000
							tfm.exec.giveConsumables(playerName, consumables[consumableLocations[l][5]], 1)
						end
						return
					end
				end
			end
		elseif key == keys.spacebar then
			if playerCache[playerName].dialog[1] == -1 then
				-- Closes the dialog
				ui.removeDialog(playerName)

				if playerCache[playerName].displaySimonSays == 1 then
					displayGuitars(nil, playerName)
				end
			else
				-- Skips the writing effect of the dialog
				playerCache[playerName].dialog[2] = 999 -- Text display won't exceed 999 characters.
			end
		end
	else
		local keyId = (key == keys.left and 1 or 2)
		if playerCache[playerName].hasGuitar and keyId ~= playerCache[playerName].lastPress.guitar then
			playerCache[playerName].lastPress.guitar = keyId
			linkObjectToPlayer(playerName, "guitar", keyId, objects.guitar[0])
		end
		if playerCache[playerName].hasPet and keyId ~= playerCache[playerName].lastPress.pet then
			playerCache[playerName].lastPress.pet = keyId
			linkObjectToPlayer(playerName, "pet", keyId)
		end
	end
end

-- Others
eventTextAreaCallback = function(id, playerName, cbk)
	if not canStart or not playerCache[playerName] or not playerCache[playerName].dataLoaded then return end

	local c = string.split(cbk, "[^%.]+")

	if c[1] == "callback" then
		if callback[c[2]] then
			if callback[c[2]]:inClickableRange(playerName) then
				callback[c[2]]:performAction(playerName, id - enums.callback)
			end
		end
	end
end

eventNewPlayer = function(playerName)
	loadAllImages(playerName)
	tfm.exec.addImage(map.background, "?0", 0, 0, playerName)
end

eventLoop = function(currentTime, remainingTime)
	if remainingTime < 500 then
		return system.exit()
	end

	if timersWorking > -1 and timersWorking < 2 then
		timersWorking = timersWorking + .5
		if timersWorking == 2 then
			canStart = true
			timersWorking = 3
		else
			return
		end
	end
	if timersWorking > 2 then
		timersWorking = timersWorking == 3 and 2 or -1
		tfm.exec.chatMessage("<CE><p align='center'>" .. translation.welcome .. "</p>")
		ui.setMapName(table.random(module.team))
	end
	if timersWorking == 2 then -- When timers are not working
		update(6)
	end

	if time >= 0 then
		time = time + .5

		if time == .5 then
			for playerName, data in next, playerCache do
				if data.guitarTimer == 0 and data.remImg.highlightGuitar > 0 then
					tfm.exec.removeImage(data.remImg.highlightGuitar)
					data.remImg.highlightGuitar = 0
				end
			end
		elseif time == 1 then
			for playerName, data in next, playerCache do
				if data.displaySimonSays == 666 then
					data.simonSaysSequence.id = data.simonSaysSequence.id + 1
					if data.simonSaysSequence.id > #data.simonSaysSequence.seq then
						data.simonSaysSequence.id = 1
						return removeGuitars(playerName)
					end

					data.remImg.highlightGuitar = tfm.exec.addImage(objects.guitar[data.simonSaysSequence.seq[data.simonSaysSequence.id]], ":200", 160 + data.simonSaysSequence.seq[data.simonSaysSequence.id] * 85, 150, playerName)
				end
			end
		elseif time == 1.5 then
			time = 0
			for playerName, data in next, playerCache do
				teleportCandies(playerName)
				if data.displaySimonSays == 2 and tfm.get.room.playerList[playerName].x > 860 then
					removeGuitars(playerName)
				end
			end

			-- Two loops so it doesn't interfer in the speed of important stuff
			--for playerName, data in next, tfm.get.room.playerList do
			--	if math.abs(data.vx) > 0.3 then
			--		-- In the fallen leaves
			--		local dir, vx
			--		if (data.x >= 120 and data.x <= 930) or ((data.x > 930 and data.x <= 1560) and data.y > 620) or (data.x > 1560 and data.y > 680) then
			--			dir = (data.isFacingRight and -1 or 1)
			--			for i = 3, math.random(3, 5) do
			--				vx = math.random(10, 30) / 10 * dir
			--				tfm.exec.displayParticle(table.random(particles.walking), data.x + math.random(30) * -dir, data.y + math.random(-5, 5), vx, -(math.random(15, 30) / 10), -vx * .01, .25, playerName)
			--			end
			--		end
			--	end
			--end

			local f, xs, ys, xa
			for i = 0, 4 do
				for j = 1, 4 do
					f = j % 2 == 0
					xs = math.random(10, 20) / 10
					ys = math.random(10, 18) / 10
					xa = math.random(10, 15) / 100
					tfm.exec.displayParticle(table.random(particles.tree), 90 + (i * 50), 300 + math.random(200), (f and xs or -xs), ys, (f and -xa or xa), 0)
				end
			end
		end
	end
end

-- Not events
system.newTimer(function()
	timersWorking = 4
	canStart = true
end, 1000, false)

system.looping(function()
	update()
end, 12)

--[[ Init ]]--
for _, f in next, { "AfkDeath", "AutoShaman", "AutoTimeLeft", "DebugCommand", "MortCommand", "PhysicalConsumables" } do
	tfm.exec["disable" .. f]()
end

tfm.exec.newGame(module.map)
