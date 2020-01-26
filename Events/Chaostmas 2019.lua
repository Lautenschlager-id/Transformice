--[[ Optimization ]]--
local math_floor, math_random, math_atan2, math_cos, math_sin, math_abs, math_deg, math_ceil, math_randomseed = math.floor, math.random, math.atan2, math.cos, math.sin, math.abs, math.deg, math.ceil, math.randomseed
local string_upper, string_gsub, string_match, string_gmatch, string_sub, string_rep, string_format, string_find = string.upper, string.gsub, string.match, string.gmatch, string.sub, string.rep, string.format, string.find
local table_insert, table_concat, table_unpack = table.insert, table.concat, table.unpack
local os_time = os.time

--[[ Module Info ]]--
local module = {
	name = "xm19",
	formalName = "Chaostmas",
	team = {
		developer = "Bolodefchoco#0000",
		artist = "Naomi#2792",
		others = { "Tocutoeltuco#0000", "Tini#0015", "Dea_bu#0000" },
		colors = {
			developer = "8FE2D1",
			artist = "DD6661",
			translator = "92CF91",
			others = "B49AD2"
		}
	},
	reward = {
		[0x01] = "chaostmas_badge",
		[0x02] = "chaostmas_macaron",
		[0x04] = "chaostmas_raclette",
		[0x08] = "chaostmas_boule_de_neige"
	},
	time = 3 * 60 + 3,
	map = {
		xml = [[<C><P L="1000" APS="%s,,%d,%d,%d,%d,%d,%d;%s,,%d,%d,%d,%d,%d,%d;%s,,%d,%d,%d,%d,%d,%d;%s,,170,350,820,1250,,;%s,,,,1000,370,," H="1600" /><Z><S><S L="160" X="76" H="17" Y="1574" T="12" P=",,.3,.2,-12,,," /><S L="115" X="209" H="17" Y="1563" T="12" P=",,.3,.2,5,,," /><S L="100" X="297" H="17" Y="1559" T="12" P=",,.3,.2,-10,,," /><S L="150" X="417" H="17" Y="1560" T="12" P=",,.3,.2,7,,," /><S L="150" X="565" H="17" Y="1568" T="12" P=",,.3,.2,-1,,," /><S L="92" X="672" H="17" Y="1544" T="12" P=",,.3,.2,-34,,," /><S L="82" X="743" H="17" Y="1503" T="12" P=",,.3,.2,-26,,," /><S L="66" X="790" H="17" Y="1461" T="12" P=",,.3,.2,-65,,," /><S L="15" X="789" H="853" Y="1014" T="12" P=",,.3,.2,,,," /><S L="530" X="457" H="17" Y="1408" T="12" P=",,.3,.2,1,,," /><S L="401" X="532" H="17" Y="1250" T="12" P=",,.3,.2,1,,," /><S L="442" X="500" H="17" Y="1082" T="12" P=",,.3,.2,,,," /><S L="82" X="761" H="17" Y="1274" T="12" P=",,.3,.2,32,,," /><S L="167" X="736" H="17" Y="1183" T="12" P=",,.3,.2,-52,,," /><S L="99" X="422" H="17" Y="1051" T="12" P=",,.3,.2,218,,," /><S L="99" X="356" H="17" Y="983" T="12" P=",,.3,.2,235,,," /><S L="339" X="561" H="17" Y="921" T="12" P=",,.3,.2,,,," /><S L="92" X="759" H="17" Y="949" T="12" P=",,.3,.2,40,,," /><S L="178" X="731" H="17" Y="854" T="12" P=",,.3,.2,-49,,," /><S L="350" X="536" H="17" Y="754" T="12" P=",,.3,.2,,,," /><S L="124" X="448" H="17" Y="677" T="12" P=",,.3,.2,55,,," /><S L="503" X="748" H="17" Y="597" T="12" P=",,.3,.2,-1,,," /><S L="14" X="991" H="211" Y="487" T="12" P=",,.3,.2,2,,," /><S L="532" X="736" H="27" Y="378" T="12" P=",,.3,.2,,,," /><S L="20" X="326" H="1104" Y="901" T="12" P=",,.3,.2,15,,," /><S L="10" X="998" H="3000" Y="-1130" T="12" P=",,,,,,," /><S H="3000" L="10" X="-2" c="3" Y="100" T="12" P=",,,,,,," /><S P=",,.3,.2,-115,,," L="10" H="10" Y="1444" T="12" X="788" /><S P=",,.3,.2,50,,," L="172" H="17" Y="1340" T="12" X="293" /><S H="10" L="100" X="748" c="2" Y="1410" T="12" P=",,,,,,," /><S H="10" L="100" X="290" c="2" Y="1245" T="12" P=",,,,,,," /><S H="10" L="100" X="748" c="2" Y="1080" T="12" P=",,,,,,," /><S H="10" L="100" X="380" c="2" Y="920" T="12" P=",,,,,,," /><S H="10" L="100" X="754" c="2" Y="753" T="12" P=",,,,,,," /><S H="10" L="100" X="455" c="2" Y="596" T="12" P=",,,,,,," /><S P=",,,,-10,,," L="500" H="10" c="2" Y="415" T="12" X="238" /><S P=",,,,,,," L="10" X="183" c="2" Y="1493" T="12" H="150" /><S P=",,.3,.2,40,,," L="100" H="17" Y="723" T="12" X="496" /><S L="20" H="100" X="447" Y="433" T="12" P=",,.3,.2,10,,," /><S X="868" L="66" H="40" c="3" Y="568" T="12" P=",,.3,.2,,,," /><S P="1,99999,99999,,,1,," L="50" lua="%d" H="10" c="2" Y="494" T="12" X="945" /><S P="1,99999,,,,,," L="10" lua="%d" H="10" Y="-620" T="12" X="945" /><S L="10" lua="%d" H="200" X="906" Y="487" T="12" P=",,,,,,," /><S X="835" L="10" lua="%d" H="200" c="3" Y="487" T="12" P=",,,,,,," /><S H="10" L="10" lua="%d" X="945" c="2" Y="572" T="12" P=",,,,,,," /><S P=",,,,,,," L="30" lua="%d" X="895" Y="-1130" T="12" H="3000" /><S P="1,99999,,,,,," L="10" lua="%d" X="953" c="4" Y="250" T="13" H="10" /><S X="953" L="50" lua="%d" H="10" c="2" Y="260" T="12" P="1,,99999,,,1,," /><S P=",,.3,.2,,,," L="125" H="55" c="3" Y="335" T="12" X="820" /><S H="10" L="40" c="2" Y="295" T="12" X="950" P=",,9999,,,,," /></S><D><DS Y="1555" X="45" /></D><O /><L><JP M2="" M1="40" AXIS=",1" /><JR P1="945,-625" M1="41" MV="Infinity,2" /><JD M1="40" M2="41" /><JR P1="953,250" M1="46" MV="Infinity,1.75" /><JR M1="46" M2="47" /></L></Z></C>]],
		background = "16e6f4bb3dc.jpg",
		foreground = "167515a75c9.png",
		backgroundCover = "16f06c06a3f.png",
		stolenMoonSky = "16f06b1c601.png"
	},
	minPlayers = 5,
	maxPlayers = 70,
	timerTicks = 12,
	life = 6,
	rewardTitleWizardDefeats = 15,
	rewardTitleSavedSanta = 3,
	rewardOrbSavedSanta = 5,
	--emoteDay = 26
}
module.mapName = { module.formalName, module.team.developer, module.formalName, module.team.artist, module.team.developer, module.formalName, module.team.developer, module.team.artist }

if (not tfm.get.room.playerList[module.team.developer] and (tfm.get.room.uniquePlayers < module.minPlayers or tfm.get.room.uniquePlayers > module.maxPlayers)) then
	return system.exit()
end

