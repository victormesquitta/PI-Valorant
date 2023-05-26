<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <meta charset="UTF-8">
    <title>Weapons</title>
    <link rel="stylesheet" href="adm/dashboard-weapons/Weapons.css">
</head>
<body>
    <header>
        <div id="header-up">
            <a href="" class="logo-ancora" id=""><img class="" id="logo-navbar" src="adm/dashboard-weapons/images/logo.png" alt="logo"></a>
            <a href="" class="logo-ancora" id=""><h2 id="titulo-header">Visão Administrativa</h2></a>
        </div>
        <nav class="nav_links">
            <div class="nav_link">
                <a href="../create-agent/CreateAgent.jsp"><img id="agent-icon" class="icon" src="adm/dashboard-weapons/images/agent-icon.png">Agentes</a>
            </div>
            <div class="nav_link">
                <a href="/find-all-weapons"><img id="weapon-icon" class="icon" src="adm/dashboard-weapons/images/weapon-icon.png">Armas</a>
            </div>
            <div class="nav_link">
                <a href="../create-map/CreateMap.jsp"><img id="map-icon" class="icon" src="adm/dashboard-weapons/images/map-icon.png">Mapas</a>
            </div>
            <div class="nav_link">
                <a href="../create-skin/CreateSkin.jsp"><img id="skin-icon" class="icon" src="adm/dashboard-weapons/images/skin-icon.jpg">Skins</a>
            </div>
        </nav>
        <div id="header-down">
            <div id="div-ancora-button">
                <a href="../../" id="ancora-button"><button id="button_logout" class="button">LOG OUT</button></a>
            </div>
        </div>
    </header>
    <div id="dashboard">
        <h1>Maps</h1>
        <table id="table">
            <tr>
                <th class="th">ID</th>
                <th class="th">Name</th>
                <th class="th">Description</th>
                <th class="th">Bombsites</th>
                <th class="th">Coordinates</th>
                <th class="th">Country</th>
                <th class="th">Peculiarity</th>
                <th class="th">Release Date</th>
                <th class="th">Season</th>
                <th class="th">Act</th>
                <th class="th">Rotation</th>
                <th class="th">Path</th>
            </tr>
            <c:forEach var="weapon" items="${weapons}">
                <tr>
                    <td class="td">${weapon.id}</td>
                    <td class="td">${weapon.name}</td>
                    <td class="td">${weapon.description}</td>
                    <td class="td">${weapon.bombsites}</td>
                    <td class="td">${weapon.coordinates}</td>
                    <td class="td">${weapon.country}</td>
                    <td class="td">${weapon.peculiarity}</td>
                    <td class="td">${weapon.release_date}</td>
                    <td class="td">${weapon.season}</td>
                    <td class="td">${weapon.act}</td>
                    <td class="td">${weapon.rotation}</td>
                    <td class="td">${weapon.path}</td>
                    <td class="td">
                        <form action="/delete-map" method="post" id="form-map">
                            <input type="hidden" id="map-id" name="map-id" value="${map.id}" class="button">
                            <button type="submit" class="button" id="button-delete">Delete</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <div id="div-ancora-novo">
            <a href="../adm/create-map/CreateMap.jsp" class="novo-ancora" id=""><button id="button_novo" class="button">Novo</button></a>
        </div>

    </div>
</body>
</html>