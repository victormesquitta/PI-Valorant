<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <meta charset="UTF-8">
<<<<<<< Updated upstream
    <title>Weapons</title>
=======
    <title>Skins</title>
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
        <h1>Weapons</h1>
=======
        <h1>Skins</h1>
>>>>>>> Stashed changes
        <table id="table">
            <tr>
                <th class="th">ID</th>
                <th class="th">Name</th>
<<<<<<< Updated upstream
                <th class="th">Type</th>
                <th class="th">Creds</th>
                <th class="th">Damage</th>
                <th class="th">Magazine</th>
                <th class="th">Reserve</th>
                <th class="th">FireRateSecs</th>
                <th class="th">WallPenetration</th>
            </tr>
            <c:forEach var="weapon" items="${weapons}">
                <tr>
                    <td class="td">${weapon.id}</td>
                    <td class="td">${weapon.name}</td>
                    <td class="td">${weapon.type}</td>
                    <td class="td">${weapon.creds}</td>
                    <td class="td">${weapon.damage}</td>
                    <td class="td">${weapon.magazine}</td>
                    <td class="td">${weapon.reserve}</td>
                    <td class="td">${weapon.fireRateSecs}</td>
                    <td class="td">${weapon.wallPenetration}</td>
                    <td class="td">
                        <form action="/delete-weapon" method="post" id="form-delete">
=======
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
                        <form action="/delete-skin" method="post" id="form-delete">
>>>>>>> Stashed changes
                            <input type="hidden" id="weapon-id" name="weapon-id" value="${weapon.id}" class="button">
                            <button type="submit" class="button" id="button-delete">Delete</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <div id="div-ancora-novo">
<<<<<<< Updated upstream
            <a href="../adm/create-weapon/CreateWeapon.jsp" class="novo-ancora" id=""><button id="button_novo" class="button">Novo</button></a>
=======
            <a href="../adm/create-skin/CreateSkin.jsp" class="novo-ancora" id=""><button id="button_novo" class="button">Novo</button></a>
>>>>>>> Stashed changes
        </div>
        
    </div>
</body>
</html>