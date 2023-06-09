<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <meta charset="UTF-8">
    <title>Agents</title>
    <link rel="stylesheet" href="adm/dashboard-agent/Agent.css">
    <link rel="shortcut icon" href="images/valorant-transparent.png" type="image/x-icon">
</head>
<body>
    <header>
        <div id="header-up">
            <a href="/adm/home/home.jsp" class="logo-ancora" id=""><img class="" id="logo-navbar" src="adm/dashboard-agent/images/logo.png" alt="logo"></a>
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
    <!-- <div id="espaço-vazio">
    a   a
    </div> -->
    <div id="dashboard">
        <h1>Agent</h1>
        <table id="table">
            <tr>
                <th class="th">ID</th>
                <th class="th">Name</th>
                <th class="th">Role</th>
                <th class="th">Lore</th>
                <th class="th">Skill Q</th>
                <th class="th">Skill E</th>
                <th class="th">Skill C</th>
                <th class="th">Ultimate</th>
                <th class="th">Skill Description Q</th>
                <th class="th">Skill Description E</th>
                <th class="th">Skill Description C</th>
                <th class="th">Ultimate Description</th>
                <th class="th">Ultimate Points </th>
                <th class="th">Path Agent</th>
                <th class="th">Path Role</th>
                <th class="th">Path Skill Q</th>
                <th class="th">Path Skill E</th>
                <th class="th">Path Skill C</th>
                <th class="th">Path Ultimate</th>

            </tr>
            <c:forEach var="agent" items="${agents}">
                <tr>
                    <td class="td">${agent.id}</td>
                    <td class="td">${agent.name}</td>
                    <td class="td">${agent.role}</td>
                    <td class="td">${agent.lore}</td>
                    <td class="td">${agent.skillq}</td>
                    <td class="td">${agent.skille}</td>
                    <td class="td">${agent.skillc}</td>
                    <td class="td">${agent.ultimate}</td>
                    <td class="td">${agent.skillDescriptionq}</td>
                    <td class="td">${agent.skillDescriptione}</td>
                    <td class="td">${agent.skillDescriptionc}</td>
                    <td class="td">${agent.ultimateDescription}</td>
                    <td class="td">${agent.ultimatePoints}</td>
                    <td class="td">${agent.pathagent}</td>
                    <td class="td">${agent.pathrole}</td>
                    <td class="td">${agent.pathskillq}</td>
                    <td class="td">${agent.pathskille}</td>
                    <td class="td">${agent.pathskillc}</td>
                    <td class="td">${agent.pathultimate}</td>
                    <td class="td">
                        <form action="/delete-agent" method="post" id="form-delete">
                            <input type="hidden" id="agent-id" name="agent-id" value="${agent.id}" class="button">
                            <button type="submit" class="button" id="button-delete">Delete</button>
                            <span> | </span>
                            <a href="/adm/create-agent/CreateAgent.jsp?id=${agent.id}&name=${agent.name}&role=${agent.role}&lore=${agent.lore}&skillq=${agent.skillq}&skille=${agent.skille}&skillc=${agent.skillc}&ultimate=${agent.ultimate}&skillDescriptionq=${agent.skillDescriptionq}&skillDescriptione=${agent.skillDescriptione}&skillDescriptionc=${agent.skillDescriptionc}&ultimateDescription=${agent.ultimateDescription}&ultimatePoints=${agent.ultimatePoints}&pathagent=${agent.pathagent}&pathrole=${agent.pathrole}&pathskillq=${agent.pathskillq}&pathskille=${agent.pathskille}&pathskillc=${agent.pathskillc}&pathultimate=${agent.pathultimate}">Update</a>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <div id="div-ancora-novo">
            <a href="/create-agent" class="novo-ancora" id=""><button id="button_novo" class="button">Novo</button></a>
        </div>

    </div>
</body>
</html>