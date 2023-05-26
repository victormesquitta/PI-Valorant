<!DOCTYPE html>
<html lang="pt-BR">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <title>Home</title>
    <link rel="stylesheet" href="style.css">
    <link rel="shortcut icon" href="images/valorant-transparent.png" type="image/x-icon">
</head>
<body>
    <header>
            <a href="" class="" id="logo-ancora"><img class="" id="logo-navbar" src="images/logo.png" alt="logo"></a>
            <nav class="nav_links">
                <a href="">Home</a>
                <a href="/agents">Agentes</a>
                <a href="/armas">Armas</a>
                <a href="/maps">Mapas</a>
                <a href="/skins">Skins</a>
            </nav>
    </header>
    <div id="flexbox">

        <div id="primeira-div">
            <img id="imagem-central"src="images/valorant-home.png" alt="VALORANT">
            <img id="linha-preta" src="images/linha-home-central-preta.png" alt="">
        </div>
        
        <div id="sobre">
            <div id="sobre-coluna-1">
                <h1 id="sobre-h1">SOBRE O VALORANT</h1>
                <img id="linha-vermelha" class="linha" src="images/linha-de-titulo-vermelha.png" alt="">
                <div id="sobre-regras">
                    <h4 id="sobre-regras-titulo">REGRAS DO JOGO</h4>
                    <p class="p-sobre">Valorant é um jogo de tiro em primeira pessoa online desenvolvido pela Riot Games.  O jogo coloca duas equipes de cinco jogadores em um mapa com o objetivo de plantar ou desarmar uma bomba ou proteger/reforçar um local específico. Cada jogador escolhe um personagem com habilidades únicas e personalizáveis, que podem ser compradas com dinheiro ganho durante a partida. O jogo tem um sistema de ranking competitivo e é conhecido por sua jogabilidade tática e estratégica.</p>
                </div>
            </div>
            <div id="sobre-coluna-2">
                <img id="sobre-img" class="sobre-img" src="images/home-sobre.png" alt="">
            </div> 
        </div>

        <div id="agentes">
            <div id="agentes-coluna-1">
                <h1 id="agentes-titulo" class="titulos">AGENTES</h1>
                <img id="linha-branca" class="linha" src="images/linha-de-titulo-branca.png" alt="">
                <div id="agentes-lancamento-e-gekko">
                    <h3 id="agentes-titulo-lancamento">ÚLTIMO LANÇAMENTO</h3>
                    <h2 id="agentes-titulo-gekko">GEKKO</h2>
                </div>
                <div id="agents-img-e-p">
                    <img id="agentes-img-iniciador" src="images/simbolo-iniciador-home.png" alt="">
                    <p id="agentes-p">Gekko, de Los Angeles, lidera um grupo muito unido de criaturas caóticas.  Seus amigos atropelam tudo, tirando os inimigos do caminho. Depois, Gekko corre atrás deles para reagrupá-los e reiniciar o processo.</p>
                </div>
            </div>
            <div id="agentes-coluna-2">
                <a id="agentes-ancora" class="ancora" href="user/agents/Agents.jsp"><h3 id="">IR PARA A SESSÃO DE AGENTES ❯❯</h3></a>
                <img id="agente-img-gekko" src="images/gekko-home.png" alt="PERSONAGEM GEKKO">                
            </div>
        </div>

        <div id="mapas">
            <div id="mapas-coluna-1">
                <a id="mapas-ancora" class="ancora" href="user/maps/Maps.jsp"><h3 id="">❮❮ IR PARA A SESSÃO DE MAPAS</h3></a>
                <div id="mapas-img-e-legenda">
                    <img id="mapas-img-lotus" src="images/lotus-home.png" alt="MAPA LÓTUS">
                    <p id="mapas-legenda-p">LÓTUS - ÚLTIMO MAPA LANÇADO</p>
                </div>
                <!-- <img id="mapas-img-icon-transparent" src="images/riot-icon.png" alt=""> -->
                
            </div>
            <div id="mapas-coluna-2">
                <h1 class="titulos">MAPAS</h1>
                <img src="images/linha-de-titulo-vermelha-menor.png" alt="">
                <h4 id="mapas-h1">SOBRE OS MAPAS</h4>
                <p id="mapas-p-sobre" class="p-sobre">Cada mapa serve como um palco para mostrar sua criatividade. Os mapas são feitos sob medida para estratégias de equipe, jogadas espetaculares e momentos eletrizantes. Faça as jogadas que todo mundo vai tentar imitar no futuro! Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed et nisl ut libero semper feugiat. Pellentesque bibendum commodo mollis.</p>
            </div>
        </div>
    </div>
    <footer>
        <h1>&copy;</h1>
    </footer>
    <script src="script.js"></script>
<body>