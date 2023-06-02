<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <meta charset="UTF-8">
    <title>Maps</title>
    <link rel="stylesheet" href="adm/dashboard-weapons/Weapons.css">
</head>
<body>
    <header>
        <div id="header-up">
            <a href="/adm/home/home.jsp" class="logo-ancora" id=""><img class="" id="logo-navbar" src="adm/dashboard-weapons/images/logo.png" alt="logo"></a>
            <a href="/adm/home/home.jsp" class="logo-ancora" id=""><h2 id="titulo-header">Visão Administrativa</h2></a>
        </div>
        <nav class="nav_links">
            <div class="nav_link">
                <a href="/agents"><img id="agent-icon" class="icon" src="adm/dashboard-weapons/images/agent-icon.png">Agentes</a>
            </div>
            <div class="nav_link">
                <a href="/armas"><img id="weapon-icon" class="icon" src="adm/dashboard-weapons/images/weapon-icon.png">Armas</a>
            </div>
            <div class="nav_link">
                <a href="/maps"><img id="map-icon" class="icon" src="adm/dashboard-weapons/images/map-icon.png">Mapas</a>
            </div>
            <div class="nav_link">
                <a href="/skins"><img id="skin-icon" class="icon" src="adm/dashboard-weapons/images/skin-icon.jpg">Skins</a>
            </div>
        </nav>
        <div id="header-down">
            <div id="div-ancora-button">
                <a href="/logout" id="ancora-button"><button id="button_logout" class="button">LOG OUT</button></a>
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
            <c:forEach var="map" items="${maps}">
                <tr>
                    <td class="td">${map.id}</td>
                    <td class="td">${map.name}</td>
                    <td class="td">${map.description}</td>
                    <td class="td">${map.bombsites}</td>
                    <td class="td">${map.coordinates}</td>
                    <td class="td">${map.country}</td>
                    <td class="td">${map.peculiarity}</td>
                    <td class="td">${map.releaseDate}</td>
                    <td class="td">${map.season}</td>
                    <td class="td">${map.act}</td>
                    <td class="td">${map.rotation}</td>
                    <td class="td">${map.path}</td>
                    <td class="td">
                        <form action="/delete-map" method="post" id="form-map">
                            <input type="hidden" id="map-id" name="map-id" value="${map.id}" class="button">
                            <button type="submit" class="button" id="button-delete">Delete</button>
                        </form>
                            <span> | </span>
                            <a href="/adm/create-map/CreateMap.jsp?id=${map.id}&name=${map.name}&description=${map.description}&bombsites=${map.bombsites}&coordinates=${map.coordinates}&country=${map.country}&peculiarity=${map.peculiarity}&releaseDate=${map.releaseDate}&season=${map.season}&act=${map.act}&rotation=${map.rotation}&path=${map.path}">Update</a>
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