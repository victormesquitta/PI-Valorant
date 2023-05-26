<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <meta charset="UTF-8">
    <title>Skins</title>
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

        <h1>Skins</h1>
        <table id="table">
            <tr>
                <th class="th">ID</th>
                <th class="th">Name</th>
                <th class="th">Season</th>
                <th class="th">Act</th>
                <th class="th">Date</th>
                <th class="th">Price</th>
                <th class="th">Recolors</th>
                <th class="th">Path</th>
            </tr>

            <c:forEach var="skin" items="${skins}">
                <tr>
                    <td class="td">${skin.id}</td>
                    <td class="td">${skin.name}</td>
                    <td class="td">${skin.season}</td>
                    <td class="td">${skin.act}</td>
                    <td class="td">${skin.date}</td>
                    <td class="td">${skin.price}</td>
                    <td class="td">${skin.recolors}</td>
                    <td class="td">${skin.path}</td>
                    <td class="td">
                        <form action="/delete-skins" method="post" id="form-delete">
                        <input type="hidden" id="skin-id" name="skin-id" value="${skin.id}" class="button">
                        <button type="submit" class="button" id="button-delete">Delete</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
        </table>
                <div id="div-ancora-novo">
                    <a href="../adm/create-skin/CreateSkin.jsp" class="novo-ancora" id=""><button id="button_novo" class="button">Novo</button></a>
                </div>
    </div>
</body>
</html>