# **Tema: API de Valorant**
### Componentes do grupo:
* Victor Mesquita Lima de Santana,
* João Victor Farhat Calejon,
* Vitor Ripper Araújo,
* Larissa Silva Bernardo Matos
***
### Link para o protótipo desenvolvido em Figma:

*https://www.figma.com/file/H4nz12cztneJUkp8puC95n/API-Valorant?node-id=0-1&t=7nkS7pWatYtMLX1q-0*

***
### Lista de Funcionalidades

* Consulta de Agentes: nacionalidade, habilidades e função.
* Consulta de Mapas: coordenadas na vida real, informações sobre o mapa, melhores composições de agentes de cada mapa.
* Consulta de Armas: informações técnicas de cada arma (dano, cadência de tiro, ...), valores e skins.
* Consulta de Miras: miras utilizadas por jogadores profissionais.
* Sistema de pesquisa em cada uma das páginas de consulta (Agentes, Armas, Skins, ...).
***

### Instruções para execução do sistema
* Run no projeto dentro do Maven;
* Após isso, abrir o localhost do H2DB (http://localhost:8080/console); 
* Fazer o login (user: "sa", password:"sa");
* Criar a tabela referente as funcionalidades com os seguintes comando:

### Mapa:
```
    CREATE TABLE MAP(ID INT PRIMARY KEY AUTO_INCREMENT, NAME VARCHAR(20) NOT NULL,
    DESCRIPTION VARCHAR(255) NOT NULL,
    BOMBSITES INT NOT NULL,
    COORDINATES VARCHAR(50) UNIQUE NOT NULL,
    COUNTRY VARCHAR(50) NOT NULL,
    PECULIARITY VARCHAR(50),
    RELEASE_DATE DATE NOT NULL,
    SEASON INT NOT NULL,
    ACT INT NOT NULL,
    ROTATION BOOLEAN NOT NULL,
    PATH VARCHAR(50) NOT NULL
    ); 
  ```
* Para o preenchimento dos dados, acessar o url de CRUD do mapa (http://localhost:8080/create-map).
***

### Arma:
```
   CREATE TABLE WEAPON(
    ID INT PRIMARY KEY AUTO_INCREMENT, 
    NAME VARCHAR(20) NOT NULL,
    TYPE VARCHAR(20) NOT NULL,
    CREDS INT NOT NULL,
    DAMAGE INT NOT NULL,
    MAGAZINE INT NOT NULL,
    RESERVE INT NOT NULL,
    FIRERATESECS INT NOT NULL,
    WALLPENETRATION VARCHAR(20) NOT NULL,
    PATH VARCHAR(50) NOT NULL
    );
 ```
* Para o preenchimento dos dados, acessar o url de CRUD do mapa (http://localhost:8080/create-weapon).
***
### Skin:
```
    CREATE TABLE SKIN(
    ID INT PRIMARY KEY AUTO_INCREMENT, 
    NAME VARCHAR(20) NOT NULL,
    DATE DATE NOT NULL,
    PRICE FLOAT NOT NULL,
    SEASON INT NOT NULL,
    ACT INT NOT NULL,
    RECOLORS INT NOT NULL,
    PATH VARCHAR(50) NOT NULL
    );
 ```
 * Para o preenchimento dos dados, acessar o url de CRUD do mapa (http://localhost:8080/create-skin).

### Agent:
```
    CREATE TABLE AGENT(
    ID INT PRIMARY KEY AUTO_INCREMENT, 
    NAME VARCHAR(20) NOT NULL,
    ROLE VARCHAR(10) NOT NULL,
    LORE VARCHAR(200) NOT NULL,
    SKILLQ VARCHAR(20) NOT NULL,
    SKILLE VARCHAR(20) NOT NULL,
    SKILLC VARCHAR(20) NOT NULL,
    ULTIMATE VARCHAR(20) NOT NULL,
    SKILLDESCRIPTIONQ VARCHAR(200) NOT NULL,
    SKILLDESCRIPTIONE VARCHAR(200) NOT NULL,
    SKILLDESCRIPTIONC VARCHAR(200)  NOT NULL,
    ULTIMATEDESCRIPTION VARCHAR(200) NOT NULL,
    ULTIMATEPOINTS INT NOT NULL,
    PATH VARCHAR(50) NOT NULL;
    );
 ```
 * Para o preenchimento dos dados, acessar o url de CRUD do mapa (http://localhost:8080/create-agent).

### Login:
```
    CREATE TABLE USR (
    ID INT PRIMARY KEY AUTO_INCREMENT, 
    USERNAME VARCHAR(50) NOT NULL,
    PASSWORD VARCHAR(50) NOT NULL
    );
 ```
 * Comando para inserir o primeiro login.
 ```
    INSERT INTO USR (USERNAME, PASSWORD) VALUES ('your-user', 'your-password')
 ```
 