--[[ Translations ]]--
local translation
do
	local texts = {
		en = {
			dialog = {
				close = "Press spacebar to close the dialog.",
				[1] = " Oh, h-hey! I'm so glad to finally find someone.\n\n The elves were working on the Christmas decorations when an evil wizard showed up and took control of the yetis on the mountain.\n He doesn't accept the fact that Halloween has ended and wants to ruin our celebration. Our Christmas tree has been torn apart and its pieces are scattered across the mountain... And Santa has gone missing...\n\n I w-was so scared... I ran away before the wizard could take me. Please, help us!", -- Elf init
				[2] = " Yaaaaaay!\n\n Thank you, brave little warrior. You have defeated the evil wizard and our Christmas tree is complete once again, we can finally celebrate Christmas!\n\n Ugh... I almost forgot about a more serious problem - which is yet to be taken care of... SANTA IS STILL MISSING!", -- Tree complete
				[3] = " Yupiiiiiiiiii!\n\n Thanks to you, our Christmas tree is ready-to-go for tonight and I am now free and able to deliver the gifts to all the little mice!\n\n Your gift will be the biggest one! I can not thank you enough.\n\n Let's take this bad wizard to the authorities." -- Save santa
			},
			elfTalkMountain = "Oh, look! An elf, and... Hey, he is hurt! Go next to him and press <B>[spacebar]</B> to check what happened.",
			introduceMountain = "Explore the mountain and find the missing pieces of the magic Christmas tree, or else the event will be ruined forever.",
			introduceAttack = "Press <B>[spacebar]</B> to use the fire power you have obtained to guide you through this adventure!",
			introduceWizard = "Oh, look! There is a missing piece of the tree right there! B-but... the wizard, we need to go through him first.",
			wizardShowUp = "How dare you challenge me, little mouse!? Do you think you are brave? Let's see if you're capable of facing my wrath!",
			wizardDefeat = "Noooooooooooooo! My mixtures! My cauldron! Arrrgh, it burns! [%dx]",
			collectItem = "Press <B>[spacebar]</B> to collect the item. Bring it back to the starting point and press the key again to place it!",
			placeItem = "Yay! You have found one more missing piece of the tree! <B>%d</B> item(s) to go and Christmas may be saved thanks to you!",
			elfTalkSanta = "Oh, no... %s looks terribly worried about something. Go talk to him!",
			findSanta = "Look! It is Santa right there... He is chained! Let's save him before he freezes!",
			introduceMutantWizard = "W-what? Is that the evil wizard? We dropped him in the cauldron, how can he still be here?",
			mutantWizardShowUp = "Silly rat, you still have a lot to learn about the mystic world. My cauldron had my most powerful mixture and it turned me into a stronger, smarter and faster being. This is your end.",
			mutantWizardDefeat = "Aaaaaaaaaaargh, how could you... My powers... My head... My hood! Give it back to me! Let me go! Aaaarrgh!",
			mutantWizardSuicide = "Muahahahahaha, Santa is frozen! Christmas is over!",
			credit = "<PT>This event most certainly would have been stuck in our minds for eternity if it was not for the following awesome people;\n\t<font color='#%s'>Code by %s.</font>\n\t<font color='#%s'>Art by %s.</font>\n\t<font color='#%s'>%s translation by %s.</font>\n\t<font color='#%s' size='11'>Special thanks to %s.</font>",
			stealMoon = "AAAAH! I, THE LORD OF LORDS, THE WIZARD OF WIZARDS, DO CURSE YOU ALL. THIS IS THE END, PREPARE TO FEEL MY POWER!",
			introducePuzzle = "We have checked every single corner inside the mountain but there's still no sight of Santa. There's only one place that he could possibly be... Fast, let's climb the magic tree! There might be something in the caves to help us reach the top.",

			translator = "Bolodefchoco#0000"
		},
		br = {
			dialog = {
				close = "Pressione a barra de espaço para fechar o diálogo.",
				[1] = " Ah, o-oi! Estou tão feliz que finalmente encontrei alguém.\n\n Os elfos estavam trabalhando na decoração do natal quando um mago malvado apareceu e começou a controlar todos os yetis na montanha.\n Ele não aceitou o fato de que o Halloween terminou e quer arruinar nossa celebração. Nossa árvore de natal foi despedaçada e suas peças estão espalhadas pela montanha... O Noel sumiu...\n\n E-eu estava tão assutado... Eu corri antes que o mago pudesse me pegar. Por favor, nos ajude!",
				[2] = " Ebaaaaa!\n\n Obrigado, pequeno e bravo guerreiro. Você derrotou o mago malvado e nossa árvore de natal está completa novamente, nós finalmente podemos celebrar o natal!\n\n Aff... Eu quase me esqueci de um problema ainda mais sério - que ainda deve ser resolvido... O NOEL SUMIU!",
				[3] = " Uhuuuuuuuuuuu!\n\n Graças a você, nossa árvore de natal está pronta para hoje à noite e agora estou livre e conseguirei entregar os presentes para todos os ratinhos!\n\n Seu presente será o maior! Não posso te agradecer o bastante.\n\n Vamos levar este mago do mau para as autoridades."
			},
			elfTalkMountain = "Olha! Um elfo, e... Eiii, ele está machucado! Vá perto dele e aperte a <B>[barra de espaço]</B> para checar o que aconteceu.",
			introduceMountain = "Explore a montanha e encontre as peças da árvore mágica de natal, senão o evento estará arruinado para sempre.",
			introduceAttack = "Pressione a <B>[barra de espaço]</B> para usar o poder de fogo que você obteve para lhe guiar nesta aventura!",
			introduceWizard = "Veja! Tem uma peça da árvore bem ali! M-mas... o mago, temos que passar por ele.",
			wizardShowUp = "Como ousa me desafiar, pequeno rato? Se acha corajoso? Vejamos se é capaz de encarar minha ira.",
			wizardDefeat = "Nããããããooooooo! Minhas poções! Meu caldeirão! Aaaaaaaa, isso queima! [%dx]",
			collectItem = "Pressione a <B>[barra de espaço]</B> para coletar o item. Leve-o de volta para o ponto de início e pressione a tecla novamente para colocá-lo na árvore",
			placeItem = "Isso! Você encontrou mais uma peça da árvore! Mais <B>%d</B> item(ns) e o natal poderá ser salvo graças a você!",
			elfTalkSanta = "Ah, não... %s parece terrivelmente preocupado com algo. Vá falar com ele!",
			findSanta = "Olha! É o Noel logo ali... Ele está acorrentado! Vamos salvá-lo antes que ele congele!",
			introduceMutantWizard = "Eita? É o mago do mau? Nós fizemos com que ele caísse no caldeirão, como ele ainda está aqui?",
			mutantWizardShowUp = "Rato bobo, você ainda tem muito o que aprender sobre o mundo místico. Meu caldeirão tinha minha poção mais poderosa e me transformou num ser mais forte, mais esperto e mais rápido. É o seu fim!",
			mutantWizardDefeat = "Aaaaaaaaaaa, como você pôde... Meus poderes... Minha cabeça... Meu capuz! Me devolva! Deixe-me ir! Aaaaaaaaaaaaaa!",
			mutantWizardSuicide = "Muhahahahaha, o velhinho congelou! O natal acabou!",
			credit = "<PT>Este evento certamente ficaria - pela eternidade - apenas em nossas cabeças se não fossem pelas pessoas maravilhosas a seguir;\n\t<font color='#%s'>Código por %s.</font>\n\t<font color='#%s'>Arte por %s.</font>\n\t<font color='#%s'>Tradução %s por %s.</font>\n\t<font color='#%s' size='11'>Agradecimentos especiais para %s.</font>",
			stealMoon = "AAAAH. EU, O LORDE DOS LORDES, O MAGO DOS MAGOS, AMALDIÇOO TODOS VOCÊS. ESTE É O FIM, E VOCÊS SENTIRÃO MEU PODER!",
			introducePuzzle = "Nós já olhamos em cada canto dentro da montanha, mas ainda não tivemos nenhuma pista do paradeiro do Papai Noel. Só há um lugar que ele poderia estar... Rápido, vamos subir na árvore mágica! Deve ter alguma coisa dentro da caverna para nos ajudar a chegar no topo.",

			translator = "Bolodefchoco#0000"
		},
		es = {
			dialog = {
				close = "Presiona espacio para cerrar el diálogo.",
				[1] = " Oh, ¡h-hola! Estoy tan feliz de encontrar a alguien.\n\n Los elfos estaban trabajando en las decoraciones de Navidad cuando un malvado mago apareció y tomó el control de los yetis en la montaña.\n No aceptó el hecho de que Halloween terminó y quiere arruinar nuestra celebración. Nuestro árbol de Navidad fue destrozado y sus piezas se han disperzado al otro lado de la montaña... Santa ha desaparecido...\n\n T-tenía tanto miedo... Corrí lejos antes de que el mago me pudiera hacer algo. Por favor, ¡Ayúdanos!", -- Elf init
				[2] = " ¡Yeeeeeey!\n\n Gracias, pequeño valiente guerrero. Derrotaste al mago malvado y nuestro árbol de Navidad está completo de nuevo, ¡al fin podemos celebrar Navidad!\n\n Ugh... Casi me olvido de un problema más importante - el cual se debe tratar... ¡SANTA AÚN ESTÁ DESAPARECIDO!", -- Tree complete
				[3] = " ¡Yupiiiiiiiiii!\n\n Gracias a tí, ¡nuestro árbol de Navidad está listo para esta noche y ahora puedo entregar los regalos a todos los pequeños ratones!\n\n ¡Tu regalo será el más grande! No puedo agradecerte lo suficiente.\n\n Llevemos a este mal mago con las autoridades." -- Save santa
			},
			elfTalkMountain = "Oh, ¡mira! Un elfo, y... Heey, ¡está lastimado! Acércate y presiona <B>[espacio]</B> para saber que pasó.",
			introduceMountain = "Explora la montaña y encuentra las piezas faltantes del árbol mágico de Navidad, o si no el evento será arruinado por siempre.",
			introduceAttack = "¡Presiona <B>[espacio]</B> para usar el poder de fuego que obtuviste para guiarte por esta aventura!",
			introduceWizard = "Oh, ¡mira! ¡Hay una pieza faltante del árbol justo allí! P-pero... el mago, debemos ir por el primero.",
			wizardShowUp = "¿¡Cómo te atreves a desafiarme, pequeño ratón!? ¿Te crees valiente? ¡Veamos si eres capaz de enfrentarte a mi furia!",
			wizardDefeat = "¡Noooooooooooooo! ¡Mis mezclas! ¡Mi caldera! Arrrgh, ¡me quema! [%dx]",
			collectItem = "Presiona <B>[espacio]</B> para agarrar el item. ¡Llévalo al punto de inicio y presiona la tecla de nuevo para ponerlo!",
			placeItem = "¡Yey! ¡Encontraste una pieza faltante del árbol! ¡Faltan <B>%d</B> item(s) más y la Navidad podría estar salvada gracias a tí!",
			elfTalkSanta = "Oh, no... Parece que %s está terriblemente preocupado por algo. ¡Ve a hablarle!",
			findSanta = "¡Mira! Santa está aquí... ¡Está encadenado! ¡Salvémoslo antes de que se congele!",
			introduceMutantWizard = "¿Q-qué? ¿Es ese el mago malvado? Lo dejamos caer en la caldera, ¿cómo puede estar aquí?",
			mutantWizardShowUp = "Rata tonta, aún debes aprender mucho del mundo místico. Mi caldera tenía mi más poderosa mezcla y me convirtió en un ser más fuerte, más inteligente y más rápido. Este es su final.",
			mutantWizardDefeat = "Aaaaaaaaaaargh, cómo pudiste... Mis poderes... Mi cabeza... ¡Mi gorro! ¡Devuélvemelo! ¡Déjame ir! ¡Aaaarrgh!",
			mutantWizardSuicide = "Muhajajajaja, ¡Santa está congelado! ¡La navidad está perdida!",
			credit = "<PT>Este evento habría quedado atascado en nuestras mentes por la eternidad si no hubiera sido por estas maravillosas personas;\n\t<font color='#%s'>Código por %s.</font>\n\t<font color='#%s'>Arte por %s.</font>\n\t<font color='#%s'>Traducción a %s por %s.</font>\n\t<font color='#%s' size='11'>Agradecimientos especiales a %s.</font>",
			stealMoon = "AAAAH. YO, EL REY DE REYES, EL MAGO DE MAGOS, LOS MALDIGO A TODOS. ESTE ES EL FINAL, ¡Y TODOS SENTIRÁN MI PODER!",
			introducePuzzle = "Hemos revisado cada esquina dentro de la montaña pero no hay señal de Santa. Hay solo un lugar en el que podria estar... Rapido, ¡escalemos el arbol magico! Podria haber algo en las cuevas para ayudarnos a llegar a la cima.",

			translator = "Tocutoeltuco#0000"
		},
		fr = {
			dialog = {
				close = "Appuie sur espace pour fermer la fenêtre.",
				[1] = " Oh, h-hey! Je suis tellement content d'avoir enfin trouvé quelqu'un.\n\n Les elfes étaient en train de travailler sur les décorations de Noël quand un sorcier maléfique est apparu et a commencé à prendre le contrôle du yéti de la montagne.\n Il n'a toujours pas digéré que Halloween soit terminé et il veut ruiner notre fête. Notre sapin de Noël a été saccagé et ses différents morceaux ont été éparpillés dans la montagne... Le Père Noël a disparu...\n\n J'ai eu tellement peur... Je me suis échappé avant que le sorcier ne m'attrape. S'il te plaît, aide-nous !", -- Elf init
				[2] = " Woooooow !\n\n Merci, courageux petit combattant. Tu as vaincu le sorcier maléfique et notre sapin de Noël est de nouveau complet, nous pouvons finalement célébrer Noël !\n\n Houlà... J'ai presque oublié un plus gros problème - qui est encore d'actualité... IL MANQUE TOUJOURS LE PÈRE NOËL !", -- Tree complete
				[3] = " Youpiiiiiiiii !\n\n Merci à toi, notre sapin de Noël est prêt pour cette nuit et je suis maintenant libre et capable de livrer les cadeaux à toutes les petites souris !\n\n Ton cadeau sera le plus gros ! Je ne te remercierai jamais assez.\n\n Allons livrer ce méchant sorcier aux autorités." -- Save santa
			},
			elfTalkMountain = "Oh, regarde ! Un elfe, et... Hé, il est blessé ! Rapproche-toi de lui et appuie sur la <B>[barre d'espace]</B> pour voir ce qu'il s'est passé.",
			introduceMountain = "Explore la montagne et trouve les pièces manquantes de ce sapin de Noël magique, ou sinon la fête sera ruinée à jamais.",
			introduceAttack = "Appuie sur la <B>[barre d'espace]</B> pour utiliser le pouvoir de feu que tu as obtenu pour te guider à travers cette aventure !",
			introduceWizard = "Oh, regarde ! Il y a une pièce manquante du sapin droit devant ! M-Mais... le sorcier, nous devons d'abord le battre.",
			wizardShowUp = "Comment oses-tu me défier, petite souris !? Penses-tu être assez courageuse ? Voyons voir si tu es capable d'affronter ma colère !",
			wizardDefeat = "Noooooooooooooon ! Mes potions ! Mon chaudron ! Aaaaah, ça brûle ! [%dx]",
			collectItem = "Appuie sur la <B>[barre d'espace]</B> pour collecter l'objet. Ramène-le au point d'apparition et appuie de nouveau sur espace pour le placer !",
			placeItem = "Wow ! Tu as trouvé une autre pièce manquante du sapin ! Plus que <B>%d</B> objet(s) à trouver et Noël sera sauvé grâce à toi !",
			elfTalkSanta = "Oh, non... %s a l'air terriblement inquiet à propros de quelque chose. Va lui parler !",
			findSanta = "Regarde ! C'est le Père Noël là... Il est enchaîné ! Allons le sauver avant qu'il ne gèle !",
			introduceMutantWizard = "Q-Quoi ? Est-ce le sorcier maléfique ? Nous l'avons envoyé dans le chaudron, comment peut-il encore être là ?",
			mutantWizardShowUp = "Stupide rat, tu as encore énormement de choses à apprendre sur ce monde mystique. Mon chaudron était rempli de la plus puissante mixture et cela m'a rendu encore plus puissant, intelligent et rapide. C'est fini pour toi.",
			mutantWizardDefeat = "Aaaaaaaaaaah, comment as-tu pu... Mes pouvoirs... Ma tête... Ma capuche ! Rends-la moi ! Laisse-moi partir ! Aaaaaah !",
			mutantWizardSuicide = "Mouhahahahaha, le Père Noël est congelé ! Noël est terminé !",
			credit = "<PT>Cet événement n'aurait jamais pu avoir lieu et serait resté à l'état de prototype si il n'y avait pas eu toutes ces incroyables personnes;\n\t<font color='#%s'>Code par %s.</font>\n\t<font color='#%s'>Graphismes par %s.</font>\n\t<font color='#%s'>%s Traduction par %s.</font>\n\t<font color='#%s' size='11'>Merci aussi à %s.</font>",
			stealMoon = "AAAAH. JE, LE SEIGNEUR DES SEIGNEURS, LE SORCIER DES SORCIERS, TE MAUDIT. C'EST LA FIN, ET TU AS RESSENTI MA PUISSANCE !",
			introducePuzzle = "We have checked every single corner inside the mountain but there's still no sight of Santa. There's only one place that he could possibly be... Fast, let's climb the magic tree! There might be something in the caves to help us reach the top.",

			translator = "Tortuegreen#0000"
		},
		pl = {
			dialog = {
				close = "Wciśnij spację, by zamknąć dialog.",
				[1] = " O, c-cześć! Tak się cieszę, że w końcu kogoś znalazłem.\n\n Elfy pracowały nad świątecznymi dekoracjami, gdy zły czarodziej przejął kontrolę nad yeti z góry.\n Nie zaakceptował faktu, że Halloween skończyło się i chce zrujnować nasze święto. Nasza choinka została rozerwana na strzępy i jej kawałki są rozrzucone po całej górze... Mikołaj zaginął...\n\n B-bardzo się balem... Zdołałem uciec, zanim czarodziej mnie dorwał. Proszę, pomóż nam!", -- Elf init
				[2] = " Jeeeeeeej!\n\n Dzięki, mały, odważny/-a wojowniku/-czko. Pokonałeś/-aś złego czarodzieja, a nasza choinka jest znów cała, w końcu możemy świętować Boże Narodzenie!\n\n Eh... Prawie zapomniałem, że mamy jeszcze jeden problem - którym jeszcze trzeba się zająć... MIKOŁAJA NADAL NIE MA!", -- Tree complete
				[3] = " Jupiiiiiiiiii!\n\n Dzięki tobie, nasza choinka jest gotowa, a ja jestem wojny i mogę dostarczyć prezenty do wszystkich małych myszek!\n\n Twój prezent będzie największy! Nie mogę ci wystarczająco podziękować.\n\n Weżmy tego okropnego czarodzieja." -- Save santa
			},
			elfTalkMountain = "O, patrz! Elf, i... Heej, on jest ranny! Podejdź do niego i wciśnij <B>[spację]</B>, by sprawdzić, co się stało.",
			introduceMountain = "Eksploruj górę i znajdź kawałki magicznej choinki, albo święta będą zrujnowane na zawsze.",
			introduceAttack = "Wciśnij <B>[spację]</B>, by użyć mocy ognia, którą nabyłeś/-aś, by przeprowadzić cię przez tę przygodę!",
			introduceWizard = "O, patrz! Jeden z kawałków choinki jest tutaj! A-ale... czarodziej, najpierw musimy przejść przez niego.",
			wizardShowUp = "Jak śmiesz stawiać mi wyzwanie, mała myszo!? Myślisz, że jesteś odważny/-a? Zobaczmy, czy jesteś w stanie stanąć twarzą w twarz z moim gniewem!",
			wizardDefeat = "Nieeeeeeeeee! Moje mikstury! Mój kocioł! Ahhhh, parzy! [%dx]",
			collectItem = "Wciśnij <B>[spację]</B>, by podnieść przedmiot. Zanieś go z powrotem do punktu początkowego i wciśnij klawisz ponownie, by go postawić!",
			placeItem = "Jej! Znalazłeś kolejny kawałek choinki! <B>%d</B> przedmiot(-y/-ów) do zebrania, a święta zostaną uratowane, przez ciebie!",
			elfTalkSanta = "O nie... %s wygląda na okropnie zmartwionego. Porozmawiaj z nim!",
			findSanta = "Patrz! To jest Mikołaj... Jest przykuty! Uratujmy go, zanim zamarznie!",
			introduceMutantWizard = "C-co? Czy to zły czarodziej? Wrzuciliśmy go do kotła, co on tu robi?",
			mutantWizardShowUp = "Głupi szczurze, musisz się jeszcze dużo nauczyć o mistycznym świecie. W moim kotle była moja najsilniejsza mikstura, która uczyniła mnie silniejszym, mądrzejszym i szybszym. To wasz koniec.",
			mutantWizardDefeat = "Aaaaaaaaaaah, jak mogłeś/-aś... Moje moce... Moja głowa... Mój kaptur! Oddaj mi go! Aaaah!",
			mutantWizardSuicide = "Muhahahahaha, Mikołaj zamarzł! To koniec świąt!",
			credit = "<PT>Ten event najprawdopodobniej zostałby w naszych głowach na zawsze, gdyby nie ci świetni ludzie;\n\t<font color='#%s'>Kod - %s.</font>\n\t<font color='#%s'>Rysunki - %s.</font>\n\t<font color='#%s'>%s tłumaczenie - %s.</font>\n\t<font color='#%s' size='11'>Specjalne podziękowania dla %s.</font>",
			stealMoon = "AAAAH. JA, PAN PANÓW, CZARODZIEJ CZARODZIEJÓW, PRZEKLINAM WAS WSZYSTKICH. TO JEST KONIEC, I MUSICIE POCZUĆ MOJĄ MOC!",
			introducePuzzle = "Sprawdziliśmy każdy zakątek w górze, ale Mikołaja nadal nigdzie nie ma. Zostało tylko jedno miejsce, w którym może być... Szybko, wespnijmy się na magiczną choinkę! W jaskiniach może być coś, co pomoże nam dostać się na szczyt.",

			translator = "Adriantal#0000"
		},
		hu = {
			dialog = {
				close = "Nyomj szóközt a beszédpanel bezárásához.",
				[1] = " Oh, h-helló! Örülök, hogy végre találtam valakit.\n\n A manók éppen a Karácsonyi díszeket tették fel, amikor egy gonosz mágus előbukkant, és a hegyi yetiket elvarázsolta.\n Nem örül annak, hogy véget ért a Halloween, ezért tönkre akarja tenni a szent ünnepet. A karácsonyfánkat darabokra tépte, és a részeit a hegyeken rejtette el... Mikulás is eltűnt...\n\n Annyira f-féltem... Elfutottam, mielőtt a mágus engem is elvitt volna. Kérlek, segíts rajtunk!", -- Elf init
				[2] = " Yaaaaaay!\n\n Köszönöm, bátor hős. Legyőzted a gonosz mágust, és a karácsonyfánk is újra teljes pompában ragyog. Végre megünnepelhetjük a Karácsonyt!!\n\n Ugh... Majdnem elfelejtettem, van egy komolyabb problémánk is, amit meg kellene oldani... A MIKULÁS MÉG MINDIG NINCS MEG!", -- Tree complete
				[3] = " Yupiiiiiiiiii!\n\n Neked köszönhetően a fánk elkészült, és most már nyugodtan kioszthatom az ajándékokat a kicsi egérkéknek!\n\n A tiéd lesz a legnagyobb! Nem tudom, hogy köszönhetném meg a segítséged.\n\n Adjuk át ezt a mágust a hatóságoknak." -- Save santa
			},
			elfTalkMountain = "Oh, nézd! Egy manó, és... Várjunk csak, megsérült! Menj a közelébe, és nyomd meg a <B>[szóközt]</B>, hogy megtudd mi történt.",
			introduceMountain = "Fedezd fel a hegyet, és találd meg a hiányzó darabjait a varázslatos karácsonyfának, különben az ünnep örökre elveszti az értelmét.",
			introduceAttack = "Nyomd meg a <B>[szóközt]</B>, hogy használd a tüzes erődet, amit a kalandod alatt szereztél!",
			introduceWizard = "Oh, nézd! Itt egy hiányzó fadarabka! D-de... a mágus, először őt kell legyőznünk.",
			wizardShowUp = "Még is mit képzelsz, hogy velem szembeszállsz, kisegér!? Azthiszed olyan bátor vagy? Lássuk hát, hogy igazából mennyire vagy erős!",
			wizardDefeat = "Neeeeeeeeee! A kotyvalékaim! Az üstöm! Arrrgh, éget! [%dx]",
			collectItem = "Nyomd meg a <B>[szóközt]</B>, hogy felszedd a tárgyat. Vidd vissza a kezdőponthoz, és ott nyomd le a gombot újra, hogy lerakd.",
			placeItem = "Yay! Találtál még egy hiányzó fadarabot! Már csak <B>%d</B> darab, és neked köszönhetően a karácsony megmenekült!",
			elfTalkSanta = "Oh, ne... Mintha valami nagyon zavarná %s-t, menj beszélj vele !",
			findSanta = "Nézd! Az ott Mikulás... valaki leláncolta! Mentsük meg, mielőtt odafagyna!",
			introduceMutantWizard = "M-mi? Ez a gonosz mágus? Beledobtuk az üstbe, hogy lehet, hogy itt van?",
			mutantWizardShowUp = "Bolond patkány, még sokat kell tanulnod a varázsvilágról. Az üstömben volt a legerősebb bájitalom valaha, és egy erősebb, gyorsabb, okosabb lénnyé alakultam át. Itt a sztori vége.",
			mutantWizardDefeat = "Aaaaaaaaaaargh, hogy tudtad... az erőm... a fejem... a köpenyem! Add vissza azonnal! Engedj el! Aaaarrgh!",
			mutantWizardSuicide = "Muhahahahaha, a Mikulás megfagyott! Vége a karácsonynak!",
			credit = "<PT>Az event valószínűleg sokáig csak ötlet maradt volna, ha ezek a király egerek nem segítettek volna;\n\t<font color='#%s'>A kódot %s készítette.</font>\n\t<font color='#%s'>A rajzot %s készítette.</font>\n\t<font color='#%s'>%s fordítás %s készítette.</font>\n\t<font color='#%s' size='11'>Különleges köszönet: %s.</font>",
			stealMoon = "AAAAH. ÉN, AZ URAK URA, A MÁGUSOK MÁGUSA, A VARÁZSLÓK VARÁZSLÓJA, ELÁTKOZLAK TITEKET. FUSS EL VÉLE, ITT A MESE VÉGE, ÉS ÉREZNI FOGJÁTOK AZ ÁTKOMAT!",
			introducePuzzle = "Minden egyes helyet átnéztünk a hegyen, de még mindig nem találtuk meg a Mikulást. Már csak egy hely maradt... Gyorsan, másszuk meg a hegyet! Lehet hogy valami van a barlangban, ami segíthet a tetejére feljutni.",

			translator = "Peanut_butter#0015"
		},
		cn = {
			dialog = {
				close = "按空格鍵關閉對話。",
				[1] = " 噢, 是你! 我很高興終於找到了其他人。\n\n 當精靈們都在弄聖誕裝飾的時候, 出現了一個邪惡的巫師而且他在操縱著山上的雪人。\n 他不接受萬聖節活動完結了的事實, 想來搗亂我們的聖誕慶祝。我們的聖誕樹已經被撕毀了, 殘枝滿佈山上... 聖誕老人也不見了...\n\n 我 我太害怕了... 我幸好在巫師把我抓走前逃掉。請幫幫我們!", -- Elf init
				[2] = " 好棒!\n\n 謝謝, 英勇的小戰士。你打敗了邪惡的巫師而且我們的聖誕樹恢復原狀了, 我們終於可以慶祝聖誕了!\n\n 呃... 我差點忘了一個更嚴重的問題 - 一個最應該注意的事... 聖誕老人還是不見了!", -- Tree complete
				[3] = " 嘿嘿!\n\n 全賴你, 我們的聖誕樹準備好迎接晚上的派對而我現在也有空, 可以給小鼠們送上禮物了!\n\n 你的禮物是最大的一份! 我實在太感激你了。\n\n 來把這壞巫師帶去審判吧。" -- Save santa
			},
			elfTalkMountain = "噢, 你看! 一隻精靈, 而及... 欸, 他受傷了! 到他旁邊按 <B>[空格鍵]</B> 來檢查他發生了什麼事。",
			introduceMountain = "檢查山上找找看奇妙聖誕樹不見了的部分, 不然活動就會永遠被毀了。",
			introduceAttack = "按 <B>[空格鍵]</B> 使用剛剛獲得的發射能力來幫助你渡過這次歷險!",
			introduceWizard = "噢, 你看! 那邊有一片聖誕樹不見了的部分! 但...那巫師, 我們要先比他快。",
			wizardShowUp = "你竟敢挑戰我, 小老鼠!? 你覺得你很英勇? 就看看你有沒有能力去面對我的法杖!",
			wizardDefeat = "不要啊啊啊啊啊! 我的混合成品! 我的法術鍋子! 啊啊, 它著火了! [%dx]",
			collectItem = "按 <B>[空格鍵]</B> 來收集物件。然後把它帶回起點再按空格鍵放置好它!",
			placeItem = "棒! 你又多找到了一片聖誕樹不見了的部分! 再收集 <B>%d</B> 個部分就可以挽回聖誕節了, 這都是全靠你!",
			elfTalkSanta = "噢, 不好了... %s 看來超擔心某事情。跟他談話吧!",
			findSanta = "看! 聖誕老人就在那邊... 他被綁起來了! 我們在他凍成冰之前來把他救走吧!",
			introduceMutantWizard = "什 什麼? 是那個邪惡的巫師嗎? 我們不是把他丟到鍋子裡面了嗎, 他怎麼還在?",
			mutantWizardShowUp = "愚蠢的小鼠, 你還要多學習關於這個法術世界。我的鍋子有最強大的混合成品而且讓我變得更強, 更聰明更快的巫師。是時候終結你了。",
			mutantWizardDefeat = "啊啊啊啊啊啊, 你怎麼可以... 我的力量... 我的頭... 我的斗篷! 把它還給我! 讓我走! 啊啊嘶!",
			mutantWizardSuicide = "哇哈哈哈哈哈, 聖誕老人被冰凍了! 聖誕完蛋了!",
			credit = "<PT>要不是有以下人員的協助, 這個活動大概永遠都只會留在回憶中;\n\t<font color='#%s'>編程: %s。</font>\n\t<font color='#%s'>藝術設計: %s。</font>\n\t<font color='#%s'>%s 翻譯: %s。</font>\n\t<font color='#%s' size='11'>特別感謝 %s。</font>",
			stealMoon = "哼哈哈。我, 皇者中的皇者, 巫師中的巫師, 詛咒你們。這就是你們的下場, 而且你們將會感受到我的力量!",
			introducePuzzle = "我們找遍了山上的每一個角落但還是沒有聖誕老人的蹤跡。看來只剩下一個地方... 快, 一起爬到神奇聖誕樹上吧! 洞穴裡可能有東西可以幫我們到達那裡。",

			translator = "Wrfg#0000"
		},
		tr = {
			dialog = {
				close = "Kapatmak için boşluk tuşuna basın.",
				[1] = " O, hey! Sonunda birini bulabildim!\n\n Elfler, Noel süsleriyle uğraşırlarken kötü niyetli bir büyücü gelip dağdaki yetileri kontrol altına aldı!\n Kötü büyücü, Cadılar Bayramı’nın bittiğini kabul etmiyordu ve bizim süslerimizi mahvetmek istiyordu. Büyücü Noel ağacımızı paramparça etti ve ağacın parçalarını da dağ boyunca dağıttı... Noel Baba da ortalıkta yok…\n\n Çok korktum… Büyücü beni yakalamadan kaçıverdim. Lütfen bize yardım et!", -- Elf init
				[2] = " Yeeeey!\n\n Sağ olasın cesur küçük savaşçı. Kötü niyetli büyücünün hakkından geldin ve Noel ağacımız da bir bütün halinde artık. Sonunda Noel’i kutlayabiliriz! \n\n Ah… Neredeyse hallolmamış sorunumuzu unutuyordum… NOEL BABA HALA KAYIP!", -- Ağaç tamamlandı
				[3] = " Yupiiiiiiiiii!\n\n Sayende Noel ağacımız akşam için hazır! Ben de artık fareciklere hediyelerini dağıtabilirim!\n\n Senin hediyen en büyüğü olacak! Sana ne kadar teşekkür etsem az.\n\n Şu kötü niyetli büyücüyü de yetkililere teslim edelim." -- Noel Baba’yı kurtar
			},
			elfTalkMountain = "Aa, baksana! Bir elf, ve… Heey, yaralanmış! Ne olduğunu öğrenmek için yanına yaklaşıp <B>[boşluk]</B> tuşuna bas.",
			introduceMountain = "Dağı keşfe çık ve sihirli Noel ağacının kayıp parçalarını bul, yoksa etkinlik mahvolacak!",
			introduceAttack = "Bu macerada sana yardımcı olacak ateş gücünü <B>[boşluk]</B> tuşuna basarak kullanabilirsin!",
			introduceWizard = "Aa, bak! Ağacın bir parçası tam orada! A-ama… büyücü… Önce onu geçmeliyiz.",
			wizardShowUp = "Ne hakla bana meydan okursun, seni minik fare!? Kendini cesur mu sanıyorsun? Görelim bakalım öfkeme karşı koyabilecek misin!",
			wizardDefeat = "Haaaayııııır! Karışımlarım! Büyü kazanım! Aaahhh, yakıyor! [%dx]",
			collectItem = "Parçayı almak için <B>[boşluk]</B> tuşuna bas. Parçayı başlangıç noktasına geri götür ve yerleştirmek için tekrar boşluk tuşuna bas!",
			placeItem = "Yey! Ağacın bir parçasını daha buldun! <B>%d</B> parça daha, ve sonra Noel senin sayende kurtulmuş olacak!",
			elfTalkSanta = "Hayır, olamaz… %s bir şeyler hakkında endişeli gibi gözüküyor. Git ve onunla konuş.",
			findSanta = "Bak! Noel Baba, işte orada… Ama zincirlenmiş! Soğuktan donmadan Noel Baba’yı kurtaralım!",
			introduceMutantWizard = "N-ne? O kötü niyetli büyücü değil mi? Onu büyü kazanına atmıştık, nasıl hala burada olabilir?",
			mutantWizardShowUp = "Seni aptal sıçan, mistik dünya hakkında öğrenmen gereken daha çok şey var. Büyü kazanımın içinde en güçlü karışımım vardı ve onun sayesinde artık daha güçlü, daha akıllı ve daha hızlıyım! Sonun geldi.",
			mutantWizardDefeat = "Aaaaaaaaaaahhh, sen nasıl… Güçlerim… Kafam… Kapşonum! Geri ver onu! Bırak beni! Aaaahhh!",
			mutantWizardSuicide = "Muhahahahaha, Noel Baba soğuktan dondu! Noel sona erdi!",
			credit = "<PT>Uzun zamandır bu etkinliği yapmayı düşünüyorduk ve bu insanlar olmasaydı bu etkinlik mümkün olamazdı. \n\t<font color='#%s'>Kodlayan: %s.</font>\n\t<font color='#%s'>Görseller: %s.</font>\n\t<font color='#%s'>%s Çeviren: %s.</font>\n\t<font color='#%s' size='11'>Teşekkürler: %s.</font>",
			stealMoon = "AAAAH. BEN, LORDLARIN LORDU, BÜYÜCÜLERİN BÜYÜCÜSÜYÜ, HEPİNİZİ LANETLİYORUM. İŞTE SON GELDİ, GÜCÜMÜ HİSSEDECEKSİNİZ!",
			introducePuzzle = "Dağın içini, her köşesini didik didik aradık fakat Noel Baba'dan eser yok. Noel Baba'nın olabileceği tek bir yer kalıyor... Çabuk, sihirli ağaca tırmanalım! Mağaraların içinde tepeye çıkmak için kullanabileceğimiz bir şeyler olmalı!",

			translator = "Bisharch#4886"
		},
		ar = {
			dialog = {
				close = "إضغط على زر المسافة لإغلاق الحوار",
				[1] = "اوه, مرحبا! انا سعيد لاني اخيرا وجدت شخصا.\n\n كانت الاقزام تعمل على زينة عيد الميلاد عندما ظهر ساحر شرير وسيطر على اليتي الموجودة في الجبل.\n لم يتقبل حقيقة ان الهالوين انتهى ويريد تخريب احتفالنا. شجرة عيد الميلاد الخاصة بنا تم تمزيقها كليا واجزائها مبعثرة على الجبل...واصبح سانتا مفقودا...\n\n كـ-كنت خائفا جدا ... هربت بعيدا قبل ان يستطيع الساحر امساكي. ارجوك , ساعدنا!", -- Elf init
				[2] = " ياااااي !\n\n شكرا لك, ايها المحارب الشجاع الصغير. لقد تغلبت على الساحر الشرير وشجرة عيد الميلاد اكتملت مجددا , يمكننا اخيرا الإحتفال بعيد الميلاد\n\n اوه... كدت انسى شيئا مهم - والذي يجب ان نهتم به... سانتا لازال مفقود !", -- Tree complete
				[3] = " يوبيييي!\n\n الشكر لك, شجرة عيد الميلاد جاهزة للليلة وانا حر وقادر على توصيل كل الهدايا الى الفئران الصغيرة !\n\n جائزتك ستكون اكبر واحدة ! لا يمكنني شكرك بما فيه الكفاية.\n\n هيا نأخذ هذا الساحر السيء الى السلطات" -- Save santa
			},
			elfTalkMountain = "اوه, انظر! إنه قزم, وو...هاااي, إنه مصاب! اذهب بجانبه واضغط على [زر المسافة] لتتفقد ما حصل.",
			introduceMountain = "إسكتشف الجبل واعثر على القطع المفقودة من شجرة عيد الميلاد السحرية, وإلا سيتم تخريب الموسم للأبد!",
			introduceAttack = "اضغط على [زر المسافة] لإستعمال قوة النار التي حصلت عليها لكي ترشدك خلال هذه المغامرة !",
			introduceWizard = "اوه,إنظر! القطعة المفقودة من الشجرة هناك! ل-لكن... الساحر ,علينا عبوره اولا.",
			wizardShowUp = "كيف تجرأ على ان تتحداني, ايها الفأر الصغير!? هل تظن انك شجاع؟ لنرى اذا كنت قادرا على مواجهة غضبي!",
			wizardDefeat = "لاااااااااااا ! خلطاتي !قدري ! اررههه, انها تحرق ! [%dx]",
			collectItem = "إضغط على [زر المسافة] لأخد الأداة. اعدها الى نقطة البداية تم اضغط على الزر مجددا لكي تضعها! ",
			placeItem = "يااي ! لقد وجدت قطعة مفقودة اخرى من الشجرة !%d قطع وربما سيتم انقاذ الكريسمس شكرا لك !",
			elfTalkSanta = "يبدو قلقا للغاية بشأن ما. اذهب وتحدث معه !%s... اوه,لا",
			findSanta = "انظر انه سانتا هناك... انه مقيد! هيا ننقذه قبل ان يتجمد!",
			introduceMutantWizard = "م-ماذا؟ هل هذا الساحر الشرير ؟ لقد اوقعناه في القدر, كيف يمكنه ان يكون هنا؟",
			mutantWizardShowUp = "فأر غبي, لايزال عليك التعلم عن عالمي العجيب. كان في قدري السحري خلطة سحرية حولتني الى كائن اقوى, اذكى واسرع. هذة نهايتك.",
			mutantWizardDefeat = "ارررهههههههه, كيف امكنك... قوتي... راسي... قدراتي! اعدها لي! دعني اذهب! ارهههه!",
			mutantWizardSuicide = "موهوهوهاهاها, سانتا مجمد! إنتهى عيد الميلاد!",
			credit = "<PT>من المؤكد أن هذا الحدث كان عالقًا في أذهاننا إلى الأبد إن لم يكن للأشخاص الرائعين التاليين;\n\t<font color='#%s'>.%s برمجة بفضل<</font>\n\t<font color='#%s'>.%s رسومات بفضل<</font>\n\t<font color='#%s'>.%s مترجم %s</font>\n\t<font color='#%s'>.%s شكر خاص الى<</font>",
			stealMoon = "ااهههه! انا, قائد القادة , ساحر السحرة, لعنتي عليكم كلكم. استعدوا لتشعروا بقوتي! ",
			introducePuzzle = "لقد تفقدنا كل زاوية داخل الكهف لاكن لايوجد اي علامة على وجود سانتا. هناك مكان واحد يمكن ان يكون فيه... بسرعة, لنتسلق الشجرة السحرية! يمكن ان يكون هناك شيء فالكهوف سيساعدنا على البحث في الاعلى",

			translator = "Mouny#6831"
		}
	}
	texts.pt = texts.br

	local commu = (texts[tfm.get.room.community] and tfm.get.room.community or "en")
	translation = texts[commu]
	translation.commu = string_upper(commu)
