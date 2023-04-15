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

### Instruções para execução do sistema - funcionalidade: Mapa
* Run no projeto dentro do Maven;
* Após isso, abrir o localhost do H2DB (http://localhost:8080/console); 
* Fazer o login (user: "sa", password:"sa");
* Criar a tabela referente aos mapas com o seguinte comando:
```*CREATE TABLE MAP(ID INT PRIMARY KEY AUTO_INCREMENT, NAME VARCHAR(20) NOT NULL,
    DESCRIPTION VARCHAR(255) NOT NULL,
    BOMBSITES INT NOT NULL,
    COORDINATES VARCHAR(50) UNIQUE NOT NULL,
    COUNTRY VARCHAR(50) NOT NULL,
    PECULIARITY VARCHAR(50),
    RELEASE_DATE DATE NOT NULL,
    SEASON INT NOT NULL,
    ACT INT NOT NULL,
    ROTATION BOOLEAN
    )*; 
  ```
* Para o preenchimento dos dados, acessar o url de CRUD do mapa (http://localhost:8080/create-map).