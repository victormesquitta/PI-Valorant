<!DOCTYPE html>
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <title>Skins</title>
    <link rel="stylesheet" href="../../adm/create-skin/CreateSkin.css">
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
                <a href="/agents"><img id="agent-icon" class="icon" src="../../adm/create-skin/images/agent-icon.png">Agentes</a>
            </div>
            <div class="nav_link">
                <a href= "/armas" ><img id="weapon-icon" class="icon" src="../../adm/create-skin/images/weapon-icon.png">Armas</a>
            </div>
            <div class="nav_link">
                <a href="/maps"><img id="map-icon" class="icon" src="../../adm/create-skin/images/map-icon.png">Mapas</a>
            </div>
            <div class="nav_link">
                <a href="/skins"><img id="skin-icon" class="icon" src="../../adm/create-skin/images/skin-icon.jpg">Skins</a>
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
            <h2 id="form-title">Skins</h2>
            <form id="form-create-skin" action="/create-skin" method="post">
                <div id="colunas">
                    <div id="coluna-1">
                        <label>Name</label>
                        <input type="text" name="skin-name" id="skin-name" value="${param.name}"   required>
                        <br>
                        <label>Type</label>
                        <input type="text" name="skin-type" id="skin-type" value="${param.type}"   required>
                        <br>
                        <label>Season</label>
                            <input type="number" name="skin-season" id="skin-season" value="${param.season}"  required>
                        <br>
                        <label>Act</label>
                            <input type="number" name="skin-act" id="skin-act" value="${param.act}"  required>
                        <br>
                        <label>Date</label>
                            <input type="date" name="skin-date" id="skin-date" value="${param.date}"  required>
                        <br>
                    </div>
                    <div id="coluna-2">
                        <label>Price</label>
                            <input type="number" name="skin-price" id="skin-price" value="${param.price}"  required>
                        <br>
                        <label>Recolors</label>
                            <input type="number" name="skin-recolors" id="skin-recolors" value="${param.recolors}"  required>
                        <br>
                        <label>Path</label>
                            <input type="text" name="skin-path" id="skin-path" value="${param.path}"  required>
                        <br>
                        <label>Path Type</label>
                            <input type="text" name="skin-pathType" id="skin-pathType" value="${param.pathType}"  required>
                            <input type="hidden" name="skin-id" id="skin-id" value="${param.id}">
                        <br>
                    </div>
                </div>
                <button type="submit" id="button-register" class="button" >REGISTRAR</button>
            </form>
        </div>
    </div>
</body>
</html>