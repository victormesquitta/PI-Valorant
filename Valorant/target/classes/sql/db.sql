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
'pistola',
'0',
'26',
'22',
'22',
'78',
'66',
'66',
'22',
'12',
'18',
'18',
'36',
'675',
'Alto',
'user\weapons\Images\Classic.png'
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

INSERT INTO AGENT (NAME, ROLE, LORE, SKILLQ, SKILLE, SKILLC, ULTIMATE, SKILLDESCRIPTIONQ, SKILLDESCRIPTIONE, SKILLDESCRIPTIONC, ULTIMATEDESCRIPTION, ULTIMATEPOINTS, PATHAGENT, PATHROLE, PATHSKILLQ, PATHSKILLE, PATHSKILLC, PATHULTIMATE)
VALUES (
'Omen',
'Controlador',
'Um cara que controla legal',
'paranóia',
'smoke',
'tpzin',
'O TELEPORTE',
'dá uma paranóia',
'dá uma smoke',
'dá um tpzin',
'dá o TELEPORTE',
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
'Uma menina que duela legal',
'Carga de Explosivos',
'Cartuchos de Tinta',
'Bumba',
'Estraga-Prazeres',
'dá uma Carga de Explosivos',
'dá um Cartuchos de Tinta',
'dá um Bumba',
'dá o Estraga-Prazeres',
'8',
'user\agents\Images\Raze.png',
'user\agents\Images\Duelista.png',
'user\agents\Images\Carga-de-Explosivos.png',
'user\agents\Images\Cartuchos-de-Tinta.png',
'user\agents\Images\Bumba.png',
'user\agents\Images\Estraga-Prazeres.png'
);

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