end

-- Enumerations
local objectId = {
	fish = 6300,
	snowball = 34,
	paperBall = 9500,
	icecube = 54,
	box = 100,
	rune = 3200
}

local interfaceId = {
	dialog = 100,
	callback = 200,
	nightMode = 300,
	lifeBar = 400
}

local dialogId = {
	intro = 1,
	findSanta = 2,
	saveSanta = 3
}

local keyCode = {
	space = 32,
	left = 0,
	right = 2
}

local groundId = {
	passage = 100,
	jointEffect = 200,
	bossBlock = 300
}

local jointId = {
	blocker = 1
}

local workingTimerState = {
	stop = -1,
	start = 0,
	tryLimit = 2,
	setBroken = 3,
	setVerified = 4,
	broken = 5
}

local monsterType = {
	snow = 1,
	roar = 2,
	freeze = 3,
	wizard = 4,
	mutantWizard = 5
}

local movementType = {
	biggestGroup = 1,
	nearestPlayer = 2
}

local monsterData = {
	spawningTime = 1000,
	bossSpawningTime = 2000,

	snowballForce = 50,
	snowballQuantity = 2,

	roarRadius = 80,
	roarPower = 30,

	freezeRadius = 80,
	freezeTime = 3500,

	bombForce = 25,
	bombQuantity = 0,
	bombRadius = 80,
	bombPower = 30,
	bombExplodeTimer = 1000,
	bombSpawnTimer = 500,

	breathQuantity = 3,
	breathRadius = 70,
	breathFreezeTime = 2500,
	breathUnfreezeTime = 2500,
	breathSpawnTimer = 1000,

	wizardFallRemoveTimer = 1500,
	mutantWizardFallRemoveTimer = 2000,

	flamingGiftQuantity = 0,
	flamingGiftSpawnTimer = 500,
	flamingGiftXSpeed = -25,

	meteorQuantity = 3,
	meteorSpawnTimer = 2000,
	meteorPower = 70,
	meteorDistantRadius = 130,
	meteorCloseRadius = 70,

	potionForce = 25,
	potionRadius = 80,
	potionSpawnTimer = 1000,
	breakPotionTimer = 1000,
	potionQuantity = 3,

	chaosOpacityDecrease = 0.035,
	chaosOpacityChangeTimer = 500,
	chaosFirstChangeTimer = 3000,

	potionSpawnTimerOnChaos = 1500,
	defaultPotionSpawnTimer = 0,

	mutantWizardSuicideTime = 10000,
	mutantWizardSuicideLifePercent = 35,

	mutantWizardChaosWhenLife = 15,

	movementType = {
		[monsterType.snow] = movementType.nearestPlayer,
		[monsterType.roar] = movementType.biggestGroup,
		[monsterType.freeze] = movementType.biggestGroup
	},
	distanceRadius = {
		[monsterType.snow] = 100,
		[monsterType.roar] = 60,
		[monsterType.freeze] = 60
	},
	life = {
		[monsterType.snow] = 8,
		[monsterType.roar] = 15,
		[monsterType.freeze] = 18,
		[monsterType.wizard] = 110,
		[monsterType.mutantWizard] = 220,

		default = {
			[monsterType.wizard] = 0,
			[monsterType.mutantWizard] = 0
		}
	},
	damage = {
		explode = 0.5,
		freeze = 1,
		flamingGift = 0.5,
		meteorClose = 1,
		meteorDistant = 0.5,
		potion = 0.5
	}
}

local monsterDirection = {
	left = 1,
	front = 2,
	right = 3,

	weakAttack = 1,
	alive = 2,
	strongAttack = 3,
	defeated = 4,
	ultimateAttack = 5,

	suicide = -1
}

local bulletData = {
	damageRadiusFromPlayer = 50,
	damageRadiusFromMonster = 80,
	xSpeed = 20,
	ySpeed = -0.5,
	lifeTime = 1500,
	xSpeedBoss = 25,
	ySpeedBoss = 30,

	damage = 0,
	minimumDamage = 0.6,
	maximumDamage = 2,

	damageWhenMutantWizard = 0,
	minimumMutantWizardMice = 10,
	maximumMutantWizardMice = 0,

	transparent = false
}

