<!DOCTYPE html>
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <title>Mapas</title>
    <link rel="stylesheet" href="CreateMap.css">
</head>
<body>
    <header>
        <div id="header-up">
            <a href="../home/home.jsp" class="logo-ancora" id=""><img class="" id="logo-navbar" src="images/logo.png" alt="logo"></a>
            <a href="../home/home.jsp" class="logo-ancora" id=""><h2 id="titulo-header">Visão Administrativa</h2></a>
        </div>
        <nav class="nav_links">
            <div class="nav_link">
                <a href="../create-agent/CreateAgent.jsp"><img id="agent-icon" class="icon" src="images/agent-icon.png">Agentes</a>
            </div>
            <div class="nav_link">
                <a href= "../create-weapon/CreateWeapon.jsp" ><img id="weapon-icon" class="icon" src="images/weapon-icon.png">Armas</a>
            </div>
            <div class="nav_link">
                <a href="../create-map/CreateMap.jsp"><img id="map-icon" class="icon" src="images/map-icon.png">Mapas</a>
            </div>
            <div class="nav_link">
                <a href="../create-skin/CreateSkin.jsp"><img id="skin-icon" class="icon" src="images/skin-icon.jpg">Skins</a>
            </div>
        </nav>
        <div id="header-down">
            <div id="div-ancora-button">
                <a href="../../" id="ancora-button"><button id="button_logout">LOG OUT</button></a>
            </div>
        </div>
    </header>
    <div id="form-create-map">
        <form action="/create-map" method="post">
            <label>Name</label>
            <input type="text" name="map-name" id="map-name">
            <br>
            <label>Description</label>
                <input type="text" name="map-description" id="map-description">
            <br>
            <label>BombSites</label>
                <input type="number" name="map-bombsites" id="map-bombsites">
            <br>
            <label>Coordinates</label>
                <input type="text" name="map-coordinates" id="map-coordinates">
            <br>
            <label>Country</label>
                <input type="text" name="map-country" id="map-country">
            <br>
            <label>Peculiarity</label>
                <input type="text" name="map-peculiarity" id="map-peculiarity">
            <br>
            <label>Release Date</label>
                <input type="Date" name="map-date" id="map-date">
            <br>
            <label>Season</label>
                    <input type="number" name="map-season" id="map-season">
            <br>
            <label>Act</label>
                    <input type="number" name="map-act" id="map-act">
            <br>
            <label>Rotation</label>
                    <input type="checkbox" name="map-rotation" id="map-rotation" value = "true">
            <br>
            <button type="submit">Register</button>
        </form>
    </div>
</body>
</html>