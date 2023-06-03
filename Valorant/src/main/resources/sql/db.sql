DROP TABLE IF EXISTS MAP;

DROP TABLE IF EXISTS WEAPON;

DROP TABLE IF EXISTS SKIN;

DROP TABLE IF EXISTS AGENT;

DROP TABLE IF EXISTS USR;

CREATE TABLE MAP(
    ID INT PRIMARY KEY AUTO_INCREMENT,
    NAME VARCHAR(20) NOT NULL,
    DESCRIPTION VARCHAR(1000) NOT NULL,
    BOMBSITES INT NOT NULL,
    COORDINATES VARCHAR(50) NOT NULL,
    COUNTRY VARCHAR(50) NOT NULL,
    PECULIARITY VARCHAR(50),
    RELEASE_DATE DATE NOT NULL,
    SEASON INT NOT NULL,
    ACT INT NOT NULL,
    ROTATION BOOLEAN NOT NULL,
    PATH VARCHAR(100) NOT NULL
);

CREATE TABLE SKIN(
    ID INT PRIMARY KEY AUTO_INCREMENT,
    NAME VARCHAR(50) NOT NULL,
    TYPE VARCHAR(50) NOT NULL,
    DATE DATE NOT NULL,
    PRICE FLOAT NOT NULL,
    SEASON INT NOT NULL,
    NAMESEASON VARCHAR(50) NOT NULL,
    ACT INT NOT NULL,
    RECOLORS INT NOT NULL,
    PATH VARCHAR(100) NOT NULL,
    PATHTYPE VARCHAR(100) NOT NULL
);

CREATE TABLE AGENT(
    ID INT PRIMARY KEY AUTO_INCREMENT,
    NAME VARCHAR(20) NOT NULL,
    ROLE VARCHAR(20) NOT NULL,
    LORE VARCHAR(2000) NOT NULL,
    SKILLQ VARCHAR(50) NOT NULL,
    SKILLE VARCHAR(50) NOT NULL,
    SKILLC VARCHAR(50) NOT NULL,
    ULTIMATE VARCHAR(50) NOT NULL,
    SKILLDESCRIPTIONQ VARCHAR(1000) NOT NULL,
    SKILLDESCRIPTIONE VARCHAR(1000) NOT NULL,
    SKILLDESCRIPTIONC VARCHAR(1000)  NOT NULL,
    ULTIMATEDESCRIPTION VARCHAR(1000) NOT NULL,
    ULTIMATEPOINTS INT NOT NULL,
    PATHAGENT VARCHAR(100) NOT NULL,
    PATHROLE VARCHAR(100) NOT NULL,
    PATHSKILLQ VARCHAR(100) NOT NULL,
    PATHSKILLE VARCHAR(100) NOT NULL,
    PATHSKILLC VARCHAR(100) NOT NULL,
    PATHULTIMATE VARCHAR(100) NOT NULL
);

CREATE TABLE WEAPON(
    ID INT PRIMARY KEY AUTO_INCREMENT,
    NAME VARCHAR(20) NOT NULL,
    TYPE VARCHAR(20) NOT NULL,
    CREDS INT NOT NULL,
    DAMAGESHORTHEAD INT NOT NULL,
    DAMAGEMEDIUMHEAD INT NOT NULL,
    DAMAGELONGHEAD INT NOT NULL,
    DAMAGESHORTBODY INT NOT NULL,
    DAMAGEMEDIUMBODY INT NOT NULL,
    DAMAGELONGBODY INT NOT NULL,
    DAMAGESHORTLEG INT NOT NULL,
    DAMAGEMEDIUMLEG INT NOT NULL,
    DAMAGELONGLEG INT NOT NULL,
    MAGAZINE INT NOT NULL,
    RESERVE INT NOT NULL,
    FIRERATESECS INT NOT NULL,
    WALLPENETRATION VARCHAR(20) NOT NULL,
    PATH VARCHAR(100) NOT NULL
);

INSERT INTO WEAPON (NAME, TYPE, CREDS, DAMAGESHORTBODY, DAMAGEMEDIUMBODY, DAMAGELONGBODY, DAMAGESHORTHEAD, DAMAGEMEDIUMHEAD, DAMAGELONGHEAD, DAMAGESHORTLEG, DAMAGEMEDIUMLEG, DAMAGELONGLEG, MAGAZINE, RESERVE, FIRERATESECS, WALLPENETRATION, PATH)
VALUES (
'Classic',
'Pistola',
0,
26,
22,
22,
78,
66,
66,
22,
12,
18,
18,
36,
6.75,
'Alto',
'user\weapons\Images\Classic.png'
);

