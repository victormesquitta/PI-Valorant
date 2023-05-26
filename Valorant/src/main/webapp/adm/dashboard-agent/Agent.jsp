<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <meta charset="UTF-8">
    <title>Weapons</title>
    <link rel="stylesheet" href="adm/dashboard-agent/Agent.css">
</head>
<body>
    <header>
        <div id="header-up">
            <a href="" class="logo-ancora" id=""><img class="" id="logo-navbar" src="adm/dashboard-agent/images/logo.png" alt="logo"></a>
            <a href="" class="logo-ancora" id=""><h2 id="titulo-header">Visão Administrativa</h2></a>
        </div>
        <nav class="nav_links">
            <div class="nav_link">
                <a href="/adm/dashboar-weapons/Agent.jsp"><img id="agent-icon" class="icon" src="adm/dashboard-weapons/images/agent-icon.png">Agentes</a>
            </div>
            <div class="nav_link">
                <a href="/find-all-weapons"><img id="weapon-icon" class="icon" src="adm/dashboard-weapons/images/weapon-icon.png">Armas</a>
            </div>
            <div class="nav_link">
                <a href="/adm/create-map/CreateMap.jsp"><img id="map-icon" class="icon" src="adm/dashboard-weapons/images/map-icon.png">Mapas</a>
            </div>
            <div class="nav_link">
                <a href="/adm/create-skin/CreateSkin.jsp"><img id="skin-icon" class="icon" src="adm/dashboard-weapons/images/skin-icon.jpg">Skins</a>
            </div>
        </nav>
        <div id="header-down">
            <div id="div-ancora-button">
                <a href="../../" id="ancora-button"><button id="button_logout" class="button">LOG OUT</button></a>
            </div>
        </div>
    </header>
    <div id="dashboard">
        <h1>Agent</h1>
        <table id="table">
            <tr>
                <th class="th">ID</th>
                <th class="th">Name</th>
                <th class="th">Type</th>
                <th class="th">Creds</th>
                <th class="th">Damage</th>
                <th class="th">Magazine</th>
                <th class="th">Reserve</th>
                <th class="th">FireRateSecs</th>
                <th class="th">WallPenetration</th>
            </tr>
            <c:forEach var="agent" items="${agents}">
                <tr>
                    <td class="td">${agent.id}</td>
                    <td class="td">${agent.name}</td>
                    <td class="td">${agent.type}</td>
                    <td class="td">${agent.creds}</td>
                    <td class="td">${weapon.damage}</td>
                    <td class="td">${weapon.magazine}</td>
                    <td class="td">${weapon.reserve}</td>
                    <td class="td">${weapon.fireRateSecs}</td>
                    <td class="td">${weapon.wallPenetration}</td>
                    <td class="td">
                        <form action="/delete-agent" method="post" id="form-delete">
                            <input type="hidden" id="agent-id" name="agent-id" value="${agent.id}" class="button">
                            <button type="submit" class="button" id="button-delete">Delete</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <div id="div-ancora-novo">
            <a href="../adm/create-weapon/CreateAgent.jsp" class="novo-ancora" id=""><button id="button_novo" class="button">Novo</button></a>
        </div>

    </div>
</body>
</html>