<!DOCTYPE html>
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <title>Agentes</title>
    <link rel="stylesheet" href="CreateAgent.css">
</head>
<body>
    <header>
        <div id="header-up">
            <a href="#" class="" id="logo-ancora"><img class="" id="logo-navbar" src="images/logo.png" alt="logo"></a>
            <h2 id="titulo-header">Visão Administrativa</h2>
        </div>
        <nav class="nav_links">
            <div class="nav_link">
                <a href="telas/Creates-Adm/CreateMap/CreateAgent.jsp"><img id="agent-icon" class="icon" src="images/agent-icon.png">Agentes</a>
            </div>
            <div class="nav_link">
                <a href="telas/Creates-Adm/CreateMap/CreateWeapon.jsp"><img id="weapon-icon" class="icon" src="images/weapon-icon.png">Armas</a>
            </div>
            <div class="nav_link">
                <a href="telas/Creates-Adm/CreateMap/CreateMap.jsp"><img id="map-icon" class="icon" src="images/map-icon.png">Mapas</a>
            </div>
            <div class="nav_link">
                <a href="telas/Creates-Adm/CreateMap/CreateSkin.jsp"><img id="skin-icon" class="icon" src="images/skin-icon.jpg">Skins</a>
            </div>
        </nav>
        <div id="header-down">
            <button id="button_logout">LOG OUT</button>
        </div>
    </header>
    <div id="form-create-agent">
        <form action="/create-agent" method="post">
            <label>Name</label>
            <input type="text" name="agent-name" id="agent-name">
            <br>
            <label>Role</label>
                <input type="text" name="agent-role" id="agent-role">
            <br>
            <label>Skill</label>
                <input type="text" name="agent-skill" id="agent-skill">
            <br>
            <label>Lore</label>
                <input type="text" name="agent-lore" id="agent-lore">
            <br>
            <label>Ultimate Points</label>
                <input type="number" name="agent-ultimatepoints" id="agent-ultimatepoints">
            <br>
            <button type="submit">Register</button>
        </form>
    </div>
</body>
</html>