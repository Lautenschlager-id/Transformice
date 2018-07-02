--Creator: Bolodefchoco
--Made in: 06/01/2016
--Last update: 02/07/2018

local shop = {
	-- id, name, cheese, fraise
	head = {
		[0] = { "-", 0, 0 },
		[1] = { "Chapéu de Helicóptero", 500, 0 },
		[2] = { "Chapéu de Palha", 200, 0 },
		[3] = { "Capacete branco", 20, 0 },
		[4] = { "Cartola", 200, 0 },
		[5] = { "Chapéu de Sol", 100, 0 },
		[6] = { "Chapéu Fedora", 500, 0 },
		[7] = { "Capacete de Soldado", 200, 0 },
		[8] = { "Capacete de Mineirador", 300, 0 },
		[9] = { "Chapéu de General", 500, 0 },
		[10] = { "Boina", 100, 0 },
		[11] = { "Bandana do Naruto", 500, 0 },
		[12] = { "Chifres", 200, 0 },
		[13] = { "Aureola", 500, 0 },
		[14] = { "Capacete Vicking", 300, 0 },
		[15] = { "Máscara de Ladrão", 200, 0 },
		[16] = { "Chapéu de Pirata", 300, 0 },
		[17] = { "Chapéu de Bruxa", 200, 0 },
		[18] = { "Chapéu Coco", 300, 0 },
		[19] = { "Chapéu de Enfermeira", 300, 0 },
		[20] = { "Chapéu Policial", 500, 0 },
		[21] = { "Gorro Natalino", 20, 0 },
		[22] = { "Chapéu de Cozinheiro", 300, 0 },
		[23] = { "Tiara de Coelinho", 400, 0 },
		[24] = { "Chapéu de pelo Russo", 50, 0 },
		[25] = { "Chapéu de Cowboy", 250, 0 },
		[26] = { "Chapéu de Limão", 300, 0 },
		[27] = { "Chapéu Mandarim", 800, 0 },
		[28] = { "Rabo de cavalo", 300, 0 },
		[29] = { "Chapéu do Tio Sam", 500, 50 },
		[30] = { "Cabelo da Marge Simpson", 200, 0 },
		[31] = { "Chapéu do Mario", 300, 0 },
		[32] = { "Cabelo do Goku", 800, 0 },
		[33] = { "Chapéu de Aniversário", 150, 0 },
		[34] = { "Chapéu do Asterix", 400, 0 },
		[35] = { "Coroa", 1000, 0 },
		[36] = { "Dreads", 500, 0 },
		[37] = { "Blackpower", 200, 0 },
		[38] = { "Capacete do Faraó", 800, 80 },
		[39] = { "Abóbora", 400, 40 },
		[40] = { "Caveira com cabelo", 800, 100 },
		[41] = { "Chifre de Rena", 0, 50 },
		[42] = { "Boneco de Neve no Rosto", 0, 50 },
		[43] = { "Cabelo Loiro", 200, 0 },
		[44] = { "Chapéu com flores", 250, 0 },
		[45] = { "Cabelo do Elvis Presley", 300, 0 },
		[46] = { "Chapéu Chinês", 100, 0 },
		[47] = { "Cocar", 1500, 0 },
		[48] = { "Chapéu verde de praia", 300, 0 },
		[49] = { "Chapéu de Bobo da Corte", 500, 0 },
		[50] = { "Chapéu do Deadmau5", 400, 0 },
		[51] = { "Chapéu de Aviador", 200, 0 },
		[52] = { "Capacete Mega Man", 400, 40 },
		[53] = { "Chapéu do Viewtiful Joe", 400, 0 },
		[54] = { "Ovo", 50, 0 },
		[55] = { "Cartola de Doende", 100, 0 },
		[56] = { "Chapéu de Peixe", 400, 40 },
		[57] = { "Chapéu de Gato", 400, 40 },
		[58] = { "Aquário", 400, 40 },
		[59] = { "Laço de presente", 300, 60 },
		[60] = { "Cesta de Ovos", 400, 40 },
		[61] = { "Cabelo laranja", 200, 0 },
		[62] = { "Chapéu do Luffy", 300, 40 },
		[63] = { "Cabelo do Sonic", 350, 0 },
		[64] = { "Chapéu Turco", 300, 0 },
		[65] = { "Cabelo Moreno", 200, 40 },
		[66] = { "Chapéu do Link", 300, 40 },
		[67] = { "Tubarão", 400, 40 },
		[68] = { "Crina da Rainbow Dash", 200, 0 },
		[69] = { "Crina da Twillight Sparkle", 200, 0 },
		[70] = { "Crina da AppleJack", 200, 0 },
		[71] = { "Crina da Pinkie Pie", 200, 0 },
		[72] = { "Crina da Rarity", 200, 0 },
		[73] = { "Crina da Fluttershy", 200, 0 },
		[74] = { "Chapéu de Esquimó", 150, 40 },
		[75] = { "Chapéu de Caçador", 50, 0 },
		[76] = { "Sacola de papel", 200, 40 },
		[77] = { "Chapéu Mexicano", 250, 40 },
		[78] = { "Chapéu do Ash Ketchum", 300, 40 },
		[79] = { "Gorro de dormir", 250, 40 },
		[80] = { "Faca sangrenta", 500, 50 },
		[81] = { "Lençol fantasma", 450, 40 },
		[82] = { "Chapéu vampiro", 300, 40 },
		[84] = { "Árvore Natalina", 0, 40 },
		[85] = { "Meia natalina", 0, 40 },
		[86] = { "Turbante", 300, 40 },
		[86] = { "Chapéu contest Krissim", 1000, 100 },
		[87] = { "Máscara de carnaval", 800, 100 },
		[88] = { "Penacho de Palha", 200, 40 },
		[89] = { "Chapéu de pescador", 400, 40 },
		[90] = { "Varinha com queijo", 400, 40 },
		[91] = { "Concha", 400, 40 },
		[92] = { "Chapéu de capitão", 400, 40 },
		[93] = { "Chapéu de marinheiro", 400, 40 },
		[94] = { "Galinha", 700, 40 },
		[96] = { "Cabelo do Shadow", 400, 40 },
		[97] = { "Bolas de sorvete", 400, 40 },
		[98] = { "Juba de Leão", 400, 40 },
		[99] = { "Coroa de Princesa", 200, 40 },
		[101] = { "Chapéu Hokage", 300, 40 },
		[102] = { "Capacete Gladiador", 500, 40 },
		[103] = { "Chapéu de Velas", 250, 40 },
		[104] = { "Cubo de Gelo", 600, 60 },
		[105] = { "Chapéu de Sapo", 100, 10 },
		[106] = { "Chapéu de Pintinho", 300, 20 },
		[107] = { "Chapéu de Panda", 400, 50 },
		[108] = { "Chapéu de Formatura", 500, 40 },
		[109] = { "Côco", 400, 40 },
		[110] = { "Cueca", 20, 0 },
		[111] = { "Chifres de Bóde", 400, 40 },
		[112] = { "Coroa de Folhas", 200, 30 },
		[113] = { "Touca de frio", 300, 40 },
		[114] = { "Ursinho de pelúcia", 800, 100 },
		[115] = { "Chapéu de fitas", 250, 40 },
		[116] = { "Penteado laranja", 600, 40 },
		[117] = { "Sino com asas", 500, 10 },
		[118] = { "Capacete Egípcio", 600, 60 },
		[119] = { "Polvo", 350, 40 },
		[120] = { "Livro aberto", 400, 60 },
		[121] = { "Aranha", 600, 70 },
		[122] = { "Chifre de unicórnio", 250, 40 },
		[123] = { "Capuz", 2000, 100 },
		[124] = { "Cupcake", 500, 50 },
		[125] = { "Gorro do Bob Marley", 1600, 100 },
		[126] = { "Banana", 450, 40 },
		[127] = { "Lenço vermelho", 350, 40 },
		[128] = { "Laço vermelho", 200, 40 },
		[129] = { "Vassoura", 400, 40 },
		[130] = { "Gorro de frio", 400, 40 },
		[131] = { "Queijo", 350, 40 },
		[132] = { "Coroa do Rei", 1000, 100 },
		[133] = { "Chapéu arco-íris", 1200, 100 },
		[134] = { "Chapéu da Marmota", 400, 40 },
		[135] = { "Chapéu do ano novo chinês", 350, 40 },
		[136] = { "Concha de Caracol", 350, 40 },
		[137] = { "Chapéu de Padeiro", 200, 40 },
		[138] = { "Cocar Shaman", 3001, 0 },
		[139] = { "Carcaça de Dinossauro", 1200, 120 },
		[140] = { "Capacete de Astronauta", 1000, 100 },
		[141] = { "Boné da Moranguinho", 800, 80 },
		[142] = { "Capacete Futebol Americano", 500, 40 },
		[143] = { "Boné azul", 300, 40 },
		[144] = { "Gorro da Mamãe Noel", 800, 40 },
		[145] = { "Chapéu Abacaxi", 600, 50 },
		[146] = { "Desentupidor", 250, 40 },
		[147] = { "Castelo de Areia", 250, 40 },
		[148] = { "Chapéu de Peixe Vermelho", 800, 80 },
		[149] = { "Chapéu de Construtor", 300, 40 },
	};
	eye = {
		[0] = { "-", 0, 0 },
		[1] = { "Óculos de Sol", 200, 0 },
		[2] = { "Óculos de Coração", 200, 0 },
		[3] = { "Óculos de SOl mal", 200, 0 },
		[4] = { "Monóculo", 200, 0 },
		[5] = { "Tapa-olho", 300, 0 },
		[6] = { "Máscara de Mergulhador", 800, 0 },
		[7] = { "Óculos 3D", 50, 0 },
		[8] = { "Óculos", 50, 0 },
		[9] = { "Cílios Femininos", 20, 0 },
		[10] = { "Óculos de Listras", 100, 0 },
		[11] = { "Máscara do Ciclope", 200, 0 },
		[12] = { "Máscara Kitsune", 400, 40 },
		[13] = { "Nariz de batata", 0, 0 },
		[14] = { "Máscara de carnaval", 100, 20 },
		[15] = { "Chapéu de Creeper", 400, 40 },
		[16] = { "Bandana Japan Expo", 0, 0 },
		[17] = { "Máscara de Múmia", 500, 50 },
		[18] = { "Olhos com mola", 500, 50 },
		[19] = { "Caveira", 500, 50 },
		[20] = { "Óculos Nerd", 250, 40 },
		[21] = { "Caveira de Dinossauro", 1000, 100 },
		[22] = { "Tapa-olho branco", 250, 40 },
		[23] = { "Protetor de Ski", 500, 50 },
		[24] = { "Óculos de aviador", 450, 40 },
		[25] = { "Arranhão", 300, 40 },
		[26] = { "Máscara do Jason", 700, 60 },
	};
	ear = {
		[0] = { "-", 0, 0 },
		[1] = { "Laço rosa", 100, 0 },
		[2] = { "Aranha", 200, 40 },
		[3] = { "Brinco bola de natal", 0, 10 },
		[4] = { "Flor", 20, 0 },
		[5] = { "Fone de ouvidos", 300, 0 },
		[6] = { "Brinco de coração", 150, 40 },
		[7] = { "Brinco Poisson", 400, 40 },
		[8] = { "Brinco Estrela do Mar", 400, 40 },
		[9] = { "Queijo", 0, 0 },
		[10] = { "Item 4001", 4001, 0 },
		[11] = { "Tapa-ouvidos natalinos", 500, 50 },
		[12] = { "Brinco pirulito de natal", 0, 20 },
		[13] = { "Tiara de Rosa", 200, 40 },
		[14] = { "Tiara de Coelho", 200, 0 },
		[15] = { "Máscara contest Holldine", 600, 60 },
		[16] = { "Brinco patinho", 250, 30 },
		[17] = { "Óculos de espião", 400, 40 },
		[18] = { "Brinco duplo", 40, 0 },
		[19] = { "Laço branco", 100, 10 },
		[20] = { "Parafusos", 250, 40 },
		[21] = { "Flecha", 300, 40 },
		[22] = { "Brinco de caveira", 400, 40 },
		[23] = { "Cristais de gelo", 50, 10 },
		[24] = { "Brinco de coelho", 200, 30 },
		[25] = { "Flor do Havaí", 600, 100 },
		[26] = { "Visco", 400, 40 },
		[27] = { "Espinhos de ferro", 1000, 80 },
		[28] = { "Laço de coração", 600, 40 },
		[29] = { "Brinco de carnaval", 400, 40 },
		[30] = { "Brinco da Deusa Shaman", 250, 40 },
		[31] = { "Ferradura de Ouro", 400, 400 },
		[32] = { "Laço com Sino", 250, 30 },
		[33] = { "Laço de bolinhas de natal", 200, 40 },
		[34] = { "Laço com penas", 600, 80 },
		[35] = { "Laço de Borboleta", 600, 80 },
		[36] = { "Touca-rato de inverno", 500, 80 },
		[37] = { "Brinco de sino dourado", 100, 20 },
	};
	mouth = {
		[0] = { "-", 0, 0 },
		[1] = { "Bigode", 100, 0 },
		[2] = { "Trigo", 25, 0 },
		[3] = { "Gravata borboleta", 150, 0 },
		[4] = { "Charuto", 400, 0 },
		[5] = { "Rosa", 300, 0 },
		[6] = { "Sabre de Luz verde", 300, 0 },
		[7] = { "Sabre de Luz vermelho", 300, 0 },
		[8] = { "Facão", 400, 0 },
		[9] = { "Máscara de Gás", 400, 0 },
		[10] = { "Trevo de 4 folhas", 20, 0 },
		[11] = { "Esqueleto de peixe", 400, 40 },
		[12] = { "Chupeta", 150, 20 },
		[13] = { "Pirulito", 150, 25 },
		[14] = { "Máscara de cirurgião", 50, 0 },
		[15] = { "Abóbora", 250, 40 },
		[16] = { "Nariz de palhaço", 50, 10 },
		[17] = { "Dentes grandes", 40, 20 },
		[18] = { "Picareta Minecraft", 400, 40 },
		[19] = { "Morango", 0, 0 },
		[20] = { "Pincel", 20, 0 },
		[21] = { "Sorvete francês", 60, 0 },
		[22] = { "Osso", 100, 10 },
		[23] = { "Rosquinha", 100, 10 },
		[24] = { "Dentes de vampiro", 200, 40 },
		[25] = { "Chocolate", 100, 20 },
		[26] = { "Biscoito", 100, 20 },
		[27] = { "Caixa de chocolate", 150, 40 },
		[29] = { "Cenoura", 50, 0 },
		[30] = { "Pretzel", 200, 40 },
		[31] = { "Bambu", 200, 40 },
		[32] = { "Leque Japan Expo", 0, 0 },
		[33] = { "Diploma", 300, 40 },
		[34] = { "Sardinha", 400, 40 },
		[35] = { "Bala", 100, 20 },
		[36] = { "Bengala natalino", 200, 40 },
		[37] = { "Cookie", 300, 40 },
		[38] = { "Maçã do amor", 200, 40 },
		[39] = { "Pandeiro", 50, 8 },
		[40] = { "Bico de galinha", 300, 60 },
		[41] = { "Apito", 300, 40 },
		[42] = { "Mochila", 400, 50 },
		[43] = { "Bigode branco", 400, 40 },
		[44] = { "Fondie", 250, 40 },
		[45] = { "Língua", 100, 40 },
		[46] = { "Sanduíche", 500, 50 },
		[47] = { "Corneta", 350, 50 },
		[48] = { "Mamadeira", 250, 40 },
		[49] = { "Pedaço de Torta", 150, 40 },
		[50] = { "Bule", 300, 400 },
		[51] = { "Carta do Dia dos Namorados", 250, 40 },
		[52] = { "Espátula de bolo", 250, 40 },
		[53] = { "Bandeira de Racing", 600, 40 },
		[54] = { "Martelo da Idade Média", 600, 60 },
		[55] = { "Caixa de presente", 400, 50 },
		[56] = { "Shuriken", 450, 50 },
		[57] = { "Barba negra", 400, 40 },
		[58] = { "Regador", 350, 40 },
		[59] = { "Baguete", 250, 40 },
		[60] = { "Coxa de frango", 150, 40 },
		[61] = { "Balde de areia", 300, 40 },
		[62] = { "Martelo", 250, 40 },
		[63] = { "Motoserra", 400, 40 },
	};
	neck = {
		[0] = { "-", 0, 0 },
		[1] = { "Cachecol francês", 200, 0 },
		[2] = { "Lenço vermelho", 200, 0 },
		[3] = { "Barba", 60, 20 },
		[4] = { "Colar de flores", 50, 0 },
		[5] = { "Gravata preta", 80, 0 },
		[6] = { "Cachecol verde", 50, 0 },
		[7] = { "Sino", 150, 20 },
		[8] = { "Barril de bebida", 100, 20 },
		[9] = { "Cachecol de Halloween", 150, 40 },
		[10] = { "Grinalda vermelha", 0, 20 },
		[11] = { "Gravata Borboleta", 200, 20 },
		[12] = { "Guarda-sol", 300, 40 },
		[13] = { "Máquina Fotográfica", 400, 40 },
		[14] = { "Gravata laranja", 200, 40 },
		[15] = { "Medalha", 150, 25 },
		[16] = { "Amuleto turco", 200, 40 },
		[17] = { "Gargantilha", 150, 40 },
		[18] = { "Fone de ouvido", 450, 40 },
		[19] = { "Ombreira", 500, 50 },
		[20] = { "Estrela de Sheriff", 200, 40 },
		[21] = { "Blusa laranja amarrada", 150, 40 },
		[22] = { "Arco-íris", 350, 40 },
		[23] = { "Chapéu de Vitória Régia", 600, 50 },
		[24] = { "Cachecol da Bandeira de Racing", 450, 40 },
		[25] = { "Laço da chapeuzinho vermelho", 150, 35 },
		[26] = { "Lenço ninja", 600, 60 },
		[27] = { "Colar de flores havaianas", 250, 40 },
		[28] = { "Colar de Folhas", 150, 40 },
		[29] = { "Foice", 600, 50 },
		[30] = { "Bóia salva-vidas", 300, 40 },
		[31] = { "Babador de Palhaço", 300, 40 },
		[32] = { "Guirlanda", 250, 40 },
		[33] = { "Doce de canudo", 800, 100 },
	};
	hair_style = {
		[0] = { "-", 0, 0 },
		[1] = { "Cabelo punk", 400, 40 },
		[2] = { "Cabelo bagunçado", 400, 40 },
		[3] = { "Cabelo loiro", 400, 40 },
		[4] = { "Franja marrom", 400, 40 },
		[5] = { "Franja azul", 400, 40 },
		[6] = { "Crina da Apple Bloom", 300, 40 },
		[7] = { "Crina da Scootaloo", 300, 40 },
		[8] = { "Crina da Sweetie Belle", 300, 40 },
		[9] = { "Cabelo Hatsune Miku", 400, 40 },
		[10] = { "Cabelo do Kagamine Rin", 200, 40 },
		[11] = { "Cabelo loiro de franja", 400, 40 },
		[12] = { "Cabelo masculino de periquito", 400, 40 },
		[13] = { "Cabelo da princesa Brave", 400, 40 },
		[14] = { "Blackpower estiloso", 150, 15 },
		[15] = { "Cabelo da Emília", 250, 40 },
		[16] = { "Penteado do Levi", 250, 40 },
		[17] = { "Cabelo da Elsa", 1000, 100 },
		[18] = { "Bobs da Dona Florinda", 200, 40 },
		[19] = { "Cabelo da Deusa Shaman", 1000, 110 },
		[20] = { "Cabelo Dragon Ball", 800, 80 },
		[21] = { "Touca rosa de gato", 900, 100 },
		[22] = { "Coque", 300, 40 },
		[23] = { "Cabelo do IT", 300, 40 },
		[25] = { "Cabelo ajeitado", 250, 40 },
		[26] = { "Cabelo comprido com trança", 400, 60 },
		[28] = { "Cabelo do Arnold", 300, 50 }, -- Checar preço
		[33] = { "Penteado Poney com Coroa", 400, 50 },
		[34] = { "Penteado Poney", 400, 50 },
	};
	tail = {
		[0] = { "-", 0, 0 },
		[1] = { "Diamante", 2000, 200 },
		[2] = { "Estrela", 0, 80 },
		[3] = { "Laço rosa", 1000, 100 },
		[4] = { "Coração", 1000, 150 },
		[5] = { "Ovo de páscoa", 1000, 80 },
		[6] = { "Sol", 1500, 150 },
		[7] = { "Lua", 1500, 150 },
		[8] = { "Círculos dourados", 2000, 200 },
		[9] = { "Abóbora", 1000, 100 },
		[10] = { "Sino", 800, 80 },
		[11] = { "Anéis", 1500, 150 },
		[12] = { "Trevo de 4 folhas", 800, 80 },
		[13] = { "Berimbau", 900, 100 },
		[14] = { "Capacete Egípcio", 1000, 100 },
		[15] = { "Bola de futebol", 1500, 150 },
		[16] = { "Concha", 1000, 100 },
		[17] = { "Meia", 0, 80 },
		[18] = { "Ursinho de Goma", 1000, 100 },
		[19] = { "Penas Shaman", 3000, 200 },
		[20] = { "Nota musical", 1000, 80 },
		[21] = { "Morcego", 1500, 150 },
		[22] = { "Lamparina Chinesa", 1500, 100 },
		[23] = { "Penas de Carnaval", 1500, 120 },
		[24] = { "Anvil God", 1200, 120 },
		[25] = { "Pote de Ouro", 1000, 100 },
		[26] = { "Asa shaman", 1200, 100 },
		[27] = { "Balão", 1000, 120 },
		[28] = { "Planeta", 1000, 80 },
		[29] = { "Bola de Demolição", 800, 80 },
		[30] = { "Rato e Terra", 900, 100 },
	};
	contact_lens = {
		[0] = { "-", 0, 0 },
		[1] = { "Olho laranja", 150, 40 },
		[2] = { "Olho azul", 100, 30 },
		[3] = { "Olho rosa", 150, 40 },
		[4] = { "Olho verde", 100, 30 },
		[5] = { "Olho raivoso vermelho", 250, 100 },
		[6] = { "Olho raivoso verde", 200, 80 },
		[7] = { "Olho raivoso azul", 200, 80 },
		[8] = { "Olho raivoso amarelo", 250, 100 },
		[10] = { "Olho cílios horizontais", 200, 80 },
		[11] = { "Olho azul vidrado", 170, 60 },
		[12] = { "Olho cílios verticais", 120, 30 },
		[13] = { "Olho fechado", 160, 50 },		
	},
	hand = {
		[0] = { "-", 0, 0 },
		[1] = { "Nabo", 1200, 200 },
		[2] = { "Pulseira", 1100, 180 },	
	},
	fur = {
		[-7] = { "Cor preta", 3000, 150 },
		[-6] = { "Cor amarelo-dourada", 3000, 150 },
		[-5] = { "Cor cinza escuro", 3000, 150 },
		[-4] = { "Cor branca", 3000, 150 },
		[-3] = { "Cor cinza claro", 3000, 150 },
		[-2] = { "Cor marrom", 1000, 50 },
		[-1] = { "Cor bege", 1000, 50 },
		[1] = { "Padrão", 0, 0 },
		[2] = { "Pelo de Porquinho-da-índia", 6000, 300 },
		[3] = { "Pelo de Gato Siamês", 6000, 300 },
		[4] = { "Pelo Acinzentado", 6000, 300 },
		[5] = { "Pelo Branco e marrom com listras pretas", 6000, 300 },
		[6] = { "Pelo de Hamster", 6000, 300 },
		[7] = { "Pelo de Gambá", 8000, 350 },
		[8] = { "Pelo de Tigre", 10000, 400 },
		[9] = { "Pelo de Raposa", 7000, 400 },
		[10] = { "Pelo de Esqueleto", 0, 0 },
		[11] = { "Pelo contest Sovenasark", 7000, 350 },
		[12] = { "Pelo contest Kreature", 6500, 325 },
		[13] = { "Pelo contest Squeakymaus", 6000, 300 },
		[14] = { "Pelo de Rato-das-neves", 6000, 300 },
		[15] = { "Pelo de Panda vermelho", 6000, 400 },
		[16] = { "Pelo de Coelho", 0, 0 },
		[17] = { "Pelo de Zebra", 6000, 300 },
		[18] = { "Pelo de Panda", 6000, 400 },
		[19] = { "Pelo Lunar", 7000, 400 },
		[20] = { "Pelo Solar", 7000, 400 },
		[21] = { "Pelo de Leopardo", 6000, 300 },
		[22] = { "Pelo Selvagem", 6000, 300 },
		[23] = { "Pelo Preto de Tattoo de Esqueleto", 7000, 500 },
		[24] = { "Pelo de Leopardo-das-neves", 7000, 500 },
		[25] = { "Pelo de Coração", 5000, 360 },
		[26] = { "Pelo da Sorte", 7000, 400 },
		[27] = { "Pelo de Tucano", 6000, 350 },
		[28] = { "Pelo de Páscoa", 8000, 450 },
		[29] = { "Pelo Egípcio", 7000, 400 },
		[30] = { "Pelo da Copa 2015", 7000, 400 },
		[31] = { "Pelo de Girafa", 6000, 350 },
		[32] = { "Pelo de Nuvem", 7000, 400 },
		[34] = { "Pelo de Rottweiler", 6000, 350 },
		[36] = { "Pelo de Lêmure", 7000, 400 },
		[38] = { "Pelo de Lêmure-de-cauda-anelada", 6000, 350 },
		[39] = { "Pelo rosa de Cupido", 7000, 400 },
		[41] = { "Pelo de Gazela", 6000, 350 },
		[43] = { "Pelo de Ovo de Páscoa", 7000, 400 },
		[44] = { "Pelo de Pinguim", 6500, 400 },
		[46] = { "Pelo de Música", 7500, 450 },
		[47] = { "Pelo do Tails", 7000, 375 },
		[48] = { "Pelo de Volta às aulas", 8000, 500 },
		[49] = { "Pelo de Vaca", 6000, 400 },
		[50] = { "Pelo de Drácula", 7000, 450 },
		[52] = { "Pelo de Múmia", 8000, 500 },
		[53] = { "Pelo de Esquimó", 6000, 400 },
		[54] = { "Pelo do Hantaro", 7000, 350 },
		[55] = { "Pelo Real", 6500, 400 },
		[56] = { "Pelo de Unicórnio", 7000, 400 },
		[57] = { "Pelo de Dragão", 5500, 350 },
		[58] = { "Pelo do Dia dos Namorados", 7000, 400 },
		[59] = { "Pelo de Carnaval", 7000, 400 },
		[60] = { "Pelo da Água", 6500, 350 },
		[61] = { "Pelo da Deusa Shaman", 8500, 550 },
		[62] = { "Pelo de Irlandês (St.Patrik)", 6500, 350 },
		[63] = { "Pelo de Cozinheiro", 6000, 380 },
		[64] = { "Pelo de Esquilo", 6000, 350 },
		[65] = { "Pelo da Chapeuzinho Vermelho", 5000, 300 },
		[67] = { "Pelo do Vento", 5000, 0 },
		[68] = { "Pelo de Grama", 10000, 0 },
		[69] = { "Pelo de Fogo", 15000, 0 },
		[70] = { "Pelo de Gato", 6000, 350 },
		[71] = { "Pelo Militar", 6000, 350 },
		[72] = { "Pelo de Tubarão", 7000, 400 },
		[73] = { "Pelo Espacial", 7500, 430 },
		[74] = { "Pelo de Joaninha", 6000, 350 },
		[76] = { "Pelo das Olimpíadas", 6000, 400 },
		[77] = { "Pelo de Orca", 6000, 450 },
		[78] = { "Pelo de Lobisomem", 8000, 450 },
		[79] = { "Pelo de Ceifador", 5500, 350 },
		[80] = { "Pelo de Biscoito de Gengibre", 6000, 400 },
		[81] = { "Pelo do Totoro", 7000, 500 },
		[82] = { "Pelo do Tigre Escuro", 6000, 450 },
		[83] = { "Pelo de Morango", 5500, 350 },
		[84] = { "Pelo de Peixe Dourado", 6000, 400 },
		[85] = { "Pelo de Calopsita", 5500, 400 },
		[86] = { "Pelo de Arara Azul", 5500, 400 },
		[87] = { "Pelo da Dory", 5500, 350 },
		[88] = { "Pelo de Lily", 6000, 400 },
		[89] = { "Pelo de Coruja da noite", 5500, 400 },
		[90] = { "Pelo de Elefante", 5500, 400 },
		[91] = { "Pelo de Pato", 5500, 400 },
		[92] = { "Pelo de Yeti", 6000, 400 },
		[93] = { "Pelo de Coruja", 5500, 400 },
		[94] = { "Pelo de Mordecai", 5500, 400 },
		[95] = { "Pelo de Eevee", 5500, 500 },
		[96] = { "Pelo de Carneiro", 5500, 400 },
		[97] = { "Pelo de Gambá claro", 5500, 400 },
	};
}