INSERT INTO WEAPON (NAME, TYPE, CREDS, DAMAGESHORTBODY, DAMAGEMEDIUMBODY, DAMAGELONGBODY, DAMAGESHORTHEAD, DAMAGEMEDIUMHEAD, DAMAGELONGHEAD, DAMAGESHORTLEG, DAMAGEMEDIUMLEG, DAMAGELONGLEG, MAGAZINE, RESERVE, FIRERATESECS, WALLPENETRATION, PATH)
VALUES (
'Spectre',
'Submetralhadora',
1600,
78,
66,
60,
78,
66,
60,
22,
18,
17,
30,
90,
13.33,
'Médio',
'user\weapons\Images\Spectre.png'
);

INSERT INTO WEAPON (NAME, TYPE, CREDS, DAMAGESHORTBODY, DAMAGEMEDIUMBODY, DAMAGELONGBODY, DAMAGESHORTHEAD, DAMAGEMEDIUMHEAD, DAMAGELONGHEAD, DAMAGESHORTLEG, DAMAGEMEDIUMLEG, DAMAGELONGLEG, MAGAZINE, RESERVE, FIRERATESECS, WALLPENETRATION, PATH)
VALUES (
'Judge',
'Escopeta',
1850,
17,
10,
7,
34,
20,
14,
14,
8,
5,
7,
21,
3.5,
'Pequeno',
'user\weapons\Images\Judge.png'
);

INSERT INTO WEAPON (NAME, TYPE, CREDS, DAMAGESHORTBODY, DAMAGEMEDIUMBODY, DAMAGELONGBODY, DAMAGESHORTHEAD, DAMAGEMEDIUMHEAD, DAMAGELONGHEAD, DAMAGESHORTLEG, DAMAGEMEDIUMLEG, DAMAGELONGLEG, MAGAZINE, RESERVE, FIRERATESECS, WALLPENETRATION, PATH)
VALUES (
'Vandal',
'Fuzil',
2900,
40,
40,
40,
160,
160,
160,
34,
34,
34,
25,
75,
9.75,
'Médio',
'user\weapons\Images\Vandal.png'
);

INSERT INTO WEAPON (NAME, TYPE, CREDS, DAMAGESHORTBODY, DAMAGEMEDIUMBODY, DAMAGELONGBODY, DAMAGESHORTHEAD, DAMAGEMEDIUMHEAD, DAMAGELONGHEAD, DAMAGESHORTLEG, DAMAGEMEDIUMLEG, DAMAGELONGLEG, MAGAZINE, RESERVE, FIRERATESECS, WALLPENETRATION, PATH)
VALUES (
'Operator',
'Fuzil de Precisao',
4700,
150,
150,
150,
255,
255,
255,
120,
120,
120,
5,
10,
0.6,
'Alto',
'user\weapons\Images\Operator.png'
);

INSERT INTO WEAPON (NAME, TYPE, CREDS, DAMAGESHORTBODY, DAMAGEMEDIUMBODY, DAMAGELONGBODY, DAMAGESHORTHEAD, DAMAGEMEDIUMHEAD, DAMAGELONGHEAD, DAMAGESHORTLEG, DAMAGEMEDIUMLEG, DAMAGELONGLEG, MAGAZINE, RESERVE, FIRERATESECS, WALLPENETRATION, PATH)
VALUES (
'Ares',
'Metralhadora',
1600,
30,
28,
28,
72,
67,
67,
25,
23,
23,
50,
100,
13,
'Alto',
'user\weapons\Images\Ares.png'
);

CREATE  TABLE USR (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    USERNAME VARCHAR(50) NOT NULL,
    PASSWORD VARCHAR(50) NOT NULL
);

INSERT INTO USR (USERNAME, PASSWORD)
VALUES (
'user',
'1234'
);

INSERT INTO MAP (NAME, DESCRIPTION, BOMBSITES, COORDINATES, COUNTRY, PECULIARITY, RELEASE_DATE, SEASON, ACT, ROTATION, PATH)
VALUES (
'Ascent',
'Com várias opções de posicionamento e conflito, um território aberto divide duas áreas em Ascent. Cada uma pode ser fortificada por portas explosivas irreversíveis que, quando derrubadas, forçam as equipes a destruí-las ou a acharem outra maneira de prosseguir. Não deixe que o inimigo tome o seu território.',
2,
'45°26 BF N 12°20 Q E',
'Italia',
'Mercado',
'2020-04-27',
1,
1,
true,
'user/maps/Images/Ascent.png'
);

