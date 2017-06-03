mode.grounds = {
	-- Translations
	translations = {
		en = {
			-- Data
			grounds = {
				-- Ground, Description
				[0] = {"Wood","?","?"},
				[1] = {"Ice","Increases your speed by pressing spacebar","Increases the speed in <BL>%s%%</BL>"},
				[2] = {"Trampoline","?","?"},
				[3] = {"Lava","Teleports you to the last Z indexed ground","?"},
				[4] = {"Chocolate","?","?"},
				[5] = {"Earth","?","?"},
				[6] = {"Grass","?","?"},
				[7] = {"Sand","Creates a sand storm","Decreases the storm in <BL>%s%%</BL>"},
				[8] = {"Cloud","Enables you to fly by pressing spacebar","Increases the fly in <BL>%s%%</BL>"},
				[9] = {"Water","Drowns you","Drowns you <BL>%s%%</BL> slower"},
				[10] = {"Stone","Creates a block of stone by pressing spacebar","Increases the block size in <BL>%s%%</BL>"},
				[11] = {"Snow","Shoots snowballs by pressing spacebar","Increases the snowball speed in <BL>%s%%</BL>"},
				[12] = {"Rectangle","Each color has its own function","?",{
					["C90909"] = "Kills you",
					["18C92B"] = "Revives all the enemies",
					["555D77"] = "Respawning Checkpoint",
				}},
				[13] = {"Circle","Each color has its own function","?"},
				[14] = {"Invisible","?","?"},
				[15] = {"Spiderweb","Teleports you to the spawn point","?"},
			},
			categories = {
				[1] = "Often long maps that, in most of the cases, the players must pass the same obstacles more than once.",
				[2] = "Usually long maps with dodgeable spiderwebs or lavas, sometimes using invisible waters to simule a fly.",
				[3] = "Harder maps that requires multiple skills to be completed.",
				[4] = "Maps that has as main obstacle the water drowning.",
				[5] = "Maps based mainly on lava teleports.",
				[6] = "Maps that requires a new skill, with mechanisms or something that makes you think before act.",
				[7] = "Maps based on speed and agility, built mostly with ice grounds.",
				[8] = "Maps based on snowball mechanisms/technics.",
				[9] = "Maps with different gameplays that doesn't fit any other category, also locates the <i>vanilla maps</i>.",
				[10] = "Soloable (mostly) maps, but with faster paths when the players work together.",
				[11] = "Maps with vampires.",
			},

			-- Init
			welcome = "Welcome to #%s! Can you be the fastest mouse using the ground effects? Try it!\n<PS>Press H for more info!",
			developer = "Developed by %s",
			
			-- Shop
			shop = {
				coin = "Coins",
				power = "Ground power",
				upgrade = "Upgrade",
				price = "Upgrade price",
				close = "Close",
			},
			bought = "You just spent %s coins for the ground %s!",
			cantbuy = "You haven't coins enough in order to buy this upgrade! :(",
			
			-- Profile
			profile = "Leaderboard : %s\n\n<N>Rounds : %s\n<N>Podiums : %s\n\n<N>Deaths : %s\n\n<N>Shop Coins : %s",
			
			-- Gameplay
			gotcoin = "You just got %s coins! :D",
			zombie = "Now you are a zombie!",
			countstats = {
				mice = "At least 5 mice are needed to stats count",
				tribe = "Stats do not count in tribe houses"
			},
			
			-- New map
			powersenabled = "The ground powers were enabled! Good luck!",
			
			-- Language
			language = "Current language : <J>%s",
			
			-- Settings
			password = {
				on = "New password : %s",
				off = "Password disabled!"
			},
			
			-- Commands
			commands = {
				shop = "shop",
				profile = "profile",
				help = "help",
				langue = "langue",
				leaderboard = "leaderboard",
				info = "info",
				pw = "password",
				mapinfo = "mapinfo",
			},
			
			-- Menu
			menu = {
				[1] = {"%s","\tYour aim in this minigame is to collect the cheese the faster you can, using the effects each ground offers."},
				[2] = {"Ground effects","Click in the ground's name to read more.\n\n%s"},
				[3] = {"Commands",{
					[1] = {"\t<J>» User</J>\n",{
						[1] = "<VP>!%s</VP> <PS>playerName</PS> <R>or</R> <VP>Key P</VP> - Opens the profile!",
						[2] = "<VP>!%s</VP> <R>or</R> <VP>Key O</VP> - Opens the shop!",
						[3] = "<VP>!%s</VP> - Changes the language!",
					}},
					[2] = {"\n\t<J>» Others</J>\n",{
						[1] = "<VP>!%s</VP> <R>or</R> <VP>Key H</VP> - Opens the help menu!",
						[2] = "<VP>!%s</VP> - Opens the leaderboard!",
						[3] = "<VP>!%s</VP> - Opens the help according to the ground you are on!",
						[4] = "<VP>!%s</VP> - Displays the map info if it is in the rotation!",
					}},
					[3] = {"\n\t<J>» Room admin</J>\n",{
						[1] = "<VP>!%s</VP> <PS>password</PS> - Adds or removes a password in the room!",
					}},
				}},
				[4] = {"Maps","<J>Maps : %s\n\n\tAccess %s and send your map. Do not forget to read all the rules before!"},
				[5] = {"Thanks for","<R>%s <G>- <N>Developer\n%s <G>- <N>Translators\n%s <G>- <N>Map evaluators"},
			},
			max = "15a2df47d2e",
		},
		br = {
			grounds = {
				[0] = {"Madeira","?","?"},
				[1] = {"Gelo","Aumenta sua velocidade ao pressionar a barra de espaço","Aumenta a velocidade em <BL>%s%%</BL>"},
				[2] = {"Trampolim","?","?"},
				[3] = {"Lava","Teletransporta-o para o piso de Z anterior","?"},
				[4] = {"Chocolate","?","?"},
				[5] = {"Terra","?","?"},
				[6] = {"Grama","?","?"},
				[7] = {"Areia","Cria uma tempestade de areia","Diminui a tempestade em <BL>%s%%</BL>"},
				[8] = {"Nuvem","Permite o voo ao pressionar a barra de espaço","Aumenta o voo em <BL>%s%%</BL>"},
				[9] = {"Água","Afoga-o","Afoga-o <BL>%s%%</BL> mais devagar"},
				[10] = {"Pedra","Cria um bloco de pedra ao pressionar a barra de espaço","Aumenta o tamanho do bloco em <BL>%s%%</BL>"},
				[11] = {"Neve","Atira bolas de neve ao pressionar a barra de espaço","Aumenta a velocidade da bola de neve em <BL>%s%%</BL>"},
				[12] = {"Retângulo","Cada cor tem sua própria função","?",{
					["C90909"] = "Mata-o",
					["18C92B"] = "Revive todos os inimigos",
					["555D77"] = "Checkpoint para reviver",
				}},
				[13] = {"Círculo","Cada cor tem sua própria função","?","?"},
				[14] = {"Invisível","?","?"},
				[15] = {"Teia de aranha","Teletransporta-o para o ponto de spawn","?"},
			},
			categories = {
				[1] = "Geralmente mapas longos que, na maioria dos casos, os jogadores devem passar pelo mesmo obstáculo mais de uma vez.",
				[2] = "Geralmente mapas grandes com teias de aranha ou lavas desviáveis, às vezes usando águas invisíveis para simular voo.",
				[3] = "Mapas mais difíceis que requem múltiplas habilidades para serem completados.",
				[4] = "Mapas que tem como obstáculo principal o afogamento na água.",
				[5] = "Mapas baseados principalmente em teleportes de lava.",
				[6] = "Mapas que requerem novas habilidades, com mecanismos ou algo que o faça pensar antes de agir.",
				[7] = "Mapas baseados em velocidade e agilidade, construídos em sua maioria por pisos de gelo.",
				[8] = "Mapas baseados em mecanismos/técnicas com bolas de neve.",
				[9] = "Mapas com gameplays diferentes que não se encaixam em nenhuma outra categoria, também dá espaço aos <i>mapas vanilla</i>.",
				[10] = "Mapas em que você pode completar sozinho (em maioria), mas com caminhos mais rápidos quando há trabalho em equipe entre os jogadores.",
				[11] = "Mapas com vampiros.",
			},
			
			welcome = "Bem-vindo ao #%s! Você pode ser o rato mais rápido usando os efeitos dos pisos? Prove!\n<PS>Pressione H para mais informações!",
			developer = "Desenvolvido por %s",
			
			shop = {
				coin = "Moedas",
				power = "Poder do piso",
				upgrade = "Melhorar",
				price = "Preço de aprimoramento",
				close = "Fechar",
			},
			bought = "Você acaba de gastar %s moedas pelo piso %s!",
			cantbuy = "Você não tem moedas suficientes para comprar esta atualização! :(",
			
			profile = "Rank : %s\n\n<N>Partidas : %s\n<N>Pódios : %s\n\n<N>Mortes : %s\n\n<N>Moedas na loja : %s",
			
			gotcoin = "Você acaba de conseguir %s moedas! :D",
			zombie = "Agora você é um zumbi!",
			countstats = {
				mice = "Ao menos 5 ratos são necessários para as estatísticas serem contabilizadas",
				tribe = "Estatísticas não são contabilizadas em cafofos de tribo"
			},
			
			powersenabled = "Os poderes dos pisos foram ativados! Boa sorte!",
			
			language = "Idioma atual : <J>%s",
			
			password = {
				on = "Nova senha : %s",
				off = "Senha desativada!"
			},

			commands = {
				shop = "loja",
				profile = "perfil",
				help = "ajuda",
				langue = "idioma",
				leaderboard = "rank",
				info = "info",
				pw = "senha",
			},
			
			menu = {
				[1] = {"%s","\tSeu objetivo neste mini-game é coletar o queijo o mais rápido possível, utilizando os efeitos que cada piso oferecer."},
				[2] = {"Efeitos dos pisos","Clique no nome do piso para ler mais.\n\n%s"},
				[3] = {"Comandos",{
					[1] = {"\t<J>» Usuário</J>\n",{
						[1] = "<VP>!%s</VP> <PS>nomeDoJogador</PS> <R>ou</R> <VP>Tecla P</VP> - Abre o perfil!",
						[2] = "<VP>!%s</VP> <R>ou</R> <VP>Tecla O</VP> - Abre a loja!",
						[3] = "<VP>!%s</VP> - Altera o idioma!",
					}},
					[2] = {"\n\t<J>» Outros</J>\n",{
						[1] = "<VP>!%s</VP> <R>ou</R> <VP>Tecla H</VP> - Abre o menu de ajuda!",
						[2] = "<VP>!%s</VP> - Abre o ranking!",
						[3] = "<VP>!%s</VP> - Abre a ajuda de acordo com o piso que você está pisando!",
						[4] = "<VP>!%s</VP> - Mostra as informações do mapa se estiver na rotação!",
					}},
					[3] = {"\n\t<J>» Administrador da sala</J>\n",{
						[1] = "<VP>!%s</VP> <PS>senha</PS> - Adiciona ou remove uma senha na sala!",
					}},
				}},
				[4] = {"Mapas","<J>Mapas : %s\n\n\tAcesse %s e envie seu mapa. Não se esqueça de ler todas as regras antes!"},
				[5] = {"Agradecimentos","<R>%s <G>- <N>Desenvolvedor\n%s <G>- <N>Tradutores\n%s <G>- <N>Avaliadores de mapa"},
			},
			max = "15a2df3e699",
		},
		es = {
			grounds = {
				[0] = {"Madera","?","?"},
				[1] = {"Hielo","Incrementa tu velocidad apretando espacio","Aumenta la velocidad en <BL>%s%%</BL>"},
				[2] = {"Trampolín","?","?"},
				[3] = {"Lava","Te teletransporta al suelo que tenga el último Z index","?"},
				[4] = {"Chocolate","?","?"},
				[5] = {"Tierra","?","?"},
				[6] = {"Hierba","?","?"},
				[7] = {"Arena","Crea una tormenta de arena","Disminuye la tormenta en <BL>%s%%</BL>"},
				[8] = {"Nube","Te permite volar presionando espacio","Aumenta el vuelo en <BL>%s%%</BL>"},
				[9] = {"Agua","Te ahogas","Te ahogas <BL>%s%%</BL> más lento"},
				[10] = {"Piedra","Crea un bloque de piedra presionando espacio","Aumenta el tamaño del bloque en <BL>%s%%</BL>"},
				[11] = {"Nieve","Dispara bolas de nieve presionando espacio","Aumenta la velocidad de la bola de nieve en <BL>%s%%</BL>"},
				[12] = {"Rectángulo","Cada color tiene su propia función","?",{
					["C90909"] = "Te mata",
					["18C92B"] = "Revive todos los enemigos",
					["555D77"] = "Respawning Checkpoint",
				}},
				[13] = {"Círculo","Cada color tiene su propia función","?"},
				[14] = {"Invisible","?","?"},
				[15] = {"Tela de araña","Te teletransporta al punto de aparición","?"},
			},
			categories = {
				[1] = "Mapas que, en la mayoría de los casos, los jugadores deben pasar obstaculos más de una vez.",
				[2] = "Usualmente mapas largos con telas de araña y lavas esquivables, algunas veces usando agua invisible para simular un vuelo.",
				[3] = "Mapas difíciles que necesitan una gran habilidad para completarlos.",
				[4] = "Mapas que tienen un obstáculo principal: el agua. ¡Te puedes ahogar!.",
				[5] = "Mapas basados principalmente en teletransportes de lava.",
				[6] = "Mapas que necesitan una nueva habilidad, con mecanismos o algo que te haga pensar antes de actuar.",
				[7] = "Mapas basados en la velocidad del jugador, construidos mayoritariamente con suelos de hielo.",
				[8] = "Mapas basados en mecanismos/técnicas con nieve.",
				[9] = "Mapas con un gameplay diferente que no entran en otra categoría, también localizados en los <i>mapas vanilla</i>.",
				[10] = "Mapas que (mayoritariamente) pueden ser completados solo, pero con patrones rápidos donde los jugadores necesitan trabajar juntos.",
				[11] = "Mapas con vampiros.",
			},
			
			welcome = "Bienvenido a #%s! Podrás ser el más rápido usando los efectos de los suelos? Inténtalo!\n<PS>Presiona H para más información!",
			developer = "Programado por %s",
			
			shop = {
				coin = "Monedas",
				power = "Potencia del suelo",
				upgrade = "Mejorar",
				price = "Precio de la mejora",
				close = "Cerrar",
			},
			bought = "Has gastado %s monedas para el suelo %s!",
			cantbuy = "No tienes las suficientes monedas para comprar esta mejora! :(",

			profile = "Tabla de líderes : %s\n\n<N>Rondas : %s\n<N>Podios : %s\n\n<N>Muertes : %s\n\n<N>Monedas : %s",

			gotcoin = "Has obtenido %s monedas! :D",
			zombie = "Ahora eres un Zombi!",
			countstats = {
				mice = "Por lo menos 5 ratones son necesarios para contar estadísticas",
				tribe = "Las estadísticas no cuentan en casas de tribu"
			},
			
			powersenabled = "Los poderes de los suelos han sido activados! Buena suerte!",
			
			language = "Idioma actual : <J>%s",
			
			password = {
				on = "Nueva contraseña : %s",
				off = "Contraseña desactivada!"
			},
			
			commands = {
				shop = "tienda",
				profile = "perfil",
				help = "ayuda",
				langue = "idioma",
				leaderboard = "ranking",
				info = "info",
				pw = "contraseña",
			},
			
			menu = {
				[1] = {"%s","\tTu objetivo en este juego es agarrar el queso lo más rápido que puedas, usando los efectos que cada suelo ofrece."},
				[2] = {"Efectos de suelo","Clickea en el nombre del suelo para leer más.\n\n%s"},
				[3] = {"Comandos",{
					[1] = {"\t<J>» Usuario</J>\n",{
						[1] = "<VP>!%s</VP> <PS>nombreDeUsuario</PS> <R>o</R> <VP>Tecla P</VP> - Abre el perfil!",
						[2] = "<VP>!%s</VP> <R>o</R> <VP>Tecla O</VP> - Abre la tienda!",
						[3] = "<VP>!%s</VP> - Cambia el idioma!\n",
					}},
					[2] = {"\t<J>» Otros</J>\n",{
						[1] = "<VP>!%s</VP> <R>o</R> <VP>Tecla H</VP> - Abre el menu de ayuda!",
						[2] = "<VP>!%s</VP> - Abre el ranking!",
						[3] = "<VP>!%s</VP> - Abre la guía del suelo en el que estás!",
						[4] = "<VP>!%s</VP> - Muestra la información del mapa si está en la rotación!",
					}},
					[3] = {"\n\t<J>» Admin de la sala</J>\n",{
						[1] = "<VP>!%s</VP> <PS>contraseña</PS> - Activa o desactiva la contraseña en la sala.",
					}},
				}},
				[4] = {"Mapas","<J>Mapas : %s\n\n\tEntra a %s y envía tu mapa. No olvides leer las reglas antes!"},
				[5] = {"Agradecimientos","<R>%s <G>- <N>Programador\n%s <G>- <N>Traductores\n%s <G>- <N>Evaluadores de mapas"},
			},
			max = "15a2df3e699",
		},
		fr = {
			grounds = {
				[0] = {"Bois","?","?"},
				[1] = {"Glace","Augmente votre vitesse en appuyant sur Espace","Augmente la vitesse de <BL>%s%%</BL>"},
				[2] = {"Trampoline","?","?"},
				[3] = {"Lave","Vous téléporte au sol avec le dernier indice Z","?"},
				[4] = {"Chocolat","?","?"},
				[5] = {"Terre","?","?"},
				[6] = {"Herbe","?","?"},
				[7] = {"Sable","Crée une tempête de sable","Diminue la tempête de <BL>%s%%</BL>"},
				[8] = {"Nuage","Vous donne la possibilité de voler en appuyant sur Espace","Augmente le vol de <BL>%s%%</BL>"},
				[9] = {"Eau","Vous noie","Vous noie <BL>%s%%</BL> plus lentement"},
				[10] = {"Pierre","Crée un bloc de pierre en appuyant sur Espace","Augmente la taille du bloc de <BL>%s%%</BL>"},
				[11] = {"Neige","Tire des boules de neige en appuyant sur Espace","Augmente la vitesse de la boule de neige de <BL>%s%%</BL>"},
				[12] = {"Rectangle","Chaque couleur a sa propre fonction","?",{
					["C90909"] = "Te tue",
					["18C92B"] = "Ressuscite tous les ennemis",
					["555D77"] = "Respawning Checkpoint",
				}},
				[13] = {"Cercle","Chaque couleur a sa propre fonction","?"},
				[14] = {"Invisible","?","?"},
				[15] = {"Toile d'araignée","Vous téléporte au point de spawn","?"},
			},
			categories = {
				[1] = "Often long maps that, in most of the cases, the players must pass the same obstacles more than once.",
				[2] = "Usually long maps with dodgeable spiderwebs or lavas, sometimes using invisible waters to simule a fly.",
				[3] = "Harder maps that requires multiple skills to be completed.",
				[4] = "Maps that has as main obstacle the water drowning.",
				[5] = "Maps based mainly on lava teleports.",
				[6] = "Maps that requires a new skill, with mechanisms or something that makes you think before act.",
				[7] = "Maps based on speed and agility, built mostly with ice grounds.",
				[8] = "Maps based on snowball mechanisms/technics.",
				[9] = "Maps with different gameplays that doesn't fit any other category, also locates the <i>vanilla maps</i>.",
				[10] = "Soloable (mostly) maps, but with faster paths when the players work together.",
				[11] = "Maps with vampires.",
			},
			
			welcome = "Bienvenue à #%s! Pouvez vous être la souris la plus rapide grâce aux effets des sols? Essayez!\n<PS>Appuyez sur H pour plus d'informations!",
			developer = "Développé par %s",

			shop = {
				coin = "Pièces",
				power = "Force du sol",
				upgrade = "Améliorer",
				price = "Coût d'amélioration",
				close = "Fermer",
			},
			bought = "Vous venez de dépenser %s pièces pour le sol %s!",
			cantbuy = "Vous n'avez pas assez de pièces pour acheter cette amélioration! :(",
			
			profile = "Leaderboard : %s\n\n<N>Parties : %s\n<N>Podiums : %s\n\n<N>Morts : %s\n\n<N>Shop Pièces : %s",
			
			gotcoin = "Vous venez de recevoir %s pièces! :D",
			countstats = {
				mice = "Au moins 5 souris sont nécessaires pour que les statistiques comptent",
				tribe = "Les statistiques ne comptent pas en maison de tribu"
			},
			zombie = "Vous êtes maintenant un zombie!",
			
			powersenabled = "Les pouvoirs des sols ont été activés! Bonne chance!",
			
			language = "Langage actuel : <J>%s",
			
			password = {
				on = "Nouveau mot de passe : %s",
				off = "Mot de passe désactivé!"
			},
			
			commands = {
				shop = "magasin",
				profile = "profil",
				help = "aide",
				langue = "langue",
				leaderboard = "leaderboard",
				info = "info",
				pw = "password",
			},
			
			menu = {
				[1] = {"%s","\tVotre but dans ce minijeu est de collecter le fromage aussi vite que possible, en utilisant les effets des différents sols."},
				[2] = {"Effets du sol","Clique sur le nom du salon pour en lire plus.\n\n%s"},
				[3] = {"Commandes",{
					[1] = {"\t<J>» Joueur</J>\n",{
						[1] = "<VP>!%s</VP> <PS>playerName</PS> <R>ou</R> <VP>Touche P</VP> - Ouvre le profil !",
						[2] = "<VP>!%s</VP> <R>ou</R> <VP>Touche O</VP> - Ouvre le magasin !",
						[3] = "<VP>!%s</VP> - Change la langue !\n",
					}},
					[2] = {"\t<J>» Autres</J>\n",{
						[1] = "<VP>!%s</VP> <R>ou</R> <VP>Touche H</VP> - Ouvre le menu d'aide !",
						[2] = "<VP>!%s</VP> - Ouvre le leaderboard!",
						[3] = "<VP>!%s</VP> - Ouvre l'aide en fonction du sol sur lequel vous vous trouvez!",
						[4] = "<VP>!%s</VP> - Affiche les informations de la carte si elle est dans la rotation!"
					}},
					[3] = {"\n\t<J>» Place admin</J>\n",{
						[1] = "<VP>!%s</VP> <PS>mot de passe</PS> - Ajoute ou supprime un mot de passe dans la chambre.",
					}},
				}},
				[4] = {"Cartes","<J>Cartes : %s\n\n\tAccédez à %s et envoyez votre carte. N'oubliez pas de lire toutes les règles avant!"},
				[5] = {"Merci à","<R>%s <G>- <N>Développeur\n%s <G>- <N>Traducteurs\n%s <G>- <N>Evaluateurs de maps"},
			},
			max = "15a2df47d2e",
		},
		pl = {
			grounds = {
				[0] = {"Drewno","?","?"},
				[1] = {"Lód","Zwiększa twoją szybkość, gdy klikasz spację","Zwiększa prędkość w <BL>%s%%</BL>"},
				[2] = {"Trampolina","?","?"},
				[3] = {"Lawa","Przenosi ciebie do ostatniego indexu Z","?"},
				[4] = {"Czekolada","?","?"},
				[5] = {"Ziemia","?","?"},
				[6] = {"Trawa","?","?"},
				[7] = {"Piasek","Tworzy burzę piaskową","Zmniejsza storm w <BL>%s%%</BL>"},
				[8] = {"Chmura","Pozwala tobie latać, gdy klikasz spację","Zwiększa latanie w <BL>%s%%</BL>"},
				[9] = {"Woda","Topi ciebie","Topi <BL>%s%%</BL> wolniej"},
				[10] = {"Kamień","Powoduje, że możesz stworzyć blok kamienia, wciskając spację","Zwiększa wielkość bloku w <BL>%s%%</BL>"},
				[11] = {"Śnieg","Powoduje, że możesz strzelić śnieżką, wciskając spację","Zwiększa prędkość śnieżki w <BL>%s%%</BL>"},
				[12] = {"Trójkąt","Każdy kolor ma swoją funkcję","?",{
					["C90909"] = "Zabija ciebie",
					["18C92B"] = "Ożywia wszystkich przeciwników",
					["555D77"] = "Ponowne spawnowanie Checkpointów",
				}},
				[13] = {"Koło","Każdy kolor ma swoją funkcję","?"},
				[14] = {"Niewidzialność","?","?"},
				[15] = {"Pajęcza sieć","Przenosi ciebie do miejsca spawnu","?"},
			},
			categories = {
				[1] = "Often long maps that, in most of the cases, the players must pass the same obstacles more than once.",
				[2] = "Usually long maps with dodgeable spiderwebs or lavas, sometimes using invisible waters to simule a fly.",
				[3] = "Harder maps that requires multiple skills to be completed.",
				[4] = "Maps that has as main obstacle the water drowning.",
				[5] = "Maps based mainly on lava teleports.",
				[6] = "Maps that requires a new skill, with mechanisms or something that makes you think before act.",
				[7] = "Maps based on speed and agility, built mostly with ice grounds.",
				[8] = "Maps based on snowball mechanisms/technics.",
				[9] = "Maps with different gameplays that doesn't fit any other category, also locates the <i>vanilla maps</i>.",
				[10] = "Soloable (mostly) maps, but with faster paths when the players work together.",
				[11] = "Maps with vampires.",
			},
			
			welcome = "Witaj w #%s! Możesz zostać najszybszą myszką, używając moce gruntów? Spróbuj!\n<PS>Wciśnij H, aby otrzymać więcej informacji!",
			developer = "Stworzone przez %s",
			
			shop = {
				coin = "Kredyty",
				power = "Moc gruntu",
				upgrade = "Ulepsz",
				price = "Cena ulepszenia",
				close = "Zamknij",
			},
			bought = "Wydałeś %s monet na %s!",
			cantbuy = "Nie masz wystarczającej ilości monet, żeby zakupić to ulepszenie! :(",
			
			profile = "Ranking : %s\n\n<N>Rund : %s\n<N>Podia : %s\n\n<N>Zgony : %s\n\n<N>Monety : %s",

			gotcoin = "Masz %s monet! :D",
			zombie = "Zostałeś/-aś zombie!",
			countstats = {
				mice = "Przynajmniej 5 myszek jest potrzebnych aby statystyki były naliczane",
				tribe = "Statystyki nie są naliczane w chatkach plemiennych"
			},

			powersenabled = "Moce gruntów są włączone! Powodzenia!",

			language = "Bieżący język : <J>%s",
			
			password = {
				on = "Nowe hasło : %s",
				off = "Hasło wyłączone!"
			},
			
			commands = {
				shop = "sklep",
				profile = "profil",
				help = "pomoc",
				langue = "język",
				leaderboard = "ranking",
				info = "informacje",
				pw = "hasło",
			},
			
			menu = {
				[1] = {"%s","\tTwoim zadaniem w tej minigrze jest zbieranie serka najszybciej jak potrafisz, wykorzystując moce gruntów."},
				[2] = {"Moce gruntu","Kliknij w nazwę gruntu, żeby uzyskać więcej informacji.\n\n%s"},
				[3] = {"Komendy",{
					[1] = {"\t<J>» Użytkowe</J>\n",{
						[1] = "<VP>!%s</VP> <PS>nazwaGracza</PS> <R>albo</R> <VP>Klawisz P</VP> - Otwiera profil!",
						[2] = "<VP>!%s</VP> <R>albo</R> <VP>Klawisz O</VP> - Otwiera Sklep!",
						[3] = "<VP>!%s</VP> - Zmienia język!",
					}},
					[2] = {"\t<J>» Inne</J>\n",{
						[1] = "<VP>!%s</VP> <R>albo</R> <VP>Klawisz H</VP> - Otwiera pomoc!",
						[2] = "<VP>!%s</VP> - Otwiera ranking!",
						[3] = "<VP>!%s</VP> - Otwiera pomoc zależnie, na którym gruncie jesteś!",
						[4] = "<VP>!%s</VP> - Pokazuje informacje o mapie jeżeli jest w rotacji!",
					}},
					[3] = {"\n\t<J>» Pokój z adminem</J>\n",{
						[1] = "<VP>!%s</VP> <PS>hasło</PS> - Dodaje lub usuwa hasło w pokoju.",
					}},
				}},
				[4] = {"Mapy","<J>Mapy : %s\n\n\tStwórz %s i prześlij swoją mapę. Nie zapomnij, aby najpierw przeczytać zasady!"},
				[5] = {"Podziękowania","<R>%s <G>- <N>Twórca\n%s <G>- <N>Tłumacze\n%s <G>- <N>Testerzy map"},
			},
			max = "15a2df4de75",
		},
		hu = {
			grounds = {
				[0] = {"Fa","?","?"},
				[1] = {"Jég","Növeli a sebességedet, ha megnyomod a Szóközt","Növeli a sebességet <BL>%s%%</BL>-kal"},
				[2] = {"Trambulin","?","?"},
				[3] = {"Láva","Elteleportál téged a legutóbbi Z index talajhoz","?"},
				[4] = {"Csoki","?","?"},
				[5] = {"Föld","?","?"},
				[6] = {"Füves talaj","?","?"},
				[7] = {"Homok","Homokvihart hoz létre","Csökkenti a sebességet <BL>%s%%</BL>-kal"},
				[8] = {"Felhő","Lehetővé teszi számodra a repülést, ha megnyomod a Szóközt","Növeli a repülést <BL>%s%%</BL>-kal"},
				[9] = {"Víz","Megfullaszt téged","Megfullaszt <BL>%s%%</BL>-kal lassabban"},
				[10] = {"Kő","Egy kőtömböt hoz létre, ha megnyomod a Szóközt","Növeli a blokk méretét <BL>%s%%</BL>-kal"},
				[11] = {"Hó","Hógolyót lő, ha megnyomod a Szóközt","Növeli a hógolyó sebességét <BL>%s%%</BL>-kal"},
				[12] = {"Téglalap","Mindegyik színnek megvan a saját szerepe","?",{
					["C90909"] = "Megöl téged",
					["18C92B"] = "Újraéleszti az összes ellenséget",
					["555D77"] = "Újraéledő Ellenőrzőpont",
				}},
				[13] = {"Kör","Mindegyik színnek megvan a saját szerepe","?"},
				[14] = {"Láthatatlan","?","?"},
				[15] = {"Pókháló","Elteleportál téged a kezdőpontra","?"},
			},
			categories = {
				[1] = "Often long maps that, in most of the cases, the players must pass the same obstacles more than once.",
				[2] = "Usually long maps with dodgeable spiderwebs or lavas, sometimes using invisible waters to simule a fly.",
				[3] = "Harder maps that requires multiple skills to be completed.",
				[4] = "Maps that has as main obstacle the water drowning.",
				[5] = "Maps based mainly on lava teleports.",
				[6] = "Maps that requires a new skill, with mechanisms or something that makes you think before act.",
				[7] = "Maps based on speed and agility, built mostly with ice grounds.",
				[8] = "Maps based on snowball mechanisms/technics.",
				[9] = "Maps with different gameplays that doesn't fit any other category, also locates the <i>vanilla maps</i>.",
				[10] = "Soloable (mostly) maps, but with faster paths when the players work together.",
				[11] = "Maps with vampires.",
			},
			
			welcome = "Üdvözöllek a #%s! Sikerül neked a leggyorsabb egérré válni a talajhatások használatával? Próbáld ki!\n<PS>Nyomd meg a H betűt több információért!",
			developer = "Fejlesztve %s által",
			
			shop = {
				coin = "Pénzérmék",
				power = "Talaj ereje",
				upgrade = "Frissítés",
				price = "Ár frissítése",
				close = "Bezárás",
			},
			bought = "Te most költöttél el %s pénzt a talajra %s!",
			cantbuy = "Nincs elég pénzed ahhoz, hogy megvedd ezt a frissítést! :(",
			
			profile = "Ranglista : %s\n\n<N>Körök : %s\n<N>Dobogók : %s\n\n<N>Halálozások : %s\n\n<N>Bolti pénz : %s",
			
			gotcoin = "Te most szereztél %s pénzt! :D",
			zombie = "Most egy zombi vagy!",
			countstats = {
				mice = "Legalább 5 egérnek kell lennie, hogy statisztikát lehessen számolni",
				tribe = "A statisztika nem számít a törzsházakban"
			},
			
			powersenabled = "A talajhatások engedélyezve lettek! Sok szerencsét!",
			
			language = "Jelenlegi nyelv : <J>%s",
			
			password = {
				on = "Új jelszó : %s",
				off = "Jelszó letiltva!"
			},
			
			commands = {
				shop = "bolt",
				profile = "profil",
				help = "súgó",
				langue = "nyelv",
				leaderboard = "ranglistát",
				info = "infó",
				pw = "jelszó",
			},
			
			menu = {
				[1] = {"%s","\tA te feladatod ebben a minijátékban az, hogy a lehető leggyorsabban összegyűjtsd a sajtot a talajhatások használatával."},
				[2] = {"Talajhatások","Kattints a talaj nevére, hogy több mindent megtudhass.\n\n%s"},
				[3] = {"Parancsok",{
					[1] = {"\t<J>» Felhasználó</J>\n",{
						[1] = "<VP>!%s</VP> <PS>játékosNeve</PS> <R>vagy</R> <VP>P billenytű</VP> - Megnyitja a profilt!",
						[2] = "<VP>!%s</VP> <R>vagy</R> <VP>O billentyű</VP> - Megnyitja a boltot!",
						[3] = "<VP>!%s</VP> - Megváltoztatja a nyelvet!\n",
					}},
					[2] = {"\t<J>» Egyebek</J>\n",{
						[1] = "<VP>!%s</VP> <R>vagy</R> <VP>H billentyű</VP> - Megnyitja a Súgó menüpontot!",
						[2] = "<VP>!%s</VP> - Megnyitja a ranglistát!",
						[3] = "<VP>!%s</VP> - Megnyitja a Súgót aszerint, amelyik talajon állsz!",
						[4] = "<VP>!%s</VP> - Displays the map info if it is in the rotation!",
					}},
					[3] = {"\n\t<J>» Szoba admin</J>\n",{
						[1] = "<VP>!%s</VP> <PS>jelszó</PS> - Bekapcsolja vagy kikapcsolja a jelszót a szobában!",
					}},
				}},
				[4] = {"Pályák","<J>Pályák : %s\n\n\tEngedélyezd a %s és küldd be a pályádat. Előtte ne felejtsd el elolvasni az összes szabály!"},
				[5] = {"Köszönet","<R>%s - Nak <G>- <N>Fejlesztő\n%s <G>- <N>Fordítók\n%s <G>- <N>Pálya értékelők"},
			},
			max = "15a2df47d2e",
		},
		ar = {
			grounds = {
				[0] = {"خشب","?","?"},
				[1] = {"جليد","تزيد من سرعتك عند الضغط على زر المسطرة","يزيد من السرعة ب <BL>%s%%</BL>"},
				[2] = {"الترامبولين","?","?"},
				[3] = {"الحمم","تنقلك إلى الأرضية التي لديها اَخر رقم في الـ Z","?"},
				[4] = {"الشوكولاته","?","?"},
				[5] = {"الأرض","?","?"},
				[6] = {"العشب","?","?"},
				[7] = {"الرمل","تصنع عاصفة رملية","يقلل من العاصفة ب <BL>%s%%</BL>"},
				[8] = {"غيمة","تجعلك تطير عن طريق الضغط على زر المسطرة","يزيد من الطيران ب <BL>%s%%</BL>"},
				[9] = {"المياه","تغرقك","يغرقك <BL>%s%%</BL> ببطئ"},
				[10] = {"الحجارة","تصنع حاجو من الحجارة عن طريق الضغط على زر المسطرة","يزيد من حجم الارضية ب <BL>%s%%</BL>"},
				[11] = {"الثلج","تطلق كرات ثلجية عن طريق الضغط على زر المسطرة","يزيد من سرعة كرة الثلج ب <BL>%s%%</BL>"},
				[12] = {"مستطيل","كل لون له قوته الخاصة","?",{
					["C90909"] = "يقتلك",
					["18C92B"] = "إعادة الحياة إلى جميع أعدائك",
					["555D77"] = "نقطة العودة للحياة",
				}},
				[13] = {"الدائرة","كل لون له قوته الخاصة","?"},
				[14] = {"الإختفاء","?","?"},
				[15] = {"شبكة العنكبوت","تنقلك إلى نقطة البداية","?"},
			},
			categories = {
				[1] = "Often long maps that, in most of the cases, the players must pass the same obstacles more than once.",
				[2] = "Usually long maps with dodgeable spiderwebs or lavas, sometimes using invisible waters to simule a fly.",
				[3] = "Harder maps that requires multiple skills to be completed.",
				[4] = "Maps that has as main obstacle the water drowning.",
				[5] = "Maps based mainly on lava teleports.",
				[6] = "Maps that requires a new skill, with mechanisms or something that makes you think before act.",
				[7] = "Maps based on speed and agility, built mostly with ice grounds.",
				[8] = "Maps based on snowball mechanisms/technics.",
				[9] = "Maps with different gameplays that doesn't fit any other category, also locates the <i>vanilla maps</i>.",
				[10] = "Soloable (mostly) maps, but with faster paths when the players work together.",
				[11] = "Maps with vampires.",
			},
			
			welcome = "مرحبا إلى #%s! هل يمكنك أن تكون أسرع فأر يستعمل قوى الأرض؟ قم بتجربتها!\n<PS>اضغط على الزر H لمعرفة المزيد!",
			developer = "مبرمجة من قبل %s",
			
			shop = {
				coin = "النقود",
				power = "طاقة الارضية",
				upgrade = "ترقية",
				price = "ترقبة السعر",
				close = "اغلاق",
			},
			bought = "لقد قمت بإستعمال %s من النقود من أجل الأرضية %s!",
			cantbuy = "لا تملك النقود الكافية لشراء هذا! :(",
			
			profile = "لائحة المتقدمين : %s\n\n<N>الجولات : %s\n<N>المناصب : %s\n\n<N>الموت : %s\n\n<N>نقود المتجر : %s",
			
			gotcoin = "لقد حصلت على %s نقود! :D",
			zombie = "أصبحت الأن ميت حي!",
			countstats = {
				mice = "تحتاج الاقل ل 5 فئران لاحصائيات الاعتماد",
				tribe = "الاحصائيات لا تحسب بمنزل القبيلة"
			},
			
			powersenabled = "تم تفعيل قوى الأرض! حظا موفقا!",
			
			language = "اللغة الحالية : <J>%s",
			
			password = {
				on = "جديدة سر كلمة : %s",
				off = "السر كلمة تعطيل!"
			},
			
			commands = {
				shop = "المتجر",
				profile = "لاعب",
				help = "المساعدة",
				langue = "اللغة",
				leaderboard = "مراكز",
				info = "معلومة",
				pw = "password",
			},
			
			menu = {
				[1] = {"%s","\tما عليك فعله في هذه اللعبة هو جمع الجبن بأسرع ما يمكن يمكنك إستخدام القوى التي  توفرها لك الأرضيات."},
				[2] = {"تأثيرات الأراضي","أنقر على إسم الأرضية لمعرفة المزيد عنها\n\n%s"},
				[3] = {"الأوامر",{
					[1] = {"\t<J>» اللاعب</J>\n",{
						[1] = "<VP>!%s</VP> <PS>إسم اللاعب</PS> <R>أو</R> <VP>زر P</VP> - لفتح الملف الشخصي!",
						[2] = "<VP>!%s</VP> <R>أو</R> <VP>الزر O</VP> - لفتح المتجر!",
						[3] = "<VP>!%s</VP> - لتغيير اللغة!\n",
					}},
					[2] = {"\t<J>» البقية</J>\n",{
						[1] = "<VP>!%s</VP> <R>أو</R> <VP>الزر H</VP> - لقتح لائحة المساعدة!",
						[2] = "<VP>!%s</VP> - فتح قائمة المراكز!",
						[3] = "<VP>!%s</VP> - فتح المساعدة وفقا للمكان الذي انت عليه!",
						[4] = "<VP>!%s</VP> - يعرض معلومات الخريطة إذا كانت في دوران",
					}},
					[3] = {"\n\t<J>» مشرف غرفة</J>\n",{
						[1] = "<VP>!%s</VP> <PS>سر كلمة</PS> - إضافة أو إزالة كلمة مرور في الغرفة!",
					}},
				}},
				[4] = {"الخرائط","<J>الخرائط : %s\n\n\tتفعيل %s وأرسل الخارطة. لا تنسى قراءة القوانين!"},
				[5] = {"شكرا لـ","<R>%s <G>- <N>المبرمج\n%s <G>- <N>مترجمون\n%s <G>- <N>مقيموا الخرائط"},
			},
			max = "15a2df47d2e",
		},
		nl = {
			grounds = {
				[0] = {"Hout","?","?"},
				[1] = {"Ijs","Verhoogt je snelheid door op de spatiebalk te drukken","Verhoogd de snelheid met <BL>%s%%</BL>"},
				[2] = {"Trampoline","?","?"},
				[3] = {"Lava","Teleport jou naar de laatst Z index grond","?"},
				[4] = {"Chocolade","?","?"},
				[5] = {"Aarde","?","?"},
				[6] = {"Gras","?","?"},
				[7] = {"Zand","Maakt een zandstorm","Vemindert de storm met <BL>%s%%</BL>"},
				[8] = {"Wolk","Hiermee kun je vliegen door op de spatiebalk te drukken","Verhoogd de vlucht met <BL>%s%%</BL>"},
				[9] = {"Water","Laat je verdrinken","Maakt je <BL>%s%%</BL> langzamer"},
				[10] = {"Steen","Hiermee maak je een blok steen door op de spatiebalk te drukken","Vergroot de grootte van het blok met <BL>%s%%</BL>"},
				[11] = {"Sneeuw","Schiet sneeuwballen door op de spatiebalk te drukken","Verhoogd de snelheid van de sneeuwbal met <BL>%s%%</BL>"},
				[12] = {"Rechthoek","Elke kleur heeft zijn eigen functie","?",{
					["C90909"] = "Vermoordt jou",
					["18C92B"] = "Brengt alle tegenstanders weer tot leven",
					["555D77"] = "Respawning Checkpoint",
				}},
				[13] = {"Cirkel","Elke kleur heeft zijn eigen functie","?"},
				[14] = {"Onzichtbaar","?","?"},
				[15] = {"Spinnenweb","Teleport je naar het beginpunt","?"},
			},
			categories = {
				[1] = "Often long maps that, in most of the cases, the players must pass the same obstacles more than once.",
				[2] = "Usually long maps with dodgeable spiderwebs or lavas, sometimes using invisible waters to simule a fly.",
				[3] = "Harder maps that requires multiple skills to be completed.",
				[4] = "Maps that has as main obstacle the water drowning.",
				[5] = "Maps based mainly on lava teleports.",
				[6] = "Maps that requires a new skill, with mechanisms or something that makes you think before act.",
				[7] = "Maps based on speed and agility, built mostly with ice grounds.",
				[8] = "Maps based on snowball mechanisms/technics.",
				[9] = "Maps with different gameplays that doesn't fit any other category, also locates the <i>vanilla maps</i>.",
				[10] = "Soloable (mostly) maps, but with faster paths when the players work together.",
				[11] = "Maps with vampires.",
			},
			
			
			welcome = "Welkom bij #%s! Ben jij de snelste muis door grond effecten te gebruiken? Probeer het!",
			developer = "Gemaakt door %s",
			
			shop = {
				coin = "Munten",
				power = "Grondkracht",
				upgrade = "Upgraden",
				price = "Upgrade kosten",
				close = "Sluit",
			},
			bought = "Je gaf net %s munten uit voor de grond %s!",
			cantbuy = "Je hebt niet genoeg munten om deze upgrade uit te voeren! :(",

			profile = "Ranglijst : %s\n\n<N>Rondes : %s\n<N>Podiums : %s\n\n<N>Sterfgevallen : %s\n\n<N>Winkel Munten : %s",

			gotcoin = "Je kreeg zojuist %s munten! :D",
			zombie = "Nu ben je een zombie!",
			countstats = {
				mice = "Er zijn minstens 5 muizen nodig voordat de stats tellen",
				tribe = "Stats tellen niet in stamhuizen"
			},

			powersenabled = "De grondkrachten zijn ingeschakeld! Succes!",

			language = "Huidige taal : <J>%s",

			password = {
				on = "Nieuwe wachtwoord : %s",
				off = "Wachtwoord uitgezet!"
			},

			commands = {
				shop = "winkel",
				profile = "profiel",
				help = "help",
				langue = "taal",
				leaderboard = "leaderboard",
				info = "info",
				pw = "wachtwoord",
			},
			
			menu = {
				[1] = {"%s","\tJouw doel is om zoveel mogelijk kaas te verzamelen, met gebruik van verschillende grond-effecten."},
				[2] = {"Grond effecten","Klik op de grond om meer info te lezen.\n\n%s"},
				[3] = {"Commands",{
					[1] = {"\t<J>» User</J>\n",{
						[1] = "<VP>!%s</VP> <PS>playerName</PS> <R>or</R> <VP>Key P</VP> - Opent het profiel!",
						[2] = "<VP>!%s</VP> <R>or</R> <VP>Key O</VP> - Opent de winkel!",
						[3] = "<VP>!%s</VP> - Wijzigt de taal!\n",
					}},
					[2] = {"\t<J>» Others</J>\n",{
						[1] = "<VP>!%s</VP> <R>or</R> <VP>Key H</VP> - Opent de Help menu!",
						[2] = "<VP>!%s</VP> - Opent de leaderboard!",
						[3] = "<VP>!%s</VP> - Opent help op basis van de grond waarop je staat!",
						[4] = "<VP>!%s</VP> - Displays the map info if it is in the rotation!",
					}},
					[3] = {"\n\t<J>» Kamer admin</J>\n",{
						[1] = "<VP>!%s</VP> <PS>wachtwoord</PS> - Voegt of haalt een wachtwoord weg van een kamer!",
					}},
				}},
				[4] = {"Maps","<J>Maps : %s\n\n\tBereik %s en verzend jouw map. Vergeet niet om alle regels te lezen voordat je begint!"},
				[5] = {"Dank aan","<R>%s <G>- <N>Developer\n%s <G>- <N>Translators\n%s <G>- <N>Mapbeoordelaars"},
			},
			max = "15a2df47d2e",
		},
		de = {
			grounds = {
				[0] = {"Holz","?","?"},
				[1] = {"Eis","Beschleunigt dich indem du die Leertaste drückst","Erhoht die geschwindigkeit in <BL>%s%%</BL>"},
				[2] = {"Trampoline","?","?"},
				[3] = {"Lava","Teleportiert dich zum letzen Z Index Boden","?"},
				[4] = {"Schokolade","?","?"},
				[5] = {"Erde","?","?"},
				[6] = {"Gras","?","?"},
				[7] = {"Sand","Kreiert einen Sandsturm","Verringert die sturm in <BL>%s%%</BL>"},
				[8] = {"Wolke","Du kannst fliegen indem du die Leertaste drückst","Erhoht die fliege in <BL>%s%%</BL>"},
				[9] = {"Wasser","Ertränkt dich","Ertrinkt dich <BL>%s%%</BL> langsamer"},
				[10] = {"Stein","Erschaffe einen Stein indem du die Leertaste drückst","Erhoht die blockgrosse in <BL>%s%%</BL>"},
				[11] = {"Schnee","Wirf Schneebälle indem du die Leertaste drückst","Erhoht die schneeball geschwindigkeit in <BL>%s%%</BL>"},
				[12] = {"Rechteck","Jede Farbe hat seine eigene Funktion","?",{
					["C90909"] = "Tötet du",
					["18C92B"] = "Aufleben alle Feinde",
					["555D77"] = "Respawning Checkpoint",
				}},
				[13] = {"Kreis","Jede Farbe hat seine eigene Funktion","?"},
				[14] = {"Unsichtbar","?","?"},
				[15] = {"Spinnweben","Teleportiert dich zum Startpunkt","?"},
			},
			categories = {
				[1] = "Often long maps that, in most of the cases, the players must pass the same obstacles more than once.",
				[2] = "Usually long maps with dodgeable spiderwebs or lavas, sometimes using invisible waters to simule a fly.",
				[3] = "Harder maps that requires multiple skills to be completed.",
				[4] = "Maps that has as main obstacle the water drowning.",
				[5] = "Maps based mainly on lava teleports.",
				[6] = "Maps that requires a new skill, with mechanisms or something that makes you think before act.",
				[7] = "Maps based on speed and agility, built mostly with ice grounds.",
				[8] = "Maps based on snowball mechanisms/technics.",
				[9] = "Maps with different gameplays that doesn't fit any other category, also locates the <i>vanilla maps</i>.",
				[10] = "Soloable (mostly) maps, but with faster paths when the players work together.",
				[11] = "Maps with vampires.",
			},
			
			welcome = "Willkommen zu #%s! Kannst du die schnellste Maus mit den Bodeneffekten sein? Versuch es!\n<PS>Drück H für mehr informationen!",
			developer = "Entwickelt von %s",
			
			shop = {
				coin = "Munzen",
				power = "Bodenleistung",
				upgrade = "Aktualisierung",
				price = "Upgrade Preis",
				close = "Schliessen",
			},
			bought = "Du hast %s Münzen für den Boden %s ausgegeben!",
			cantbuy = "Du hast nicht genügend Münzen um dieses Upgrade zu kaufen! :(",
			
			profile = "Bestenliste : %s\n\n<N>Runden: %s\n<N>Podiums: %s\n\n<N>Tode : %s\n\n<N>Shop Münzen: %s",
			
			gotcoin = "Du hast soeben %s Münzen erhalten! :D",
			zombie = "Du bist nun ein Zombie!",
			countstats = {
				mice = "Es müssen mindestens 5 Mäuse im Raum sein damit die Stats zählen",
				tribe = "Stats zählen in Stammeshäusern nicht"
			},
			
			powersenabled = "Der Effekt des Bodens wurde aktiviert! Viel Glück!",
			
			language = "Aktuelle Sprache : <J>%s",
			
			password = {
				on = "Neu passwort: : %s",
				off = "Passwort deaktiviert!"
			},
			
			commands = {
				shop = "shop",
				profile = "profil",
				help = "hilfe",
				langue = "sprache",
				leaderboard = "bestenliste",
				info = "info",
				pw = "passwort",
			},
			
			menu = {
				[1] = {"%s","\tDein Ziel in diesem Minigame ist es den Käse so schnell wie möglich zu sammeln, indem du die verschiedenen Effekte der Böden ausnutzt."},
				[2] = {"Bodeneffekte","Klicken in den bodens namen um mehr zu lesen.\n\n%s"},
				[3] = {"Kommandos",{
					[1] = {"\t<J>» Benutzer</J>\n",{
						[1] = "<VP>!%s</VP> <PS>Spielername</PS> <R>oder</R> <VP>Taste P</VP> - Öffnet das Profil!",
						[2] = "<VP>!%s</VP> <R>oder</R> <VP>Taste O</VP> - Öffnet den Shop!",
						[3] = "<VP>!%s</VP> - Ändert die Sprache!\n",
					}},
					[2] = {"\t<J>» Anderes</J>\n",{
						[1] = "<VP>!%s</VP> <R>oder</R> <VP>Taste H</VP> - Öffnet das Hilfsmenu!",
						[2] = "<VP>!%s</VP> - Öffnet die Bestenliste!",
						[3] = "<VP>!%s</VP> - Öffnet die hilfe nach dem boden auf dem du bist auf!",
						[4] = "<VP>!%s</VP> - Displays the map info if it is in the rotation!",
					}},
					[3] = {"\n\t<J>» Zimmer admin</J>\n",{
						[1] = "<VP>!%s</VP> <PS>passwort</PS> - Hinzufugen oder entfernen eines passwortes im raum!",
					}},
				}},
				[4] = {"Maps","<J>Maps : %s\n\n\tBesuche das Thema %s und reiche deine Map ein. Vergiss nicht zuvor alle Regeln zu lesen!"},
				[5] = {"Danke an ","<R>%s <G>- <N>Entwickler\n%s <G>- <N>Übersetzer\n%s <G>- <N>Landkarte bewerter"},
			},
			max = "15a2df47d2e",
		},
	},
	langue = "en",
	-- Info
	staff = {
		translators = {
			-- Name, Languages
			{"Bolodefchoco",{"EN","BR"}},
			{"Distances","NL"},
			{"Tocutoeltuco","ES"},
			{"Sebafrancuz","PL"},
			{"Doriiarvai","HU"},
			{"Error_404","AR"},
			{"Cheeselicious","NL"},
			{"Archaeron","DE"},
			{"Aewing","FR"},
			{"Fashionkid","DE"},
			{"Yuir","ES"},
			{"Mquk","FR"}
		},
		mapEvaluators = {
			-- Name, Joined
			{"Bolodefchoco","14/02/2017"},
			{"Error_404","11/03/2017"}
		},
	},
	-- Data
	bindKeys = {0,1,2,3,string.byte("OPHK",1,4)},
	info = {},
	stormIntensities = {
		--[[ Opaque images
			[1] = "15a6d6fcd18",
			[2] = "15a6d6ff82f",
			[4] = "15a6d7015bc",
			[8] = "15a6d703149"
		]]
		[1] = .75,
		[2] = .65,
		[4] = .5,
		[8] = .25
	},
	-- Maps (G Categories)
	maps = {},
	G = {
		--[[
			name = catName,
			queue{maps},
			id = 1,
			icon = {iconImage,x axis (from 360),y axis (from 123)}
			color = catColor,
			before = function executed before the map,
			after = function executed after the map
		]]--
		[1] = {
			name = "Circuit",
			queue = {3099763,4612510,7078090,4493715,7102175,5921816,7127261,7102187},
			id = 1,
			icon = {"15c60371706",0,0},
			color = "9A9ACE",
		},
		[2] = {
			name = "Flap Bird",
			queue = {7069835,2265250,6300148,5921754,2874090,2310427},
			id = 1,
			icon = {"15c603730a6",0,0},
			color = "E084D4",
		},
		[3] = {
			name = "Bootcamp",
			queue = {4592612,7079708,5921867,7087840,6391815,7090909,7011800,7069314,6333026,6000012,6990787},
			id = 1,
			icon = {"15c60382627",-5,-3},
			color = "A4CF9E",
		},
		[4] = {
			name = "Aquatic",
			queue = {6133469,3324284,6578479,7095393,5772226,2310447},
			id = 1,
			icon = {"15c603788c1",0,1},
			color = "2194D9",
		},
		[5] = {
			name = "Teleport",
			queue = {5168440,6987992,7069343,6945850,7090907,3326655,7069816,5921744,7071075,7071400,4509060,7118888},
			id = 1,
			icon = {"15c60376d57",2,1},
			color = "E29E71",
		},
		[6] = {
			name = "Puzzle",
			queue = {5993927,7057010,5507021,6994066,6332986,7074686,3448597,2887357,6576282,4514386,7079827,7079880},
			id = 1,
			icon = {"15c6037edb7",0,0},
			color = "CB56D8",
		},
		[7] = {
			name = "Racing",
			queue = {4140491,3324180,6564380,6600268,6987993,6726599,2283901,6568120,4055924,4361785,3851416,7079644,6347093,6620004,7086768,6797243,2030030,5198518,6230212,6340023,7069304,4362362,5981054,4364504,7086737,6623930},
			id = 1,
			icon = {"15c6037ccd7",-5,-5},
			color = "9DBCF2",
		},
		[8] = {
			name = "Snow",
			queue = {4396371,5632126,7079092,4531989,4509584},
			id = 1,
			icon = {"15c6037b089",5,3},
			color = "C4F4F6",
			after = function()
				if os.date("%m") == "12" then
					tfm.exec.chatMessage("<PS>Merry christmas :)")
					tfm.exec.snow(60)
				end
			end,
		},
		[9] = {
			name = "Miscellaneous",
			queue = {6226386,5425815,7047955,6558179,6961916,6968299,6935117,4802574,7087798,6335452,7093647,7145064},
			id = 1,
			icon = {"15c6036fb66",-10,-1},
			color = "DED963",
		},
		[10] = {
			name = "Cooperation",
			queue = {3326675,4184558,5198607,6988672},
			id = 1,
			icon = {"15c60374f1f",0,0},
			color = "2EBA7E",
		},
		[11] = {
			name = "Vampire",
			queue = {5043429,4361619,4633670},
			id = 1,
			icon = {"15c60380b12",-5,-3},
			color = "CB546B",
			after = function()
				if os.date("%m") == "10" then
					tfm.exec.chatMessage("<R>Happy Halloween :>")
				end
			end,
		},
	},
	rotation = {1,{9,7,4,1,5,7,10,8,6,11,2,1,3,5}},
	newMap = coroutine.wrap(function()
		while true do
			local map
			if os.time() > system.newGameTimer then
				if mode.grounds.rotation[1] > #mode.grounds.rotation[2] then
					mode.grounds.rotation[1] = 1
				end
				
				local category = mode.grounds.rotation[2][mode.grounds.rotation[1]]
				mode.grounds.mapInfo[2] = category
				category = mode.grounds.G[category]
				mode.grounds.mapInfo[5] = category.color
				map = category.queue[category.id]
				mode.grounds.mapInfo[1] = map
				
				category.id = category.id + 1
				
				mode.grounds.afterFunction = category.after or (function() end)
				if category.before then
					category.before()
				end
				
				if category.id > #category.queue then
					category.queue = table.shuffle(category.queue)
					category.id = 1
				end
				
				mode.grounds.rotation[1] = mode.grounds.rotation[1] + 1
			end
			coroutine.yield(map)
		end
	end),
	-- New Map Settings
	review = false,
	afterFunction = (function() end),
	mapInfo = {0,0,0,0,"CAA4CF"}, -- Code, Category, Width, Height, Color
	respawn = 0,
	hasWater = false,
	podium = 0,
	availableRoom = false,
	alivePlayers = 0,
	totalPlayers = 0,
	spawnPoint = {0,0},
	-- Loop Settings
	despawnGrounds = {},
	announceTimer = 0,
	-- Misc Settings
	welcomeMessage = (function()
		if system.roomNumber == 666 then
			return "<R>[•] %s\n\n<G>[^_^] <R>%s"
		else
			return "<PT>[•] <BV>%s\n\n<G>[^_^] <VP>%s"
		end
	end)(),
	-- Leaderboard Settings
	leaderboard = {update = 0,data = {}},
	-- Shop
	shop = {
		images = {
			[1] = {'15a2a340dd5','15a2a342b88','15a2a3449a9','15a2a3459e1','15a2a346953','15a2a3479a3','15a2a348ad3','15a2a349a89','15a2a34aa0d'},
			[3] = {'15a2a35fef7','15a2a36114b','15a2a36240d','15a2a36332f','15a2a3645f3'},
			[7] = {'15a2a3721bc','15a2a3731bb','15a2a3742b6','15a2a375439','15a2a376339'},
			[8] = {'15a2a31b8dc','15a2a31d292','15a2a323150','15a2a32815c','15a2a32af10','15a2a32ce03','15a2a32dc09','15a2a32ecde','15a2a32fc20'},
			[9] = {'15a2a3b475f','15a2a3b5996','15a2a3b6ab9','15a2a3b8250','15a2a3b924f'},
			[10] = {'15a2a3a0156','15a2a3a1229','15a2a3a2460','15a2a3a3702','15a2a3a4c70'},
			[11] = {'15a2a381307','15a2a3824c8','15a2a383682','15a2a384dc1','15a2a3865c5','15a2a38820d','15a2a38a3a8','15a2a38bbd6','15a2a38d0ec'},
			[15] = {'15a2a3c4442','15a2a3c54f3','15a2a3c69b7','15a2a3c78e7','15a2a3c873b'},	
		},
		unpackImages = function(id,e)
			local t = {}
			for k,v in next,mode.grounds.shop.images[id] do
				if #t < e then
					t[#t+1] = v
				end
			end
			return t
		end,
	},
	-- System functions
	concat = function(k,v)
		if type(v) == "table" then
			return table.concat(v,"\n",function(i,j) return mode.grounds.concat(i,j) end)
		else
			return v
		end
	end,
	listener = function(t,st,from)
		from = (from and from.."." or "")
		for k,v in next,t do
			if type(v) == "table" then
				mode.grounds.listener(v,st,from .. tostring(k))
			else
				st[#st + 1] = from .. k
			end
		end
		return st
	end,
	-- Bar
	uibar = function(id,player,value,color,size,height)
		size = size or 100
		height = height or 20

		if value > size then
			value = size
		elseif value < 0 then
			value = 0
		end

		ui.addTextArea(id,"",player,5,(height+8) * id,size + 4,height,0xC7CED2,1,1,true)
		if value ~= 0 then
			ui.addTextArea(id+1,"",player,6,(height+8) * id + 2,value + 2,height - 4,color,color,1,true)
		end
		ui.addTextArea(id+2,"<p align='center'><B><font color='#0'>"..value.."%",player,5,(height+8) * id,size + 4,height,1,1,0,true)
	end,
	-- Shop
	uishop = function(n)
		if mode.grounds.info[n].groundsDataLoaded then
			for k,v in next,mode.grounds.info[n].shop.image do
				tfm.exec.removeImage(v)
			end
			if not mode.grounds.info[n].shop.accessing then
				local get,index = table.find(mode.grounds.shop.grounds,mode.grounds.info[n].powersOP.GTYPE,1)
				if get then
					mode.grounds.info[n].shop.page = index
				else
					mode.grounds.info[n].shop.page = 1
				end
				mode.grounds.info[n].shop.accessing = true
			end
			if mode.grounds.info[n].shop.page < 1 then
				mode.grounds.info[n].shop.page = #mode.grounds.shop.grounds
			elseif mode.grounds.info[n].shop.page > #mode.grounds.shop.grounds then
				mode.grounds.info[n].shop.page = 1
			end
			
			local shopTxt = system.getTranslation("shop",n)
			local debuggedGround = mode.grounds.shop.grounds[mode.grounds.info[n].shop.page]
			local ground = system.getTranslation("grounds."..debuggedGround[1],n)
			local G = string.lower(mode.grounds.translations.en.grounds[debuggedGround[1]][1])
			local groundLevel = mode.grounds.info[n].stats.powers[G]
			groundLevel = groundLevel[#groundLevel]
			
			ui.addTextArea(4,"",n,160,50,480,320,0x1a2433,1,1,true)

			ui.addTextArea(5,"",n,171,56,240,15,0x1d5a78,0x1d5a78,1,true)
			ui.addTextArea(6,"<p align='center'><font size='13'>"..string.nick(mode.grounds.cmds.shop),n,170,53,240,25,1,1,0,true)

			ui.addTextArea(7,"<p align='center'><font size='12'><B><a href='event:shop.left'><BV>«</BV></a>  <font size='14'><a href='event:info.grounds."..string.gsub(ground[1],"'","#").."."..ground[2].."'>"..ground[1].."</a></font>  <a href='event:shop.right'><BV>»</BV></a>",n,170,87,240,25,0x073247,0x073247,1,true)
			
			mode.grounds.info[n].shop.image[1] = tfm.exec.addImage(debuggedGround[2][1]..".png","&0",435,70,n)

			local playerData = string.format("<font size='12'><N>%s <G>: <J>$%s\n<N>%s\n<N>%s <G>: <BL>%s",shopTxt.coin,mode.grounds.info[n].stats.groundsCoins,"%s",shopTxt.power,math.floor(math.percent(groundLevel,#debuggedGround[2])).."%%")
			local groundData = ""
			local upgradeData = "<p align='center'><font size='15'><B>%s" .. shopTxt.upgrade

			if (groundLevel + 1) <= #debuggedGround[2] then
				local price = (groundLevel + 1) * (120 * debuggedGround[3])
				playerData = string.format(playerData,shopTxt.price .. " <G>: <R>$" .. price)
				local iniPerc = math.floor(math.percent(1,#mode.grounds.shop.grounds[mode.grounds.info[n].shop.page][2]))
				groundData = string.format(ground[3],iniPerc)
				upgradeData = string.format(upgradeData,"<a href='event:shop.buy."..price.."."..G.."'><PT>")
				
				local gId = mode.grounds.info[n].stats.powers[G][#mode.grounds.info[n].stats.powers[G]]
				mode.grounds.info[n].shop.image[2] = tfm.exec.addImage(debuggedGround[2][gId]..".png","&1",540,70,n)
				mode.grounds.info[n].shop.image[3] = tfm.exec.addImage("15a2df6ab69.png","&2",440,205,n)
				mode.grounds.info[n].shop.image[4] = tfm.exec.addImage(debuggedGround[2][gId+1]..".png","&3",540,210,n)
			else
				playerData = string.format(playerData,"<R>-")
				upgradeData = string.format(upgradeData,"<V>")
				
				mode.grounds.info[n].shop.image[2] = tfm.exec.addImage(system.getTranslation("max",n)..".png","&2",175,215,n)
			end
			
			ui.addTextArea(8,playerData,n,170,130,240,52,0x073247,0x073247,1,true)
			ui.addTextArea(9,groundData,n,170,200,240,80,0x073247,0x073247,1,true)

			ui.addTextArea(10,upgradeData,n,170,298,240,24,0x073247,0x073247,1,true)
			ui.addTextArea(11,"<p align='center'><font size='15'><R><B><a href='event:shop.close'>"..shopTxt.close.."</a></B>",n,170,339,240,24,0x073247,0x073247,1,true)

			ui.addTextArea(12,"",n,430,62,200,300,0x073247,0x073247,1,true)
			ui.addTextArea(13,"",n,426,58,90,90,0x1a2433,0x1a2433,1,true)
		end
	end,
	-- Profile
	uiprofile = function(n,p)
		if mode.grounds.info[p].groundsDataLoaded then
			local nickSize = #p > 12 and 10 or 15
			ui.addTextArea(14,"<p align='center'><B><R><a href='event:profile.close'>X",n,513,115,20,20,1,1,1,true)
			ui.addTextArea(15,"<p align='center'><B><PS><a href='event:profile.open'>•",n,513,145,20,20,1,1,1,true)
			ui.addTextArea(16,"<p align='center'><font size='16'><B><V>"..p.."</V></B> "..(mode.grounds.info[p].isOnline and "<VP>" or "<R>").."•</font></p><p align='left'><font size='12'>\n<N>" .. string.format(system.getTranslation("profile",n),"<V>#"..mode.grounds.info[p].ranking,"<V>"..mode.grounds.info[p].stats.rounds,"<V>"..mode.grounds.info[p].stats.podiums,"<V>"..mode.grounds.info[p].stats.deaths,"<J>$"..mode.grounds.info[p].stats.groundsCoins),n,290,115,220,160,0x073247,1,1,true)
		end
	end,
	-- Menu
	uimenu = function(n)
		if not mode.grounds.info[n].menu.accessing then
			mode.grounds.info[n].menu.page = 1
			mode.grounds.info[n].menu.accessing = true
		end

		local langue = system.getTranslation("menu",n)

		if mode.grounds.info[n].menu.page < 1 then
			mode.grounds.info[n].menu.page = #langue
		elseif mode.grounds.info[n].menu.page > #langue then
			mode.grounds.info[n].menu.page = 1
		end

		local popupFormat = "<%s><a href='event:menu.page.%d'>#%s</a>"
		local popups = {}
		for k,v in next,langue do
			popups[#popups+1] = string.format(popupFormat,(k == mode.grounds.info[n].menu.page and "VP" or "J"),k,string.format(v[1],string.nick(module._NAME)))
		end

		local popup = {
			x = {663,546},
			d = "«",
			txt = "<font size='11'><J>"..table.concat(popups,"\n\n")
		}
		if not mode.grounds.info[n].menu.showPopup then
			popup = {
				x = {552,435},
				d = "»",
				txt = "",
			}
		end
		
		local displayText = {table.unpack(langue[mode.grounds.info[n].menu.page])}

		if mode.grounds.info[n].menu.page == 1 then
			displayText[1] = string.format(displayText[1],string.nick(module._NAME))
			
			local gameModes = "<PT>"
			for k,v in next,{"powers",table.unpack(system.submodes,2)} do
				local room
				if k > 1 then
					room = string.format("/room #%s%s@%s*%s",module._NAME,math.random(0,999),n,system.normalizedModeName(v,false))
				else
					room = string.format("/room #%s%s%s",v,math.random(0,999),n)
				end
				gameModes = gameModes .. string.format("<a href='event:print.&lt;ROSE>%s'>%s</a>\n",room,room)
			end
			
			displayText[2] = displayText[2] .. "\n\n" .. gameModes
		else
			local textFormat = nil
			if mode.grounds.info[n].menu.page == 2 then
				textFormat = {{},system.getTranslation("grounds",n)}
				for k,v in next,textFormat[2] do
					if v[2] ~= "?" then
						table.insert(textFormat[1],string.format("<a href='event:info.grounds.%s.%s'><B>%s</B></a>",string.gsub(v[1],"'","#"),string.gsub(v[2],"%.","@"),string.upper(v[1])))
					end
				end
				displayText[2] = string.format(displayText[2],"• "..table.concat(textFormat[1],"\n• "))
			elseif mode.grounds.info[n].menu.page == 3 then
				displayText[2] = table.concat(displayText[2],"\n",function(k,v)
					return mode.grounds.concat(k,v)
				end)
				displayText[2] = "<font size='10'>" .. string.format(displayText[2],mode.grounds.cmds.profile,mode.grounds.cmds.shop,mode.grounds.cmds.langue,mode.grounds.cmds.help,mode.grounds.cmds.leaderboard,mode.grounds.cmds.info,mode.grounds.cmds.mapinfo,mode.grounds.cmds.pw)
			elseif mode.grounds.info[n].menu.page == 4 then
				displayText[2] = string.format(displayText[2] .. "\n\n%s",#mode.grounds.maps.."<N>","<BV><a href='event:print.atelier801¬com/topic?f=6&t=845005'>#"..string.upper(module._NAME).." MAP SUBMISSIONS</a></BV>",table.concat(mode.grounds.G,"\n",function(k,v)
					return string.format("<font color='#%s'><a href='event:info.mapCategory.%s'>G%s</a> : %s</font>",v.color,k,k,#v.queue)
				end))
			elseif mode.grounds.info[n].menu.page == 5 then
				local concat = {}
				for i,j in next,{{"translators","<CEP>"},{"mapEvaluators","<BV>"}} do
					concat[#concat+1] = j[2] .. table.concat(mode.grounds.staff[j[1]],"<G>, " .. j[2],function(k,v)
						return string.format("<a href='event:info.%s.%s'>%s</a>",j[1],k,v[1])
					end)
				end
				displayText[2] = string.format(displayText[2],"Bolodefchoco",concat[1],concat[2])
			end
		end

		ui.addTextArea(17,"<font size='1'>\n</font><p align='center'><J><B><a href='event:menu.right'>»</a>",n,543,352,40,20,1,1,1,true)
		ui.addTextArea(18,"<font size='1'>\n</font><p align='center'><J><B><a href='event:menu.left'>«</a>",n,217,352,40,20,1,1,1,true)

		ui.addTextArea(19,"<font size='1'>\n</font><p align='center'><PT><B><a href='event:menu.popup'>"..popup.d.."</a>",n,popup.x[1],137,20,20,1,1,1,true)
		ui.addTextArea(20,popup.txt,n,popup.x[2],137,115,125,0x123e54,1,1,true)

		ui.addTextArea(21,"<p align='center'><B><R><a href='event:menu.close'>X",n,543,42,20,20,1,1,1,true)
		ui.addTextArea(22,"<p align='center'><font size='20'><V><B>"..string.upper(displayText[1]).."</B></V><font size='15'>\n<R>_____________\n\n<font size='11'><N><p align='left'>"..displayText[2],n,260,42,280,330,0x073247,1,1,true)
	end,
	-- Info
	uidisplayInfo = function(n,data)
		local what = data[2]
		local title,text,color = "","",""
		if what == "grounds" then
			color = "<N>"
			title = string.gsub(data[3],"#","'")
			local info = string.gsub(data[4],"@",".")
			local groundTxt = system.getTranslation("grounds.12",n)
			if info == groundTxt[2] then
				local colors = {}
				for k,v in next,groundTxt[4] do
					colors[#colors+1] = string.format("<PT>[•] <N2><font color='#%s'>(#%s)</a> <BL>- <PS>%s",k,k,v)
				end
				text = table.concat(colors,"\n")
			else
				text = string.format("<PT>[•] <PS>%s",info)
			end
		elseif what == "mapCategory" then
			data[3] = tonumber(data[3])
			color = "<S>"
			title = "G"..data[3]
			text = string.format("%s\n# %s\n@ %s",mode.grounds.G[data[3]].name,#mode.grounds.G[data[3]].queue,system.getTranslation("categories." .. data[3],n))
			mode.grounds.info[n].infoImage[#mode.grounds.info[n].infoImage + 1] = tfm.exec.addImage(mode.grounds.G[data[3]].icon[1] .. ".png","&4",360 + mode.grounds.G[data[3]].icon[2],125 + mode.grounds.G[data[3]].icon[3],n)
		elseif mode.grounds.staff[what] then
			local comp = data[3]
			local info = mode.grounds.staff[what][tonumber(comp)]
			title = info[1]
			if what == "translators" then
				color = "<CEP>"
				text = string.format("[•] !%s %s",mode.grounds.cmds.langue,table.concat(table.turnTable(info[2]),", "))
			elseif what == "mapEvaluators" then
				color = "<BV>"
				text = string.format("[•] %s",info[2])
			end
		end
		ui.addTextArea(37,"<p align='center'><B><R><a href='event:info.close'>X",n,528,115,20,20,1,1,1,true)
		ui.addTextArea(38,"<p align='center'><font size='20'><V><B>" .. title .. "</B>" .. color .. (mode.grounds.staff[what] and " •" or "") .. "\n\n<p align='left'><font size='13'>" .. text,n,275,115,250,160,0x073247,1,1,true)
	end,
	-- Leaderboard
	uileaderboard = function(n)
		if os.time() > mode.grounds.leaderboard.update or not n then
			mode.grounds.leaderboard = {update = os.time() + 180e3,data = {}}
			
			local players = {}
			for k,v in next,mode.grounds.info do
				if string.sub(k,1,1) ~= "*" then
					players[#players + 1] = {k,math.floor((v.stats.rounds - v.stats.deaths)/10) * (v.stats.podiums + 1)}
				end
			end
			table.sort(players,function(p1,p2) return p1[2] > p2[2] end)

			for k,v in next,players do
				mode.grounds.info[v[1]].ranking = k
				if k < 11 then
					table.insert(mode.grounds.leaderboard.data,"<J>"..k..". " .. (({"<BV>","<PS>","<CE>"})[k] or "<V>") .. "<a href='event:profile.open."..v[1].."'>".. v[1] .. "</a> <BL>- <VP>" .. v[2] .. "G")
				end
			end
			if #mode.grounds.leaderboard.data == 0 then
				mode.grounds.leaderboard.update = 0
			end
		end

		if n then
			mode.grounds.info[n].leaderboardAccessing = true
			local id,y = 25,100
			ui.addTextArea(23,"<p align='center'><B><R><a href='event:ranking.close'>X",n,603,35,20,20,1,1,1,true)
			ui.addTextArea(24,"<p align='center'><font size='45'>" .. string.nick(mode.grounds.cmds.leaderboard),n,200,35,400,350,0x073247,1,1,true)

			for i = 1,10 do
				local v = mode.grounds.leaderboard.data[i] or ""
				local color = id % 2 == 0 and 0x123e54 or 0x042636
				if string.find(v,n) then
					v = string.gsub(v,"'>(.-)</a>",function(name)
						return "'><a:active>"..name.."</a:active></a>"
					end)
				end
				ui.addTextArea(id,v,n,245,y,315,20,color,color,1,true)
				id = id + 1
				y = y + 28
			end

			ui.addTextArea(id,"",n,230,90,10,285,0x073247,0x073247,1,true)
			ui.addTextArea(id + 1,"",n,565,90,10,285,0x073247,0x073247,1,true)
		end
	end,
	-- Grounds system
	gsys = {
		-- Ground system
		grounds = {},
		disabledGrounds = {},
		collisionArea = {34,40,50,50,40,34,34,35,0,0,40,35,35,23,0,0},
		getTpPos = function(g,center)
			if center then
				return {g.X,g.Y}
			else
				local ang = string.split(g.P,"[^,]+",tonumber)
				ang = ang[5]
				local hTP = {g.X,g.Y}
				if ang == 90 or ang == -270 then
					hTP[1] = hTP[1] + g.L/2
				elseif ang == -90 or ang == 270 then
					hTP[1] = hTP[1] - g.L/2
				elseif math.abs(ang) == 180 then
					hTP[2] = hTP[2] + g.H/2
				else
					hTP[2] = hTP[2] - g.H/2
				end
				
				return hTP
			end
		end,
		onGround = function(t,px,py)
			local prop = string.split(t.P,"[^,]+",tonumber)

			px,py = px or 0,py or 0
			local offset = {}
			local isOn = false

			local w = tonumber(t.L)
			local h = tonumber(t.H)
			local x = tonumber(t.X)
			local y = tonumber(t.Y)
			local gtype = tonumber(t.T)
			gtype = math.min(15,math.max(0,gtype))

			if not table.find({8,9,15},gtype) then
				local area = mode.grounds.gsys.collisionArea[gtype + 1]
				w = w + area
				h = h + area
			end

			if gtype == 13 then
				isOn = math.pythag(x,y,px,py,w)
			else
				local ang = math.rad(prop[5])

				local range = {w = w/2,h = h/2}

				local cosA = math.cos(ang)
				local sinA = math.sin(ang)
				
				local vxA = {x = ((-range.w * cosA - (-range.h) * sinA) + x),y = ((-range.w * sinA + (-range.h) * cosA) + y)}
				local vxB = {x = ((range.w * cosA - (-range.h) * sinA) + x),y = ((range.w * sinA + (-range.h) * cosA) + y)}
				local vxC = {x = ((range.w * cosA - range.h * sinA) + x),y = ((range.w * sinA + range.h * cosA) + y)}
				local vxD = {x = ((-range.w * cosA - range.h * sinA) + x),y = ((-range.w * sinA + range.h * cosA) + y)}
				offset = {vxA,vxB,vxC,vxD}

				local p = 4
				for i = 1,4 do
					if (offset[i].y < py and offset[p].y >= py) or (offset[p].y < py and offset[i].y >= py) then
						if offset[i].x + (py - offset[i].y) / (offset[p].y - offset[i].y) * (offset[p].x - offset[i].x) < px then
							isOn = not isOn
						end
					end
					p = i
				end
			end

			return isOn
		end,
		getGroundProperties = function(xml)
			mode.grounds.gsys.grounds = {}
			string.gsub(xml,"<S (.-)/>", function(parameters)
				local attributes = {}
				string.gsub(parameters,"([%-%w]+)=([\"'])(.-)%2",function(tag,_,value)
					attributes[tag] = tonumber(value) or value
				end)
				mode.grounds.gsys.grounds[#mode.grounds.gsys.grounds + 1] = attributes
			end)
		end,
		groundEffects = function()
			for n,p in next,tfm.get.room.playerList do
				if not p.isDead then
					local affected = false
					for id = 1,#mode.grounds.gsys.grounds do
						local ground = mode.grounds.gsys.grounds[id]
						local newId = id - 1
						if (ground.disablepower or string.sub(ground.P,1,1) == "1" or (ground.v and (_G.currentTime - 3) == (tonumber(ground.v)/1000))) and not mode.grounds.gsys.disabledGrounds[newId] then
							-- If the ground has the disablepower attribute, or is dynamic, or the v despawner attribute exists (after it disappear)
							mode.grounds.gsys.disabledGrounds[newId] = true
						end
						if not mode.grounds.gsys.disabledGrounds[newId] and _G.currentTime >= 3 then
							if mode.grounds.gsys.onGround(ground,p.x,p.y) then
								affected = true
								local gtype = ground.T
								local color = string.upper(tostring(ground.o or ""))
								mode.grounds.info[n].powersOP.GTYPE = gtype
								if gtype == 1 or color == "89A7F5" then -- ice
									system.bindKeyboard(n,32,true,true)
									if color ~= "" then
										mode.grounds.info[n].powersOP.GTYPE = 1
									end
								elseif gtype == 2 or color == "6D4E94" then -- trampoline
									if color ~= "" then
										mode.grounds.info[n].powersOP.GTYPE = 2
									end
								elseif gtype == 3 or color == "D84801" then -- lava
									if color ~= "" then
										mode.grounds.info[n].powersOP.GTYPE = 3
									end
									id = (id > 1 and id - 1 or #mode.grounds.gsys.grounds)
									local g = mode.grounds.gsys.grounds[id]
									local hTP = mode.grounds.gsys.getTpPos(g)
									tfm.exec.displayParticle(36,p.x,p.y,0,0,0,0,n)
									tfm.get.room.playerList[n].x = 0
									tfm.get.room.playerList[n].y = 0
									tfm.exec.movePlayer(n,hTP[1],hTP[2])
									tfm.exec.displayParticle(36,hTP[1],hTP[2],0,0,0,0,n)
								elseif gtype == 8 or color == "9BAABC" then -- cloud
									system.bindKeyboard(n,32,true,true)
								elseif gtype == 7 then -- sand
									ui.addTextArea(-1,"",n,-1500,-1500,3e3,3e3,0xE5CC5D,0xE5CC5D,mode.grounds.stormIntensities[mode.grounds.info[n].stats.powers.sand[1]],false)
									for i = 1,2 do
										tfm.exec.displayParticle(26,math.random(800),math.random(350),0,0,0,0,n)
										tfm.exec.displayParticle(27,math.random(800),math.random(350),0,0,0,0,n)
									end
								elseif gtype == 9 then -- water
									if mode.grounds.hasWater then
										mode.grounds.info[n].drown = mode.grounds.info[n].drown + math.random(1,math.floor(mode.grounds.info[n].stats.powers.water[1]))
										mode.grounds.uibar(1,n,mode.grounds.info[n].drown,0x519DDA,100,20)
										if mode.grounds.info[n].drown > 99 then
											tfm.exec.killPlayer(n)
											mode.grounds.uibar(1,n,mode.grounds.info[n].drown,0xDA516D,100,20)
											mode.grounds.info[n].drown = 0
											for i = 1,8 do
												tfm.exec.displayParticle(14,p.x+math.random(-50,50),p.y+math.random(-20,20),0,-1,0,0,n)
											end
										end
										for i = 1,math.random(2,4) do
											tfm.exec.displayParticle(14,p.x+math.random(-50,50),p.y+math.random(-20,20),0,-1,0,0,n)
										end
									end
								elseif gtype == 10 then -- stone
									system.bindKeyboard(n,32,true,true)
								elseif gtype == 11 or color == "E7F0F2" then -- snow
									system.bindKeyboard(n,32,true,true)
								elseif gtype == 12 or gtype == 13 then -- retangle or circle
									if color == "C90909" then
										tfm.exec.killPlayer(n)
									elseif color == "18C92B" then
										if os.time() > mode.grounds.respawn then
											mode.grounds.respawn = os.time() + 7e3
											for k,v in next,tfm.get.room.playerList do
												if v.isVampire then
													tfm.exec.killPlayer(k)
												elseif v.isDead and mode.grounds.info[k].canRev then
													tfm.exec.respawnPlayer(k)
												end
											end
										end
									elseif color == "555D77" then
										mode.grounds.info[n].checkpoint = id
									end
								elseif gtype == 15 then -- web
									tfm.exec.movePlayer(n,mode.grounds.spawnPoint[1],mode.grounds.spawnPoint[2])
									tfm.get.room.playerList[n].x = 0
									tfm.get.room.playerList[n].y = 0
								end
							end
						end
					end
					if not affected then
						mode.grounds.info[n].powersOP.GTYPE = -1
					end
				end
			end
		end,
	},
	-- Init
	init = function()
		mode.grounds.translations.pt = mode.grounds.translations.br
	
		-- Sets the main language according to the community
		if mode.grounds.translations[tfm.get.room.community] then
			mode.grounds.langue = tfm.get.room.community
		end
		
		-- Shuffle the map rotation
		for k,v in next,mode.grounds.G do
			v.queue = table.shuffle(v.queue)
		end
		
		-- Map list
		for k,v in next,mode.grounds.G do
			for i,j in next,v.queue do
				mode.grounds.maps[#mode.grounds.maps + 1] = {j,k}
			end
		end
	
		-- Organizates the staff table
		for k,v in next,mode.grounds.staff do
			table.sort(v,function(t1,t2) return t2[1] > t1[1] end)
		end
		
		-- Organizes the languages
		mode.grounds.langues = (function()
			local l = {}
			for id in next,mode.grounds.translations do
				l[#l + 1] = string.upper(id)
			end
			table.sort(l)
			return l
		end)()
		
		-- Translation indexes
		mode.grounds.translationIndexes = mode.grounds.listener(mode.grounds.translations.en,{})
		
		-- Sets the shop prices, upgrades, etc
		mode.grounds.shop.grounds = {
			-- Ground ID, #Possible upgrades (Imgs), Price average, Upgrade average
			[1] = {1,mode.grounds.shop.unpackImages(1,3),1.05,1.5},
			[2] = {7,mode.grounds.shop.unpackImages(7,4),.4,2},
			[3] = {8,mode.grounds.shop.unpackImages(8,3),1.15,1.47},
			[4] = {9,mode.grounds.shop.unpackImages(9,3),1.6,.6},
			[5] = {10,mode.grounds.shop.unpackImages(10,3),1.1,1.65},
			[6] = {11,mode.grounds.shop.unpackImages(11,5),.5,1.42},
		}
		
		-- Sets the commands
		mode.grounds.cmds = system.getTranslation("commands")
		
		-- Disable commands
		for k,v in next,mode.grounds.cmds do
			disableChatCommand(v)
		end
		for k,v in next,{"o","p","h","k","?","pw","time","np","is","check","review","next","again"} do
			disableChatCommand(v)
		end
		
		-- Init
		for _,f in next,{"AutoShaman","AutoScore","AutoNewGame","AutoTimeLeft","MinimalistMode","PhysicalConsumables"} do
			tfm.exec["disable"..f]()
		end
		tfm.exec.setAutoMapFlipMode(false)
		tfm.exec.newGame(mode.grounds.newMap())
		tfm.exec.setRoomMaxPlayers(16)
		mode.grounds.uileaderboard()
	end,
	-- Callbacks
	eventTextAreaCallback = function(i,n,c)
		local p = string.split(c,"[^%.]+")
		if p[1] == "shop" and os.time() > mode.grounds.info[n].shop.timer then
			mode.grounds.info[n].shop.timer = os.time() + 1000
			if p[2] == "left" then
				mode.grounds.info[n].shop.page = mode.grounds.info[n].shop.page - 1
				mode.grounds.uishop(n)
			elseif p[2] == "right" then
				mode.grounds.info[n].shop.page = mode.grounds.info[n].shop.page + 1
				mode.grounds.uishop(n)
			elseif p[2] == "buy" and mode.grounds.info[n].groundsDataLoaded then
				p[3] = tonumber(p[3]) or 0
				if mode.grounds.info[n].stats.groundsCoins >= p[3] then
					mode.grounds.info[n].stats.groundsCoins = mode.grounds.info[n].stats.groundsCoins - p[3]
					local loc = mode.grounds.info[n].stats.powers[p[4]]
					mode.grounds.info[n].stats.powers[p[4]][#loc] = mode.grounds.info[n].stats.powers[p[4]][#loc] + 1
					mode.grounds.info[n].stats.powers[p[4]][1] = mode.grounds.info[n].stats.powers[p[4]][1] * mode.grounds.shop.grounds[mode.grounds.info[n].shop.page][4]
					tfm.exec.chatMessage(string.format("<PT>[•] <BV>%s",string.format(system.getTranslation("bought",n),"<J>$"..p[3].."</J>","<ROSE>"..system.getTranslation("grounds."..mode.grounds.shop.grounds[mode.grounds.info[n].shop.page][1],n)[1].."</ROSE>",n)),n)
					mode.grounds.uishop(n)
				else
					tfm.exec.chatMessage(string.format("<PT>[•] <R>%s",system.getTranslation("cantbuy",n)),n)
				end
			elseif p[2] == "close" then
				for i = 4,13 do
					ui.removeTextArea(i,n)
				end
				mode.grounds.info[n].shop.accessing = false
				for k,v in next,mode.grounds.info[n].shop.image do
					tfm.exec.removeImage(v)
				end
			end
		elseif p[1] == "profile" then
			if p[2] == "close" then
				for i = 14,16 do
					ui.removeTextArea(i,n)
				end
				mode.grounds.info[n].profileAccessing = false
			elseif p[2] == "open" then
				if p[3] then
					mode.grounds.uiprofile(n,p[3])
				else
					mode.grounds.uiprofile(n,n)
				end
			end
		elseif p[1] == "menu" and os.time() > mode.grounds.info[n].menu.timer then
			mode.grounds.info[n].menu.timer = os.time() + 1e3
			if p[2] == "page" and p[3] then
				mode.grounds.info[n].menu.page = tonumber(p[3])
				mode.grounds.uimenu(n)
			elseif p[2] == "right" then
				mode.grounds.info[n].menu.page = mode.grounds.info[n].menu.page + 1
				mode.grounds.uimenu(n)
			elseif p[2] == "left" then
				mode.grounds.info[n].menu.page = mode.grounds.info[n].menu.page - 1
				mode.grounds.uimenu(n)
			elseif p[2] == "popup" then
				mode.grounds.info[n].menu.showPopup = not mode.grounds.info[n].menu.showPopup
				mode.grounds.uimenu(n)
			elseif p[2] == "close" then
				for i = 22,17,-1 do
					ui.removeTextArea(i,n)
				end
				mode.grounds.info[n].menu.accessing = false
				if mode.grounds.info[n].showHelp then
					mode.grounds.info[n].showHelp = false
					ui.removeTextArea(0,n)
				end
			end
		elseif p[1] == "print" then
			p[2] = string.gsub(p[2],"¬",".")
			tfm.exec.chatMessage(string.format("<PT>[•] <BV>%s",p[2]),n)
		elseif p[1] == "ranking" then
			if p[2] == "close" then
				mode.grounds.info[n].leaderboardAccessing = false
				for i = 23,36 do
					ui.removeTextArea(i,n)
				end
			end
		elseif p[1] == "info" then
			if p[2] == "close" then
				for i = 37,38 do
					ui.removeTextArea(i,n)
				end
				for k,v in next,mode.grounds.info[n].infoImage do
					tfm.exec.removeImage(v)
				end
				mode.grounds.info[n].infoImage = {}
			else
				mode.grounds.uidisplayInfo(n,p)
			end
		end
	end,
	-- New Player
	eventNewPlayer = function(n)
		tfm.exec.chatMessage(string.format(mode.grounds.welcomeMessage,string.format(system.getTranslation("welcome"),"<ROSE>"..module._NAME.."<BV>"),string.format(system.getTranslation("developer"),"Bolodefchoco")),n)
		if math.random(10) < 3 then
			tfm.exec.chatMessage("<ROSE>[•] Play #powers at /room #powers",n)
		end
		
		if system.isPlayer(n) then
			tfm.exec.lowerSyncDelay(n)
			for _,key in next,mode.grounds.bindKeys do
				if key < 4 then
					system.bindKeyboard(n,key,false,true)
				end
				system.bindKeyboard(n,key,true,true)
			end
		else
			tfm.exec.chatMessage("<R>Souris! :(",n)
		end
		if not mode.grounds.info[n] then
			mode.grounds.info[n] = {
				groundsDataLoaded = true,
				showHelp = true,
				right = true,
				langue = mode.grounds.langue,
				isWalking = false,
				drown = 0,
				ranking = -1,
				canRev = false,
				checkpoint = -1,
				shop = {
					accessing = false,
					page = 0,
					timer = 0,
					image = {},
				},
				menu = {
					accessing = false,
					page = 0,
					timer = 0,
					showPopup = true,
				},
				profileAccessing = false,
				leaderboardAccessing = false,
				profileTimer = 0,
				leaderboardTimer = 0,
				isOnline = true,
				stats = {
					groundsCoins = 1000,
					rounds = 0,
					podiums = 0,
					deaths = 0,
					powers = {
						ice = {25,100,1}, -- power, timer, level
						lava = {0,1}, -- power, level
						sand = {1,1}, -- Txtarea opacity, level
						cloud = {35,100,1}, -- power, timer, level
						water = {5,1}, -- power, level
						stone = {15,2500,700,1}, -- size, despawn timer, timer, level
						snow = {5,100,1}, -- power, timer, level
						spiderweb = {0,1}, -- power, level
					},
				},
				powersOP = {
					TIMER = 0,
					GTYPE = -1,
				},
				infoImage = {},
			}
			ui.addTextArea(0,"",n,-1500,-1500,3e3,3e3,1,1,.8,true)
			mode.grounds.uimenu(n)
		end
	
		mode.grounds.info[n].isOnline = true
		mode.grounds.info[n].canRev = false
	end,
	-- New Game
	eventNewGame = function()
		local mapName = {}
		if table.find(mode.grounds.maps,tfm.get.room.xmlMapInfo.mapCode,1) then
			mapName[#mapName + 1] = "<font color='#".. mode.grounds.mapInfo[5] .."'>G" .. mode.grounds.mapInfo[2] .. "</font>"
		else
			mode.grounds.mapInfo = {0,0,0,0,"CAA4CF"}
			mode.grounds.afterFunction = (function() end)
		end

		tfm.exec.setGameTime(3 * 60)

		mode.grounds.podium = 0
		mode.grounds.availableRoom = mode.grounds.totalPlayers > 2 and system.isRoom
		if not mode.grounds.availableRoom then
			if math.random(30) < 16 then
				if not system.isRoom then
					tfm.exec.chatMessage(string.format("<PT>[•] <BV>%s",system.getTranslation("countstats.tribe")))
				else
					tfm.exec.chatMessage(string.format("<PT>[•] <BV>%s",system.getTranslation("countstats.mice")))
				end
			end
		end

		for k,v in next,mode.grounds.info do
			if not system.isPlayer(k) then
				tfm.exec.killPlayer(k)
			end
			if v.groundsDataLoaded and mode.grounds.availableRoom then
				v.stats.rounds = v.stats.rounds + 1
			end
			v.canRev = true
			v.right = true
			v.checkpoint = -1
		end

		mode.grounds.afterFunction()
		
		mode.grounds.hasWater = false
		local deactivateWater = false

		mode.grounds.despawnGrounds = {}
		mode.grounds.gsys.disabledGrounds = {}
		local currentXml = tfm.get.room.xmlMapInfo

		local xmlPowers = {}
			-- Info
		xmlPowers[1] = { -- Soulmate system
			attribute = "A", -- Soulmate not allowed for rooms with odd amount of players
			func = function()
				if mode.grounds.totalPlayers % 2 ~= 0 then
					table.foreach(mode.grounds.info,tfm.exec.killPlayer)
				end
			end
		}
		xmlPowers[2] = { -- Map Width
			attribute = "L",
			func = function(size)
				if size then
					mode.grounds.mapInfo[3] = tonumber(size)
				end
			end
		}
		xmlPowers[3] = { -- Map Height
			attribute = "H",
			func = function(size)
				if size then
					mode.grounds.mapInfo[4] = tonumber(size)
				end
			end
		}
		
		mode.grounds.mapInfo[3] = math.max(800,mode.grounds.mapInfo[3])
		mode.grounds.mapInfo[4] = math.max(400,mode.grounds.mapInfo[4])
			-- Powers
		xmlPowers[4] = { -- mapname
			attribute = "mapname",
			func = function(t)
				if t ~= "" then
					mapName[#mapName + 1] = t
				end
			end
		}
		xmlPowers[5] = { -- disablepower
			attribute = "disablepower",
			func = function(g)
				for ground in string.gmatch(g,"[^,]+") do
					ground = tonumber(ground)
					if ground and not mode.grounds.gsys.disabledGrounds[ground] then
						mode.grounds.gsys.disabledGrounds[ground] = true
					end
				end
			end
		}
		xmlPowers[6] = { -- cheese
			attribute = "cheese",
			func = function()
				table.foreach(mode.grounds.info,tfm.exec.giveCheese)
			end
		}
		xmlPowers[7] = { -- meep
			attribute = "meep",
			func = function()
				table.foreach(mode.grounds.info,tfm.exec.giveMeep)
			end
		}
		xmlPowers[8] = { -- addtime
			attribute = "addtime",
			func = function(minutes)
				tfm.exec.setGameTime((3 + (tonumber(minutes) or 0)) * 60)
			end
		}
		xmlPowers[9] = { -- notwater
			attribute = "notwater",
			func = function()
				deactivateWater = true
			end
		}
		xmlPowers[10] = { -- setvampire
			attribute = "setvampire",
			func = function(coordinates)
				if mode.grounds.totalPlayers > 2 then
					local coord,axY = xml.getCoordinates(coordinates)

					local vampires,p = {},{}
					for k,v in next,mode.grounds.info do
						if v.isOnline then
							p[#p + 1] = k
						end
					end
					local randomVamp = ""
					for i = 1,math.floor(mode.grounds.totalPlayers/3) do
						repeat
							randomVamp = table.random(p)
						until not table.find(vampires,randomVamp)
						vampires[#vampires + 1] = randomVamp
					end
					for k,v in next,vampires do
						if type(coord) == "table" then
							local c = table.random(coord)
							tfm.exec.movePlayer(v,c.x,c.y)
						else
							if axY == 0 then
								tfm.exec.movePlayer(v,coord,math.random(10,mode.grounds.mapInfo[4] - 10))
							else
								tfm.exec.movePlayer(v,math.random(10,mode.grounds.mapInfo[4] - 10),axY)
							end
						end
						tfm.exec.setVampirePlayer(v)
					end
				else
					table.foreach(mode.grounds.info,tfm.exec.setVampirePlayer)
				end
			end
		}
		xmlPowers[11] = { -- shaman
			attribute = "shaman",
			func = function(t)
				if t ~= "" then
					ui.setShamanName(t)
				end
			end
		}	

		xml.attribFunc(currentXml.xml or "",xmlPowers)

		mode.grounds.gsys.getGroundProperties(currentXml.xml)

		if not deactivateWater then
			for k,v in next,mode.grounds.gsys.grounds do
				if v.T == 9 then
					mode.grounds.hasWater = true
					for k,v in next,mode.grounds.info do
						v.drown = 0
						mode.grounds.uibar(1,k,v.drown,0x519DDA,100,20)
					end
					break
				end
			end
		end
		if not mode.grounds.hasWater then
			for i = 1,3 do
				ui.removeTextArea(i)
			end
		end
		
		local ini = ""
		local D = string.match(tfm.get.room.xmlMapInfo.xml,"<D>(.-)</D>") or ""
		for k,v in next,{"DS","T"} do
			ini = string.match(D,"<"..v.." (.-)/>")
			if ini then
				break
			end
		end
		ini = ini or ""
		local sX = string.match(ini,"X=\"(.-)\"")
		local sY = string.match(ini,"Y=\"(.-)\"")
		mode.grounds.spawnPoint = {tonumber(sX) or 0,tonumber(sY) or 0}
		
		ui.setMapName(table.concat(mapName,"   <G>|<J>   ") .. (#mapName > 0 and "   <G>|<J>   " or "") .. currentXml.author .. " <BL>- " .. tfm.get.room.currentMap)
	end,
	-- Loop
	eventLoop = function()
		mode.grounds.gsys.groundEffects()
		
		if _G.currentTime % 5 == 0 then
			mode.grounds.alivePlayers,mode.grounds.totalPlayers = system.players()
		end
		
		if _G.currentTime == 3 and math.random(50) < 16 and os.time() > mode.grounds.announceTimer then
			mode.grounds.announceTimer = os.time() + 5000
			tfm.exec.chatMessage(string.format("<PT>[•] <BV>%s",system.getTranslation("powersenabled")))
		end

		if _G.currentTime%2 == 0 and not mode.grounds.review then
			if mode.grounds.alivePlayers < 1 or _G.leftTime <= 2 then
				tfm.exec.newGame(mode.grounds.newMap())
			elseif mode.grounds.alivePlayers == 1 and _G.leftTime > 50 and mode.grounds.totalPlayers > 1 then
				tfm.exec.setGameTime(30)
			elseif mode.grounds.podium > 5 and mode.grounds.alivePlayers > 3 then
				tfm.exec.setGameTime(20,false)
			end
		end

		local grounds = {}
		for k,v in next,mode.grounds.despawnGrounds do
			grounds[k] = v
		end
		for k,v in next,grounds do
			if os.time() > v[2] then
				tfm.exec.removePhysicObject(v[1])
				table.remove(mode.grounds.despawnGrounds,k)
			end
		end
		for n,v in next,mode.grounds.info do
			v.isWalking = (tfm.get.room.playerList[n] and (tfm.get.room.playerList[n].movingRight or tfm.get.room.playerList[n].movingLeft) or false)
			v.right = (tfm.get.room.playerList[n] and (tfm.get.room.playerList[n].isFacingRight) or false)
			if v.powersOP.GTYPE ~= 7 then -- Sand
				ui.removeTextArea(-1,n)
			end
			if mode.grounds.hasWater then
				if _G.currentTime%2 == 0 then
					if tfm.get.room.playerList[n] then
						if not tfm.get.room.playerList[n].isDead and v.powersOP.GTYPE ~= 9 then -- Water
							if v.drown > 0 then
								v.drown = v.drown - math.random(1,math.floor(v.stats.powers.water[1]))
								mode.grounds.uibar(1,n,v.drown,0x519DDA,100,20)
							end
						end
					end
				end
			end
		end
	end,
	-- Keyboard
	eventKeyboard = function(n,k,d,x,y)
		tfm.get.room.playerList[n].x = x
		tfm.get.room.playerList[n].x = y
		if table.find(mode.grounds.bindKeys,k) then
			if k < 4 then
				if k == 0 then
					mode.grounds.info[n].right = false
				elseif k == 2 then
					mode.grounds.info[n].right = true
				end
			elseif k == string.byte("O") then
				mode.grounds.eventChatCommand(n,"o")
			elseif k == string.byte("P") then
				if mode.grounds.info[n].profileAccessing then
					mode.grounds.eventTextAreaCallback(nil,n,"profile.close")
				else
					if os.time() > mode.grounds.info[n].profileTimer then
						mode.grounds.info[n].profileTimer = os.time() + 1e3
						mode.grounds.eventChatCommand(n,"p")
					end
				end
			elseif k == string.byte("H") then
				mode.grounds.eventChatCommand(n,"h")
			elseif k == string.byte("K") then
				mode.grounds.eventChatCommand(n,"k")
			end
		else
			if k == 32 and os.time() > mode.grounds.info[n].powersOP.TIMER then
				local ms = 0
				local power = {0,0}
				if mode.grounds.info[n].powersOP.GTYPE == 8 then -- Cloud
					power = mode.grounds.info[n].stats.powers.cloud
					ms = power[2]
					tfm.exec.movePlayer(n,0,0,true,0,-power[1],true)
				elseif mode.grounds.info[n].powersOP.GTYPE == 1 and mode.grounds.info[n].isWalking then -- Ice
					power = mode.grounds.info[n].stats.powers.ice
					ms = power[2]
					tfm.exec.movePlayer(n,0,0,false,(mode.grounds.info[n].right and power[1] or -power[1]),0,true)
				elseif mode.grounds.info[n].powersOP.GTYPE == 11 and not mode.grounds.info[n].isWalking then -- Snow
					power = mode.grounds.info[n].stats.powers.snow
					ms = power[2]
					tfm.exec.addShamanObject(34,x + (mode.grounds.info[n].right and 20 or -20),y - 5,0,(mode.grounds.info[n].right and power[1] or -power[1]))
					tfm.exec.playEmote(n,26)
				elseif mode.grounds.info[n].powersOP.GTYPE == 10 and not mode.grounds.info[n].isWalking then -- Stone
					power = mode.grounds.info[n].stats.powers.stone
					local id = tfm.get.room.playerList[n].id
					if not table.find(mode.grounds.despawnGrounds,id,1) then
						ms = power[3]
						local halfSize = (power[1]/2) + 15
						tfm.exec.addPhysicObject(id,x + (mode.grounds.info[n].right and halfSize or -halfSize),y + 32 - halfSize,{
							type = 10,
							miceCollision = true,
							groundCollision = false,
							width = power[1],
							height = power[1],
							friction = .3,
							restitution = 0
						})
						table.insert(mode.grounds.despawnGrounds,{id,os.time() + power[2]})
					end
				end
				mode.grounds.info[n].powersOP.TIMER = os.time() + ms
				system.bindKeyboard(n,32,true,false)
			end
			mode.grounds.info[n].powersOP.GTYPE = -1
		end
	end,
	-- Commands
	eventChatCommand = function(n,c)
		if system.isPlayer(n) then
			c = deactivateAccents(c)
			system.disableChatCommandDisplay(c,true)
			local p = string.split(c,"[^%s]+",string.lower)
			disableChatCommand(p[1])
			if p[1] == mode.grounds.cmds.shop or p[1] == "o" then
				if mode.grounds.info[n].shop.accessing then
					mode.grounds.eventTextAreaCallback(nil,n,"shop.close")
				else
					if os.time() > mode.grounds.info[n].shop.timer then
						mode.grounds.info[n].shop.timer = os.time() + 1200
						mode.grounds.uishop(n)
					end
				end
			elseif p[1] == mode.grounds.cmds.profile or p[1] == "p" then
				if p[2] then
					p[2] = string.nick(p[2])
					if mode.grounds.info[p[2]] then
						mode.grounds.uiprofile(n,p[2])
					end
				else
					mode.grounds.uiprofile(n,n)
				end
				mode.grounds.info[n].profileAccessing = true
			elseif p[1] == mode.grounds.cmds.help or p[1] == "h" then
				if mode.grounds.info[n].menu.accessing then
					mode.grounds.eventTextAreaCallback(nil,n,"menu.close")
				else
					if os.time() > mode.grounds.info[n].menu.timer then
						mode.grounds.info[n].menu.timer = os.time() + 1e3
						mode.grounds.uimenu(n)
					end
				end
			elseif p[1] == mode.grounds.cmds.langue then
				p[2] = p[2] and string.lower(p[2]) or nil
				if p[2] and (p[2] == "default" or mode.grounds.translations[p[2]]) then
					if p[2] == "default" then
						mode.grounds.info[n].langue = (mode.grounds.translations[tfm.get.room.playerList[n].community] and tfm.get.room.playerList[n].community or mode.grounds.langue)
					else
						mode.grounds.info[n].langue = string.lower(p[2])
					end
					tfm.exec.chatMessage(string.format("<PT>[•] <BV>%s",string.format(system.getTranslation("language",n),string.upper(mode.grounds.info[n].langue))),n)
				else
					tfm.exec.chatMessage(string.format("<PT>[•] <J>!%s <PS>%s",p[1],table.concat(mode.grounds.langues," <G>-</G> ")),n)
				end
			elseif p[1] == mode.grounds.cmds.leaderboard or p[1] == "k" then
				if mode.grounds.info[n].leaderboardAccessing then
					mode.grounds.eventTextAreaCallback(nil,n,"ranking.close")
				else
					if os.time() > mode.grounds.info[n].leaderboardTimer then
						mode.grounds.info[n].leaderboardTimer = os.time() + 1e3
						mode.grounds.uileaderboard(n)
					end
				end
			elseif p[1] == mode.grounds.cmds.info or p[1] == "?" then
				local grounds = system.getTranslation("grounds",n)
				local ground = grounds[mode.grounds.info[n].powersOP.GTYPE]
				if ground then
					mode.grounds.uidisplayInfo(n,{"info","grounds",string.gsub(ground[1],"'","#"),ground[2]})
				end
			elseif p[1] == "mapinfo" and mode.grounds.mapInfo[2] > 0 then
				tfm.exec.chatMessage(string.format("<PT>[•] <BV>G%s (%s) - %s - @%s",mode.grounds.mapInfo[2],mode.grounds.G[mode.grounds.mapInfo[2]].name,tfm.get.room.xmlMapInfo.author,mode.grounds.mapInfo[1]),n)
			else
				local isAdmin,isMapEv,isTranslator = system.roomAdmins[n],table.find(mode.grounds.staff.mapEvaluators,n,1),table.find(mode.grounds.staff.translators,n,1)
				if p[1] == mode.grounds.cmds.pw or p[1] == "pw" then
					if isAdmin then
						local newPassword = p[2] and table.concat(p," ",nil,2) or ""
						local pwMsg = system.getTranslation("password")
						if newPassword == "" then
							tfm.exec.chatMessage(string.format("<R>[•] %s",pwMsg.off))
						else
							local xxx = string.rep("*",#newPassword)
							for k in next,mode.grounds.info do
								if system.roomAdmins[k] and system.isPlayer(k) then
									tfm.exec.chatMessage(string.format("<R>[•] %s",string.format(pwMsg.on,newPassword)),k)
								else
									tfm.exec.chatMessage(string.format("<R>[•] %s",string.format(pwMsg.on,xxx)),k)
								end
							end
						end
						tfm.exec.setRoomPassword(newPassword)
					else
						tfm.exec.chatMessage("<ROSE>[•] /room #" .. module._NAME .. math.random(0,999) .. "@" .. n,n)
					end
				end
				if not system.isRoom then
					if p[1] == "time" and isMapEv then
						tfm.exec.setGameTime(p[2] or 1e7)
					elseif p[1] == "np" and p[2] and isMapEv then
						mode.grounds.mapInfo = {0,0,0,0,"CAA4CF"}
						tfm.exec.newGame(p[2])
					elseif p[1] == "review" and isMapEv then
						mode.grounds.review = not mode.grounds.review
						tfm.exec.chatMessage("<BV>[•] REVIEW MODE : " .. string.upper(tostring(mode.grounds.review)),n)
						tfm.exec.disableAfkDeath(mode.grounds.review)
						if mode.grounds.review then
							table.foreach(mode.grounds.info,tfm.exec.respawnPlayer)
						end
					elseif p[1] == "next" and _G.currentTime > 10 and isMapEv then
						tfm.exec.newGame(mode.grounds.newMap())
					elseif p[1] == "again" and _G.currentTime > 10 and isMapEv then
						if tfm.get.room.currentMap then
							tfm.exec.newGame(tfm.get.room.currentMap)
						end
					end
				end
				if p[1] == "is" and isMapEv then
					p[2] = p[2] or tfm.get.room.currentMap
					p[2] = tonumber(string.match(p[2],"@?(%d+)")) or 0
					
					local exist,index = table.find(mode.grounds.maps,p[2],1)
					local cat = exist and mode.grounds.maps[index][2] or 0
					tfm.exec.chatMessage(string.format("<BV>[•] @%s : %s",p[2],string.upper(tostring(exist)) .. (exist and " (G"..cat..")" or "")),n)
				end	
				if p[1] == "check" and isTranslator then
					p[2] = p[2] and string.lower(p[2]) or nil
					if p[2] and mode.grounds.translations[p[2]] then
						local newP3 = p[3] and system.loadTable("mode.grounds.translations."..p[2].."."..p[3]) or {}
						if newP3 and type(newP3) == "string" then
							tfm.exec.chatMessage("<CEP>[•] [" .. p[3] .. "] : <N><VI>\"</VI>" .. newP3 .. "<VI>\"</VI>",n)
						else
							tfm.exec.chatMessage("<CEP>[•] " .. (p[3] and "Invalid! Try one of these indexes:" or "!" .. p[1] .. " " .. p[2] .. " <VI>id"),n)
							for k,v in next,mode.grounds.translationIndexes do
								tfm.exec.chatMessage("<N>\t\t" .. v,n)
							end
						end
					else
						tfm.exec.chatMessage("<CEP>[•] !" .. p[1] .. " " .. table.concat(mode.grounds.langues," <G>-</G> "),n)
					end
				end
			end
		end
	end,
	-- Victory
	eventPlayerWon = function(n)
		if mode.grounds.availableRoom and mode.grounds.info[n].groundsDataLoaded and system.isPlayer(n) then
			mode.grounds.podium = mode.grounds.podium + 1
			if mode.grounds.podium < 4 then
				mode.grounds.info[n].stats.podiums = mode.grounds.info[n].stats.podiums + 1
				local addedCoins = 20 - mode.grounds.podium * 5
				mode.grounds.info[n].stats.groundsCoins = mode.grounds.info[n].stats.groundsCoins + addedCoins
				tfm.exec.setPlayerScore(n,4-podium,true)
				tfm.exec.chatMessage(string.format("<PT>[•] <BV>%s",string.format(system.getTranslation("gotcoin",n),"<J>+$"..addedCoins.."</J>")),n)
				if mode.grounds.podium == 1 then
					tfm.exec.setGameTime(60,false)
				end
			else
				if mode.grounds.podium == 4 then
					tfm.exec.setGameTime(30,false)
				end
				mode.grounds.info[n].stats.groundsCoins = mode.grounds.info[n].stats.groundsCoins + 1
				tfm.exec.setPlayerScore(n,1,true)
			end
			if mode.grounds.hasWater then
				mode.grounds.uibar(1,n,mode.grounds.info[n].drown,0x6FDA51,100,20)
			end
			if system.miscAttrib ~= 0 then
				if mode.grounds.podium == system.miscAttrib then
					tfm.exec.setGameTime(0)
				end
			end
		end
		if mode.grounds.review then
			tfm.exec.respawnPlayer(n)
		end
		mode.grounds.info[n].canRev = false
	end,
	-- Died
	eventPlayerDied = function(n)
		if mode.grounds.info[n].groundsDataLoaded and mode.grounds.availableRoom then
			mode.grounds.info[n].stats.deaths = mode.grounds.info[n].stats.deaths + 1
		end
		if mode.grounds.hasWater then
			if mode.grounds.info[n].drown > 0 then
				mode.grounds.uibar(1,n,mode.grounds.info[n].drown,0xDA516D,100,20)
			end
		end
		system.bindKeyboard(n,32,true,false)
		ui.removeTextArea(-1,n)
		if mode.grounds.review then
			tfm.exec.respawnPlayer(n)
		end
	end,
	-- Left
	eventPlayerLeft = function(n)
		if mode.grounds.info[n] then
			mode.grounds.info[n].isOnline = false
		end
	end,
	-- Respawn
	eventPlayerRespawn = function(n)
		if mode.grounds.info[n].checkpoint ~= -1 then
			local g = mode.grounds.gsys.grounds[mode.grounds.info[n].checkpoint]
			local hTP = mode.grounds.gsys.getTpPos(g,true)
			tfm.exec.movePlayer(n,hTP[1],hTP[2])
		end
		if mode.grounds.info[n].groundsDataLoaded and mode.grounds.availableRoom then
			mode.grounds.info[n].stats.rounds = mode.grounds.info[n].stats.rounds + 1
		end
		if mode.grounds.hasWater then
			mode.grounds.uibar(1,n,mode.grounds.info[n].drown,0x519DDA,100,20)
		end
		tfm.exec.chatMessage(string.format("<R>[•] %s",system.getTranslation("zombie",n)),n)
	end,
}
