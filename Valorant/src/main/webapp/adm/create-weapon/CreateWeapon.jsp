<!DOCTYPE html>
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <title>Armas</title>
    <link rel="stylesheet" href="CreateWeapon.css">
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
                <a href="/agents"><img id="agent-icon" class="icon" src="images/agent-icon.png">Agentes</a>
            </div>
            <div class="nav_link">
                <a href= "/armas" ><img id="weapon-icon" class="icon" src="images/weapon-icon.png">Armas</a>
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
                <a href="../../" id="ancora-button"><button id="button_logout">LOG OUT</button></a>
            </div>
        </div>
    </header>
    <div id="div-right">
        <div id="div-form">
            <h2 id="form-title">Armas</h2>
            <form id="form-create-weapon" action="/create-weapon" method="post">
                <div id="colunas">
                    <div id="coluna-1">
                        <label>Name</label>
                        <input type="text" name="weapon-name" id="weapon-name" value="${param.name}"  required>
                        <br>
                        <label>Type</label>
                            <input type="text" name="weapon-type" id="weapon-type" value="${param.type}" required>
                        <br>
                        <label>Creds</label>
                            <input type="number" name="weapon-creds" id="weapon-creds" value="${param.creds}" required>
                        <br>
                        <label>DamageShortHead</label>
                            <input type="number" name="weapon-damageShortHead" id="weapon-damageShortHead" value="${param.damageShortHead}" required>
                        <br>
                        <label>DamageMediumHead</label>
                            <input type="number" name="weapon-damageMediumHead" id="weapon-damageMediumHead" value="${param.damageMediumHead}" required>
                        <br>


                    </div>
                    <div id="coluna-2">
                        <label>DamageLongHead</label>
                            <input type="number" name="weapon-damageLongHead" id="weapon-damageLongHead" value="${param.damageLongHead}" required>
                        <br>
                        <label>DamageShortBody</label>
                            <input type="number" name="weapon-damageShortBody" id="weapon-damageShortBody" value="${param.damageShortBody}" required>
                        <br>
                        <label>DamageMediumBody</label>
                            <input type="number" name="weapon-damageMediumBody" id="weapon-damageMediumBody" value="${param.damageMediumBody}" required>
                        <br>
                        <label>DamageLongBody</label>
                        <input type="number" name="weapon-damageLongBody" id="weapon-damageLongBody" value="${param.damageLongBody}" required>
                        <br>
                        <label>DamageShortLeg</label>
                        <input type="number" name="weapon-damageShortLeg" id="weapon-damageShortLeg" value="${param.damageShortLeg}" required>
                        <br>
                    </div>
                    <div id="coluna-3">
                        <label>DamageMediumLeg</label>
                            <input type="number" name="weapon-damageMediumLeg" id="weapon-damageMediumLeg" value="${param.damageMediumLeg}" required>
                        <br>
                        <label>DamageLongLeg</label>
                            <input type="number" name="weapon-damageLongLeg" id="weapon-damageLongLeg" value="${param.damageLongLeg}" required>
                        <br>

                        <label>Magazine</label>
                            <input type="number" name="weapon-magazine" id="weapon-magazine" value="${param.magazine}" required>
                        <br>
                        <label>Reserve</label>
                            <input type="number" name="weapon-reserve" id="weapon-reserve" value="${param.reserve}" required>
                        <br>
                        <label>Fire Rate per Seconds</label>
                            <input type="number" name="weapon-fireRateSecs" id="weapon-fireRateSecs" value="${param.fireRateSecs}" required>
                        <br>
                        <label>Wall Penetration</label>
                            <input type="text" name="weapon-wallPenetration" id="weapon-wallPenetration" value="${param.wallPenetration}" required>
                        <br>
                        <label>Path</label>
                            <input type="text" name="weapon-path" id="weapon-path" value="${param.path}"  required>
                            <input type="hidden" name="weapon-id" id="map-weapon" value="${param.id}">

                    </div>
                </div>

                <button type="submit" id="button-register" class="button" >REGISTRAR</button>
            </form>
        </div>
    </div>
</body>
</html>