local rewardId = {
	badge = 0x01,
	orb = 0x02,
	titleRaclette = 0x04,
	titleSnowball = 0x08
}

local miscData = {
	miceTeleportSpawn = { 45, 1555 },
	fireMachineShootSpawn = { 740, 320 },
	bulletReloadTimer = 680,
	callbackTimer = 2500,
	consumableTimer = 10000,
	finalBossSpawn = { 520, 350 },
	sequenceEmotes = {
		[1] = { 240, 1350, 240, 1353, 0 },
		[2] = { 340, 1030, 335, 1029, 0 },
		[3] = { 750, 888, 751, 883, -1 },
		[4] = { 930, 540 }
	},
	emoteTimer = 1300,
	emotePx = 0,
	beginningFirstStage = { 340, 1523 },
	treeStages = 0,
	defaultDamage = 2.5,
	minimumMiceForTransparentBullet = 30
}

local emoteIds = {
	throw = 26,
	sit = 8,
	clap = 5,
	cry = 2,
	dance = 0
}

local emoteSequence = {
	[1] = 1,
	[2] = 5,
	[3] = 6,
	[4] = 2
}

local consumableIds = {
	firework = 16,
	paperBall = 26,
	postcard = 30,
	microphone = 2234,
	snowfall = 14
}

local consumableCoordinates = {
	-- x1 <= x <= x2, y1 <= y <= y2, emoteId
	firework = { 830, 900, 480, 545, emoteIds.sit }, -- Cauldron
	paperBall = { 590, 740, 270, 370, emoteIds.clap }, -- Gift mountain
	postcard = { 0, 170, 1430, 1600, emoteIds.cry }, -- Mice spawn
	microphone = { 440, 500, 0, 370, emoteIds.dance }, -- Moon corner
	snowfall = { 500, 660, 540, 600, emoteIds.clap } -- Snow mountain
}

local npcNames = {
	elf = "Gerso",
	wizard = "Wizard"
}

local npcColors = {
	elf = "E9E654",
	wizard = "9773F4",
	wizardHex = 0x9773F4
}

local particleData = {
	emoteSequenceParticleId = 29,
	emoteSequenceRadius = 30,
	emoteSequenceParticleQuantity = 5,

	bombExplosionParticleId = 10,

	potionExplosionParticleId = 12,

	breathParticleId = 14,
	breathRadius = 35,
	breathParticleQuantity = 5,

	cauldronParticleId = 1,
	cauldronRadius = 30,
	cauldronParticleVX = 2,
	cauldronParticleVY = -1,
	cauldronParticleAX = -0.15,
	cauldronParticleQuantity = 10,

	meteorParticleId = 3,
	meteorParticleVX = 4,
	meteorParticleVY = 3,
	meteorParticleAX = 0.25,
	meteorParticleQuantity = 10,
	meteorRadius = 10,
	meteorYVariation = 20
}

-- Images
local images = {
	christmasTree = {
		[1] = "167515a46dc.png",
		[2] = "167515a2f6b.png",
		[3] = "167515a17f9.png",
		[4] = "167515a0088.png",
		[5] = "1675159e916.png",
		[6] = "1675159d1a5.png",
		[7] = "1675159ba32.png",
		[8] = "1675159a2c0.png"
	},
	treeItems = {
		[1] = "167515b314e.png", -- Seed
		[2] = "167515b19dc.png", -- Water can
		[3] = "167515b026a.png", -- Fertilizer
		[4] = "167515aeaf8.png", -- Light
		[5] = "167515ad387.png", -- Candy cane
		[6] = "167515abc15.png", -- Bell
		[7] = "167515aa4a3.png", -- Ball
		[8] = "167515a8d32.png" -- Star
	},
	objects = {
		cauldron = "16751bfa8a6.png",
		fireMachine = "16751bfd789.png",
		lock = { "16e71438e8a.png", "16e71423da7.png" },
		snowballs = "16751bfc016.png"
	},
	monsters = {
		[monsterType.snow] = { -- ←↑→
			[monsterDirection.left] = { "16eed594e5f.png", -18, -34 },
			[monsterDirection.front] = { "16eed4a26ee.png", -18, -34 },
			[monsterDirection.right] = { "16eed5f5b91.png", -28, -34 }
		},
		[monsterType.roar] = {
			[monsterDirection.left] = { "16eed59af54.png", -18, -34 },
			[monsterDirection.front] = { "16eed49b734.png", -18, -34 },
			[monsterDirection.right] = { "16eed5ef27a.png", -42, -34 }
		},
		[monsterType.freeze] = {
			[monsterDirection.left] = { "16eed599620.png", -18, -34 },
			[monsterDirection.front] = { "16eed4a6380.png", -18, -34 },
			[monsterDirection.right] = { "16eed5f2d70.png", -42, -34 }
		},
		[monsterType.wizard] = {
			[monsterDirection.alive] = { "16ef27d5566.png", -95, -20 }, -- Normal
			[monsterDirection.defeated] = { "16ef28a9a58.png", -105, -20 } -- Defeated
		},
		[monsterType.mutantWizard] = {
			[monsterDirection.suicide] = { "16f024ba73f.png", -145, -32 }, -- Suicide
			[monsterDirection.alive] = { "16f01ecf9f4.png", -145, -32 }, -- Normal
			[monsterDirection.defeated] = { "16f023ff22c.png", -145, -32 } -- Defeated
		},
		attack = {
			[monsterType.snow] = {
				[monsterDirection.left] = { "16eed720943.png", -28, -34 },
				[monsterDirection.right] = { "16eed72296e.png", -26, -34 }
			},
			[monsterType.freeze] = {
				[monsterDirection.left] = { "16eed718d77.png", -38, -34 },
				[monsterDirection.right] = { "16eed71dbdc.png", -50, -34 }
			},
			[monsterType.roar] = {
				[monsterDirection.left] = { "16eed725073.png", -38, -40 },
				[monsterDirection.right] = { "16eed7270f7.png", -32, -40 }
			},
			[monsterType.wizard] = {
				[monsterDirection.weakAttack] = { "16ef2811ccd.png", -105, -20 }, -- Throwing (hands 180deg)
				[monsterDirection.strongAttack] = { "16ef2846294.png", -105, -23 } -- Summoning (hands 90deg)
			},
			[monsterType.mutantWizard] = {
				[monsterDirection.weakAttack] = { "16f01f722f1.png", -154, -32 }, -- Summoning (hands 225deg)
				[monsterDirection.strongAttack] = { "16f05cbe665.png", -149, -44 }, -- Summoning (hand2 90deg)
				[monsterDirection.ultimateAttack] = { "16f06e99042.png", -143, -60 } -- Throwing (hands 90deg)
			}
		}
	},
	dialogNpc = {
		background = "16f02675bf7.png",
		[1] = "16ebe7952c4.png", -- elf (hurt)
		[2] = "16f1c4a57d5.png", -- elf (not hurt)
		[3] = "16f02f12dbc.png" -- santa
	},
	npc = {
		elf = "16f88671190.png",
		santa = "16f8864844d.png",
		tigrounette = "16f885d67d3.png"
	},
	throwables = {
		fireball = "16eba44a988.png",
		bomb = "16ebf8c6c48.png",
		breath = "16f053d906e.png",
		snowball = "16ec3bf9538.png",
		flamingGift = { "16ee268a853.png", "16ee268db9b.png", "16ee268ed43.png" },
		meteor = "16f06ee1d5e.png",
		potion = "16f06b13b74.png"
	},
	heart = {
		[1] = "16ebd213f31.png", -- Red
		[0.5] = "16ebd26dde2.png", -- Half red / Half grey
		[0] = "16ebd2156a2.png" -- Grey
	},
	sequenceEmotes = {
		[-1] = "16f2a31d7cc.jpg",
		[-2] = "16f2a320222.jpg",
		[-3] = "16f2a322b83.jpg",
		[1] = "16f2a294b1d.png",
		[2] = "16f2a259e86.png",
		[3] = "16f2a2af61c.png",
		[4] = "16f2a271e81.png"
	}
}

local imageLayer = {
	mapBackground = "?0",
	mapBackgroundReplace = "?1",
	objectBackground = "?1",
	objectForeground = "!1",
	dialogForeground = "&2",
	dialogBackgroud = ":20",
	hudForeground = "&1",
	emote = "?2"
}

--[[ Data ]]--
local playerCache, playerData = { }, {
	treeStage = {
		index = 1,
		default = 0
	},
	wizardDefeats = {
		index = 2,
		default = 0
	},
	savedSanta = {
		index = 3,
		default = 0
	},
	rewards = {
		index = 4,
		default = 0
	}
}

