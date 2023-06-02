<!DOCTYPE html>
<html lang="pt-BR">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agents</title>
    <link rel="stylesheet" href="user/agents/style.css">
    <link rel="shortcut icon" href="images/valorant-transparent.png" type="image/x-icon">
</head>
<body>
    <header>
            <a href="../../" class="" id="logo-ancora"><img class="" id="logo-navbar" src="/user/agents/Images/logo.png" alt="logo"></a>
            <nav class="nav_links">
                <a href="../../">Home</a>
                <a href="">Agentes</a>
                <a href="/armas">Armas</a>
                <a href="/maps">Mapas</a>
                <a href="/skins">Skins</a>  
            </nav>
    </header>
    <h1 class="title">AGENTES</h1>
    <img class="barra" src="/user/agents/Images/linha-de-titulo-branca.png">
    
    <h1 class="subtitle">Duelistas</h1>
    <div class="container">
        <c:forEach var = "duelista" items="${duelistas}">
            <div class="box" onclick="openOverlay(0)">
                <img class="images" src=${duelista.pathagent}>
                <h1 class="name">${duelista.name}</h1>
            </div>
            <div class="overlay" id="myOverlay0">
                <div class="overlay-item">
                    <div class="overlay-coluna-1">
                        <div class="coluna-1-cima">
                            <h1 class="overlay-name">${duelista.name}</h1>
                            <img class="image-overlay" src=${duelista.pathagent}>
                            <div class="overlay-div-role">
                                <img class="overlay-img-role" src="${duelista.pathrole}" alt="">
                                <h2 class="overlay-role">${duelista.role}</h2>
                            </div>
                            <h4 class="overlay-ultimatepoints">Ultimate Points: ${duelista.ultimatePoints} Points</h4>
                        </div>
                        <div class="coluna-1-baixo">
                            <div class="overlay-div-lore">
                                <h3 class="overlay-lore-titulo">Lore</h3>
                                <h4 class="overlay-lore">${duelista.lore}</h4>
                            </div> 
                        </div>
                    </div>
                    <div class="overlay-coluna-2">
                        <div class="div-botao-voltar">
                            <img class="botao-voltar" onclick="closeOverlay(0)" src="/user/agents/Images/Botao-voltar.png">
                        </div>
                        <div class="skills">
                            <div class="skill1">
                                <h3 class="nome-skill1">${duelista.skillq}</h3>
                                <div class="div-img-skill">
                                    <img class="img-skill1" src="${duelista.pathskillq}" alt="">
                                </div>
                                <h4 class="descricao-skill1">${duelista.skillDescriptionq}</h4>
                            </div>
                            <div class="skill2">
                                <h3 class="nome-skill2">${duelista.skille}</h3>
                                <div class="div-img-skill">
                                    <img class="img-skill2" src="${duelista.pathskille}" alt="">
                                </div>
                                <h4 class="descricao-skill2">${duelista.skillDescriptione}</h4>
                            </div>
                            <div class="skill3">
                                <h3 class="nome-skill3">${duelista.skillc}</h3>
                                <div class="div-img-skill">
                                    <img class="img-skill3" src="${duelista.pathskillc}" alt="">
                                </div>
                                <h4 class="descricao-skill3">${duelista.skillDescriptionc}</h4>
                            </div>
                            <div class="ultimate">
                                <h3 class="nome-ultimate">${duelista.ultimate}</h3>
                                <div class="div-img-skill">
                                    <img class="img-ultimate" src="${duelista.pathultimate}" alt="">
                                </div>
                                <h4 class="descricao-ultimate">${duelista.ultimateDescription}</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>

    <h1 class="subtitle">Iniciadores</h1>
    <div class="container">
        <c:forEach var = "iniciador" items="${iniciadores}">
            <div class="box" onclick="openOverlay(1)">
                <img class="images" src=${iniciador.pathagent}>
                <h1 class="name">${iniciador.name}</h1>
            </div>
            <div class="overlay" id="myOverlay1">
                <div class="overlay-item">
                    <div class="overlay-coluna-1">
                        <div class="coluna-1-cima">
                            <h1 class="overlay-name">${iniciador.name}</h1>
                            <img class="image-overlay" src=${iniciador.pathagent}>
                            <div class="overlay-div-role">
                                <img class="overlay-img-role" src="${iniciador.pathrole}" alt="">
                                <h2 class="overlay-role">${iniciador.role}</h2>
                            </div>
                            <h4 class="overlay-ultimatepoints">Ultimate Points: ${iniciador.ultimatePoints} Points</h4>
                        </div>
                        <div class="coluna-1-baixo">
                            <div class="overlay-div-lore">
                                <h3 class="overlay-lore-titulo">Lore</h3>
                                <h4 class="overlay-lore">${iniciador.lore}</h4>
                            </div> 
                        </div>

                    </div>
                    <div class="overlay-coluna-2">
                        <div class="div-botao-voltar">
                            <img class="botao-voltar" onclick="closeOverlay(1)" src="/user/agents/Images/Botao-voltar.png">
                        </div>
                        <div class="skills">
                            <div class="skill1">
                                <h3 class="nome-skill1">${iniciador.skillq}</h3>
                                <div class="div-img-skill">
                                    <img class="img-skill1" src="${iniciador.pathskillq}" alt="">
                                </div>
                                <h4 class="descricao-skill1">${iniciador.skillDescriptionq}</h4>
                            </div>
                            <div class="skill2">
                                <h3 class="nome-skill2">${iniciador.skille}</h3>
                                <div class="div-img-skill">
                                    <img class="img-skill2" src="${iniciador.pathskille}" alt="">
                                </div>
                                <h4 class="descricao-skill2">${iniciador.skillDescriptione}</h4>
                            </div>
                            <div class="skill3">
                                <h3 class="nome-skill3">${iniciador.skillc}</h3>
                                <div class="div-img-skill">
                                    <img class="img-skill3" src="${iniciador.pathskillc}" alt="">
                                </div>
                                <h4 class="descricao-skill3">${iniciador.skillDescriptionc}</h4>
                            </div>
                            <div class="ultimate">
                                <h3 class="nome-ultimate">${iniciador.ultimate}</h3>
                                <div class="div-img-skill">
                                    <img class="img-ultimate" src="${iniciador.pathultimate}" alt="">
                                </div>
                                <h4 class="descricao-ultimate">${iniciador.ultimateDescription}</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>

    <h1 class="subtitle">Controladores</h1>
    <div class="container">
        <c:forEach var = "controlador" items="${controladores}">
            <div class="box" onclick="openOverlay(2)">
                <img class="images" src=${controlador.pathagent}>
                <h1 class="name">${controlador.name}</h1>
            </div>
            <div class="overlay" id="myOverlay2">
                <div class="overlay-item">
                    <div class="overlay-coluna-1">
                        <div class="coluna-1-cima">
                            <h1 class="overlay-name">${controlador.name}</h1>
                            <img class="image-overlay" src=${controlador.pathagent}>
                            <div class="overlay-div-role">
                                <img class="overlay-img-role" src="${controlador.pathrole}" alt="">
                                <h2 class="overlay-role">${controlador.role}</h2>
                            </div>
                            <h4 class="overlay-ultimatepoints">Ultimate Points: ${controlador.ultimatePoints} Points</h4>
                        </div>
                        <div class="coluna-1-baixo">
                            <div class="overlay-div-lore">
                                <h3 class="overlay-lore-titulo">Lore</h3>
                                <h4 class="overlay-lore">${controlador.lore}</h4>
                            </div> 
                        </div>
                    </div>
                    <div class="overlay-coluna-2">
                        <div class="div-botao-voltar">
                            <img class="botao-voltar" onclick="closeOverlay(2)" src="/user/agents/Images/Botao-voltar.png">
                        </div>
                        <div class="skills">
                            <div class="skill1">
                                <h3 class="nome-skill1">${controlador.skillq}</h3>
                                <div class="div-img-skill">
                                    <img class="img-skill1" src="${controlador.pathskillq}" alt="">
                                </div>
                                <h4 class="descricao-skill1">${controlador.skillDescriptionq}</h4>
                            </div>
                            <div class="skill2">
                                <h3 class="nome-skill2">${controlador.skille}</h3>
                                <div class="div-img-skill">
                                    <img class="img-skill2" src="${controlador.pathskille}" alt="">
                                </div>
                                <h4 class="descricao-skill2">${controlador.skillDescriptione}</h4>
                            </div>
                            <div class="skill3">
                                <h3 class="nome-skill3">${controlador.skillc}</h3>
                                <div class="div-img-skill">
                                    <img class="img-skill3" src="${controlador.pathskillc}" alt="">
                                </div>
                                <h4 class="descricao-skill3">${controlador.skillDescriptionc}</h4>
                            </div>
                            <div class="ultimate">
                                <h3 class="nome-ultimate">${controlador.ultimate}</h3>
                                <div class="div-img-skill">
                                    <img class="img-ultimate" src="${controlador.pathultimate}" alt="">
                                </div>
                                <h4 class="descricao-ultimate">${controlador.ultimateDescription}</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>

    <h1 class="subtitle">Sentinelas</h1>
    <div class="container" id="container-sentinelas">
        <c:forEach var = "sentinela" items="${sentinelas}">
            <div class="box" onclick="openOverlay(3)">
                <img class="images" src=${sentinela.pathagent}>
                <h1 class="name">${sentinela.name}</h1>
            </div>
            <div class="overlay" id="myOverlay3">
                <div class="overlay-item">
                    <div class="overlay-coluna-1">
                        <div class="coluna-1-cima">
                            <h1 class="overlay-name">${sentinela.name}</h1>
                            <img class="image-overlay" src=${sentinela.pathagent}>
                            <div class="overlay-div-role">
                                <img class="overlay-img-role" src="${sentinela.pathrole}" alt="">
                                <h2 class="overlay-role">${sentinela.role}</h2>
                            </div>
                            <h4 class="overlay-ultimatepoints">Ultimate Points: ${sentinela.ultimatePoints} Points</h4>
                        </div>
                        <div class="coluna-1-baixo">
                            <div class="overlay-div-lore">
                                <h3 class="overlay-lore-titulo">Lore</h3>
                                <h4 class="overlay-lore">${sentinela.lore}</h4>
                            </div> 
                        </div>
                    </div>
                    <div class="overlay-coluna-2">
                        <div class="div-botao-voltar">
                            <img class="botao-voltar" onclick="closeOverlay(3)" src="/user/agents/Images/Botao-voltar.png">
                        </div>
                        <div class="skills">
                            <div class="skill1">
                                <h3 class="nome-skill1">${sentinela.skillq}</h3>
                                <div class="div-img-skill">
                                    <img class="img-skill1" src="${sentinela.pathskillq}" alt="">
                                </div>
                                <h4 class="descricao-skill1">${sentinela.skillDescriptionq}</h4>
                            </div>
                            <div class="skill2">
                                <h3 class="nome-skill2">${sentinela.skille}</h3>
                                <div class="div-img-skill">
                                    <img class="img-skill2" src="${sentinela.pathskille}" alt="">
                                </div>
                                <h4 class="descricao-skill2">${sentinela.skillDescriptione}</h4>
                            </div>
                            <div class="skill3">
                                <h3 class="nome-skill3">${sentinela.skillc}</h3>
                                <div class="div-img-skill">
                                    <img class="img-skill3" src="${sentinela.pathskillc}" alt="">
                                </div>
                                <h4 class="descricao-skill3">${sentinela.skillDescriptionc}</h4>
                            </div>
                            <div class="ultimate">
                                <h3 class="nome-ultimate">${sentinela.ultimate}</h3>
                                <div class="div-img-skill">
                                    <img class="img-ultimate" src="${sentinela.pathultimate}" alt="">
                                </div>
                                <h4 class="descricao-ultimate">${sentinela.ultimateDescription}</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
    <footer>
        <h1>&copy;</h1>
    </footer>
    <script src="user/agents/script.js"></script>
<body>