local getLook = function(player)
	local look = tfm.get.room.playerList[player].look
	
	local fur, items = look:match("(%d+)(.+)")
	
	local out = { tonumber(fur) }
	
	for item, colors in items:gmatch("[;,](%d+)([_+%x]*)") do
		local tmp = { id = tonumber(item), colors = { } }
		
		for c in colors:gmatch("[_+](%x+)") do
			tmp.colors[#tmp.colors + 1] = c:upper()
		end
		out[#out + 1] = tmp
	end
	
	return out
end

local displayLook = function(p, n)
	local look = getLook(p)
	
	local info = {
		[1] = { "Pelo", shop.fur[look[1]] },
		[2] = { "Cabeça", shop.head[look[2].id] },
		[3] = { "Olho", shop.eye[look[3].id] },
		[4] = { "Orelha", shop.ear[look[4].id] },
		[5] = { "Boca", shop.mouth[look[5].id] },
		[6] = { "Pescoço", shop.neck[look[6].id] },
		[7] = { "Penteado", shop.hair_style[look[7].id] },
		[8] = { "Rabo", shop.tail[look[8].id] },
		[9] = { "Lente de contato", shop.contact_lens[look[9].id] },
		[10] = { "Mão", shop.hand[look[10].id] },
	}
	
	local price = {
		cheese = { 0, 0 },
		fraise = { 0, 0 }
	}
	
	local y = 0
	for i = 1, 10 do
		if (type(look[i]) == "number" and look[i] or look[i].id) > 0 and info[i][2] then
			local colors = {}
			if type(look[i]) == "table" then
				for c = 1, #look[i].colors do
					colors[#colors + 1] = "<font color='#" .. look[i].colors[c] .. "'>#" .. look[i].colors[c] .. "</font>"
				end
			end
			
			if info[2][2] == 0 then
				price.cheese[2] = price.cheese[2] + info[i][2][3]
				price.fraise[1] = price.fraise[1] + info[i][2][3]
			else
				price.cheese[1] = price.cheese[1] + info[i][2][2]
				
				if info[2][3] == 0 then
					price.fraise[2] = price.fraise[2] + info[i][2][2]
				else
					price.fraise[1] = price.fraise[1] + info[i][2][3]
				end
			end

			if #colors > 0 then
				price.cheese[2] = price.cheese[2] + 20
				price.fraise[1] = price.fraise[1] + 20
			end
			
			ui.addTextArea(i, info[i][1] .. " : <V>" .. info[i][2][1] .. "<N> [ <J>$" .. info[i][2][2] .. "<N> | <R>$" .. info[i][2][3] .. " <N>] ( " .. table.concat(colors, " - ") .. " )", n, 240, 30 + 25 * y, nil, nil, 1, 1, .5, true)
			y = y + 1
		end
	end
	
	ui.addTextArea(11, "Preço em queijo: <J><B>$" .. price.cheese[1] .. "</B>" .. (price.cheese[2] > 0 and (" <N>+ <R><B>$" .. price.cheese[2] .. "</B>") or "") .. "\n\n\n<N>Preço em morango: <R><B>$" .. price.fraise[1] .. "</B>" .. (price.fraise[2] > 0 and (" <N>+ <J><B>$" .. price.fraise[2] .. "</B>") or "") , n, 5, 30, 230, nil, 1, 1, .8, true)
end

eventChatCommand = function(n, c)
	c = c:lower():gsub("%a", string.upper, 1)
	if not c:find("#") then c = c .. "#0000" end
	
	if tfm.get.room.playerList[c] then
		displayLook(c, n)
	end
end
