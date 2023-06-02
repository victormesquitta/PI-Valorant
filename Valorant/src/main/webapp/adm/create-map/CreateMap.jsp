<!DOCTYPE html>
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <title>Mapas</title>
    <link rel="stylesheet" href="../../adm/create-map/CreateMap.css">
    <link rel="shortcut icon" href="images/valorant-transparent.png" type="image/x-icon">
</head>
<body>
    <header>
        <div id="header-up">
            <a href="../home/home.jsp" class="logo-ancora" id=""><img class="" id="logo-navbar" src="images/logo.png" alt="logo"></a>
            <a href="../home/home.jsp" class="logo-ancora" id=""><h2 id="titulo-header">Visão Administrativa</h2></a>
        </div>
        <nav class="nav_links">
            <div class="nav_link">
                <a href="/agents"><img id="agent-icon" class="icon" src="../../adm/create-map/images/agent-icon.png">Agentes</a>
            </div>
            <div class="nav_link">
                <a href= "/armas" ><img id="weapon-icon" class="icon" src="../../adm/create-map/images/weapon-icon.png">Armas</a>
            </div>
            <div class="nav_link">
                <a href="/maps"><img id="map-icon" class="icon" src="../../adm/create-map/images/map-icon.png">Mapas</a>
            </div>
            <div class="nav_link">
                <a href="/skins"><img id="skin-icon" class="icon" src="../../adm/create-map/images/skin-icon.jpg">Skins</a>
            </div>
        </nav>
        <div id="header-down">
            <div id="div-ancora-button">
                <a href="/logout" id="ancora-button"><button id="button_logout">LOG OUT</button></a>
            </div>
        </div>
    </header>
    <div id="div-right">
        <div id="div-form">
            <h2 id="form-title">Mapas</h2>
            <form id="form-create-agent" action="/create-map" method="post">
                <div id="colunas">
                    <div id="coluna-1">
                        <label>Name</label>
                            <input type="text" name="map-name" id="map-name" value="${param.name}" required>
                        <br>
                        <label>Description</label>
                            <textarea name="map-description" id="map-description" required>${param.description}</textarea>
                        <br>
                        <label>BombSites</label>
                            <input type="number" name="map-bombsites" id="map-bombsites" value="${param.bombsites}" required>
                        <br>
                        <label>Coordinates</label>
                            <input type="text" name="map-coordinates" id="map-coordinates" value="${param.coordinates}" required>
                        <br>
                        <label>Country</label>
                            <input type="text" name="map-country" id="map-country" value="${param.country}" required>
                        <br>
                    </div>
                    <div id="coluna-2">
                        <label>Peculiarity</label>
                        <input type="text" name="map-peculiarity" id="map-peculiarity" value="${param.peculiarity}" required>
                        <br>
                        <label>Release Date</label>
                            <input type="Date" name="map-date" id="map-date" value="${param.releaseDate}" required>
                        <br>
                        <label>Season</label>
                                <input type="number" name="map-season" id="map-season" value="${param.season}" required>
                        <br>
                        <label>Act</label>
                                <input type="number" name="map-act" id="map-act" value="${param.act}" required>
                        <br>
                        <label>Rotation</label>
                        <div id="div-rotation">
                            <input type="checkbox" name="map-rotation" id="map-rotation" value="${map.rotation ? 'false' : 'true'}">
                        </div>
                        <br>
                        <label>Path</label>
                            <input type="text" name="map-path" id="map-path" value="${param.path}" required>
                            <input type="hidden" name="map-id" id="map-id" value="${param.id}">
                        <br>
                    </div>
                </div>
                <button type="submit" id="button-register" class="button" >REGISTRAR</button>
            </form>
        </div>
    </div>
</body>
</html>