INSERT INTO AGENT (NAME, ROLE, LORE, SKILLQ, SKILLE, SKILLC, ULTIMATE, SKILLDESCRIPTIONQ, SKILLDESCRIPTIONE, SKILLDESCRIPTIONC, ULTIMATEDESCRIPTION, ULTIMATEPOINTS, PATHAGENT, PATHROLE, PATHSKILLQ, PATHSKILLE, PATHSKILLC, PATHULTIMATE)
VALUES (
'Omen',
'Controlador',
'Omen, uma lembrança fantasmagórica, caça nas sombras. Ele cega os inimigos, teleporta-se pelo campo e deixa a paranoia assumir o controle enquanto o adversário tenta descobrir de onde virá seu próximo ataque.',
'Paranóia',
'Manto Sombrio',
'Passos Tenebrosos',
'SALTO DAS SOMBRAS -- O TELEPORTE',
'INSTANTANEAMENTE emite um projétil sombrio adiante, reduzindo brevemente o alcance de visão dos jogadores tocados. O projétil atravessa paredes.',
'EQUIPE um orbe sombrio e veja o indicador de alcance. DISPARE para lançar o orbe no local marcado, criando uma esfera de sombra duradoura que bloqueia a visão. SEGURE O DISPARO ALTERNATIVO enquanto mira para afastar o marcador. SEGURE a tecla de habilidade enquanto mira para aproximar o marcador.',
'EQUIPE uma habilidade de passos sombrios e olhe o indicador de alcance. DISPARE para começar uma breve canalização e, então, teleporte-se para o local marcado.',
'EQUIPE um mapa tático. DISPARE para começar a se teleportar ao local selecionado. Enquanto se teleporta, Omen aparecerá como um Vulto que pode ser destruído por qualquer inimigo para cancelar o teleporte. -- dá o TELEPORTE',
'7',
'user\agents\Images\Omen.png',
'user\agents\Images\Controlador.png',
'user\agents\Images\Paranoia.png',
'user\agents\Images\Manto-Sombrio.png',
'user\agents\Images\Passos-Tenebrosos.png',
'user\agents\Images\Salto-das-Sombras.png'
);

INSERT INTO AGENT (NAME, ROLE, LORE, SKILLQ, SKILLE, SKILLC, ULTIMATE, SKILLDESCRIPTIONQ, SKILLDESCRIPTIONE, SKILLDESCRIPTIONC, ULTIMATEDESCRIPTION, ULTIMATEPOINTS, PATHAGENT, PATHROLE, PATHSKILLQ, PATHSKILLE, PATHSKILLC, PATHULTIMATE)
VALUES (
'Raze',
'Duelista',
'Raze chega do Brasil em uma explosão de carisma e armas letais. Com seu estilo de jogo "porradeiro", ela é craque em desentocar inimigos entrincheirados e limpar espaços apertados com uma bela dose de BUUUM!',
'Carga de Explosivos',
'Cartuchos de Tinta',
'Bumba',
'Estraga-Prazeres',
'INSTANTANEAMENTE joga uma Carga de Explosivos que gruda em superfícies. REUSE a habilidade depois de instalar para detonar, causando dano e movendo tudo que for atingido. Raze não sofre dano ao ser atingida pelo efeito desta habilidade, mas ainda pode sofrer dano de queda se for arremessada para longe.',
'EQUIPE uma granada múltipla. DISPARE para jogar a granada, que causa dano e cria submunições, cada uma causando dano a qualquer um que estiver no alcance.',
'EQUIPE um Bumba. DISPARE para lançar o robô, que avança em linha reta no chão, ricocheteando nas paredes. O Bumba trava ao detectar inimigos no cone frontal e os persegue, explodindo e causando muito dano se alcançá-los.',
'EQUIPE um lança-mísseis. DISPARE um foguete que causa dano devastador em área ao fazer contato com qualquer coisa.',
'8',
'user\agents\Images\Raze.png',
'user\agents\Images\Duelista.png',
'user\agents\Images\Carga-de-Explosivos.png',
'user\agents\Images\Cartuchos-de-Tinta.png',
'user\agents\Images\Bumba.png',
'user\agents\Images\Estraga-Prazeres.png'
);

INSERT INTO WEAPON (NAME, TYPE, CREDS, DAMAGESHORTBODY, DAMAGEMEDIUMBODY, DAMAGELONGBODY, DAMAGESHORTHEAD, DAMAGEMEDIUMHEAD, DAMAGELONGHEAD, DAMAGESHORTLEG, DAMAGEMEDIUMLEG, DAMAGELONGLEG, MAGAZINE, RESERVE, FIRERATESECS, WALLPENETRATION, PATH)
VALUES (
'Classic',
'pistola',
'0',
'26',
'22',
'22',
'78',
'66',
'66',
'22',
'18',
'18',
'12',
'36',
'6',
'Alto',
'user\weapons\Images\Classic.png');


