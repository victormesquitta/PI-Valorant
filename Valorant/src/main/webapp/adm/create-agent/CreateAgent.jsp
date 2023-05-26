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
            <h2 id="form-title">Agentes</h2>
            <form id="form-create-agent" action="/create-agent" method="post">
                <div id="colunas">
                    <div id="coluna-1">
                        <label>Name</label>
                        <input type="text" name="agent-name" id="agent-name">
                        <br>
                        <label>Role</label>
                            <input type="text" name="agent-role" id="agent-role">
                        <br>
                        <label>Lore</label>
                            <input type="text" name="agent-lore" id="agent-lore">
                        <br>
                        <label>Skill 1</label>
                            <input type="text" name="agent-skillq" id="agent-skillq">
                        <br>
                        <label>Skill 2</label>
                            <input type="text" name="agent-skille" id="agent-skille">
                        <br>
                        <label>Skill 3</label>
                            <input type="text" name="agent-skillc" id="agent-skillc">
                        <br>
                    </div>
                    <div id="coluna-2">
                        <label>Ultimate</label>
                        <input type="text" name="agent-ultimate" id="agent-ultimate">
                        <br>
                        <label>Skill Description 1</label>
                            <input type="text" name="agent-skilldescriptionq" id="agent-skilldescriptionq">
                        <br>
                        <label>Skill Description 2</label>
                            <input type="text" name="agent-skilldescriptione" id="agent-skilldescriptione">
                        <br>
                        <label>Skill Description 3</label>
                            <input type="text" name="agent-skilldescriptionc" id="agent-skilldescriptionc">
                        <br>
                        <label>Ultimate Description</label>
                            <input type="text" name="agent-ultimatedescription" id="agent-ultimatedescription">
                        <br>
                        <label>Ultimate Points</label>
                            <input type="number" name="agent-ultimatepoints" id="agent-ultimatepoints">
                        <br>
                    </div>
                </div>
                <button type="submit" id="button-register" class="button" >REGISTRAR</button>
            </form>
        </div>
    </div>
</body>
</html>