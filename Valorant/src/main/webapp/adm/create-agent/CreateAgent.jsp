<!DOCTYPE html>
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <title>Agentes</title>
    <link rel="stylesheet" href="../../adm/create-agent/CreateAgent.css">
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
                <a href="/agents"><img id="agent-icon" class="icon" src="../../adm/create-agent/images/agent-icon.png">Agentes</a>
            </div>
            <div class="nav_link">
                <a href= "/armas" ><img id="weapon-icon" class="icon" src="../../adm/create-agent/images/weapon-icon.png">Armas</a>
            </div>
            <div class="nav_link">
                <a href="/maps"><img id="map-icon" class="icon" src="../../adm/create-agent/images/map-icon.png">Mapas</a>
            </div>
            <div class="nav_link">
                <a href="/skins"><img id="skin-icon" class="icon" src="../../adm/create-agent/images/skin-icon.jpg">Skins</a>
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
            <h2 id="form-title">Agentes</h2>
            <form id="form-create-agent" action="/create-agent" method="post">
                <div id="colunas">
                    <div id="coluna-1">
                        <label>Name</label>
                        <input type="text" name="agent-name" id="agent-name" value="${param.name}" required>
                        <br>
                        <label>Role</label>
                            <input type="text" name="agent-role" id="agent-role" value="${param.role}" required>
                        <br>
                        <label>Lore</label>
                            <textarea name="agent-lore" id="agent-lore" required>${param.lore}</textarea>
                        <br>
                    </div>
                    <div id="coluna-2">
                        <label>Skill 1</label>
                            <input type="text" name="agent-skillq" id="agent-skillq" value="${param.skillq}" required>
                        <br>
                        <label>Skill 2</label>
                            <input type="text" name="agent-skille" id="agent-skille" value="${param.skille}" required>
                        <br>
                        <label>Skill 3</label>
                            <input type="text" name="agent-skillc" id="agent-skillc" value="${param.skillc}" required>
                        <br>
                        <label>Ultimate</label>
                        <input type="text" name="agent-ultimate" id="agent-ultimate" value="${param.ultimate}" required>
                        <br>
                        <label>Skill Description 1</label>
                            <input type="text" name="agent-skilldescriptionq" id="agent-skilldescriptionq" value="${param.skillDescriptionq}" required>
                        <br>
                    </div>
                    <div id="coluna-3">
                        <label>Skill Description 2</label>
                            <input type="text" name="agent-skilldescriptione" id="agent-skilldescriptione" value="${param.skillDescriptione}" required>
                        <br>
                        <label>Skill Description 3</label>
                            <input type="text" name="agent-skilldescriptionc" id="agent-skilldescriptionc" value="${param.skillDescriptionc}" required>
                        <br>
                        <label>Ultimate Description</label>
                            <input type="text" name="agent-ultimatedescription" id="agent-ultimatedescription" value="${param.ultimateDescription}" required>
                        <br>
                        <label>Ultimate Points</label>
                            <input type="number" name="agent-ultimatepoints" id="agent-ultimatepoints" value="${param.ultimatePoints}" required>
                        <br>
                        <label>Path Agent</label>
                            <input type="text" name="agent-pathagent" id="agent-pathagent" value="${param.pathagent}" required>
                        <br>
                    </div>
                    <div id="coluna-4">
                        <label>Path Role</label>
                            <input type="text" name="agent-pathrole" id="agent-pathrole" value="${param.pathrole}" required>
                        <br>
                        <label>Path Skill 1</label>
                            <input type="text" name="agent-pathskillq" id="agent-pathskillq" value="${param.pathskillq}" required>
                        <br>
                        <label>Path Skill 2</label>
                            <input type="text" name="agent-pathskille" id="agent-pathskille" value="${param.pathskille}" required>
                        <br>
                        <label>Path Skill 3</label>
                            <input type="text" name="agent-pathskillc" id="agent-pathskillc" value="${param.pathskillc}" required>
                        <br>
                        <label>Path Ultimate</label>
                            <input type="text" name="agent-pathultimate" id="agent-pathultimate" value="${param.pathultimate}" required>
                            <input type="hidden" name="agent-id" id="agent-id" value="${param.id}">
                        <br>
                    </div>
                </div>
                <button type="submit" id="button-register" class="button">REGISTRAR</button>
            </form>
        </div>
    </div>
</body>
</html>