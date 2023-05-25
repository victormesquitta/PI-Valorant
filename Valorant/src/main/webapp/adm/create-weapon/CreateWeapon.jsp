<!DOCTYPE html>
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <title>Armas</title>
    <link rel="stylesheet" href="CreateWeapon.css">
</head>
<body>
   <header>
            <div id="header-up">
                <a href="http://localhost:8080/" class="logo-ancora" id=""><img class="" id="logo-navbar" src="images/logo.png" alt="logo"></a>
              <a href="http://localhost:8080/" class="logo-ancora" id=""><h2 id="titulo-header">Visão Administrativa</h2></a>
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
                <a href="../../user/home-user/index.jsp" id="ancora-button"><button id="button_logout" class="button">LOG OUT</button></a>
            </div>
       </header>
    <div id="form-create-weapon">
        <form action="/create-weapon" method="post">
            <label>Name</label>
            <input type="text" name="weapon-name" id="weapon-name">
            <br>
            <label>Type</label>
                <input type="text" name="weapon-type" id="weapon-type">
            <br>
            <label>Creds</label>
                <input type="number" name="weapon-creds" id="weapon-creds">
            <br>
            <label>Damage</label>
                <input type="number" name="weapon-damage" id="weapon-damage">
            <br>
            <label>Magazine</label>
                <input type="number" name="weapon-magazine" id="weapon-magazine">
            <br>
            <label>Reserve</label>
                <input type="number" name="weapon-reserve" id="weapon-reserve">
            <br>
            <label>Fire Rate per Seconds</label>
                <input type="number" name="weapon-fireRateSecs" id="weapon-fireRateSecs">
            <br>
            <label>Wall Penetration</label>
                    <input type="text" name="weapon-wallPenetration" id="weapon-wallPenetration">
            <br>
                <button type="submit">Register</button>
        </form>
    </div>
</body>
</html>