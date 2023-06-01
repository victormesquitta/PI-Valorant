<!DOCTYPE html>
<html lang="pt-BR">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agents</title>
    <link rel="stylesheet" href="user/agents/style.css">
    <link rel="shortcut icon" href="user/Images/valorant-transparente.png" type="image/x-icon">
</head>
<body>
    <header>
            <a href="../../" class="" id="logo-ancora"><img class="" id="logo-navbar" src="/user/agents/Images/logo.png" alt="logo"></a>
            <nav class="nav_links">
                <a href="../../">Home</a>
                <a href="/">Agentes</a>
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
            <div class="box" onclick="openOverlay()">
                <img class="images" src=${duelista.pathagent}>
                <h1 class="name">${duelista.name}</h1>
            </div>
            <div class="overlay" id="myOverlay">
                <div class="overlay-item">
                    <div class="overlay-coluna-1">
                        <h1 class="overlay-name">${duelista.name}</h1>
                        <img class="image-overlay" src=${duelista.pathagent}>
                        <div class="overlay-div-role">
                            <img class="overlay-img-role" src="${duelista.pathrole}" alt="">
                            <h2 class="overlay-role">${duelista.role}</h2>
                        </div>
                        <h4 class="overlay-ultimatepoints">Ultimate Points: ${duelista.ultimatePoints} Points</h4>
                        <div class="overlay-div-lore">
                            <h3 class="overlay-lore-titulo">Lore</h3>
                            <h4 class="overlay-lore">${duelista.lore}</h4>
                        </div> 
                    </div>
                    <div class="overlay-coluna-2">
                        <button class="overlay-button" onclick="closeOverlay()">Fechar</button>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>

    <h1 class="subtitle">Iniciadores</h1>
    <div class="container">
        <c:forEach var = "iniciador" items="${iniciadores}">
            <div class="box">
                <img class="images" src=${iniciador.pathagent}>
                <h1 class="name">${iniciador.name}</h1>
            </div>
        </c:forEach>
    </div>

    <h1 class="subtitle">Controladores</h1>
    <div class="container">
        <c:forEach var = "controlador" items="${controladores}">
            <div class="box" onclick="openOverlay()">
                <img class="images" src=${controlador.pathagent}>
                <h1 class="name">${controlador.name}</h1>
            </div>
            <div class="overlay" id="myOverlay">
                <div class="overlay-item">
                    <div id="overlay-coluna-1">
                        <h1 id="overlay-name">${controlador.name}</h1>
                        <img class="images-overlay" src=${controlador.pathagent}>
                        <div>
                            <img src="${controlador.pathrole}" alt="">
                            <h2 id="overlay-role">${controlador.role}</h2>
                        </div>
                        <h4 id="overlay-ultimatepoints">Ultimate Points: ${controlador.ultimatePoints} Points</h4>
                        <h3 id="overlay-lore-titulo">Lore</h3>
                        <h4 id="overlay-lore">${controlador.lore}</h4>
                        <button onclick="closeOverlay()">Fechar</button>
                    </div>
                    <div id="overlay-coluna-2">

                    </div>
                </div>
            </div>
        </c:forEach>
    </div>

    <h1 class="subtitle">Sentinelas</h1>
    <div class="container">
        <c:forEach var = "sentinela" items="${sentinelas}">
            <div class="box">
                <img class="images" src=${sentinela.pathagent}>
                <h1 class="name">${sentinela.name}</h1>
            </div>
        </c:forEach>
    </div>
    <footer>
        dsadsa
    </footer>
    <script src="user/agents/script.js"></script>
<body>