local hasReward, playerHasCompletedFirstStep
do
	local addReward = function(playerName, reward, save)
		system.giveEventGift(playerName, module.reward[reward])
		playerData:set(playerName, "rewards", playerData:get(playerName, "rewards") + reward)
		if save then
			playerData:save(playerName, true)
		end
	end

	local checkRewardForPlayer = function(playerName, reward, save)
		if hasReward(playerName, reward) then return end

		if reward == rewardId.badge then
			if not playerHasCompletedFirstStep(playerName) then return end
		elseif reward == rewardId.titleRaclette then
			if playerData:get(playerName, "wizardDefeats") < module.rewardTitleWizardDefeats then return end
		elseif reward == rewardId.titleSnowball then
			if playerData:get(playerName, "savedSanta") < module.rewardTitleSavedSanta then return end
		elseif reward == rewardId.orb then
			if playerData:get(playerName, "savedSanta") < module.rewardOrbSavedSanta then return end
		end

		addReward(playerName, reward, save)
	end

	local checkAllRewardsForPlayer = function(playerName, save)
		for _, reward in next, rewardId do
			checkRewardForPlayer(playerName, reward, save)
		end
	end

	-- Laagaadoo#0000's DataHandler shortened
	local DataHandler = {}
	DataHandler.VERSION = '1.4'
	DataHandler.__index = DataHandler
	DataHandler.new = function(moduleID, skeleton, otherOptions) local self = setmetatable({}, DataHandler) assert(moduleID, 'Invalid module ID (nil)') assert(moduleID ~= '', 'Invalid module ID (empty text)') assert(skeleton, 'Invalid skeleton (nil)') for k, v in next, skeleton do v.type = v.type or type(v.default) end self.players = {} self.moduleID = moduleID self.moduleSkeleton = skeleton self.moduleIndexes = {} self.otherOptions = otherOptions self.otherData = {} self.originalStuff = {} for k,v in pairs(skeleton) do self.moduleIndexes[v.index] = k end if self.otherOptions then self.otherModuleIndexes = {} for k,v in pairs(self.otherOptions) do self.otherModuleIndexes[k] = {} for k2,v2 in pairs(v) do v2.type = v2.type or type(v2.default) self.otherModuleIndexes[k][v2.index] = k2 end end end return self end
	DataHandler.newPlayer = function(self, name, dataString) assert(name, 'Invalid player name (nil)') assert(name ~= '', 'Invalid player name (empty text)') self.players[name] = {} self.otherData[name] = {} dataString = dataString or '' local function turnStringToTable(str) local output = {} for data in string_gsub(str, '%b{}', function(b) return b:gsub(',', '\0') end):gmatch('[^,]+') do data = data:gsub('%z', ',') if string_match(data, '^{.-}$') then table_insert(output, turnStringToTable(string_match(data, '^{(.-)}$'))) else table_insert(output, tonumber(data) or data) end end return output end local function getDataIndexName(skeleton, index) for k,v in pairs(skeleton) do if v.index == index then return k end end return 0 end local function getHigherIndex(skeleton) local higher = 0 for k,v in pairs(skeleton) do if v.index > higher then higher = v.index end end return higher end local function handleModuleData(moduleID, skeleton, moduleData, makeTable) local dataIndex = 1 local higherIndex = getHigherIndex(skeleton) moduleID = "__" .. moduleID if makeTable then self.players[name][moduleID] = {} end local setPlayerData = function(data, dataType, dataName, dataDefault) local value if dataType == "number" then value = tonumber(data) or dataDefault elseif dataType == "string" then value = string_match(data or '', "^\"(.-)\"$") or dataDefault elseif dataType == "table" then value = string_match(data or '', "^{(.-)}$") value = value and turnStringToTable(value) or dataDefault elseif dataType == "boolean" then if data then value = data == '1' else value = dataDefault end end if makeTable then self.players[name][moduleID][dataName] = value else self.players[name][dataName] = value end end if #moduleData > 0 then for data in string_gsub(moduleData, '%b{}', function(b) return b:gsub(',', '\0') end):gmatch('[^,]+') do data = data:gsub('%z', ',') local dataName = getDataIndexName(skeleton, dataIndex) local dataType = skeleton[dataName].type local dataDefault = skeleton[dataName].default setPlayerData(data, dataType, dataName, dataDefault) dataIndex = dataIndex + 1 end end if dataIndex <= higherIndex then for i = dataIndex, higherIndex do local dataName = getDataIndexName(skeleton, i) local dataType = skeleton[dataName].type local dataDefault = skeleton[dataName].default setPlayerData(nil, dataType, dataName, dataDefault) end end end local modules, originalStuff = self:getModuleData(dataString) self.originalStuff[name] = originalStuff if not modules[self.moduleID] then modules[self.moduleID] = '{}' end handleModuleData(self.moduleID, self.moduleSkeleton, modules[self.moduleID]:sub(2,-2), false) if self.otherOptions then for moduleID, skeleton in pairs(self.otherOptions) do if not modules[moduleID] then local strBuilder = {} for k,v in pairs(skeleton) do local dataType = v.type or type(v.default) if dataType == 'string' then strBuilder[v.index] = '"'..tostring(v.default)..'"' elseif dataType == 'table' then strBuilder[v.index] = '{}' elseif dataType == 'number' then strBuilder[v.index] = v.default elseif dataType == 'boolean' then strBuilder[v.index] = v.default and '1' or '0' end end modules[moduleID] = '{'..table_concat(strBuilder, ',')..'}' end end end for moduleID, moduleData in pairs(modules) do if moduleID ~= self.moduleID then if self.otherOptions and self.otherOptions[moduleID] then handleModuleData(moduleID, self.otherOptions[moduleID], moduleData:sub(2,-2), true) else self.otherData[name][moduleID] = moduleData end end end checkAllRewardsForPlayer(name, true) end
	DataHandler.dumpPlayer = function(self, name) local output = {} local function turnTableToString(tbl) local output = {} for k,v in pairs(tbl) do local valueType = type(v) if valueType == 'table' then output[#output+1] = '{' output[#output+1] = turnTableToString(v) if output[#output]:sub(-1) == ',' then output[#output] = output[#output]:sub(1, -2) end output[#output+1] = '}' output[#output+1] = ',' else if valueType == 'string' then output[#output+1] = '"' output[#output+1] = v output[#output+1] = '"' elseif valueType == 'boolean' then output[#output+1] = v and '1' or '0' else output[#output+1] = v end output[#output+1] = ',' end end if output[#output] == ',' then output[#output] = '' end return table_concat(output) end local function getPlayerDataFrom(name, moduleID) local output = {moduleID, '=', '{'} local player = self.players[name] local moduleIndexes = self.moduleIndexes local moduleSkeleton = self.moduleSkeleton if self.moduleID ~= moduleID then moduleIndexes = self.otherModuleIndexes[moduleID] moduleSkeleton = self.otherOptions[moduleID] moduleID = '__'..moduleID player = self.players[name][moduleID] end if not player then return '' end for i = 1, #moduleIndexes do local dataName = moduleIndexes[i] local dataType = moduleSkeleton[dataName].type if dataType == 'string' then output[#output+1] = '"' output[#output+1] = player[dataName] output[#output+1] = '"' elseif dataType == 'number' then output[#output+1] = player[dataName] elseif dataType == 'boolean' then output[#output+1] = player[dataName] and '1' or '0' elseif dataType == 'table' then output[#output+1] = '{' output[#output+1] = turnTableToString(player[dataName]) output[#output+1] = '}' end output[#output+1] = ',' end if output[#output] == ',' then output[#output] = '}' else output[#output+1] = '}' end return table_concat(output) end output[#output+1] = getPlayerDataFrom(name, self.moduleID) if self.otherOptions then for k,v in pairs(self.otherOptions) do local moduleData = getPlayerDataFrom(name, k) if moduleData ~= '' then output[#output+1] = ',' output[#output+1] = moduleData end end end for k,v in pairs(self.otherData[name]) do output[#output+1] = ',' output[#output+1] = k output[#output+1] = '=' output[#output+1] = v end return table_concat(output)..self.originalStuff[name] end
	DataHandler.get = function(self, name, dataName, moduleName) if not moduleName then return self.players[name][dataName] else assert(self.players[name]['__'..moduleName], 'Module data not available ('..moduleName..')') return self.players[name]['__'..moduleName][dataName] end end
	DataHandler.set = function(self, name, dataName, value, moduleName) if moduleName then self.players[name]['__'..moduleName][dataName] = value else self.players[name][dataName] = value end return self end
	DataHandler.save = function(self, name, ignoreSave) if not ignoreSave then checkAllRewardsForPlayer(name) end system.savePlayerData(name, self:dumpPlayer(name)) end
	DataHandler.removeModuleData = function(self, name, moduleName) assert(moduleName, "Invalid module name (nil)") assert(moduleName ~= '', "Invalid module name (empty text)") assert(moduleName ~= self.moduleID, "Invalid module name (current module data structure)") if self.otherData[name][moduleName] then self.otherData[name][moduleName] = nil return true else if self.otherOptions and self.otherOptions[moduleName] then self.players[name]['__'..moduleName] = nil return true end end return false end
	DataHandler.getModuleData = function(self, str) local output = {} for moduleID, moduleData in string_gmatch(str, '([0-9A-Za-z_]+)=(%b{})') do output[moduleID] = moduleData end for k,v in pairs(output) do str = str:gsub(k..'='..v:gsub("[%(%)%.%%%+%-%*%?%[%]%^%$]", "%%%0")..',?', '') end return output, str end

	playerData = DataHandler.new(module.name, playerData)
end

local canStart = false
local newGame = false

local workingTimer = workingTimerState.start

local playerStage = { }

local passageBlocks = { }
local lastMountainStage = 0
local isWizardDefeated = false
local isMutantWizardDefeated = false
local mutantWizardTriggered = false

local isMoonStolen = false
local onNightMode = { }
local nightModeAlpha = 0.95

--[[ Utils ]]--
local percent = function(x, y, p)
	return x / (p or 100) * y
end

local clamp = function(value, min, max)
	return (value < min and min or value > max and max or value)
end

local round = function(value)
	return math_floor(value + 0.5)
end

local inSquare = function(x, y, px1, px2, py1, py2)
	return (py1 <= y and y <= py2) and (px1 <= x and x <= px2)
end

local getRoomMicePercentage = function(percentage, min, max)
	return clamp(percent(percentage, tfm.get.room.uniquePlayers), (min or 1), (max or 10))
end

local getRandomValue = function(tbl)
	return tbl[math_random(#tbl)]
end

local pythagoras = function(x1, y1, x2, y2, radius)
	local distance = (((x1 - x2) ^ 2) + ((y1 - y2) ^ 2))
	return distance <= (radius ^ 2), distance
end

local getAngle = function(x1, y1, x2, y2)
	return math_atan2(y2 - y1, x2 - x1)
end

local getAcceleration = function(angle)
	return math_cos(angle), math_sin(angle)
end

local getXSpeed = function(distance)
	-- Returns the needed xSpeed to cover distance over a 0° ground of 0.3 friction.
	return math_floor(distance ^ 0.5 + 0.5)
end

local getPlayersInStage = function(stage)
	if not playerStage[stage] then return end

	if playerStage[stage]._intern._update then
		local list, index = { }, 0
		for playerName, isBool in next, playerStage[stage] do
			if isBool == true then
				index = index + 1
				list[index] = playerName
			end
		end

		playerStage[stage]._intern._keys = (index > 0 and list or nil)
		playerStage[stage]._intern._update = false
	end
	return playerStage[stage]._intern._keys
end

local getNearPlayers = function(stagePlayers, x, y, radius)
	local list, index, playerName, data = { }, 0
	for player = 1, #stagePlayers do
		playerName = stagePlayers[player]
		data = tfm.get.room.playerList[playerName]

		if pythagoras(data.x, data.y, x, y, radius) then
			index = index + 1
			list[index] = playerName
		end
	end
	return list, index
end

local clearClassEmptyObjects = function(class)
	local out, index = { }, 0

	for i = 1, class._count do
		if class[i] then
			index = index + 1
			class[i]._id = index
			out[index] = class[i]
		end
	end

	return out
end

local getStageDoorDirection = function(stage)
	return (stage % 2 == 0 and -1 or 1)
end

local getPlayerAim = function(playerName, obj, ignoreAcceleration, _player)
	_player = (_player or tfm.get.room.playerList[playerName])

	local angle = getAngle(obj:getRelativeX(), obj:getRelativeY(), _player.x, _player.y)

	local directionX, directionY
	if not ignoreAcceleration then
		directionX, directionY = getAcceleration(angle)
	end

	return angle, directionX, directionY, _player
end

local addWizardKillForPlayers = function()
	for playerName, data in next, playerCache do
		if data.hasHitBoss then
			data.hasHitBoss = false
			playerData:set(playerName, "wizardDefeats", playerData:get(playerName, "wizardDefeats") + 1):save(playerName)
		end
	end
end

local displayChaosInterface = function(playerName)
	ui.addTextArea(interfaceId.nightMode, '', playerName, -1500, -1500, 3000, 3000, 1, 1, nightModeAlpha, true)
end

local chatMessage = function(message, playerName, who)
	tfm.exec.chatMessage("<font color='#" .. (npcColors[who] or "2EBA7E") .. "'>[" .. (npcNames[who] and ("<B>" .. npcNames[who] .. "</B>") or "•") .. "] " .. message .. "</font>", playerName)
end

local messagePlayersInStage = function(stage, message, name, format)
	local players = getPlayersInStage(stage)
	if not players then return end
	for player = 1, #players do
		player = players[player]

		if format then
			chatMessage(string.format(message, playerData:get(player, format)), player, name)
		else
			chatMessage(message, player, name)
		end
	end
end

local getChance
getChance = function(weights)
	local result, sum = math_random(0, 9999), 0

	for i = 1, #weights do
		sum = sum + weights[i]
		if sum > result then
			return i
		end
	end

	-- Prevention case if the sum of weights < 100, but the function should never reach here if used correctly
	return getChance(weights)
end

--[[ Tools ]]--
local isEventWorkingFor = function(playerName)
	return canStart and playerCache[playerName] and playerCache[playerName].dataLoaded
end

local loop = function(f, ticks, ...)
	local timers, index = { }, 0
	local addTimer = function(_, ...)
		index = index + 1
		timers[index] = system.newTimer(f, 1000, true, ...)
	end

	local seconds = 1000 / ticks
	for timer = 0, 1000 - seconds, seconds do
		system.newTimer(addTimer, 1000 + timer, false, ...)
	end

	return timers
end

local update, globalInitInterface
local checkWorkingTimer = function()
	if workingTimer == workingTimerState.broken then
		update(nil, 6)
	elseif workingTimer > workingTimerState.tryLimit then
		if workingTimer == workingTimerState.setBroken then
			workingTimer = workingTimerState.broken
		elseif workingTimer == workingTimerState.setVerified then
			workingTimer = workingTimerState.stop
		end
		globalInitInterface()
	elseif workingTimer > workingTimerState.stop then
		if workingTimer < workingTimerState.tryLimit then
			workingTimer = workingTimer + 0.5
			if workingTimer == workingTimerState.tryLimit then
				workingTimer = workingTimerState.setBroken
				canStart = true
			end
		end
	end
end

local loadAllImages
loadAllImages = function(playerName, _src)
	local t
	for k, v in next, (_src or images) do
		t = type(v)
		if t == "table" then
			loadAllImages(playerName, v)
		elseif t == "string" then
			tfm.exec.removeImage(tfm.exec.addImage(v, "_0", -10000, -10000, playerName)) -- Caches the image so it doesn't have a delay to load
		end
	end
end

hasReward = function(playerName, reward)
	return bit32.band(reward, playerData:get(playerName, "rewards")) > 0
end

playerHasCompletedFirstStep = function(playerName)
	return miscData.treeStages > 0 and playerData:get(playerName, "treeStage") == miscData.treeStages
end

local getDamageByTotalPlayers = function(totalPlayers)
	return clamp((miscData.defaultDamage - (totalPlayers / 25)), bulletData.minimumDamage, bulletData.maximumDamage)
end

local freezePlayer
local decreaseLife
local freezeSanta
local getBoss

--[[ Interface ]]--
local displayDialog = function(playerName, id)
	playerCache[playerName].dialog.id = id

	playerCache[playerName].cachedImages.dialog[1] = tfm.exec.addImage(images.dialogNpc[id], imageLayer.dialogForeground, 550, 32, playerName)
	playerCache[playerName].cachedImages.dialog[2] = tfm.exec.addImage(images.dialogNpc.background, imageLayer.dialogBackgroud, 50, 215, playerName)

	ui.addTextArea(interfaceId.dialog, '', playerName, -1500, -1500, 3000, 3000, 1, 1, 0.15, true)
	ui.addTextArea(interfaceId.dialog + 1, "<font size='15' color='#F0F0E0' face='Courier New'><textformat leftmargin='10' rightmargin='5' leading='-3'>", playerName, 50, 220, 700, 190, 1, 1, 0, true)
end

local updateDialog = function(playerName, data, addChar)
	local str = translation.dialog[data.dialog.id]
	data.dialog.strPos = data.dialog.strPos + addChar

	local lastChar = data.dialog.strPos >= #str

	ui.updateTextArea(interfaceId.dialog + 1, string_sub(translation.dialog[data.dialog.id], 1, data.dialog.strPos) .. (lastChar and ("\n<PT>" .. translation.dialog.close) or "|"), playerName)

	if lastChar then
		eventPlayerDialogEnded(playerName, data.dialog.id, data)
		data.dialog.id = -1
	end
end

local removeDialog = function(playerName)
	-- The cache doesn't get cleared because maybe the image may not get really deleted due to API bugs.
	for k, v in next, playerCache[playerName].cachedImages.dialog do
		tfm.exec.removeImage(v)
	end

	playerCache[playerName].dialog.id = 0
	playerCache[playerName].dialog.strPos = 0

	for id = interfaceId.dialog, interfaceId.dialog + 1 do
		ui.removeTextArea(id, playerName)
	end
end

local getBossLifeBarIdAndWidth = function(bossStage, bossLife, bossType)
	local id = interfaceId.lifeBar + (bossStage * 2)
	local width = 786 / monsterData.life.default[bossType] * bossLife

	return id, width
end

local updateBossLifeBarForPlayer = function(playerName, bossStage, bossLife, bossType, _id, _width)
	if not _id or not _width then
		_id, _width = getBossLifeBarIdAndWidth(bossStage, bossLife, bossType)
	end

	ui.addTextArea(_id, '', playerName, 7, 400, _width, 1, npcColors.wizardHex, npcColors.wizardHex, 1, true)
end

local updateBossLifeBar = function(bossStage, bossLife, bossType)
	players = getPlayersInStage(bossStage)
	if not players then return end

	local id, width = getBossLifeBarIdAndWidth(bossStage, bossLife, bossType)

	for player = 1, #players do
		updateBossLifeBarForPlayer(players[player], nil, nil, nil, id, width)
	end
end

local displayBossLifeBar = function(playerName, bossStage)
	ui.addTextArea(interfaceId.lifeBar + (bossStage * 2) - 1, '', playerName, 5, 398, 790, 1, 1, 1, 1, true)

	local boss = getBoss(bossStage)
	if boss then
		updateBossLifeBarForPlayer(playerName, bossStage, boss.life, boss.type)
	end
end

local removeBossLifeBar = function(bossStage)
	local stageId = interfaceId.lifeBar + (bossStage * 2)
	for id = stageId - 1, stageId do
		ui.removeTextArea(id)
	end
end

--[[ Particle effects ]]--
local effectOnEmoteSequence = function(x, y)
	local angle = math_random(0, 360)
	for ang = angle, angle + particleData.emoteSequenceParticleQuantity do
		tfm.exec.displayParticle(particleData.emoteSequenceParticleId, x + math_cos(ang) * particleData.emoteSequenceRadius, y + math_sin(ang) * particleData.emoteSequenceRadius)
	end
end

local effectOnBreath = function(x, y)
	for _ = 1, particleData.breathParticleQuantity do
		tfm.exec.displayParticle(particleData.breathParticleId, x + math_random(-particleData.breathRadius, particleData.breathRadius), y + math_random(-particleData.breathRadius, particleData.breathRadius))
	end
end

local effectOnCauldronBurn = function(x, y)
	local isOdd
	for p = 1, particleData.cauldronParticleQuantity do
		isOdd = (p % 2 ~= 0)
		tfm.exec.displayParticle(particleData.cauldronParticleId, x + math_random(-particleData.cauldronRadius, particleData.cauldronRadius), y + math_random(0, particleData.cauldronRadius),(isOdd and particleData.cauldronParticleVX or -particleData.cauldronParticleVX), particleData.cauldronParticleVY, (isOdd and particleData.cauldronParticleAX or -particleData.cauldronParticleAX))
	end
end

local effectOnTeleport = function(playerName, x, y)
	tfm.exec.displayParticle(37, x - 120, y + 60, 0, 0, 0, 0, playerName)
end

local effectOnMeteorHit = function(x, y)
	local gtHalf
	for p = 1, particleData.meteorParticleQuantity * 2 do -- 2 sides
		gtHalf = (p > particleData.meteorParticleQuantity)
		tfm.exec.displayParticle(particleData.meteorParticleId, x + ((p % particleData.meteorParticleQuantity) * particleData.meteorRadius * (gtHalf and -1 or 1)), y + math_random(-particleData.meteorYVariation, particleData.meteorYVariation), (gtHalf and -particleData.meteorParticleVX or particleData.meteorParticleVX), -math_random(1, particleData.meteorParticleVY), (gtHalf and particleData.meteorParticleAX or -particleData.meteorParticleAX))
	end
end

--[[ Classes ]]--
local timer
do
	timer = {
		_timers = {
			_count = 0
		}
	}

	timer.start = function(callback, ms, times, ...)
		local t = timer._timers
		t._count = t._count + 1

		t[t._count] = {
			id = t._count,
			callback = callback,
			args = { ... },
			defaultMilliseconds = ms,
			milliseconds = ms,
			times = times
		}
		t[t._count].args[#t[t._count].args + 1] = t[t._count]

		return t._count
	end

	timer.delete = function(id)
		timer._timers[id] = nil
	end

	timer.loop = function()
		local t
		for i = 1, timer._timers._count do
			t = timer._timers[i]
			if t then
				t.milliseconds = t.milliseconds - 500
				if t.milliseconds <= 0 then
					t.milliseconds = t.defaultMilliseconds
					t.times = t.times - 1

					t.callback(table_unpack(t.args))

					if t.times == 0 then
						timer.delete(i)
					end
				end
			end
		end
	end
end

local callback
do
	local id = interfaceId.callback - 1

	callback = {
		_instance = {
			_count = 0
		}
	}
	callback.__index = callback
	callback.__iter = function()
		return ipairs(callback._instance)
	end
	callback.__get = function(eventName)
		return callback._instance[callback._instance[eventName]]
	end

	callback.new = function(eventName, x, y, width, height, hideCallback)
		id = id + 1

		local self = setmetatable({
			id = id,
			eventName = eventName,
			x = x,
			y = y,
			width = width,
			height = height,
			isFixed = false,
			hasRange = false,
			borderRange = 0,
			action = nil,
			isActive = false,
			image = nil,
			_blockedPlayers = { }
		}, callback)

		if not hideCallback then
			self:display()
		end

		local instance = callback._instance
		instance._count = instance._count + 1
		instance[instance._count] = self
		instance[eventName] = instance._count

		return self
	end

	callback.textarea = function(self, playerName)
		if playerName then
			self._blockedPlayers[playerName] = false
		end

		ui.addTextArea(self.id, "<textformat leftmargin='1' rightmargin='1'><a href='event:callback." .. self.eventName .. "'>" .. string_rep('\n', self.height / 10), playerName, self.x - 5, self.y - 5, self.width + 5, self.height + 5, 1, 1, 0, self.isFixed)

		return self
	end

	callback.display = function(self, f)
		if type(f) ~= "function" then
			-- Nil, Nickname, ...
			self:textarea(f)
		else
			for playerName, data in next, playerCache do
				if f(playerName, data) then
					self:textarea(playerName)
				end
			end
		end
		self.isActive = true

		return self
	end

	callback.setFixed = function(self)
		self.isFixed = true
		return self
	end

	callback.setClickable = function(self, borderRange)
		if borderRange then
			self.borderRange = borderRange
		end
		self.hasRange = true

		return self
	end

	callback.inClickableRange = function(self, playerName, x, y)
		if not self.isActive or self._blockedPlayers[playerName] then return end
		if not self.hasRange then
			-- Can be triggered in any position
			return true
		end

		return (
			(
				x >= (self.x - self.borderRange) and
				x <= (self.x + self.width + self.borderRange)
			) and
			(
				y >= (self.y - self.borderRange) and
				y <= (self.y + self.height + self.borderRange)
			)
		)
	end

	callback.setAction = function(self, action)
		self.action = action
		return self
	end

	callback.performAction = function(self, playerName, x, y, ...)
		if not self.action then return end
		if not self:inClickableRange(playerName, x, y) then return end

		return self:action(playerName, x, y, ...) -- self, playerName, x, y, ...
	end

	callback.setImage = function(self, imageId)
		self.image = imageId
		return self
	end

	callback.remove = function(self, playerName)
		if not playerName then
			self.isActive = false
			if self.image then
				tfm.exec.removeImage(self.image)
			end
		else
			self._blockedPlayers[playerName] = true
		end

		ui.removeTextArea(self.id, playerName)
	end
end

local objectManager
do
	objectManager = {
		objects = {
			monster = {
				_count = 0,
				_bin = {
					_count = 0
				}
			},
			bullet_player = {
				_count = 0,
				_bin = {
					_count = 0
				}
			},
			bullet_monster = {
				_count = 0,
				_bin = {
					_count = 0
				}
			}
		}
	}

	objectManager.insert = function(obj)
		local class = objectManager.objects[obj.class]
		class._count = class._count + 1

		obj._id = class._count
		class[class._count] = obj

		return obj
	end

	objectManager.delete = function(obj)
		if obj._toDelete then return end
		obj._toDelete = true

		local bin = objectManager.objects[obj.class]._bin

		bin._count = bin._count + 1
		bin[bin._count] = obj._id

		if obj.remove then
			obj:remove()
		end
	end

	objectManager.clear = function()
		local rawcount
		for className, class in next, objectManager.objects do
			if class._bin._count > 0 then
				rawcount = class._count - class._bin._count

				for o = 1, class._bin._count do
					class[class._bin[o]] = nil
				end

				objectManager.objects[className] = clearClassEmptyObjects(class)
				class = objectManager.objects[className]
				class._count = rawcount
				class._bin = { _count = 0 }
			end
		end
	end

	objectManager.loop = function(currentTime, remainingTime)
		for _, class in next, objectManager.objects do
			for o = 1, class._count do
				class[o]:loop(currentTime, remainingTime)
			end
		end
		objectManager.clear()
	end
end

local monster, bullet, enableNightMode, removeNightMode
do
	local objectChances = {
		[monsterType.snow] = {
			[1] = 7000, -- Move
			[2] = 3000 -- Attack
		},
		[monsterType.roar] = {
			[1] = 7000, -- Move
			[2] = 3000 -- Atack
		},
		[monsterType.freeze] = {
			[1] = 7200, -- Move
			[2] = 2800 -- Atack
		},
		[monsterType.wizard] = {
			[1] = 8800, -- Nothing
			[2] = 700, -- Weak
			[3] = 400 -- Strong
		},
		[monsterType.mutantWizard] = {
			[1] = 8000, -- Nothing
			[2] = 650, -- Weak
			[3] = 350, -- Strong
			[4] = 500 -- Strong
		}
	}

	monster = {
		_perStage = { }
	}
	monster.__index = monster

	local addToStage = function(obj, stage)
		if not monster._perStage[stage] then
			monster._perStage[stage] = {
				_id = 0, -- total
				_count = 0, -- alive
				_data = { } -- objects to iter
			}
		end

		local stage = monster._perStage[stage]

		stage._id = stage._id + 1
		stage._data[stage._id] = obj
		obj._classId = stage._id

		stage._count = stage._count + 1

		return obj
	end

	monster.getAxis = function(type, sprite, isAttack)
		local axis = images.monsters
		if isAttack then
			axis = axis.attack
		end

		axis = axis[type][sprite]
		return axis[2], axis[3]
	end

	monster.new = function(type, x, y, stage)
		local object = tfm.exec.addShamanObject(objectId.fish, x, y)
		local isBoss = (stage > 6)

		return objectManager.insert(addToStage(setmetatable({
			class = "monster",
			type = type,
			stage = stage,
			object = object,
			sprite = tfm.exec.addImage(images.monsters[type][monsterDirection.front][1], "#" .. object, monster.getAxis(type, monsterDirection.front)),
			spriteId = monsterDirection.front,
			objectData = tfm.get.room.objectList[object],
			isAttacking = false,
			life = monsterData.life[type],
			spawningTime = (isBoss and monsterData.bossSpawningTime or monsterData.spawningTime),
			deathCallback = nil,
			isAxisPosition = false,
			isBoss = isBoss,
			destroyed = false,
			halfWidth = 0,
			halfHeight = 0,
			lastDirection = monsterDirection.right,
			startedChaos = false,
			suicide = false
		}, monster), stage))
	end

	monster.useAxisPosition = function(self, width, height)
		self.halfWidth = width / 2
		self.halfHeight = height / 2
		self.isAxisPosition = true
		return self
	end

	monster.getRelativeX = function(self)
		return self.objectData.x + (self.isAxisPosition and (monster.getAxis(self.type, self.spriteId, self.isAttacking) + self.halfWidth) or 0)
	end

	monster.getRelativeY = function(self)
		local _, axis = monster.getAxis(self.type, self.spriteId, self.isAttacking)
		return self.objectData.y + (self.isAxisPosition and (axis + self.halfHeight) or 0)
	end

	monster.onDeath = function(self, callback)
		self.deathCallback = callback
		return self
	end

	monster.remove = function(self)
		local stage = monster._perStage[self.stage]
		stage._data[self._classId] = nil
		stage._count = stage._count - 1
	end

	local destroy = function(self, ignoreVisualRemoval)
		if not ignoreVisualRemoval then
			tfm.exec.removeImage(self.sprite)
			tfm.exec.removeObject(self.object)
		end
		objectManager.delete(self)
	end

	monster.destroy = function(self)
		if self.destroyed then return end
		self.destroyed = true

		if self.isBoss and self.stage == 7 then
			-- Adds +1 kill for players
			addWizardKillForPlayers()
		end

		if self.deathCallback then
			self.deathCallback(self, destroy)
		else
			destroy(self)
		end
	end

	monster.damage = function(self, damage)
		self.life = self.life - damage
		if self.life <= 0 then
			if self.isBoss then
				removeBossLifeBar(self.stage)
			end
			self:destroy()
			return true
		end
		if self.isBoss then
			updateBossLifeBar(self.stage, self.life, self.type)
		end
		return false
	end

	monster.loop = function(self, currentTime, remainingTime)
		if self.spawningTime > 0 then
			self.spawningTime = self.spawningTime - 500
			return
		end
		if self.destroyed then return end

		local players = getPlayersInStage(self.stage)
		if (not players or #players == 0) then
			if not isMoonStolen then
				self:setSprite(monsterDirection.front, false)
			end
			return
		end

		local chance = getChance(objectChances[self.type])

		if self.type == monsterType.wizard then
			if not self.isAttacking and chance ~= 1 then
				if chance == 2 then -- Weak
					self:bomber(players)
				elseif chance == 3 then -- Strong
					self:freezeBreath(players)
				end
			end
		elseif self.type == monsterType.mutantWizard then
			if not self.isAttacking and not isMoonStolen then
				if remainingTime <= monsterData.mutantWizardSuicideTime and self.life >= monsterData.mutantWizardSuicideLifePercent and not self.suicide then
					self.suicide = true
					self.life = 999 -- Can't be killed anymore
					self:damage(self.life)

					-- Freezes Santa
					freezeSanta()
				elseif self.life <= monsterData.mutantWizardChaosWhenLife and not self.startedChaos then
					self.startedChaos = true
					self:beginChaos(players)
				elseif chance ~= 1 then -- Nothing
					if chance == 2 then -- Weak
						self:throwFlamingGift(players)
					elseif chance == 3 then -- Strong
						self:invokeMeteor(players)
					elseif chance == 4 then -- Ultimate
						self:throwPotions(players)
					end
				end
			end
		else
			if chance == 1 then -- Move
				self:moveAround(players, monsterData.movementType[self.type], 1, monsterData.distanceRadius[self.type])
			elseif not self.isAttacking and chance == 2 then -- Attack
				if self.type == monsterType.snow then
					self:throwSnowball(players)
				elseif self.type == monsterType.freeze then
					self:freezeAround(players)
				elseif self.type == monsterType.roar then
					self:explode(players)
				end
			end
		end
	end

	monster.setSprite = function(self, id, isAttack, defeated)
		if (self.spriteId == id and self.isAttacking == isAttack) or (not defeated and self.destroyed) then return end
		self.isAttacking = isAttack

		tfm.exec.removeImage(self.sprite)

		self.spriteId = id
		self.sprite = tfm.exec.addImage((isAttack and images.monsters.attack[self.type][id][1] or images.monsters[self.type][id][1]), "#" .. self.object, monster.getAxis(self.type, id, isAttack))

		return self
	end

	monster.moveAround = function(self, players, movement, maximumMice, radius)
		local _, totalNearPlayers = getNearPlayers(players, self.objectData.x, self.objectData.y, radius)
		-- Avoids monsters to get too close of the target
		if totalNearPlayers < maximumMice then
			local xSpeed, data, distance
			if movement == movementType.biggestGroup then
				-- Aims the biggest group of players
				local playersOnLeft, playersOnRight = 0, 0
				local leftDifference, rightDifference = 9999, 9999

				for player = 1, #players do
					data = tfm.get.room.playerList[players[player]]

					if data.x <= self.objectData.x then
						playersOnLeft = playersOnLeft + 1
						distance = self.objectData.x - data.x

						if distance < leftDifference then
							leftDifference = distance
						end
					else
						playersOnRight = playersOnRight + 1
						distance = data.x - self.objectData.x

						if distance < rightDifference then
							rightDifference = distance
						end
					end
				end

				if playersOnLeft >= playersOnRight then
					xSpeed = -getXSpeed(leftDifference)
				else
					xSpeed = getXSpeed(rightDifference)
				end
			elseif movement == movementType.nearestPlayer then
				-- Aims the nearest player
				local isFacingLeft, difference = false, 9999

				for player = 1, #players do
					data = tfm.get.room.playerList[players[player]]
					distance = math_abs(data.x - self.objectData.x)

					if distance < difference then
						isFacingLeft = (data.x <= self.objectData.x)
						difference = distance
					end
				end

				if isFacingLeft then
					xSpeed = -getXSpeed(difference)
				else
					xSpeed = getXSpeed(difference)
				end
			end

			self.lastDirection = ((xSpeed < 0) and monsterDirection.left or monsterDirection.right)
			tfm.exec.moveObject(self.objectData.id, 0, 0, true, xSpeed, -15, false)
		end

		self:setSprite(self.lastDirection)

		return self
	end

	-- Snow yeti
	monster.throwSnowball = function(self, players)
		local angle, directionX, directionY, player = getPlayerAim(getRandomValue(players), self)

		self:setSprite(((self.objectData.x > player.x) and monsterDirection.left or monsterDirection.right), true)

		for _ = 1, monsterData.snowballQuantity do
			tfm.exec.addShamanObject(objectId.snowball, self.objectData.x + (directionX * 20), self.objectData.y - 15, angle, (directionX * monsterData.snowballForce), (directionY * monsterData.snowballForce))
		end

		return self
	end

	-- Freeze yeti
	local unfreezePlayers = function(players)
		for player = 1, #players do
			freezePlayer(players[player], false)
		end
	end

	monster.freezeAround = function(self, players)
		players = getNearPlayers(players, self.objectData.x, self.objectData.y, monsterData.freezeRadius)

		local frozenPlayers, index = { }, 0

		local directionRate = 0

		local playerName
		for player = 1, #players do
			playerName = players[player]

			if not playerCache[playerName].isFrozen and math_random(1, 3000) < 1500 then -- 1/2
				directionRate = directionRate + (self.objectData.x - tfm.get.room.playerList[playerName].x)

				freezePlayer(playerName, true)

				index = index + 1
				frozenPlayers[index] = playerName
			end
		end
		timer.start(unfreezePlayers, monsterData.freezeTime, 1, frozenPlayers)

		if directionRate ~= 0 then
			self:setSprite(((directionRate < 0) and monsterDirection.left or monsterDirection.right), true)
		end

		return self
	end

	-- Roar yeti
	monster.explode = function(self, players)
		local totalPlayers
		players, totalPlayers = getNearPlayers(players, self.objectData.x, self.objectData.y, monsterData.roarRadius)
		if totalPlayers == 0 then return end

		local halfDistance = monsterData.roarRadius / 2
		local damage = monsterData.damage.explode

		local directionRate, distance, playerName = 0
		for player = 1, #players do
			playerName = players[player]
			distance = (self.objectData.x - tfm.get.room.playerList[playerName].x)
			directionRate = directionRate + distance

			if math_abs(distance) < halfDistance then -- The ones that are even closer
				decreaseLife(playerName, damage)
			end
		end
		directionRate = (directionRate < 0 and -1 or 1)

		local doorDirection = getStageDoorDirection(self.stage) * directionRate

		self:setSprite((directionRate == 1 and monsterDirection.left or monsterDirection.right), true)
		tfm.exec.explosion(self.objectData.x, self.objectData.y, monsterData.roarPower * doorDirection, monsterData.roarRadius, true)

		return self
	end

	local checkBossFinishedAttack = function(boss, timerObj)
		if timerObj.times <= 0 and not isMoonStolen then
			timerObj.times = 0 -- destroys the timer for < 0
			boss:setSprite(monsterDirection.alive, false)
		end
	end

	-- Wizard
		-- Weak
	local explodeBomb = function(objectData, players, imageId)
		tfm.exec.removeImage(imageId)
		tfm.exec.removeObject(objectData.id)

		players = getNearPlayers(players, objectData.x, objectData.y, monsterData.bombRadius)
		for player = 1, #players do
			decreaseLife(players[player], monsterData.damage.explode)
		end

		tfm.exec.explosion(objectData.x, objectData.y, monsterData.bombPower, monsterData.bombRadius, true)
		tfm.exec.displayParticle(particleData.bombExplosionParticleId, objectData.x, objectData.y)
	end

	local createBomb = function(boss, players, self)
		if boss.destroyed then return end

		local angle, directionX, directionY, player

		angle, directionX, directionY, player = getPlayerAim(getRandomValue(players), boss)

		local object = tfm.exec.addShamanObject(objectId.box, boss:getRelativeX(), boss:getRelativeY(), angle, (directionX * monsterData.bombForce), (directionY * monsterData.bombForce))
		local image = tfm.exec.addImage(images.throwables.bomb, "#" .. object, -15, -35)
		timer.start(explodeBomb, monsterData.bombExplodeTimer, 1, tfm.get.room.objectList[object], players, image)

		checkBossFinishedAttack(boss, self)
	end

	monster.bomber = function(self, players)
		self:setSprite(monsterDirection.weakAttack, true)

		timer.start(createBomb, monsterData.bombSpawnTimer, monsterData.bombQuantity, self, players)
	end

		-- Strong
	local breathFreeze = function(objectData, players, imageId)
		tfm.exec.removeImage(imageId)
		tfm.exec.removeObject(objectData.id)

		players = getNearPlayers(players, objectData.x, objectData.y, monsterData.breathRadius)
		for player = 1, #players do
			freezePlayer(players[player], true)
		end
		timer.start(unfreezePlayers, monsterData.breathUnfreezeTime, 1, players)

		effectOnBreath(objectData.x, objectData.y)
	end

	local createBreath = function(boss, players, self)
		if boss.destroyed then return end

		local angleAim = math_deg(getPlayerAim(getRandomValue(players), boss, true, nil))
		local object = tfm.exec.addShamanObject(objectId.rune, boss:getRelativeX(), boss:getRelativeY(), angleAim, 0, 0, true)
		local image = tfm.exec.addImage(images.throwables.breath, "#" .. object, -25, -15)

		timer.start(breathFreeze, monsterData.breathFreezeTime, 1, tfm.get.room.objectList[object], players, image)

		checkBossFinishedAttack(boss, self)
	end

	monster.freezeBreath = function(self, players)
		self:setSprite(monsterDirection.strongAttack, true)

		timer.start(createBreath, monsterData.breathSpawnTimer, monsterData.breathQuantity, self, players)
	end

	-- Mutant wizard
		-- Weak
	local flamingGiftData = {
		damage = monsterData.damage.flamingGift,
		object = objectId.box,
		xSpeed = monsterData.flamingGiftXSpeed,
		xAxis = -20,
		yAxis = -26
	}
	local createFlamingGift = function(boss, players, self)
		if boss.destroyed then return end

		flamingGiftData.sprite = getRandomValue(images.throwables.flamingGift)
		bullet.newFromMonster(miscData.fireMachineShootSpawn[1], miscData.fireMachineShootSpawn[2], boss.stage, flamingGiftData)

		checkBossFinishedAttack(boss, self)
	end

	monster.throwFlamingGift = function(self, players)
		self:setSprite(monsterDirection.weakAttack, true)

		timer.start(createFlamingGift, monsterData.flamingGiftSpawnTimer, monsterData.flamingGiftQuantity, self, players)
	end

		-- Strong
	local meteorLoop = function(self, currentTime, remainingTime)
		if self.objectData.y < 1 or self.objectData.vy > 0 then return end

		local players, player, data, inRange, distance = getPlayersInStage(self.stage)
		for p = 1, (players and #players or 0) do
			player = players[p]
			data = (player and tfm.get.room.playerList[player])

			if data then
				inRange, distance = pythagoras(self.objectData.x, self.objectData.y, data.x, data.y, monsterData.meteorDistantRadius)
				if inRange then
					decreaseLife(player, ((distance <= (monsterData.meteorCloseRadius ^ 2)) and monsterData.damage.meteorClose or monsterData.damage.meteorDistant))
				end
			end
		end
		tfm.exec.explosion(self.objectData.x, self.objectData.y, monsterData.meteorPower, monsterData.meteorDistantRadius, true)

		effectOnMeteorHit(self.objectData.x, self.objectData.y)
		self:destroy()
	end

	local meteorData = {
		object = objectId.fish,
		sprite = images.throwables.meteor,
		xAxis = -23,
		yAxis = -75,
		loop = meteorLoop
	}
	local createMeteor = function(boss, players, self)
		if boss.destroyed then return end

		bullet.newFromMonster(math_random(50, 83) * 10, -100, boss.stage, meteorData, true)

		checkBossFinishedAttack(boss, self)
	end

	monster.invokeMeteor = function(self, players, totalMeteors)
		self:setSprite(monsterDirection.strongAttack, true)

		timer.start(createMeteor, monsterData.meteorSpawnTimer, (totalMeteors or monsterData.meteorQuantity), self, players)
	end

		-- Ultimate
	local breakPotion = function(objectData, players, imageId)
		tfm.exec.removeImage(imageId)
		tfm.exec.removeObject(objectData.id)

		players = getNearPlayers(players, objectData.x, objectData.y, monsterData.potionRadius)
		for player = 1, #players do
			decreaseLife(players[player], monsterData.damage.potion)
		end

		tfm.exec.displayParticle(particleData.potionExplosionParticleId, objectData.x, objectData.y)
	end

	local createPotion = function(boss, players, self)
		if boss.destroyed then return end
		players = (players or getPlayersInStage(boss.stage))
		if (not players or #players == 0) then return end

		local angle, directionX, directionY, player

		angle, directionX, directionY, player = getPlayerAim(getRandomValue(players), boss)

		local object = tfm.exec.addShamanObject(objectId.box, boss:getRelativeX(), boss:getRelativeY(), angle, (directionX * monsterData.potionForce), (directionY * monsterData.potionForce))
		local image = tfm.exec.addImage(images.throwables.potion, "#" .. object, -15, -15)

		timer.start(breakPotion, monsterData.breakPotionTimer, 1, tfm.get.room.objectList[object], players, image)

		checkBossFinishedAttack(boss, self)
	end

	monster.throwPotions = function(self, players, totalPotions)
		self:setSprite(monsterDirection.ultimateAttack, true)

		timer.start(createPotion, monsterData.potionSpawnTimer, (totalPotions or monsterData.potionQuantity), self, players)
	end

		-- Chaos
	monster.endChaos = function(self)
		isMoonStolen = false
		for playerName = 1, #onNightMode do
			removeNightMode(onNightMode[playerName])
		end
		onNightMode = { }
		monsterData.potionSpawnTimer = monsterData.defaultPotionSpawnTimer
	end

	local displayNightMode = function(boss, _, self)
		nightModeAlpha = nightModeAlpha - monsterData.chaosOpacityDecrease

		if nightModeAlpha <= 0 then
			ui.removeTextArea(interfaceId.nightMode)
			boss:endChaos()
			nightModeAlpha = 0.95
			self.times = 0
		else
			for playerName = 1, #onNightMode do
				playerName = onNightMode[playerName]
				displayChaosInterface(playerName)
				if playerCache[playerName].currentStage ~= 8 and math_random(0, 1) == 0 then
					tfm.exec.movePlayer(playerName, miscData.finalBossSpawn[1], miscData.finalBossSpawn[2])
				end
			end
		end
	end

	monster.stealTheMoon = function(self, players)
		if isMoonStolen then return end
		isMoonStolen = true

		for player = 1, #players do
			enableNightMode(players[player])
		end

		timer.start(timer.start, monsterData.chaosFirstChangeTimer, 1, displayNightMode, monsterData.chaosOpacityChangeTimer, 0, self)

		messagePlayersInStage(self.stage, translation.stealMoon, "wizard")

		return true
	end

	monster.beginChaos = function(self, players)
		if self:stealTheMoon(self, players) then
			-- Throws until the chaos is gone
			if math_random(1, 2) == 1 then
				monsterData.potionSpawnTimer = monsterData.potionSpawnTimerOnChaos
				self:throwPotions(false, 0)
			else
				self:invokeMeteor(false, 0)
			end
		end
	end
end

do
	bullet = { }
	bullet.__index = bullet

	local playerLoop
	bullet.newFromPlayer = function(x, y, stage, playerName, direction, isBoss)
		if not monster._perStage[stage] or monster._perStage[stage]._count == 0 then return end

		local object, sprite

		local boss = isBoss and getBoss(stage) -- isBoss and has a boss
		if boss then
			local x, y = (x + 25), (y - 15)

			local angle, directionX, directionY = getPlayerAim(nil, boss, false, { x = x, y = y })

			object = tfm.exec.addShamanObject(objectId.paperBall, x, y, angle, (-directionX * bulletData.xSpeedBoss), (-directionY * bulletData.ySpeedBoss)) -- Using negative because 'boss' was passed first, for the getRelativeN function.
			sprite = images.throwables.snowball
		else
			object = tfm.exec.addShamanObject(objectId.paperBall, x + (25 * direction), y - 15, 0, bulletData.xSpeed * direction, bulletData.ySpeed, bulletData.transparent)
			sprite = images.throwables.fireball
		end

		tfm.exec.playEmote(playerName, emoteIds.throw)

		return objectManager.insert(setmetatable({
			class = "bullet_player",
			stage = stage,
			object = object,
			sprite = tfm.exec.addImage(sprite, "#" .. object, -6, -6),
			objectData = tfm.get.room.objectList[object],
			lifeTime = bulletData.lifeTime,
			shooter = playerCache[playerName],
			isBoss = isBoss,
			loop = playerLoop,
			damage = (stage < 8 and bulletData.damage or bulletData.damageWhenMutantWizard)
		}, bullet))
	end

	local monsterLoop
	bullet.newFromMonster = function(x, y, stage, data)
		data.object = (data.object or objectId.paperBall)
		data.xSpeed = (data.xSpeed or 0)
		data.ySpeed = (data.ySpeed or 0)
		data.xAxis = (data.xAxis or 0)
		data.yAxis = (data.yAxis or 0)
		data.lifeTime = (data.lifeTime or bulletData.lifeTime)
		data.loop = (data.loop or monsterLoop)
		data.damage = (data.damage or bulletData.damage)

		local object = tfm.exec.addShamanObject(data.object, x, y, 0, data.xSpeed, data.ySpeed)

		return objectManager.insert(setmetatable({
			class = "bullet_monster",
			stage = stage,
			object = object,
			sprite = tfm.exec.addImage(data.sprite, "#" .. object, data.xAxis, data.yAxis),
			objectData = tfm.get.room.objectList[object],
			lifeTime = data.lifeTime,
			loop = data.loop,
			damage = data.damage
		}, bullet))
	end

	bullet.destroy = function(self)
		tfm.exec.removeImage(self.sprite)
		tfm.exec.removeObject(self.object)
		objectManager.delete(self)
	end

	bullet.checkLifeTime = function(self)
		self.lifeTime = self.lifeTime - 500
		if self.lifeTime <= 0 then
			self:destroy()
		end
	end

	playerLoop = function(self, currentTime, remainingTime)
		for _, obj in next, monster._perStage[self.stage]._data do
			if pythagoras(self.objectData.x, self.objectData.y, obj:getRelativeX(), obj:getRelativeY(), bulletData.damageRadiusFromPlayer) then
				if self.isBoss and self.stage == 7 and not self.shooter.hasHitBoss then
					self.shooter.hasHitBoss = true
				end

				obj:damage(self.damage)
				self:destroy()
				return
			end
		end

		self:checkLifeTime()
	end

	monsterLoop = function(self, currentTime, remainingTime)
		local players, player, data = getPlayersInStage(self.stage)
		for p = 1, (players and #players or 0) do
			player = players[p]
			data = (player and tfm.get.room.playerList[player])

			if data and pythagoras(self.objectData.x, self.objectData.y, data.x, data.y, bulletData.damageRadiusFromMonster) then
				decreaseLife(player, self.damage)
				self:destroy()
				return
			end
		end

		self:checkLifeTime()
	end
end

--[[ Functions ]]--
local updateHeart, displayLife, removePlayerLife
do
	updateHeart = function(playerName, cache, id, level)
		cache = cache.cachedImages.heart

		if cache[id] then
			tfm.exec.removeImage(cache[id])
		end
		cache[id] = tfm.exec.addImage(images.heart[level], imageLayer.hudForeground, (id - 1) * 30, 30, playerName)
	end

	displayLife = function(playerName)
		local cache = playerCache[playerName]

		cache.life = module.life
		for heart = 1, module.life do
			updateHeart(playerName, cache, heart, 1)
		end
	end

	decreaseLife = function(playerName, level)
		local cache = playerCache[playerName]
		if cache.life <= 0 then return end

		local lastHeartLevel = 1 - cache.life % 1
		local lastHeartFloor = math_ceil(cache.life)
		cache.life = cache.life - level
		local currentHeart = math_ceil(cache.life)

		if currentHeart ~= lastHeartFloor then
			updateHeart(playerName, cache, lastHeartFloor, 0)
			level = (lastHeartLevel + 1) - level
		end
		if currentHeart > 0 and level < 1 then
			updateHeart(playerName, cache, currentHeart, level)
		end

		if cache.life <= 0 then
			tfm.exec.killPlayer(playerName)
		end
	end

	removePlayerLife = function(playerName, cache)
		cache = (cache or playerCache[playerName])
		if cache.life <= 0 then return end

		cache.life = 0
		for heart = 1, module.life do
			updateHeart(playerName, cache, heart, 0)
		end
	end
end

freezePlayer = function(playerName, freeze)
	if playerCache[playerName].isFrozen == freeze then return end
	playerCache[playerName].isFrozen = freeze

	if freeze then
		decreaseLife(playerName, monsterData.damage.freeze)
	end

	return tfm.exec.freezePlayer(playerName, freeze)
end

freezeSanta = function()
	local santa = callback.__get("santa")
	tfm.exec.addShamanObject(objectId.icecube, santa.x + (santa.width / 2), santa.y + (santa.height / 2))
	santa:remove()
end

getBoss = function(stage)
	stage = monster._perStage[stage]
	return stage and stage._data[1]
end

local setAllPlayerData = function()
	for playerName, data in next, tfm.get.room.playerList do
		playerCache[playerName] = {
			dataLoaded = false,
			currentStage = 0,
			dialog = {
				id = 0,
				strPos = 0
			},
			cachedImages = {
				tree = nil, -- Tree image
				treeItem = nil, -- Tree item
				dialog = { },
				heart = { },
				nightMode = nil -- special background
			},
			isFrozen = false,
			treeItem = nil, -- The id of the item to be collected
			hasItem = false, -- If the player is carrying the item
			placedItem = false, -- If the player has placed the item
			callbackAction = 0,
			bulletAction = 0,
			life = module.life,
			isFacingRight = true,
			hasHitBoss = false,
			onNightMode = false,
			hasSavedSanta = false,
			consumableTimer = 0,
			hasSeenWizard = false,
			hasSeenMutantWizard = false,
			emoteSequence = 0,
			emoteTimer = 0
		}

		tfm.exec.lowerSyncDelay(playerName)
		system.loadPlayerData(playerName)

		for _, code in next, keyCode do
			system.bindKeyboard(playerName, code, true, true)
		end

		displayLife(playerName)
	end
end

globalInitInterface = function()
	-- Map Name
	ui.setMapName(getRandomValue(module.mapName))
end

local globalInitSettings = function(bool, settingsOnly)
	if not settingsOnly then
		-- Data
		monsterData.bombQuantity = clamp(round(tfm.get.room.uniquePlayers / 10), 1, 5)
		monsterData.flamingGiftQuantity = clamp(round(tfm.get.room.uniquePlayers / 6), 2, 6)
		monsterData.defaultPotionSpawnTimer = monsterData.potionSpawnTimer
		monsterData.mutantWizardSuicideLifePercent = percent(monsterData.mutantWizardSuicideLifePercent, monsterData.life[monsterType.mutantWizard])
		monsterData.life.default[monsterType.wizard] = monsterData.life[monsterType.wizard]
		monsterData.life.default[monsterType.mutantWizard] = monsterData.life[monsterType.mutantWizard]
		bulletData.damage = getDamageByTotalPlayers(tfm.get.room.uniquePlayers)
		bulletData.maximumMutantWizardMice = tfm.get.room.uniquePlayers
		bulletData.transparent = (tfm.get.room.uniquePlayers >= miscData.minimumMiceForTransparentBullet)
		miscData.emotePx = -310 / #miscData.sequenceEmotes
		miscData.treeStages = #images.christmasTree
	end

	-- Settings
	tfm.exec.disableAfkDeath(bool)
	tfm.exec.disableAutoShaman(bool)
	tfm.exec.disableAutoTimeLeft(bool)
	tfm.exec.disableDebugCommand(bool)
	tfm.exec.disableMortCommand(bool)
	tfm.exec.disablePhysicalConsumables(bool)
end

update = function(_, addChar)
	if not canStart then return end

	for playerName, data in next, playerCache do
		if data.dataLoaded and data.dialog.id > 0 then
			updateDialog(playerName, data, addChar)
		end
	end
end

local buildMap, defeatWizard, defeatMutantWizard
do
	local blockLocationX = {
		[1] = 748,
		[2] = 290,
		[3] = 748,
		[4] = 380,
		[5] = 754,
		[6] = 455
	}

	local blockLocationY = {
		[1] = 1410,
		[2] = 1245,
		[3] = 1080,
		[4] = 920,
		[5] = 753,
		[6] = 598
	}

	local blockProperty = {
		type = 12,
		friction = 0,
		restitution = 0,
		miceCollision = true,
		groundCollision = true,
		width = 100
	}

	local blockerJoint = {
		type = 0,
		point = "0,0"
	}

	local insertSequenceEmotes = function()
		--local currentMonth, currentDay = tonumber(os_date("%m")), tonumber(os_date("%d"))
		for emote = 1, #miscData.sequenceEmotes do
			--if currentMonth < 12 or currentDay >= (module.emoteDay + (emote - 1)) then
				tfm.exec.addImage(images.sequenceEmotes[emote], imageLayer.emote, miscData.sequenceEmotes[emote][1], miscData.sequenceEmotes[emote][2])
			--end
		end
	end

	local insertPassageBlocks = function()
		local totalBlocks = #blockLocationX
		for i = 1, totalBlocks do
			if not playerName then
				tfm.exec.addPhysicObject(groundId.passage + i, blockLocationX[i], blockLocationY[i], blockProperty)
			end
			passageBlocks[i] = tfm.exec.addImage(images.objects.lock[((i % 2) + 1)], imageLayer.objectForeground, blockLocationX[i] - 40, blockLocationY[i] - 6)
		end

		-- Blocks the joint effect
		totalBlocks = groundId.passage + totalBlocks
		tfm.exec.addJoint(jointId.blocker, totalBlocks, groundId.jointEffect, blockerJoint)
		blockerJoint.type = 1
		tfm.exec.addJoint(jointId.blocker + 1, totalBlocks, groundId.jointEffect + 2, blockerJoint)
	end

	buildMap = function(playerName, onlyImages)
		tfm.exec.addImage(module.map.background, imageLayer.mapBackground, 0, 0, playerName)
		tfm.exec.addImage(images.objects.cauldron, imageLayer.objectForeground, 746, 487, playerName) -- Should it appear like that in the beginning?
		tfm.exec.addImage(images.objects.fireMachine, imageLayer.objectForeground, 738, 272, playerName)

		if not onlyImages then
			tfm.exec.setGameTime(module.time)

			insertSequenceEmotes()
			insertPassageBlocks()
		end
	end

	local executeWizardBaseRemove = function(obj, base)
		local objX = obj:getRelativeX()

		base(obj)
		for g = groundId.bossBlock, groundId.bossBlock + 2 do
			tfm.exec.removePhysicObject(g)
		end
		tfm.exec.removePhysicObject(groundId.jointEffect)

		effectOnCauldronBurn(objX, 540) -- Cauldron opening
	end

	defeatWizard = function(obj, base)
		obj:setSprite(monsterDirection.defeated, false, true)

		tfm.exec.removePhysicObject(groundId.jointEffect + 1)

		timer.start(executeWizardBaseRemove, monsterData.wizardFallRemoveTimer, 1, obj, base)

		isWizardDefeated = true

		messagePlayersInStage(obj.stage, translation.wizardDefeat, "wizard", "wizardDefeats")
		messagePlayersInStage(obj.stage, translation.collectItem)
	end

	local executeMutantWizardBaseRemove = function(obj, base)
		tfm.exec.addImage(images.npc.tigrounette, imageLayer.objectForeground, obj:getRelativeX() - 38, obj:getRelativeY() - 50)

		base(obj, true)

		if not obj.suicide then
			tfm.exec.removePhysicObject(groundId.bossBlock + 3)
		end
	end

	defeatMutantWizard = function(obj, base)
		obj:setSprite((obj.suicide and monsterDirection.suicide or monsterDirection.defeated), false, true)

		for g = groundId.jointEffect + 2, groundId.jointEffect + 3 do
			tfm.exec.removePhysicObject(g)
		end

		if isMoonStolen then
			nightModeAlpha = 0 -- Calls endChaos
		end

		timer.start(executeMutantWizardBaseRemove, monsterData.mutantWizardFallRemoveTimer, 1, obj, base)

		isMutantWizardDefeated = true
		if obj.suicide then
			messagePlayersInStage(obj.stage, translation.mutantWizardSuicide, "wizard")
		else
			messagePlayersInStage(obj.stage, translation.mutantWizardDefeat, "wizard")
		end
	end
end

local getCurrentStage
do
	local yRange = {
		[1] = 1400,
		[2] = 1245,
		[3] = 1080,
		[4] = 920,
		[5] = 755,
		[6] = 595,
		[7] = 380,
		[8] = 0
	}

	local xRange = {
		[1] = 170,
		[2] = 255,
		[3] = 260,
		[4] = 345,
		[5] = 350,
		[6] = 430,
		[7] = 435,
		[8] = 440
	}
	local totalStages = #yRange

	getCurrentStage = function(y, x)
		for stage = 1, totalStages do
			if y >= yRange[stage] then
				return (x >= xRange[stage] and stage or 0)
			end
		end
		return 0
	end
end

local displayTree = function(playerName, ignoreNextItem)
	if playerCache[playerName].cachedImages.tree then
		tfm.exec.removeImage(playerCache[playerName].cachedImages.tree)
	end

	local treeStage = playerData:get(playerName, "treeStage")

	if images.christmasTree[treeStage] then
		playerCache[playerName].cachedImages.tree = tfm.exec.addImage(images.christmasTree[treeStage], imageLayer.objectBackground, 0, 1240, playerName)
	end

	if ignoreNextItem then return end

	treeStage = treeStage + 1
	if images.treeItems[treeStage] then
		playerCache[playerName].cachedImages.treeItem = tfm.exec.addImage(images.treeItems[treeStage], imageLayer.objectForeground, 915, 530, playerName)
		playerCache[playerName].treeItem = treeStage
	end
end

local spawnYetis
do
	local xRange = {
		-- rangeA, rangeB, quantity
		23, 70, getRoomMicePercentage(20, 3, 8), -- 1
		34, 70, getRoomMicePercentage(16, 2, 7), -- 2
		33, 68, getRoomMicePercentage(16, 2, 7), -- 3
		47, 70, getRoomMicePercentage(12, 2, 6), -- 4
		42, 67, getRoomMicePercentage(12, 2, 6), -- 5
		49, 70, getRoomMicePercentage(8, 1, 4) -- 6
	}

	local yFixedPosition = {
		[1] = 1480,
		[2] = 1360,
		[3] = 1210,
		[4] = 1020,
		[5] = 880,
		[6] = 700
	}

	local yetiChances = {
		[1] = { 40, 35, 25 },
		[2] = { 34, 35, 31 },
		[3] = { 35, 35, 30 },
		[4] = { 28, 35, 37 },
		[5] = { 20, 35, 45 },
		[6] = { 10, 50, 40 }
	}

	spawnYetis = function(stage)
		local rawstage = stage
		stage = stage * 3

		for x = 1, xRange[stage] do
			monster.new(getChance(yetiChances[rawstage]), math_random(xRange[stage - 2], xRange[stage - 1]) * 10, yFixedPosition[rawstage], rawstage)
		end
	end
end

local removePlayerFromStages = function(playerName)
	for _, stage in next, playerStage do
		if stage[playerName] then
			stage[playerName] = nil
			stage._intern._update = true
		end
	end
	playerCache[playerName].currentStage = 0
end

local insertPlayerIntoStage = function(playerName, stage)
	if not playerStage[stage] then
		playerStage[stage] = {
			_intern = {
				_keys = nil,
				_update = true
			}
		}
	end

	removePlayerFromStages(playerName)

	playerStage[stage]._intern._update = true
	playerStage[stage][playerName] = true
	playerCache[playerName].currentStage = stage
end

enableNightMode = function(playerName)
	if not isMoonStolen then return end
	onNightMode[#onNightMode + 1] = playerName

	local cache = playerCache[playerName]
	cache.onNightMode = true

	cache.cachedImages.nightMode = tfm.exec.addImage(module.map.stolenMoonSky, imageLayer.mapBackgroundReplace, 0, 0, playerName)
	displayChaosInterface(playerName)
end

removeNightMode = function(playerName)
	local cache = playerCache[playerName]
	cache.onNightMode = false
	tfm.exec.removeImage(cache.cachedImages.nightMode)
end

local spawnWizard = function()
	monster.new(monsterType.wizard, 945, 470, 7):useAxisPosition(50, 73):onDeath(defeatWizard)
	tfm.exec.removeJoint(jointId.blocker)
end

local spawnMutantWizard = function()
	monster.new(monsterType.mutantWizard, 953, 230, 8):useAxisPosition(50, 73):onDeath(defeatMutantWizard)
	tfm.exec.removeJoint(jointId.blocker + 1)

	bulletData.damageWhenMutantWizard = clamp(bulletData.damageWhenMutantWizard, bulletData.minimumMutantWizardMice, bulletData.maximumMutantWizardMice)
	bulletData.damageWhenMutantWizard = getDamageByTotalPlayers(bulletData.damageWhenMutantWizard)
end

local hasAliveYetiInCurrentStage = function()
	local monsterStage = monster._perStage[lastMountainStage]
	if not monsterStage then return end

	return monsterStage._count > 0
end

local unblockPassage = function(stage)
	tfm.exec.removeImage(passageBlocks[stage])
	tfm.exec.removePhysicObject(groundId.passage + stage)
	passageBlocks[stage] = nil
end

local checkPassage = function()
	if not passageBlocks[lastMountainStage] then return end

	if hasAliveYetiInCurrentStage() == false then
		unblockPassage(lastMountainStage)
	end
end

local checkStageChallenge = function(currentTime)
	if not newGame or not canStart or currentTime < 1500 then return end -- Lag can bug the messages

	local tmpCurrentStage, cache
	for playerName, data in next, tfm.get.room.playerList do
		if not data.isDead and playerCache[playerName].dataLoaded then
			tmpCurrentStage = getCurrentStage(data.y, data.x)
			if tmpCurrentStage == 8 then -- Unrelated to the gameplay of the other stages
				if not playerHasCompletedFirstStep(playerName) then
					return tfm.exec.movePlayer(playerName, miscData.miceTeleportSpawn[1], miscData.miceTeleportSpawn[2])
				end

				if not mutantWizardTriggered then
					mutantWizardTriggered = true
					spawnMutantWizard()
				elseif isMoonStolen and not playerCache[playerName].onNightMode then
					enableNightMode(playerName)
				end
			elseif tmpCurrentStage > lastMountainStage then
				if tmpCurrentStage > lastMountainStage + 1 or hasAliveYetiInCurrentStage() then -- Anti-hack
					return tfm.exec.killPlayer(playerName)
				end

				lastMountainStage = tmpCurrentStage
				if lastMountainStage == 7 then
					spawnWizard()
				else
					spawnYetis(lastMountainStage)
				end
			end

			cache = playerCache[playerName]
			if cache.currentStage ~= tmpCurrentStage then
				insertPlayerIntoStage(playerName, tmpCurrentStage)

				if tmpCurrentStage == 7 and not cache.hasSeenWizard then
					cache.hasSeenWizard = true

					if isWizardDefeated then
						chatMessage(translation.collectItem, playerName)
					else
						displayLife(playerName) -- Player's life gets reset to defeat the boss
						displayBossLifeBar(playerName, tmpCurrentStage)
						chatMessage(translation.introduceWizard, playerName, "elf")
						chatMessage(translation.wizardShowUp, playerName, "wizard")
					end
				elseif tmpCurrentStage == 8 and not cache.hasSeenMutantWizard then
					cache.hasSeenMutantWizard = true

					chatMessage(translation.findSanta, playerName, "elf")
					if not isMutantWizardDefeated then
						displayBossLifeBar(playerName, tmpCurrentStage)
						chatMessage(translation.introduceMutantWizard, playerName, "elf")
						chatMessage(translation.mutantWizardShowUp, playerName, "wizard")
					end
				end
			end
		end
	end
end

local getCredits
do
	local loweredTag = "%2<G><font size='10'>%1</font></G>"
	local formatTag = function(str)
		str = "<B>" .. str .. "</B>"
		return (string_gsub(str, "(#%d+)(</B>)", loweredTag))
	end

	local credit = string_format(translation.credit,
		module.team.colors.developer,
		formatTag(module.team.developer), -- Main dev / owner
		module.team.colors.artist,
		formatTag(module.team.artist), -- Main artist
		module.team.colors.translator,
		translation.commu, -- Community flag
		formatTag(translation.translator), -- Community translator
		module.team.colors.others,
		formatTag(table_concat(module.team.others, "</B>, <B>")) -- Others (devs, artists, help)
	)

	getCredits = function()
		return credit
	end
end

local dialogAction = function(playerName)
	if playerCache[playerName].dialog.id == -1 then
		removeDialog(playerName)
	else
		-- Skips to the last character
		playerCache[playerName].dialog.strPos = 9999
	end
end

local collectItem = function(cbk, playerName)
	if not playerCache[playerName].treeItem or (playerCache[playerName].hasItem or playerCache[playerName].placedItem) then return end
	playerCache[playerName].hasItem = true

	cbk:remove(playerName)

	tfm.exec.removeImage(playerCache[playerName].cachedImages.treeItem)
	playerCache[playerName].cachedImages.treeItem = tfm.exec.addImage(images.treeItems[playerCache[playerName].treeItem], "$" .. playerName, -25, -70)

	tfm.exec.movePlayer(playerName, miscData.beginningFirstStage[1], miscData.beginningFirstStage[2])

	local data = tfm.get.room.playerList[playerName]
	effectOnTeleport(playerName, data.x - miscData.beginningFirstStage[1], data.y)

	return true
end

local placeItem = function(cbk, playerName)
	if not playerCache[playerName].treeItem or (not playerCache[playerName].hasItem or playerCache[playerName].placedItem) then return end
	playerCache[playerName].hasItem = false
	playerCache[playerName].placedItem = true

	cbk:remove(playerName)

	playerData:set(playerName, "treeStage", playerData:get(playerName, "treeStage") + 1):save(playerName)
	tfm.exec.removeImage(playerCache[playerName].cachedImages.treeItem)
	displayTree(playerName, true)

	local missing = (miscData.treeStages - playerData:get(playerName, "treeStage"))
	if missing > 0 then
		chatMessage(string_format(translation.placeItem, missing), playerName, "elf")
	else
		displayDialog(playerName, dialogId.findSanta)
	end
	return true
end

local elfDialog = function(cbk, playerName)
	if playerHasCompletedFirstStep(playerName) then -- Has completed first step
		displayDialog(playerName, dialogId.findSanta)
	elseif not placeItem(cbk, playerName) then -- Because people are giving the items to Gerso instead of pressing space near the snow
		displayDialog(playerName, dialogId.intro)
	end

	return true
end

local saveSanta = function(cbk, playerName)
	if not playerCache[playerName].hasSavedSanta then
		playerCache[playerName].hasSavedSanta = true
		playerData:set(playerName, "savedSanta", playerData:get(playerName, "savedSanta") + 1):save(playerName)

		tfm.exec.chatMessage(getCredits(), playerName)
	end
	chatMessage(playerData:get(playerName, "savedSanta") .. "x / " .. module.rewardOrbSavedSanta .. "x", playerName)

	displayDialog(playerName, dialogId.saveSanta)

	return true
end

local makeCallbacks = function()
	-- Collect item
	callback.new("collectItem", 915, 530, 50, 50):setClickable(10):setAction(collectItem)

	-- Place collected item in the tree spot
	callback.new("placeItem", 0, 1430, 160, 170):setClickable():setAction(placeItem)

	-- Elf NPC
	callback.new("elf", -18, 1535, 63, 63):setClickable():setAction(elfDialog):setImage(tfm.exec.addImage(images.npc.elf, imageLayer.objectForeground, -18, 1515))

	-- Santa NPC
	callback.new("santa", 905, 305, 85, 65):setClickable():setAction(saveSanta):setImage(tfm.exec.addImage(images.npc.santa, imageLayer.objectForeground, 915, 285))
end

local canTriggerCallbacks = function(playerName)
	local cache = playerCache[playerName]
	if cache.isFrozen or cache.onNightMode then return end

	local time = os_time()
	if cache.callbackAction > time then return end
	cache.callbackAction = time + miscData.callbackTimer
	return true
end

local canThrowBullet = function(playerName)
	local cache = playerCache[playerName]
	if cache.currentStage == 0 or cache.isFrozen or cache.onNightMode then return end

	local time = os_time()
	if cache.bulletAction > time then return end
	cache.bulletAction = time + miscData.bulletReloadTimer
	return true
end

local canGetConsumable = function(playerName)
	local cache = playerCache[playerName]
	local time = os_time()

	if math_random(1, 5) > 3 or cache.consumableTimer > time then
		return false, cache, time
	end

	cache.consumableTimer = time + miscData.consumableTimer
	return true, cache, time
end

local canTriggerSequence = function(cache, time)
	if (cache.emoteTimer > 0 and cache.emoteTimer < time) then
		cache.emoteSequence = 0
		cache.emoteTimer = 0

		return false
	end
	return true
end

local checkEmoteSequence = function(playerName, emote, data, cache, time)
	if not playerHasCompletedFirstStep(playerName) then return end

	if data.x < 150 and data.y > 1100 then -- Near the start point
		local nextEmote = cache.emoteSequence + 1

		emote = (emote == emoteSequence[nextEmote])

		if not canTriggerSequence(cache, time, emote) or not emote then return end

		local totalsequenceEmotes = #miscData.sequenceEmotes
		if cache.emoteSequence < totalsequenceEmotes then
			cache.emoteTimer = time + miscData.emoteTimer

			tfm.exec.movePlayer(playerName, 0, miscData.emotePx * nextEmote, true)
			tfm.exec.movePlayer(playerName, 0, 0, false, 0, -10, false) -- Stops the falling

			local data = tfm.get.room.playerList[playerName]
			if nextEmote == totalsequenceEmotes then
				cache.emoteSequence = 0
				tfm.exec.movePlayer(playerName, miscData.finalBossSpawn[1], miscData.finalBossSpawn[2])

				effectOnTeleport(playerName, miscData.finalBossSpawn[1], data.y)
				return
			else
				effectOnEmoteSequence(data.x, data.y) -- Prevents player to be banned from hack
			end
			cache.emoteSequence = nextEmote
		end
	end
end

local checkMoveOnSequence = function(playerName, cache)
	if canTriggerSequence(cache, os_time()) then
		if cache.emoteSequence == 0 then return end
		tfm.exec.movePlayer(playerName, miscData.miceTeleportSpawn[1], miscData.miceTeleportSpawn[2])
	end
end

--[[ Events ]]--
eventNewGame = function()
	if newGame then
		-- Bug fix
		return system.exit()
	end
	newGame = true

	buildMap()
	loadAllImages()
	setAllPlayerData()
	makeCallbacks()
end

eventPlayerDataLoaded = function(playerName, data)
	playerData:newPlayer(playerName, data)

	displayTree(playerName)
	if playerHasCompletedFirstStep(playerName) then
		bulletData.damageWhenMutantWizard = bulletData.damageWhenMutantWizard + 1
		chatMessage(string_format(translation.elfTalkSanta, npcNames.elf), playerName)
	else
		chatMessage(translation.elfTalkMountain, playerName)
	end

	playerCache[playerName].dataLoaded = true
end

eventLoop = function(currentTime, remainingTime)
	if remainingTime <= 1000 then
		globalInitSettings(false, true)
		if remainingTime <= 500 then
			return system.exit()
		end
	end
	checkWorkingTimer()
	if not canStart then return end

	checkStageChallenge(currentTime)
	objectManager.loop(currentTime, remainingTime)
	checkPassage()
	timer.loop()
end

eventKeyboard = function(playerName, key, holding, x, y)
	if not isEventWorkingFor(playerName) then return end

	local cache = playerCache[playerName]
	if key == keyCode.space then
		if cache.dialog.id == 0 then
			-- Is not seeing a dialog
			if canTriggerCallbacks(playerName) then
				-- Checks all ranges of callbacks and, if matched, its action is performed
				for _, cbk in callback.__iter() do
					if cbk:performAction(playerName, x, y) then
						return
					end
				end
			end

			-- Throw
			if canThrowBullet(playerName) then
				bullet.newFromPlayer(x, y, cache.currentStage, playerName, (cache.isFacingRight and 1 or -1), (cache.currentStage > 6))
			end
		else
			-- Is seeing a dialog
			dialogAction(playerName)
		end
	elseif key == keyCode.left or key == keyCode.right then
		cache.isFacingRight = (key == keyCode.right)
		checkMoveOnSequence(playerName, cache)
	end
end

eventTextAreaCallback = function(id, playerName, eventName)
	if not isEventWorkingFor(playerName) then return end
	if not canTriggerCallbacks(playerName) then return end

	if string_find(eventName, "callback.", 1, true) then
		local data = tfm.get.room.playerList[playerName]
		callback.__get(string_sub(eventName, 10)):performAction(playerName, data.x, data.y)
	end
end

eventNewPlayer = function(playerName)
	loadAllImages(playerName) -- Unsure if this is really necessary
	buildMap(playerName, true)
end

eventPlayerLeft = function(playerName)
	if not isEventWorkingFor(playerName) then return end
	removePlayerFromStages(playerName)
end

eventPlayerDied = function(playerName)
	if not isEventWorkingFor(playerName) then return end

	local cache = playerCache[playerName]
	local currentStage = cache.currentStage
	removePlayerFromStages(playerName)

	removePlayerLife(playerName, cache)
	if currentStage > 0 and currentStage < 7 then
		tfm.exec.addShamanObject(objectId.icecube, 900, tfm.get.room.playerList[playerName].y - 50)
	end
end

eventEmotePlayed = function(playerName, emote, flag)
	if not isEventWorkingFor(playerName) then return end

	local data = tfm.get.room.playerList[playerName]
	local checkConsumables, cache, time = canGetConsumable(playerName)

	if checkConsumables then
		for consumable, coordinates in next, consumableCoordinates do
			if coordinates[5] == emote and (inSquare(data.x, data.y, coordinates[1], coordinates[2], coordinates[3], coordinates[4])) then
				tfm.exec.giveConsumables(playerName, consumableIds[consumable], 1)
				return
			end
		end
	end

	checkEmoteSequence(playerName, emote, data, cache, time)
end

eventPlayerDialogEnded = function(playerName, id, data)
	if id == dialogId.intro then -- intro
		chatMessage(translation.introduceMountain, playerName, "elf")
		chatMessage(translation.introduceAttack, playerName)
	elseif id == dialogId.findSanta then
		chatMessage(translation.introducePuzzle, playerName, "elf")
	end
end

--[[ Init ]]--
system.newTimer(function()
	workingTimer = workingTimerState.setVerified
	canStart = true
end, 1000, false)

loop(update, module.timerTicks, 1)

globalInitSettings(true)
do
	local xmlData = {
		groundId.jointEffect + 3, -- [mutant wizard] moving ground
		groundId.jointEffect + 2, -- [mutant wizard] circle axis
		groundId.bossBlock + 3, -- [mutant wizard] block
		groundId.bossBlock + 2, -- [wizard] up/down block
		groundId.bossBlock + 1, -- [wizard] right block
		groundId.bossBlock, -- [wizard] left block
		groundId.jointEffect + 1, -- [wizard] -1 axis
		groundId.jointEffect, -- [wizard] moving ground
		module.map.backgroundCover,
		module.map.foreground,
	}

	local counter, img = #xmlData
	for coord = 1, #miscData.sequenceEmotes do
		img = images.sequenceEmotes[-coord]
		if img then
			-- Boundaries
			counter = counter + 1
			xmlData[counter] = miscData.sequenceEmotes[coord][4]
			counter = counter + 1
			xmlData[counter] = miscData.sequenceEmotes[coord][3]
			counter = counter + 1
			xmlData[counter] = 50
			counter = counter + 1
			xmlData[counter] = 160
			counter = counter + 1
			xmlData[counter] = miscData.sequenceEmotes[coord][4]
			counter = counter + 1
			xmlData[counter] = miscData.sequenceEmotes[coord][3] + (miscData.sequenceEmotes[coord][5] * 160)
			-- Image
			counter = counter + 1
			xmlData[counter] = img
		end
	end
	counter = counter + 1

	-- desc
	local format = { }
	for i = 1, counter do
		format[i] = xmlData[counter - i]
	end

	tfm.exec.newGame(string_format(module.map.xml, table_unpack(format)))
end

math_randomseed(os_time())
