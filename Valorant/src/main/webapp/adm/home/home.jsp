<!DOCTYPE html>
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <title>Inicio</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <div id="header-up">
            <a href="" class="logo-ancora" id=""><img class="" id="logo-navbar" src="images/logo.png" alt="logo"></a>
            <a href="" class="logo-ancora" id=""><h2 id="titulo-header">Visão Administrativa</h2></a>
        </div>
        <nav class="nav_links">
            <div class="nav_link">
                <a href="/agents"><img id="agent-icon" class="icon" src="images/agent-icon.png">Agentes</a>
            </div>
            <div class="nav_link">
                <a href="/armas"><img id="weapon-icon" class="icon" src="images/weapon-icon.png">Armas</a>
            </div>
            <div class="nav_link">
                <a href="/maps"><img id="map-icon" class="icon" src="images/map-icon.png">Mapas</a>
            </div>
            <div class="nav_link">
                <a href="/skins"><img id="skin-icon" class="icon" src="images/skin-icon.jpg">Skins</a>
            </div>
        </nav>

        <div id="header-down">
            <div id="div-ancora-button">
        <c:if test="${SessionScope.loggedUser != null}" id="test">
                <a href="/logout" id="ancora-button"><button id="button_logout">LOG OUT</button></a>
        <c:if>
            </div>
        </div>

    </header>
    <div id="descricao-adm">
        <h2>Esse é o dashboard do site. Aqui é realizado as operações do Crud: Create, Read, Update e Delete.</br>Cada seção destinada é a uma funcionalidade do site.</h2>
    </div>
</body>
</html>