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
            <div class="box">
                <img class="images" src=${duelista.pathagent}>
                <h1 class="name">${duelista.name}</h1>
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
<body>