INSERT INTO AGENT (NAME, ROLE, LORE, SKILLQ, SKILLE, SKILLC, ULTIMATE, SKILLDESCRIPTIONQ, SKILLDESCRIPTIONE, SKILLDESCRIPTIONC, ULTIMATEDESCRIPTION, ULTIMATEPOINTS, PATHAGENT, PATHROLE, PATHSKILLQ, PATHSKILLE, PATHSKILLC, PATHULTIMATE)
VALUES (
'Sova',
'Iniciador',
'Nascido sob o eterno inverno das tundras russas, Sova rastreia, encontra e elimina inimigos com eficiência e precisão implacáveis. Seu arco personalizado e suas habilidades inigualáveis de reconhecimento garantem que nenhuma presa escape.',
'Flecha de Choque',
'Flecha Rastreadora',
'Drone Coruja',
'Fúria do Caçador',
'EQUIPE um arco com uma flecha de choque. DISPARE para lançar a flecha que explode ao impacto, causando dano aos jogadores próximos. SEGURE O DISPARO para estender o alcance do projétil. Use o DISPARO ALTERNATIVO para adicionar até dois ricochetes à flecha.',
'EQUIPE um arco com uma flecha de reconhecimento. DISPARE para lançar a flecha, que é ativada mediante impacto e revela a localização de quaisquer inimigos próximos da sua linha de visão. SEGURE O DISPARO para ampliar o alcance do projétil. Use o DISPARO SECUNDÁRIO para adicionar até dois ricochetes à flecha.',
'EQUIPE um drone coruja. DISPARE para acionar e pilotar o drone. Enquanto pilota o drone, DISPARE para atirar um dardo marcador. Dardos revelam a localização de quaisquer jogadores atingidos.',
'EQUIPE um arco com três disparos de longo alcance que perfuram paredes. DISPARE para atirar um raio de energia diante de Sova, causando dano e revelando a localização dos inimigos que estiverem na linha. A habilidade pode ser REPETIDA mais duas vezes enquanto o cronômetro de habilidade estiver ativo.',
'8',
'user\agents\Images\Sova.png',
'user\agents\Images\Iniciador.png',
'user\agents\Images\Flecha-de-Choque.png',
'user\agents\Images\Flecha-Rastreadora.png',
'user\agents\Images\Drone-Coruja.png',
'user\agents\Images\Furia-do-Cacador.png'
);

INSERT INTO AGENT (NAME, ROLE, LORE, SKILLQ, SKILLE, SKILLC, ULTIMATE, SKILLDESCRIPTIONQ, SKILLDESCRIPTIONE, SKILLDESCRIPTIONC, ULTIMATEDESCRIPTION, ULTIMATEPOINTS, PATHAGENT, PATHROLE, PATHSKILLQ, PATHSKILLE, PATHSKILLC, PATHULTIMATE)
VALUES (
'Sage',
'Sentinela',
'Como uma verdadeira fortaleza chinesa, Sage traz segurança para si mesma e para a equipe aonde quer que vá. Capaz de reviver aliados e rechaçar investidas agressivas, ela oferece um centro de calmaria em meio ao caos da batalha.',
'Orbe de Lentidão',
'Orbe Curativo',
'Orbe de Barreira',
'Ressureição',
'EQUIPE um orbe de lentidão. DISPARE para lançá-lo. O orbe detona ao pousar, criando um campo duradouro que desacelera os jogadores dentro dele.',
'EQUIPE um orbe curativo. DISPARE com a mira sobre um aliado ferido para ativar uma cura ao longo do tempo. Use o DISPARO ALTERNATIVO enquanto Sage estiver ferida para ativar uma autocura ao longo do tempo.',
'EQUIPE um orbe de barreira. DISPARE para posicionar uma parede sólida. DISPARO ALTERNATIVO gira o marcador de alvo.',
'EQUIPE uma habilidade de ressurreição. DISPARE com a mira sobre um aliado morto para começar a revivê-lo. Depois de uma breve canalização, o aliado voltará com a Vida completa.',
8,
'user/agents/Images/Sage.png',
'user/agents/Images/Sentinela.png',
'user/agents/Images/Orbe-de-Lentidao.png',
'user/agents/Images/Orbe-Curativo.png',
'user/agents/Images/Orbe-de-Barreira.png',
'user/agents/Images/Ressurreicao.png'
);


INSERT INTO SKIN (NAME, TYPE, DATE, PRICE, SEASON, NAMESEASON, ACT, RECOLORS, PATH, PATHTYPE)
VALUES (
'Oni',
'Premium',
'2023-03-07',
7100,
6,
'Revelation',
2,
4,
'user/skins/Images/Oni.png',
'user/skins/Images/Premiun-icon.png'
);

